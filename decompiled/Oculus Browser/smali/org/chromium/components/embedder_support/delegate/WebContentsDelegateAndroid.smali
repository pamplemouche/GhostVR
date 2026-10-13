.class public Lorg/chromium/components/embedder_support/delegate/WebContentsDelegateAndroid;
.super Ljava/lang/Object;
.source "PG"


# instance fields
.field public a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    .line 2
    iput v0, p0, Lorg/chromium/components/embedder_support/delegate/WebContentsDelegateAndroid;->a:I

    return-void
.end method

.method private final notifyLoadProgressChanged(D)V
    .locals 2

    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    mul-double p1, p1, v0

    double-to-int p1, p1

    .line 1
    iput p1, p0, Lorg/chromium/components/embedder_support/delegate/WebContentsDelegateAndroid;->a:I

    .line 2
    invoke-virtual {p0, p1}, Lorg/chromium/components/embedder_support/delegate/WebContentsDelegateAndroid;->a(I)V

    return-void
.end method


# virtual methods
.method public a(I)V
    .locals 0

    return-void
.end method

.method public activateContents()V
    .locals 0

    return-void
.end method

.method public addMessageToConsole(ILjava/lang/String;ILjava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public closeContents()V
    .locals 0

    return-void
.end method

.method public controlsResizeView()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public enterFullscreenModeForTab(Z)V
    .locals 0

    return-void
.end method

.method public exitFullscreenModeForTab()V
    .locals 0

    return-void
.end method

.method public getBottomControlsHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public getTopControlsHeight()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public handleKeyboardEvent(Landroid/view/KeyEvent;)V
    .locals 0

    return-void
.end method

.method public isFullscreenForTabOrPending()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public loadingStateChanged(Z)V
    .locals 0

    return-void
.end method

.method public navigationStateChanged(I)V
    .locals 0

    return-void
.end method

.method public onUpdateUrl(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public openNewTab(Ljava/lang/String;Ljava/lang/String;Lorg/chromium/content_public/common/ResourceRequestBody;IZ)V
    .locals 0

    return-void
.end method

.method public rendererResponsive()V
    .locals 0

    return-void
.end method

.method public rendererUnresponsive()V
    .locals 0

    return-void
.end method

.method public shouldBlockMediaRequest(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public shouldCreateWebContents(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public showRepostFormWarningDialog()V
    .locals 0

    return-void
.end method

.method public takeFocus(Z)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public visibleSSLStateChanged()V
    .locals 0

    return-void
.end method

.method public webContentsCreated(Lorg/chromium/content_public/browser/WebContents;JJLjava/lang/String;Ljava/lang/String;Lorg/chromium/content_public/browser/WebContents;)V
    .locals 0

    return-void
.end method
