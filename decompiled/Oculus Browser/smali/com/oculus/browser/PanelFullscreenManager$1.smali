.class public Lcom/oculus/browser/PanelFullscreenManager$1;
.super LDI0;
.source "PG"


# instance fields
.field public final synthetic this$0:Lcom/oculus/browser/PanelFullscreenManager;


# direct methods
.method public constructor <init>(Lcom/oculus/browser/PanelFullscreenManager;LpI0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/PanelFullscreenManager$1;->this$0:Lcom/oculus/browser/PanelFullscreenManager;

    invoke-direct {p0, p2}, LDI0;-><init>(LpI0;)V

    return-void
.end method


# virtual methods
.method public onEnterFullscreenMode(Lorg/chromium/chrome/browser/tab/Tab;Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/oculus/browser/PanelFullscreenManager$1;->this$0:Lcom/oculus/browser/PanelFullscreenManager;

    invoke-static {p1, p2}, Lcom/oculus/browser/PanelFullscreenManager;->access$000(Lcom/oculus/browser/PanelFullscreenManager;Lorg/chromium/chrome/browser/fullscreen/FullscreenOptions;)V

    return-void
.end method

.method public onExitFullscreenMode(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/oculus/browser/PanelFullscreenManager$1;->this$0:Lcom/oculus/browser/PanelFullscreenManager;

    invoke-virtual {v0}, Lkd0;->getTab()Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 2
    iget-object p1, p0, Lcom/oculus/browser/PanelFullscreenManager$1;->this$0:Lcom/oculus/browser/PanelFullscreenManager;

    invoke-virtual {p1}, Lkd0;->exitPersistentFullscreenMode()V

    :cond_0
    return-void
.end method

.method public onHidden(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 0

    .line 1
    iget-object p1, p0, Lcom/oculus/browser/PanelFullscreenManager$1;->this$0:Lcom/oculus/browser/PanelFullscreenManager;

    invoke-virtual {p1}, Lkd0;->exitPersistentFullscreenMode()V

    return-void
.end method
