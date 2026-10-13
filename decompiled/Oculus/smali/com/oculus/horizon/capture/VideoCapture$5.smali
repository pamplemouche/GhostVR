.class Lcom/oculus/horizon/capture/VideoCapture$5;
.super Ljava/lang/Object;
.source "VideoCapture.java"

# interfaces
.implements Lcom/facebook/cameracore/mediapipeline/filterlib/VideoOutputProvider;


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
.method public addOutput(Lcom/facebook/cameracore/mediapipeline/filterlib/output/VideoOutput;Landroid/view/Surface;)V
    .locals 2
    .param p2    # Landroid/view/Surface;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 131
    const-string v0, "VideoCapture"

    const-string v1, "addOutput surface = %s"

    invoke-static {v0, v1, p2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/oculus/horizon/capture/VideoCapture$5;->this$0:Lcom/oculus/horizon/capture/VideoCapture;

    invoke-static {v0}, Lcom/oculus/horizon/capture/VideoCapture;->access$000(Lcom/oculus/horizon/capture/VideoCapture;)Lcom/oculus/horizon/capture/ScreenCapture$VideoStateListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/oculus/horizon/capture/ScreenCapture$VideoStateListener;->addOutputSurface(Landroid/view/Surface;)V

    .line 133
    return-void
.end method

.method public removeOutput(Lcom/facebook/cameracore/mediapipeline/filterlib/output/VideoOutput;)V
    .locals 0

    .prologue
    .line 136
    return-void
.end method
