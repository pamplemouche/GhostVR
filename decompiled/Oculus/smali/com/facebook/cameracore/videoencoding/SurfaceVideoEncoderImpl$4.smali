.class Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl$4;
.super Ljava/lang/Object;
.source "SurfaceVideoEncoderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->asyncStart(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;


# direct methods
.method constructor <init>(Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;)V
    .locals 0

    .prologue
    .line 164
    iput-object p1, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl$4;->this$0:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 167
    iget-object v0, p0, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl$4;->this$0:Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;->access$300(Lcom/facebook/cameracore/videoencoding/SurfaceVideoEncoderImpl;Z)V

    .line 168
    return-void
.end method
