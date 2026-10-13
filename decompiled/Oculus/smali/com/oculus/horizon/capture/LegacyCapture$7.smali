.class Lcom/oculus/horizon/capture/LegacyCapture$7;
.super Ljava/lang/Object;
.source "LegacyCapture.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/capture/LegacyCapture;->stopRecordVideo()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/capture/LegacyCapture;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/capture/LegacyCapture;)V
    .locals 0

    .prologue
    .line 281
    iput-object p1, p0, Lcom/oculus/horizon/capture/LegacyCapture$7;->this$0:Lcom/oculus/horizon/capture/LegacyCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 284
    iget-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture$7;->this$0:Lcom/oculus/horizon/capture/LegacyCapture;

    invoke-static {v0}, Lcom/oculus/horizon/capture/LegacyCapture;->access$200(Lcom/oculus/horizon/capture/LegacyCapture;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture$7;->this$0:Lcom/oculus/horizon/capture/LegacyCapture;

    invoke-static {v0}, Lcom/oculus/horizon/capture/LegacyCapture;->access$900(Lcom/oculus/horizon/capture/LegacyCapture;)Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinator;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/RecorderCoordinator;->stopRecordingVideo()V

    .line 287
    :cond_0
    return-void
.end method
