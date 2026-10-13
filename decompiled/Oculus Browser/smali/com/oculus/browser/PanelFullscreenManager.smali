.class public Lcom/oculus/browser/PanelFullscreenManager;
.super Lkd0;
.source "PG"


# instance fields
.field public fullscreenEnabled:Z

.field public mTabFullscreenObserver:LDI0;


# direct methods
.method public constructor <init>(LpI0;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Lkd0;-><init>(Landroid/view/Window;)V

    .line 2
    new-instance v0, Lcom/oculus/browser/PanelFullscreenManager$1;

    invoke-direct {v0, p0, p1}, Lcom/oculus/browser/PanelFullscreenManager$1;-><init>(Lcom/oculus/browser/PanelFullscreenManager;LpI0;)V

    iput-object v0, p0, Lcom/oculus/browser/PanelFullscreenManager;->mTabFullscreenObserver:LDI0;

    return-void
.end method

.method public static synthetic access$000(Lcom/oculus/browser/PanelFullscreenManager;Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkd0;->enterPersistentFullscreenMode(Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;)V

    return-void
.end method

.method public static synthetic access$100(Lcom/oculus/browser/PanelFullscreenManager;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/oculus/browser/PanelFullscreenManager;->fullscreenEnabled:Z

    return p0
.end method

.method public static synthetic access$102(Lcom/oculus/browser/PanelFullscreenManager;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/oculus/browser/PanelFullscreenManager;->fullscreenEnabled:Z

    return p1
.end method


# virtual methods
.method public createApiDelegate()Lhd0;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public createHtmlApiHandler(Landroid/view/Window;)Ljd0;
    .locals 0

    .line 1
    new-instance p1, Lcom/oculus/browser/PanelFullscreenManager$2;

    invoke-direct {p1, p0}, Lcom/oculus/browser/PanelFullscreenManager$2;-><init>(Lcom/oculus/browser/PanelFullscreenManager;)V

    return-object p1
.end method

.method public destroy()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Lkd0;->setTab(Lorg/chromium/chrome/browser/tab/Tab;)V

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/PanelFullscreenManager;->mTabFullscreenObserver:LDI0;

    invoke-virtual {v0}, LDI0;->destroy()V

    return-void
.end method

.method public getBottomControlOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBottomControlsHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getBrowserControlHiddenRatio()F
    .locals 1

    const/high16 v0, 0x3f800000    # 1.0f

    return v0
.end method

.method public getContentOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTopControlOffset()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTopControlsHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public setPositionsForTab(III)V
    .locals 0

    return-void
.end method

.method public setPositionsForTabToNonFullscreen()V
    .locals 0

    return-void
.end method

.method public updateContentViewChildrenState()V
    .locals 0

    return-void
.end method
