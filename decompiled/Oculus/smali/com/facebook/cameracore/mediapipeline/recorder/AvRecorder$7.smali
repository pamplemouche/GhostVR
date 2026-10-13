.class Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$7;
.super Ljava/lang/Object;
.source "AvRecorder.java"

# interfaces
.implements Lcom/facebook/cameracore/common/StateCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;->start(Ljava/io/File;Lcom/facebook/cameracore/common/StateCallback;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

.field final synthetic val$audioStateCallback:Lcom/facebook/cameracore/common/StateCallback;

.field final synthetic val$handler:Landroid/os/Handler;


# direct methods
.method constructor <init>(Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 361
    iput-object p1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$7;->this$0:Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder;

    iput-object p2, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$7;->val$audioStateCallback:Lcom/facebook/cameracore/common/StateCallback;

    iput-object p3, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$7;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Throwable;)V
    .locals 2

    .prologue
    .line 369
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$7;->val$audioStateCallback:Lcom/facebook/cameracore/common/StateCallback;

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$7;->val$handler:Landroid/os/Handler;

    invoke-static {v0, v1, p1}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifyError(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Ljava/lang/Throwable;)V

    .line 370
    return-void
.end method

.method public onSuccess()V
    .locals 2

    .prologue
    .line 364
    iget-object v0, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$7;->val$audioStateCallback:Lcom/facebook/cameracore/common/StateCallback;

    iget-object v1, p0, Lcom/facebook/cameracore/mediapipeline/recorder/AvRecorder$7;->val$handler:Landroid/os/Handler;

    invoke-static {v0, v1}, Lcom/facebook/cameracore/common/StateCallbackNotifier;->notifySuccess(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    .line 365
    return-void
.end method
