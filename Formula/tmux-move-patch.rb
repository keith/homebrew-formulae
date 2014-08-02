require 'formula'

class TmuxMovePatch < Formula
  homepage 'http://tmux.sourceforge.net'
  url 'https://downloads.sourceforge.net/project/tmux/tmux/tmux-1.9/tmux-1.9a.tar.gz'
  sha1 '815264268e63c6c85fe8784e06a840883fcfc6a2'

  head do
    url 'git://git.code.sf.net/p/tmux/tmux-code'

    depends_on :autoconf
    depends_on :automake
    depends_on :libtool
  end

  depends_on 'pkg-config' => :build
  depends_on 'libevent'

  patch :DATA

  def install
    system "sh", "autogen.sh" if build.head?

    ENV.append "LDFLAGS", '-lresolv'
    system "./configure", "--disable-dependency-tracking",
                          "--prefix=#{prefix}",
                          "--sysconfdir=#{etc}"
    system "make install"

    bash_completion.install "examples/bash_completion_tmux.sh" => 'tmux'
    (share/'tmux').install "examples"
  end

  def caveats; <<-EOS.undent
    Example configurations have been installed to:
      #{share}/tmux/examples
    EOS
  end

  test do
    system "#{bin}/tmux", "-V"
  end
end

__END__
diff --git a/tmux.h b/tmux.h
index 7d5f230..ae5ab8e 100644
--- a/tmux.h
+++ b/tmux.h
@@ -1022,8 +1022,6 @@ struct layout_cell {
 	u_int		 yoff;
 
 	struct window_pane *wp;
-	struct window_pane *lastwp;
-
 	struct layout_cells cells;
 
 	TAILQ_ENTRY(layout_cell) entry;
diff --git a/window.c b/window.c
index f41b58d..faac726 100644
--- a/window.c
+++ b/window.c
@@ -58,10 +58,6 @@ struct window_pane_tree all_window_panes;
 u_int	next_window_pane_id;
 u_int	next_window_id;
 
-struct window_pane *window_pane_active_set(struct window_pane *,
-	    struct window_pane *);
-void	window_pane_active_lost(struct window_pane *, struct window_pane *);
-
 void	window_pane_timer_callback(int, short, void *);
 void	window_pane_read_callback(struct bufferevent *, void *);
 void	window_pane_error_callback(struct bufferevent *, short, void *);
@@ -387,60 +383,6 @@ window_resize(struct window *w, u_int sx, u_int sy)
 	w->sy = sy;
 }
 
-/*
- * Restore previously active pane when changing from wp to nextwp. The intended
- * pane is in nextwp and it returns the previously focused pane.
- */
-struct window_pane *
-window_pane_active_set(struct window_pane *wp, struct window_pane *nextwp)
-{
-	struct layout_cell	*lc;
-	struct window_pane	*lastwp;
-
-	/* Target pane's parent must not be an ancestor of source pane. */
-	for (lc = wp->layout_cell->parent; lc != NULL; lc = lc->parent) {
-		if (lc == nextwp->layout_cell->parent)
-			return (nextwp);
-	}
-
-	/*
-	 * Previously active pane, if any, must not be the same as the source
-	 * pane.
-	 */
-	lc = nextwp->layout_cell->parent;
-	if (lc != NULL && lc->lastwp != NULL) {
-		lastwp = lc->lastwp;
-		if (lastwp != wp && window_pane_visible(lastwp))
-			return (lastwp);
-	}
-	return (nextwp);
-}
-
-/* Remember previously active pane when changing from wp to nextwp. */
-void
-window_pane_active_lost(struct window_pane *wp, struct window_pane *nextwp)
-{
-	struct layout_cell	*lc, *lc2;
-
-	/* Save the target pane in its parent. */
-	nextwp->layout_cell->parent->lastwp = nextwp;
-
-	/*
-	 * Save the source pane in all of its parents up to, but not including,
-	 * the common ancestor of itself and the target panes.
-	 */
-	if (wp == NULL)
-		return;
-	for (lc = wp->layout_cell->parent; lc != NULL; lc = lc->parent) {
-		lc2 = nextwp->layout_cell->parent;
-		for (; lc2 != NULL; lc2 = lc2->parent) {
-			if (lc == lc2)
-				return;
-		}
-		lc->lastwp = wp;
-	}
-}
-
 void
 window_set_active_pane(struct window *w, struct window_pane *wp)
 {
@@ -448,7 +390,6 @@ window_set_active_pane(struct window *w, struct window_pane *wp)
 		return;
 	w->last = w->active;
 	w->active = wp;
-	window_pane_active_lost(w->last, wp);
 	while (!window_pane_visible(w->active)) {
 		w->active = TAILQ_PREV(w->active, window_panes, entry);
 		if (w->active == NULL)
@@ -763,16 +704,6 @@ window_pane_create(struct window *w, u_int sx, u_int sy, u_int hlimit)
 void
 window_pane_destroy(struct window_pane *wp)
 {
-	struct window_pane	*wp2;
-
-	/* Forget removed pane in all layout cells that remember it. */
-	RB_FOREACH(wp2, window_pane_tree, &all_window_panes) {
-		if (wp2->layout_cell != NULL &&
-		    wp2->layout_cell->parent != NULL &&
-		    wp2->layout_cell->parent->lastwp == wp)
-			wp2->layout_cell->parent->lastwp = NULL;
-	}
-
 	window_pane_reset_mode(wp);
 
 	if (event_initialized(&wp->changes_timer))
@@ -1200,7 +1131,7 @@ window_pane_find_up(struct window_pane *wp)
 		if (wp2->yoff + wp2->sy + 1 != top)
 			continue;
 		if (left >= wp2->xoff && left <= wp2->xoff + wp2->sx)
-			return (window_pane_active_set(wp, wp2));
+			return (wp2);
 	}
 	return (NULL);
 }
@@ -1226,7 +1157,7 @@ window_pane_find_down(struct window_pane *wp)
 		if (wp2->yoff != bottom)
 			continue;
 		if (left >= wp2->xoff && left <= wp2->xoff + wp2->sx)
-			return (window_pane_active_set(wp, wp2));
+			return (wp2);
 	}
 	return (NULL);
 }
@@ -1255,7 +1186,7 @@ window_pane_find_left(struct window_pane *wp)
 		if (wp2->xoff + wp2->sx + 1 != left)
 			continue;
 		if (top >= wp2->yoff && top <= wp2->yoff + wp2->sy)
-			return (window_pane_active_set(wp, wp2));
+			return (wp2);
 	}
 	return (NULL);
 }
@@ -1284,7 +1215,7 @@ window_pane_find_right(struct window_pane *wp)
 		if (wp2->xoff != right)
 			continue;
 		if (top >= wp2->yoff && top <= wp2->yoff + wp2->sy)
-			return (window_pane_active_set(wp, wp2));
+			return (wp2);
 	}
 	return (NULL);
 }
diff --git a/layout.c b/layout.c
index cfa34b9..646d1bd 100644
--- a/layout.c
+++ b/layout.c
@@ -53,7 +53,6 @@ layout_create_cell(struct layout_cell *lcparent)
 	lc->yoff = UINT_MAX;
 
 	lc->wp = NULL;
-	lc->lastwp = NULL;
 
 	return (lc);
 }
