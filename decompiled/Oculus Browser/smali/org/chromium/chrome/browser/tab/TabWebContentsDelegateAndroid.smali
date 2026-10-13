.class public abstract Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;
.super Lorg/chromium/components/embedder_support/delegate/WebContentsDelegateAndroid;
.source "PG"


# instance fields
.field public final b:Lorg/chromium/chrome/browser/tab/Tab;

.field public c:Landroid/os/Handler;

.field public final d:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lorg/chromium/components/embedder_support/delegate/WebContentsDelegateAndroid;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    new-instance p1, Landroid/os/Handler;

    invoke-direct {p1}, Landroid/os/Handler;-><init>()V

    iput-object p1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->c:Landroid/os/Handler;

    .line 4
    new-instance p1, LBH0;

    invoke-direct {p1, p0}, LBH0;-><init>(Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;)V

    iput-object p1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->d:Ljava/lang/Runnable;

    return-void
.end method

.method public static createFindMatchRectsDetails(IILandroid/graphics/RectF;)Lorg/chromium/chrome/browser/findinpage/FindMatchRectsDetails;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/findinpage/FindMatchRectsDetails;

    invoke-direct {v0, p0, p1, p2}, Lorg/chromium/chrome/browser/findinpage/FindMatchRectsDetails;-><init>(IILandroid/graphics/RectF;)V

    return-object v0
.end method

.method public static createFindNotificationDetails(ILandroid/graphics/Rect;IZ)Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;
    .locals 1

    .line 1
    new-instance v0, Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;

    invoke-direct {v0, p0, p1, p2, p3}, Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;-><init>(ILandroid/graphics/Rect;IZ)V

    return-object v0
.end method

.method public static createRect(IIII)Landroid/graphics/Rect;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v0
.end method

.method public static createRectF(FFFF)Landroid/graphics/RectF;
    .locals 1

    .line 1
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0, p0, p1, p2, p3}, Landroid/graphics/RectF;-><init>(FFFF)V

    return-object v0
.end method

.method private onFindMatchRectsAvailable(Lorg/chromium/chrome/browser/findinpage/FindMatchRectsDetails;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->m()LVT;

    move-result-object v0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LpH0;

    invoke-interface {v1, p1}, LpH0;->onFindMatchRectsAvailable(Lorg/chromium/chrome/browser/findinpage/FindMatchRectsDetails;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private onFindResultAvailable(Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->m()LVT;

    move-result-object v0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LpH0;

    invoke-interface {v1, p1}, LpH0;->onFindResultAvailable(Lorg/chromium/chrome/browser/findinpage/FindNotificationDetails;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public static setMatchRectByIndex(Lorg/chromium/chrome/browser/findinpage/FindMatchRectsDetails;ILandroid/graphics/RectF;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lorg/chromium/chrome/browser/findinpage/FindMatchRectsDetails;->b:[Landroid/graphics/RectF;

    aput-object p2, p0, p1

    return-void
.end method

.method private swapWebContents(Lorg/chromium/content_public/browser/WebContents;ZZ)V
    .locals 7

    .line 1
    iget-object v6, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    .line 2
    iget-object v0, v6, Lorg/chromium/chrome/browser/tab/Tab;->h:Landroid/view/ViewGroup;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, v6, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getWidth()I

    move-result v0

    .line 4
    iget-object v2, v6, Lorg/chromium/chrome/browser/tab/Tab;->h:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getHeight()I

    move-result v2

    .line 5
    iget-object v3, v6, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    invoke-interface {v3}, Lorg/chromium/content_public/browser/WebContents;->n()V

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 6
    :goto_0
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    if-nez v0, :cond_1

    if-nez v2, :cond_1

    .line 7
    invoke-virtual {v6}, Lorg/chromium/chrome/browser/tab/Tab;->f()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v1}, LQC0;->a(Landroid/content/Context;Z)Landroid/graphics/Rect;

    move-result-object v3

    .line 8
    iget v0, v3, Landroid/graphics/Rect;->right:I

    iget v2, v3, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v2

    .line 9
    iget v2, v3, Landroid/graphics/Rect;->bottom:I

    iget v4, v3, Landroid/graphics/Rect;->top:I

    sub-int/2addr v2, v4

    .line 10
    :cond_1
    invoke-virtual {v6, v1}, Lorg/chromium/chrome/browser/tab/Tab;->a(Z)V

    const/4 v1, 0x0

    .line 11
    iput-object v1, v6, Lorg/chromium/chrome/browser/tab/Tab;->f:Lsl0;

    .line 12
    invoke-interface {p1, v0, v2}, Lorg/chromium/content_public/browser/WebContents;->a(II)V

    .line 13
    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 14
    iget-wide v0, v6, Lorg/chromium/chrome/browser/tab/Tab;->a:J

    iget v4, v3, Landroid/graphics/Rect;->right:I

    iget v5, v3, Landroid/graphics/Rect;->bottom:I

    move-object v2, v6

    move-object v3, p1

    .line 15
    invoke-static/range {v0 .. v5}, LJ/N;->MrqzMn7E(JLjava/lang/Object;Ljava/lang/Object;II)V

    .line 16
    :cond_2
    invoke-interface {p1}, Lorg/chromium/content_public/browser/WebContents;->w()V

    .line 17
    invoke-virtual {v6, p1}, Lorg/chromium/chrome/browser/tab/Tab;->a(Lorg/chromium/content_public/browser/WebContents;)V

    .line 18
    invoke-virtual {v6}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p2, :cond_3

    .line 19
    invoke-virtual {v6, p1}, Lorg/chromium/chrome/browser/tab/Tab;->b(Ljava/lang/String;)V

    if-eqz p3, :cond_3

    .line 20
    invoke-virtual {v6, p1}, Lorg/chromium/chrome/browser/tab/Tab;->a(Ljava/lang/String;)V

    .line 21
    :cond_3
    iget-object p1, v6, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {p1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LpH0;

    .line 22
    invoke-interface {v0, v6, p2, p3}, LpH0;->onWebContentsSwapped(Lorg/chromium/chrome/browser/tab/Tab;ZZ)V

    goto :goto_1

    :cond_4
    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->s()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0, p1}, Lorg/chromium/chrome/browser/tab/Tab;->c(I)V

    return-void
.end method

.method public addMessageToConsole(ILjava/lang/String;ILjava/lang/String;)Z
    .locals 0

    .line 1
    invoke-static {}, Lorg/chromium/base/BuildInfo;->b()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method public abstract addNewContents(Lorg/chromium/content_public/browser/WebContents;Lorg/chromium/content_public/browser/WebContents;ILandroid/graphics/Rect;Z)Z
.end method

.method public closeContents()V
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->c:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->c:Landroid/os/Handler;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->d:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public enterFullscreenModeForTab(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    new-instance v1, Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;

    invoke-direct {v1, p1}, Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;-><init>(Z)V

    .line 2
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->m()LVT;

    move-result-object p1

    .line 3
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LpH0;

    invoke-interface {v2, v0, v1}, LpH0;->onEnterFullscreenMode(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public exitFullscreenModeForTab()V
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->d()V

    return-void
.end method

.method public getDisplayMode()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getManifestScope()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public isNightModeEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isPictureInPictureEnabled()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public loadingStateChanged(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    .line 2
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lorg/chromium/content_public/browser/WebContents;->e()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 4
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    if-eqz p1, :cond_1

    .line 5
    iput-boolean v1, v0, Lorg/chromium/chrome/browser/tab/Tab;->v:Z

    .line 6
    :cond_1
    iget-object v1, v0, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LpH0;

    invoke-interface {v2, v0, p1}, LpH0;->onLoadStarted(Lorg/chromium/chrome/browser/tab/Tab;Z)V

    goto :goto_1

    .line 7
    :cond_2
    iget-object p1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    .line 8
    iget-boolean v0, p1, Lorg/chromium/chrome/browser/tab/Tab;->v:Z

    .line 9
    iput-boolean v2, p1, Lorg/chromium/chrome/browser/tab/Tab;->v:Z

    .line 10
    iget-object v1, p1, Lorg/chromium/chrome/browser/tab/Tab;->i:LWT;

    invoke-virtual {v1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, LpH0;

    invoke-interface {v2, p1, v0}, LpH0;->onLoadStopped(Lorg/chromium/chrome/browser/tab/Tab;Z)V

    goto :goto_2

    :cond_3
    return-void
.end method

.method public navigationStateChanged(I)V
    .locals 4

    and-int/lit8 v0, p1, 0x2

    if-eqz v0, :cond_0

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    .line 2
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->f()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result v1

    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    iget-object v3, v2, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 4
    invoke-virtual {v2}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    move-result-object v2

    .line 5
    invoke-static {v0, v1, v3, v2}, Lorg/chromium/chrome/browser/media/MediaCaptureNotificationService;->a(Landroid/content/Context;ILorg/chromium/content_public/browser/WebContents;Ljava/lang/String;)V

    :cond_0
    and-int/lit8 v0, p1, 0x8

    if-eqz v0, :cond_1

    .line 6
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->G()V

    :cond_1
    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_2

    .line 7
    iget-object p1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->m()LVT;

    move-result-object p1

    .line 8
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 9
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LpH0;

    iget-object v1, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-interface {v0, v1}, LpH0;->onUrlUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    :cond_2
    return-void
.end method

.method public onUpdateUrl(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->m()LVT;

    move-result-object v0

    .line 2
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LpH0;

    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-interface {v1, v2, p1}, LpH0;->onUpdateUrl(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public rendererResponsive()V
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/chromium/components/embedder_support/delegate/WebContentsDelegateAndroid;->rendererResponsive()V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, LJ/N;->MiIsudS0(Ljava/lang/Object;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->b(Z)V

    return-void
.end method

.method public rendererUnresponsive()V
    .locals 2

    .line 1
    invoke-super {p0}, Lorg/chromium/components/embedder_support/delegate/WebContentsDelegateAndroid;->rendererUnresponsive()V

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_0

    .line 4
    invoke-static {v0}, LJ/N;->MGGpKzhA(Ljava/lang/Object;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lorg/chromium/chrome/browser/tab/Tab;->b(Z)V

    return-void
.end method

.method public abstract setOverlayMode(Z)V
.end method

.method public shouldEnableEmbeddedMediaExperience()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public abstract shouldResumeRequestsForCreatedWindow()Z
.end method

.method public visibleSSLStateChanged()V
    .locals 3

    .line 1
    invoke-static {}, Lorg/chromium/chrome/browser/AppHooks;->get()Lorg/chromium/chrome/browser/AppHooks;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    .line 3
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    .line 4
    invoke-static {v0}, LJ/N;->MX4bLIGx(Ljava/lang/Object;)I

    .line 5
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    .line 6
    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->f()Landroid/content/Context;

    .line 7
    iget-object v0, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v0}, Lorg/chromium/chrome/browser/tab/Tab;->m()LVT;

    move-result-object v0

    .line 8
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 9
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LpH0;

    iget-object v2, p0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-interface {v1, v2}, LpH0;->onSSLStateUpdated(Lorg/chromium/chrome/browser/tab/Tab;)V

    goto :goto_0

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    .line 10
    throw v0
.end method

.method public webContentsCreated(Lorg/chromium/content_public/browser/WebContents;JJLjava/lang/String;Ljava/lang/String;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 13

    move-object v0, p0

    .line 1
    iget-object v1, v0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    invoke-virtual {v1}, Lorg/chromium/chrome/browser/tab/Tab;->m()LVT;

    move-result-object v1

    .line 2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, LpH0;

    iget-object v4, v0, Lorg/chromium/chrome/browser/tab/TabWebContentsDelegateAndroid;->b:Lorg/chromium/chrome/browser/tab/Tab;

    move-object v5, p1

    move-wide v6, p2

    move-wide/from16 v8, p4

    move-object/from16 v10, p6

    move-object/from16 v11, p7

    move-object/from16 v12, p8

    invoke-interface/range {v3 .. v12}, LpH0;->webContentsCreated(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/content_public/browser/WebContents;JJLjava/lang/String;Ljava/lang/String;Lorg/chromium/content_public/browser/WebContents;)V

    goto :goto_0

    :cond_0
    return-void
.end method
