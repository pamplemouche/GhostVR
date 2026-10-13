.class public Lcom/oculus/browser/PanelApp$1;
.super LSG0;
.source "PG"


# instance fields
.field public final synthetic this$0:Lcom/oculus/browser/PanelApp;


# direct methods
.method public constructor <init>(Lcom/oculus/browser/PanelApp;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/oculus/browser/PanelApp$1;->this$0:Lcom/oculus/browser/PanelApp;

    invoke-direct {p0}, LSG0;-><init>()V

    return-void
.end method


# virtual methods
.method public onContentChanged(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    .line 2
    iget-object p1, p0, Lcom/oculus/browser/PanelApp$1;->this$0:Lcom/oculus/browser/PanelApp;

    invoke-static {p1}, Lcom/oculus/browser/PanelApp;->access$200(Lcom/oculus/browser/PanelApp;)V

    return-void
.end method

.method public onCrash(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    .line 2
    iget-object v0, p0, Lcom/oculus/browser/PanelApp$1;->this$0:Lcom/oculus/browser/PanelApp;

    invoke-virtual {v0}, Lcom/oculus/browser/PanelApp;->postDeferredStartupIfNeeded()V

    .line 3
    iget-object v0, p0, Lcom/oculus/browser/PanelApp$1;->this$0:Lcom/oculus/browser/PanelApp;

    invoke-virtual {v0, p1}, Lcom/oculus/browser/PanelApp;->cancelWebVRDeepLinkIfNeeded(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method

.method public onExitFullscreenMode(Lorg/chromium/chrome/browser/tab/Tab;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    .line 2
    iget-object p1, p0, Lcom/oculus/browser/PanelApp$1;->this$0:Lcom/oculus/browser/PanelApp;

    invoke-static {p1}, Lcom/oculus/browser/PanelApp;->access$300(Lcom/oculus/browser/PanelApp;)Lcom/oculus/browser/PanelFullscreenManager;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcom/oculus/browser/PanelApp$1;->this$0:Lcom/oculus/browser/PanelApp;

    invoke-static {p1}, Lcom/oculus/browser/PanelApp;->access$300(Lcom/oculus/browser/PanelApp;)Lcom/oculus/browser/PanelFullscreenManager;

    move-result-object p1

    invoke-virtual {p1}, Lkd0;->exitPersistentFullscreenMode()V

    :cond_0
    return-void
.end method

.method public onLoadProgressChanged(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 6

    const-string v0, "onLoadProgressChanged "

    .line 1
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, " "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/browser/PanelApp$1;->this$0:Lcom/oculus/browser/PanelApp;

    invoke-static {v1}, Lcom/oculus/browser/PanelApp;->access$000(Lcom/oculus/browser/PanelApp;)J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 3
    iget-object p1, p0, Lcom/oculus/browser/PanelApp$1;->this$0:Lcom/oculus/browser/PanelApp;

    invoke-static {p1}, Lcom/oculus/browser/PanelApp;->access$100(Lcom/oculus/browser/PanelApp;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/oculus/browser/PanelApp$1;->this$0:Lcom/oculus/browser/PanelApp;

    invoke-static {p1}, Lcom/oculus/browser/PanelApp;->access$100(Lcom/oculus/browser/PanelApp;)Lorg/chromium/chrome/browser/tab/Tab;

    move-result-object p1

    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_0

    :cond_0
    const-string p1, ""

    :goto_0
    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 4
    invoke-static {}, Lcom/oculus/browser/PanelAppJni;->get()Lcom/oculus/browser/PanelApp$Natives;

    move-result-object p1

    iget-object v0, p0, Lcom/oculus/browser/PanelApp$1;->this$0:Lcom/oculus/browser/PanelApp;

    invoke-static {v0}, Lcom/oculus/browser/PanelApp;->access$000(Lcom/oculus/browser/PanelApp;)J

    move-result-wide v0

    int-to-double v2, p2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    div-double/2addr v2, v4

    invoke-interface {p1, v0, v1, v2, v3}, Lcom/oculus/browser/PanelApp$Natives;->onLoadProgressChanged(JD)V

    return-void
.end method

.method public onLoadStopped(Lorg/chromium/chrome/browser/tab/Tab;Z)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    .line 2
    iget-object p1, p0, Lcom/oculus/browser/PanelApp$1;->this$0:Lcom/oculus/browser/PanelApp;

    invoke-virtual {p1}, Lcom/oculus/browser/PanelApp;->postDeferredStartupIfNeeded()V

    return-void
.end method

.method public onPageLoadFailed(Lorg/chromium/chrome/browser/tab/Tab;I)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    .line 2
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getUrl()Ljava/lang/String;

    .line 3
    iget-object p2, p0, Lcom/oculus/browser/PanelApp$1;->this$0:Lcom/oculus/browser/PanelApp;

    invoke-virtual {p2}, Lcom/oculus/browser/PanelApp;->postDeferredStartupIfNeeded()V

    .line 4
    iget-object p2, p0, Lcom/oculus/browser/PanelApp$1;->this$0:Lcom/oculus/browser/PanelApp;

    invoke-virtual {p2, p1}, Lcom/oculus/browser/PanelApp;->cancelWebVRDeepLinkIfNeeded(Lorg/chromium/chrome/browser/tab/Tab;)V

    return-void
.end method

.method public onPageLoadFinished(Lorg/chromium/chrome/browser/tab/Tab;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    .line 2
    iget-object p1, p0, Lcom/oculus/browser/PanelApp$1;->this$0:Lcom/oculus/browser/PanelApp;

    invoke-virtual {p1}, Lcom/oculus/browser/PanelApp;->postDeferredStartupIfNeeded()V

    return-void
.end method

.method public onWebContentsSwapped(Lorg/chromium/chrome/browser/tab/Tab;ZZ)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Lorg/chromium/chrome/browser/tab/Tab;->getId()I

    .line 2
    iget-object p1, p0, Lcom/oculus/browser/PanelApp$1;->this$0:Lcom/oculus/browser/PanelApp;

    invoke-static {p1}, Lcom/oculus/browser/PanelApp;->access$200(Lcom/oculus/browser/PanelApp;)V

    return-void
.end method
