.class public Lcom/oculus/browser/PanelFullscreenManager$2;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Ljd0;


# instance fields
.field public final synthetic this$0:Lcom/oculus/browser/PanelFullscreenManager;


# direct methods
.method public constructor <init>(Lcom/oculus/browser/PanelFullscreenManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/PanelFullscreenManager$2;->this$0:Lcom/oculus/browser/PanelFullscreenManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public enterFullscreen(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;)V
    .locals 0

    return-void
.end method

.method public enterPersistentFullscreenMode(Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/oculus/browser/PanelFullscreenManager$2;->this$0:Lcom/oculus/browser/PanelFullscreenManager;

    const/4 v0, 0x1

    invoke-static {p1, v0}, Lcom/oculus/browser/PanelFullscreenManager;->access$102(Lcom/oculus/browser/PanelFullscreenManager;Z)Z

    return-void
.end method

.method public exitPersistentFullscreenMode()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/PanelFullscreenManager$2;->this$0:Lcom/oculus/browser/PanelFullscreenManager;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/oculus/browser/PanelFullscreenManager;->access$102(Lcom/oculus/browser/PanelFullscreenManager;Z)Z

    return-void
.end method

.method public getPersistentFullscreenMode()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/PanelFullscreenManager$2;->this$0:Lcom/oculus/browser/PanelFullscreenManager;

    invoke-static {v0}, Lcom/oculus/browser/PanelFullscreenManager;->access$100(Lcom/oculus/browser/PanelFullscreenManager;)Z

    move-result v0

    return v0
.end method

.method public hideNotificationToast()V
    .locals 0

    return-void
.end method

.method public onContentViewSystemUiVisibilityChange(I)V
    .locals 0

    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0

    return-void
.end method
