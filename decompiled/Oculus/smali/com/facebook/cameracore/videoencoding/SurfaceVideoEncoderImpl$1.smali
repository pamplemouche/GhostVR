.class Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl$1;
.super Ljava/lang/Object;
.source "SurfaceVideoEncoderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->prepare(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
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
    .line 72
    iput-object p1, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl$1;->this$0:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;

    iput-object p2, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl$1;->val$stateCallback:Lcom/facebook/cameracore/common/StateCallback;

    iput-object p3, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 75
    iget-object v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl$1;->this$0:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;

    iget-object v1, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl$1;->val$stateCallback:Lcom/facebook/cameracore/common/StateCallback;

    iget-object v2, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl$1;->val$handler:Landroid/os/Handler;

    const/4 v3, 0x1

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->access$000(Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;Z)V

    .line 76
    return-void
.end method
