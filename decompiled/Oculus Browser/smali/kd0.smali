.class public abstract Lkd0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final INVALID_TOKEN:I = -0x1


# instance fields
.field public final mHtmlApiHandler:Ljd0;

.field public mOverlayVideoMode:Z

.field public mTab:Lorg/chromium/chrome/browser/tab/Tab;


# direct methods
.method public constructor <init>(Landroid/view/Window;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-virtual {p0, p1}, Lkd0;->createHtmlApiHandler(Landroid/view/Window;)Ljd0;

    move-result-object p1

    iput-object p1, p0, Lkd0;->mHtmlApiHandler:Ljd0;

    return-void
.end method


# virtual methods
.method public abstract createApiDelegate()Lhd0;
.end method

.method public createHtmlApiHandler(Landroid/view/Window;)Ljd0;
    .locals 2

    .line 1
    new-instance v0, Lid0;

    invoke-virtual {p0}, Lkd0;->createApiDelegate()Lhd0;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lid0;-><init>(Landroid/view/Window;Lhd0;)V

    return-object v0
.end method

.method public enterPersistentFullscreenMode(Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkd0;->mHtmlApiHandler:Ljd0;

    invoke-interface {v0, p1}, Ljd0;->enterPersistentFullscreenMode(Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;)V

    .line 2
    invoke-virtual {p0}, Lkd0;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    invoke-static {p1}, LgH0;->b(Lorg/chromium/chrome/browser/tab/Tab;)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lkd0;->updateMultiTouchZoomSupport(Z)V

    return-void
.end method

.method public exitPersistentFullscreenMode()V
    .locals 1

    .line 1
    iget-object v0, p0, Lkd0;->mHtmlApiHandler:Ljd0;

    invoke-interface {v0}, Ljd0;->exitPersistentFullscreenMode()V

    .line 2
    invoke-virtual {p0}, Lkd0;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    invoke-static {v0}, LgH0;->b(Lorg/chromium/chrome/browser/tab/Tab;)V

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0}, Lkd0;->updateMultiTouchZoomSupport(Z)V

    return-void
.end method

.method public abstract getBottomControlsHeight()I
.end method

.method public getHtmlApiHandler()Ljd0;
    .locals 1

    .line 1
    iget-object v0, p0, Lkd0;->mHtmlApiHandler:Ljd0;

    return-object v0
.end method

.method public getPersistentFullscreenMode()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lkd0;->mHtmlApiHandler:Ljd0;

    invoke-interface {v0}, Ljd0;->getPersistentFullscreenMode()Z

    move-result v0

    return v0
.end method

.method public getTab()Lorg/chromium/chrome/browser/tab/Tab;
    .locals 1

    .line 1
    iget-object v0, p0, Lkd0;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    return-object v0
.end method

.method public abstract getTopControlsHeight()I
.end method

.method public isOverlayVideoMode()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lkd0;->mOverlayVideoMode:Z

    return v0
.end method

.method public onContentViewScrollingStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public onContentViewSystemUiVisibilityChange(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkd0;->mHtmlApiHandler:Ljd0;

    invoke-interface {v0, p1}, Ljd0;->onContentViewSystemUiVisibilityChange(I)V

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkd0;->mHtmlApiHandler:Ljd0;

    invoke-interface {v0, p1}, Ljd0;->onWindowFocusChanged(Z)V

    return-void
.end method

.method public setOverlayVideoMode(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lkd0;->mOverlayVideoMode:Z

    return-void
.end method

.method public setTab(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lkd0;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    if-ne v0, p1, :cond_0

    return-void

    .line 2
    :cond_0
    iput-object p1, p0, Lkd0;->mTab:Lorg/chromium/chrome/browser/tab/Tab;

    return-void
.end method

.method public updateMultiTouchZoomSupport(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkd0;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-boolean v1, v0, Lorg/chromium/chrome/browser/tab/Tab;->x:Z

    if-eqz v1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, v0, Lorg/chromium/chrome/browser/tab/Tab;->g:Lorg/chromium/content_public/browser/WebContents;

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v0}, Lorg/chromium/content/browser/GestureListenerManagerImpl;->a(Lorg/chromium/content_public/browser/WebContents;)Lorg/chromium/content/browser/GestureListenerManagerImpl;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    invoke-interface {v0, p1}, LH01;->a(Z)V

    :cond_1
    :goto_0
    return-void
.end method
