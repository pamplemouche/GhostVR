.class Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$6;
.super Ljava/lang/Object;
.source "AvRecorder.java"

# interfaces
.implements Lcom/facebook/cameracore/common/StateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->prepare(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$pendingPrepareCallbacks:Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;

.field final synthetic val$stateCallback:Lcom/facebook/cameracore/common/StateCallback;


# direct methods
.method constructor <init>(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 308
    iput-object p1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$6;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    iput-object p2, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$6;->val$pendingPrepareCallbacks:Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;

    iput-object p3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$6;->val$stateCallback:Lcom/facebook/cameracore/common/StateCallback;

    iput-object p4, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$6;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 318
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$6;->val$stateCallback:Lcom/facebook/cameracore/common/StateCallback;

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$6;->val$handler:Landroid/os/Handler;

    invoke-static {v0, v1, p1}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifyError(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Ljava/lang/Throwable;)V

    .line 319
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$6;->val$pendingPrepareCallbacks:Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;

    invoke-virtual {v0}, Lcom/facebook/cameracore/mediapipeline/recorder/CountDown;->decrementAndGet()I

    move-result v0

    if-nez v0, :cond_0

    .line 312
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$6;->val$stateCallback:Lcom/facebook/cameracore/common/StateCallback;

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$6;->val$handler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifySuccess(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    .line 314
    :cond_0
    return-void
.end method
