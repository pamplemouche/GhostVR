.class public LbK0;
.super LSG0;
.source "PG"


# instance fields
.field public final synthetic w:LkK0;


# direct methods
.method public constructor <init>(LkK0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LbK0;->w:LkK0;

    invoke-direct {p0}, LSG0;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isNativePage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->I:LyU;

    .line 3
    sget-object v0, LxH0;->B:Ljava/lang/Class;

    invoke-virtual {p1, v0}, LyU;->a(Ljava/lang/Class;)LxU;

    move-result-object p1

    check-cast p1, LxH0;

    const/4 v0, 0x0

    .line 4
    invoke-virtual {p1, v0}, LxH0;->c(Z)V

    .line 5
    :cond_0
    iget-object p1, p0, LbK0;->w:LkK0;

    .line 6
    iget-object p1, p1, LkK0;->A:LfL0;

    .line 7
    iget-object p1, p1, LfL0;->a:LQK0;

    invoke-virtual {p1}, LQK0;->n()V

    .line 8
    iget-object p1, p0, LbK0;->w:LkK0;

    .line 9
    iget-object p1, p1, LkK0;->F:Lorg/chromium/chrome/browser/toolbar/LocationBarModel;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->g()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    if-nez p1, :cond_1

    goto :goto_0

    .line 10
    :cond_1
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->f:Lsl0;

    :goto_0
    return-void
.end method

.method public onContextualActionBarVisibilityChanged(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const-string p1, "MobileActionBarShown"

    .line 1
    invoke-static {p1}, LhV;->a(Ljava/lang/String;)V

    .line 2
    :cond_0
    iget-object p1, p0, LbK0;->w:LkK0;

    .line 3
    iget-object p1, p1, LkK0;->S:LyK0;

    .line 4
    check-cast p1, LgL0;

    invoke-virtual {p1}, LgL0;->a()LB8;

    move-result-object p1

    if-nez p2, :cond_1

    if-eqz p1, :cond_1

    .line 5
    check-cast p1, Lqa;

    .line 6
    iget-boolean v0, p1, Lqa;->q:Z

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 7
    iput-boolean v0, p1, Lqa;->q:Z

    const/4 v0, 0x0

    .line 8
    invoke-virtual {p1, v0}, Lqa;->e(Z)V

    .line 9
    :cond_1
    iget-object p1, p0, LbK0;->w:LkK0;

    .line 10
    iget-object p1, p1, LkK0;->Y:Lorg/chromium/chrome/browser/ChromeActivity;

    .line 11
    invoke-virtual {p1}, LBg0;->S()Z

    move-result p1

    if-eqz p1, :cond_3

    if-eqz p2, :cond_2

    .line 12
    iget-object p1, p0, LbK0;->w:LkK0;

    .line 13
    iget-object p1, p1, LkK0;->T:LzK0;

    .line 14
    invoke-virtual {p1}, LzK0;->c()V

    goto :goto_0

    .line 15
    :cond_2
    iget-object p1, p0, LbK0;->w:LkK0;

    .line 16
    iget-object p1, p1, LkK0;->T:LzK0;

    .line 17
    invoke-virtual {p1}, LzK0;->b()V

    :cond_3
    :goto_0
    return-void
.end method

.method public onCrash(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    iget-object p1, p0, LbK0;->w:LkK0;

    const/4 v0, 0x0

    invoke-static {p1, v0}, LkK0;->b(LkK0;Z)V

    .line 2
    iget-object p1, p0, LbK0;->w:LkK0;

    .line 3
    invoke-virtual {p1}, LkK0;->d()V

    .line 4
    iget-object p1, p0, LbK0;->w:LkK0;

    invoke-static {p1, v0}, LkK0;->a(LkK0;Z)V

    return-void
.end method

.method public onDidFinishNavigation(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/NavigationHandle;)V
    .locals 2

    .line 1
    iget-boolean v0, p2, Lorg/chromium/content_public/browser/NavigationHandle;->e:Z

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p2, Lorg/chromium/content_public/browser/NavigationHandle;->a:Z

    if-eqz v0, :cond_0

    .line 3
    iget-boolean v0, p2, Lorg/chromium/content_public/browser/NavigationHandle;->b:Z

    if-nez v0, :cond_0

    .line 4
    iget-object v0, p0, LbK0;->w:LkK0;

    .line 5
    iget-object v0, v0, LkK0;->A:LfL0;

    .line 6
    iget-object v0, v0, LfL0;->a:LQK0;

    invoke-virtual {v0}, LQK0;->m()V

    .line 7
    :cond_0
    iget-boolean v0, p2, Lorg/chromium/content_public/browser/NavigationHandle;->e:Z

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->t()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    iget-object v0, p0, LbK0;->w:LkK0;

    .line 10
    iget-object v0, v0, LkK0;->J:LWo0;

    .line 11
    invoke-interface {v0}, LWo0;->l()V

    .line 12
    invoke-static {}, LRC0;->a()LRC0;

    move-result-object v0

    .line 13
    iget-object v1, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 14
    invoke-virtual {v0, v1}, LRC0;->a(Lorg/chromium/content_public/browser/WebContents;)Ljava/lang/String;

    move-result-object v0

    .line 15
    iget-boolean v1, p2, Lorg/chromium/content_public/browser/NavigationHandle;->a:Z

    if-nez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x2

    .line 16
    invoke-static {v0, v1}, LSC0;->a(Ljava/lang/String;I)V

    .line 17
    :cond_2
    :goto_0
    iget v0, p2, Lorg/chromium/content_public/browser/NavigationHandle;->h:I

    if-eqz v0, :cond_6

    .line 18
    iget-boolean p2, p2, Lorg/chromium/content_public/browser/NavigationHandle;->a:Z

    if-eqz p2, :cond_6

    .line 19
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    const/4 p2, 0x0

    if-nez p1, :cond_3

    goto :goto_1

    .line 20
    :cond_3
    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->g()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object p1

    if-nez p1, :cond_4

    goto :goto_1

    .line 21
    :cond_4
    invoke-interface {p1}, Lorg/chromium/content_public/browser/NavigationController;->i()Lorg/chromium/content_public/browser/NavigationEntry;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_1

    .line 22
    :cond_5
    iget-object p1, p1, Lorg/chromium/content_public/browser/NavigationEntry;->b:Ljava/lang/String;

    .line 23
    invoke-static {p1}, LMm0;->a(Ljava/lang/String;)Z

    move-result p1

    xor-int/lit8 p2, p1, 0x1

    :goto_1
    if-nez p2, :cond_6

    .line 24
    iget-object p1, p0, LbK0;->w:LkK0;

    .line 25
    iget-object p1, p1, LkK0;->F:Lorg/chromium/chrome/browser/toolbar/LocationBarModel;

    .line 26
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->d()LMm0;

    :cond_6
    return-void
.end method

.method public onDidStartNavigation(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/NavigationHandle;)V
    .locals 1

    .line 1
    iget-boolean v0, p2, Lorg/chromium/content_public/browser/NavigationHandle;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->g()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 5
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->g()Lorg/chromium/content_public/browser/NavigationController;

    move-result-object v0

    invoke-interface {v0}, Lorg/chromium/content_public/browser/NavigationController;->n()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, LbK0;->w:LkK0;

    .line 7
    iget-object v0, v0, LkK0;->J:LWo0;

    .line 8
    invoke-interface {v0}, LWo0;->d()V

    .line 9
    :cond_1
    iget-boolean v0, p2, Lorg/chromium/content_public/browser/NavigationHandle;->b:Z

    if-eqz v0, :cond_2

    return-void

    .line 10
    :cond_2
    iget-object p2, p2, Lorg/chromium/content_public/browser/NavigationHandle;->d:Ljava/lang/String;

    .line 11
    iget-boolean v0, p1, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    .line 12
    invoke-static {p2, v0}, Lul0;->a(Ljava/lang/String;Z)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 13
    iget-object p1, p0, LbK0;->w:LkK0;

    const/4 p2, 0x0

    invoke-static {p1, p2}, LkK0;->a(LkK0;Z)V

    return-void

    .line 14
    :cond_3
    iget-object p2, p0, LbK0;->w:LkK0;

    .line 15
    iget-object p2, p2, LkK0;->V:LiK0;

    .line 16
    invoke-virtual {p2}, LiK0;->a()V

    .line 17
    iget-object p2, p0, LbK0;->w:LkK0;

    .line 18
    iget-object p2, p2, LkK0;->A:LfL0;

    .line 19
    iget-object p2, p2, LfL0;->a:LQK0;

    .line 20
    iget-object p2, p2, LQK0;->D:LqK0;

    .line 21
    iget-boolean v0, p2, LqK0;->A:Z

    if-eqz v0, :cond_4

    goto :goto_0

    .line 22
    :cond_4
    invoke-virtual {p2}, LqK0;->b()V

    .line 23
    :goto_0
    iget-object p2, p0, LbK0;->w:LkK0;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->k()I

    move-result p1

    .line 24
    invoke-virtual {p2, p1}, LkK0;->a(I)V

    return-void
.end method

.method public onEnterFullscreenMode(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;)V
    .locals 0

    .line 1
    iget-object p1, p0, LbK0;->w:LkK0;

    .line 2
    iget-object p1, p1, LkK0;->K:Lxc0;

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p1, Lxc0;->a:Lwc0;

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x1

    .line 4
    invoke-virtual {p1, p2}, Lwc0;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onLoadProgressChanged(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v0

    .line 2
    iget-boolean p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->c:Z

    .line 3
    invoke-static {v0, p1}, Lul0;->a(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, LbK0;->w:LkK0;

    .line 5
    invoke-virtual {p1, p2}, LkK0;->a(I)V

    return-void
.end method

.method public onLoadStarted(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 0

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, LbK0;->w:LkK0;

    .line 2
    invoke-virtual {p1}, LkK0;->d()V

    .line 3
    iget-object p1, p0, LbK0;->w:LkK0;

    const/4 p2, 0x1

    invoke-static {p1, p2}, LkK0;->b(LkK0;Z)V

    return-void
.end method

.method public onLoadStopped(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 2

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p2, p0, LbK0;->w:LkK0;

    const/4 v0, 0x1

    invoke-static {p2, v0}, LkK0;->b(LkK0;Z)V

    .line 2
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->k()I

    move-result p2

    const/4 v1, 0x5

    if-le p2, v1, :cond_1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->k()I

    move-result p1

    const/16 p2, 0x64

    if-ge p1, p2, :cond_1

    .line 3
    iget-object p1, p0, LbK0;->w:LkK0;

    .line 4
    invoke-virtual {p1, p2}, LkK0;->a(I)V

    .line 5
    :cond_1
    iget-object p1, p0, LbK0;->w:LkK0;

    invoke-static {p1, v0}, LkK0;->a(LkK0;Z)V

    return-void
.end method

.method public onLoadUrl(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/LoadUrlParams;I)V
    .locals 0

    .line 1
    iget-object p1, p0, LbK0;->w:LkK0;

    .line 2
    iget-object p1, p1, LkK0;->F:Lorg/chromium/chrome/browser/toolbar/LocationBarModel;

    .line 3
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->d()LMm0;

    return-void
.end method

.method public onNavigationEntriesDeleted(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    iget-object v0, p0, LbK0;->w:LkK0;

    .line 2
    iget-object v0, v0, LkK0;->F:Lorg/chromium/chrome/browser/toolbar/LocationBarModel;

    .line 3
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->g()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 4
    iget-object p1, p0, LbK0;->w:LkK0;

    .line 5
    invoke-virtual {p1}, LkK0;->d()V

    :cond_0
    return-void
.end method

.method public onPageLoadFinished(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 8

    .line 1
    iget-boolean p2, p1, Lorg/chromium/chrome/browser/tab/Tab;->o:Z

    if-eqz p2, :cond_0

    .line 2
    iget-object p1, p0, LbK0;->w:LkK0;

    .line 3
    iget-object p1, p1, LkK0;->Y:Lorg/chromium/chrome/browser/ChromeActivity;

    return-void

    .line 4
    :cond_0
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->t()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 5
    iget-object p2, p0, LbK0;->w:LkK0;

    .line 6
    iget-object p2, p2, LkK0;->J:LWo0;

    .line 7
    invoke-interface {p2}, LWo0;->l()V

    .line 8
    invoke-static {}, LRC0;->a()LRC0;

    move-result-object p2

    .line 9
    iget-object v0, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 10
    invoke-virtual {p2, v0}, LRC0;->a(Lorg/chromium/content_public/browser/WebContents;)Ljava/lang/String;

    move-result-object p2

    const/4 v0, 0x3

    .line 11
    invoke-static {p2, v0}, LSC0;->a(Ljava/lang/String;I)V

    .line 12
    :cond_1
    iget-object p2, p0, LbK0;->w:LkK0;

    .line 13
    iget-object p2, p2, LkK0;->i0:LoN0;

    const/4 v0, 0x0

    if-eqz p2, :cond_2

    .line 14
    invoke-virtual {p2}, LoN0;->a()V

    .line 15
    iget-object p1, p0, LbK0;->w:LkK0;

    .line 16
    iput-object v0, p1, LkK0;->i0:LoN0;

    goto :goto_0

    .line 17
    :cond_2
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    .line 18
    iget-object v1, p0, LbK0;->w:LkK0;

    const-string v3, "IPH_TranslateMenuButton"

    if-eqz v1, :cond_6

    .line 19
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->e()Lorg/chromium/chrome/browser/ChromeActivity;

    .line 20
    iget-object p2, v1, LkK0;->L:LK00;

    if-eqz p2, :cond_5

    invoke-static {p1}, LSL0;->a(Lorg/chromium/chrome/browser/tab/Tab;)Z

    move-result p2

    if-eqz p2, :cond_5

    .line 21
    iget-object p2, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 22
    invoke-static {p2}, LJ/N;->M8WoKfWJ(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_0

    .line 23
    :cond_3
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->j()Lorg/chromium/chrome/browser/profiles/Profile;

    move-result-object p1

    invoke-static {p1}, LJa0;->a(Lorg/chromium/chrome/browser/profiles/Profile;)LoT0;

    move-result-object v2

    .line 24
    invoke-interface {v2, v3}, LoT0;->b(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_4

    goto :goto_0

    :cond_4
    const v4, 0x7f130376

    const v5, 0x7f130375

    const p1, 0x7f0b04b9

    .line 25
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    const/4 v7, 0x0

    .line 26
    invoke-virtual/range {v1 .. v7}, LkK0;->a(LoT0;Ljava/lang/String;IILjava/lang/Integer;Z)V

    :cond_5
    :goto_0
    return-void

    .line 27
    :cond_6
    throw v0
.end method

.method public onSSLStateUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 1
    iget-object p1, p0, LbK0;->w:LkK0;

    .line 2
    iget-object p1, p1, LkK0;->F:Lorg/chromium/chrome/browser/toolbar/LocationBarModel;

    .line 3
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/toolbar/LocationBarModel;->g()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object p1, p0, LbK0;->w:LkK0;

    .line 5
    iget-object p1, p1, LkK0;->J:LWo0;

    .line 6
    invoke-interface {p1}, LWo0;->l()V

    .line 7
    iget-object p1, p0, LbK0;->w:LkK0;

    .line 8
    iget-object p1, p1, LkK0;->J:LWo0;

    .line 9
    invoke-interface {p1}, LWo0;->d()V

    return-void
.end method

.method public onShown(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, LbK0;->w:LkK0;

    .line 3
    iget-object p1, p1, LkK0;->B:Lorg/chromium/chrome/browser/toolbar/top/ToolbarControlContainer;

    const/4 p2, 0x1

    .line 4
    iget-object p1, p1, Lorg/chromium/chrome/browser/toolbar/top/ToolbarControlContainer;->z:Lorg/chromium/chrome/browser/toolbar/top/ToolbarControlContainer$ToolbarViewResourceFrameLayout;

    .line 5
    iput-boolean p2, p1, Lorg/chromium/chrome/browser/toolbar/top/ToolbarControlContainer$ToolbarViewResourceFrameLayout;->z:Z

    return-void
.end method

.method public onTitleUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 1
    iget-object p1, p0, LbK0;->w:LkK0;

    .line 2
    iget-object p1, p1, LkK0;->J:LWo0;

    .line 3
    invoke-interface {p1}, LWo0;->a()V

    return-void
.end method

.method public onUrlUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    iget-object p1, p0, LbK0;->w:LkK0;

    const/4 v0, 0x1

    invoke-static {p1, v0}, LkK0;->b(LkK0;Z)V

    .line 2
    iget-object p1, p0, LbK0;->w:LkK0;

    .line 3
    iget-object p1, p1, LkK0;->B:Lorg/chromium/chrome/browser/toolbar/top/ToolbarControlContainer;

    .line 4
    iget-object p1, p1, Lorg/chromium/chrome/browser/toolbar/top/ToolbarControlContainer;->z:Lorg/chromium/chrome/browser/toolbar/top/ToolbarControlContainer$ToolbarViewResourceFrameLayout;

    .line 5
    iput-boolean v0, p1, Lorg/chromium/chrome/browser/toolbar/top/ToolbarControlContainer$ToolbarViewResourceFrameLayout;->z:Z

    return-void
.end method

.method public onWebContentsSwapped(Lorg/chromium/chrome/browser/tab/Tab;ZZ)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 1
    :cond_0
    iget-object p1, p0, LbK0;->w:LkK0;

    .line 2
    iget-object p1, p1, LkK0;->J:LWo0;

    const/4 p2, 0x1

    .line 3
    invoke-interface {p1, p2}, LWo0;->b(Z)V

    if-eqz p3, :cond_1

    .line 4
    iget-object p1, p0, LbK0;->w:LkK0;

    .line 5
    iget-object p1, p1, LkK0;->V:LiK0;

    const/4 p3, 0x0

    .line 6
    iput p3, p1, LiK0;->c:I

    .line 7
    iget-object p3, p1, LiK0;->a:LkK0;

    .line 8
    iget-object p3, p3, LkK0;->A:LfL0;

    .line 9
    iget-object p3, p3, LfL0;->a:LQK0;

    .line 10
    iget-object p3, p3, LQK0;->D:LqK0;

    invoke-virtual {p3}, LqK0;->b()V

    .line 11
    iget-object p3, p1, LiK0;->a:LkK0;

    iget v0, p1, LiK0;->c:I

    .line 12
    invoke-virtual {p3, v0}, LkK0;->a(I)V

    .line 13
    iget-object p1, p1, LiK0;->b:Landroid/os/Handler;

    invoke-virtual {p1, p2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    :cond_1
    return-void
.end method
