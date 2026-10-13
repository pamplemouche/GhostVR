.class Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl$3;
.super Ljava/lang/Object;
.source "SurfaceVideoEncoderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->stop(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$stateCallback:Lcom/facebook/cameracore/common/StateCallback;


# direct methods
.method constructor <init>(Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 98
    iput-object p1, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl$3;->this$0:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;

    iput-object p2, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl$3;->val$stateCallback:Lcom/facebook/cameracore/common/StateCallback;

    iput-object p3, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl$3;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 101
    iget-object v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl$3;->this$0:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;

    iget-object v1, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl$3;->val$stateCallback:Lcom/facebook/cameracore/common/StateCallback;

    iget-object v2, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl$3;->val$handler:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->access$200(Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    .line 102
    return-void
.end method
