.class public LXc0;
.super LDI0;
.source "PG"


# instance fields
.field public final synthetic w:Lbd0;


# direct methods
.method public constructor <init>(Lbd0;LpI0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LXc0;->w:Lbd0;

    invoke-direct {p0, p2}, LDI0;-><init>(LpI0;)V

    return-void
.end method


# virtual methods
.method public final a(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/Runnable;)V
    .locals 1

    .line 1
    invoke-static {p1}, LeH0;->a(Lorg/chromium/chrome/browser/tab/Tab;)LeH0;

    move-result-object p1

    const-string v0, "EnterFullscreen"

    if-nez p2, :cond_0

    .line 2
    iget-object p1, p1, LeH0;->w:Ljava/util/Map;

    invoke-interface {p1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, LeH0;->w:Ljava/util/Map;

    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public onBrowserControlsOffsetChanged(Lorg/chromium/chrome/browser/tab/Tab;III)V
    .locals 3

    .line 1
    iget-object v0, p0, LXc0;->w:Lbd0;

    invoke-virtual {v0}, Lkd0;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-ne p1, v0, :cond_5

    .line 2
    iget-object p1, p0, LXc0;->w:Lbd0;

    .line 3
    iget-boolean v0, p1, Lbd0;->T:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p1, Lbd0;->S:Landroid/animation/ValueAnimator;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->cancel()V

    .line 5
    :cond_1
    iput-boolean v1, p1, Lbd0;->T:Z

    .line 6
    :goto_0
    invoke-virtual {p1}, Lkd0;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    .line 7
    invoke-static {v0}, LaH0;->a(Lorg/chromium/chrome/browser/tab/Tab;)Z

    move-result v2

    if-nez v2, :cond_3

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->isNativePage()Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    .line 8
    :cond_2
    invoke-virtual {p1, v1, p2, p3, p4}, Lbd0;->a(ZIII)V

    goto :goto_2

    .line 9
    :cond_3
    :goto_1
    invoke-virtual {p1, v1}, Lbd0;->a(Z)V

    .line 10
    :goto_2
    sget-wide p1, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->d:J

    const-wide/16 p3, 0x0

    cmp-long v0, p1, p3

    if-gtz v0, :cond_4

    goto :goto_3

    :cond_4
    const/4 p1, 0x1

    .line 11
    sput-boolean p1, Lorg/chromium/chrome/browser/tabmodel/TabModelJniBridge;->f:Z

    :cond_5
    :goto_3
    return-void
.end method

.method public onContentChanged(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    iget-object v0, p0, LXc0;->w:Lbd0;

    invoke-virtual {v0}, Lkd0;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, LXc0;->w:Lbd0;

    .line 2
    invoke-virtual {p1}, Lbd0;->g()V

    :cond_0
    return-void
.end method

.method public onCrash(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    iget-object v0, p0, LXc0;->w:Lbd0;

    invoke-virtual {v0}, Lkd0;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-ne p1, v0, :cond_0

    invoke-static {p1}, LaH0;->a(Lorg/chromium/chrome/browser/tab/Tab;)Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, LXc0;->w:Lbd0;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lbd0;->a(Z)V

    :cond_0
    return-void
.end method

.method public onDidFinishNavigation(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/NavigationHandle;)V
    .locals 1

    .line 1
    iget-boolean v0, p2, Lorg/chromium/content_public/browser/NavigationHandle;->a:Z

    if-eqz v0, :cond_0

    .line 2
    iget-boolean p2, p2, Lorg/chromium/content_public/browser/NavigationHandle;->b:Z

    if-nez p2, :cond_0

    .line 3
    iget-object p2, p0, LXc0;->w:Lbd0;

    invoke-virtual {p2}, Lkd0;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p2

    if-ne p1, p2, :cond_0

    iget-object p1, p0, LXc0;->w:Lbd0;

    invoke-virtual {p1}, Lkd0;->exitPersistentFullscreenMode()V

    :cond_0
    return-void
.end method

.method public onEnterFullscreenMode(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->isUserInteractable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LXc0;->w:Lbd0;

    invoke-virtual {v0, p2}, Lkd0;->enterPersistentFullscreenMode(Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;)V

    .line 3
    iget-object p1, p1, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz p1, :cond_1

    .line 4
    invoke-static {p1}, Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/selection/SelectionPopupControllerImpl;

    move-result-object p1

    .line 5
    invoke-interface {p1}, LX01;->d()V

    goto :goto_0

    .line 6
    :cond_0
    new-instance v0, LWc0;

    invoke-direct {v0, p0, p2, p1}, LWc0;-><init>(LXc0;Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;Lorg/chromium/chrome/browser/tab/Tab;)V

    invoke-virtual {p0, p1, v0}, LXc0;->a(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/Runnable;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onExitFullscreenMode(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, LXc0;->a(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, LXc0;->w:Lbd0;

    invoke-virtual {v0}, Lkd0;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-ne p1, v0, :cond_0

    iget-object p1, p0, LXc0;->w:Lbd0;

    invoke-virtual {p1}, Lkd0;->exitPersistentFullscreenMode()V

    :cond_0
    return-void
.end method

.method public onHidden(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 0

    .line 1
    iget-object p1, p0, LXc0;->w:Lbd0;

    invoke-virtual {p1}, Lkd0;->exitPersistentFullscreenMode()V

    return-void
.end method

.method public onInteractabilityChanged(Z)V
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object p1, p0, LXc0;->w:Lbd0;

    invoke-virtual {p1}, Lkd0;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1}, LeH0;->a(Lorg/chromium/chrome/browser/tab/Tab;)LeH0;

    move-result-object p1

    const-string v0, "EnterFullscreen"

    invoke-virtual {p1, v0}, LeH0;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Runnable;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    .line 3
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    :cond_1
    return-void
.end method

.method public onRendererResponsiveStateChanged(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 1

    .line 1
    iget-object v0, p0, LXc0;->w:Lbd0;

    invoke-virtual {v0}, Lkd0;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-ne p1, v0, :cond_0

    if-nez p2, :cond_0

    iget-object p1, p0, LXc0;->w:Lbd0;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Lbd0;->a(Z)V

    :cond_0
    return-void
.end method
