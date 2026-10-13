.class Lcom/oculus/horizon/capture/VideoCapture$1;
.super Ljava/lang/Object;
.source "VideoCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/capture/VideoCapture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/capture/VideoCapture;


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oculus/horizon/capture/VideoCapture$1;->this$0:Lcom/oculus/horizon/capture/VideoCapture;

    invoke-static {v0}, Lcom/oculus/horizon/capture/VideoCapture;->access$000(Lcom/oculus/horizon/capture/VideoCapture;)Lcom/oculus/horizon/capture/ScreenCapture$VideoStateListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/horizon/capture/ScreenCapture$VideoStateListener;->getAudio()V

    .line 57
    iget-object v0, p0, Lcom/oculus/horizon/capture/VideoCapture$1;->this$0:Lcom/oculus/horizon/capture/VideoCapture;

    invoke-static {v0}, Lcom/oculus/horizon/capture/VideoCapture;->access$100(Lcom/oculus/horizon/capture/VideoCapture;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/capture/VideoCapture$1;->this$0:Lcom/oculus/horizon/capture/VideoCapture;

    invoke-static {v0}, Lcom/oculus/horizon/capture/VideoCapture;->access$200(Lcom/oculus/horizon/capture/VideoCapture;)Landroid/os/Handler;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 58
    iget-object v0, p0, Lcom/oculus/horizon/capture/VideoCapture$1;->this$0:Lcom/oculus/horizon/capture/VideoCapture;

    invoke-static {v0}, Lcom/oculus/horizon/capture/VideoCapture;->access$200(Lcom/oculus/horizon/capture/VideoCapture;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/capture/VideoCapture$1;->this$0:Lcom/oculus/horizon/capture/VideoCapture;

    invoke-static {v1}, Lcom/oculus/horizon/capture/VideoCapture;->access$300(Lcom/oculus/horizon/capture/VideoCapture;)Ljava/lang/Runnable;

    move-result-object v1

    const-wide/16 v2, 0x1f4

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 60
    :cond_0
    return-void
.end method
