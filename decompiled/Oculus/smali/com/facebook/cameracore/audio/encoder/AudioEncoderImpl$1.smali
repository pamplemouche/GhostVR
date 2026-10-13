.class Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl$1;
.super Ljava/lang/Object;
.source "AudioEncoderImpl.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->prepare(Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;

.field final synthetic val$handler:Landroid/os/Handler;

.field final synthetic val$stateCallback:Lcom/facebook/cameracore/common/StateCallback;


# direct methods
.method constructor <init>(Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 64
    iput-object p1, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl$1;->this$0:Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;

    iput-object p2, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl$1;->val$stateCallback:Lcom/facebook/cameracore/common/StateCallback;

    iput-object p3, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl$1;->val$handler:Landroid/os/Handler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 67
    iget-object v0, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl$1;->this$0:Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;

    iget-object v1, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl$1;->val$stateCallback:Lcom/facebook/cameracore/common/StateCallback;

    iget-object v2, p0, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl$1;->val$handler:Landroid/os/Handler;

    invoke-static {v0, v1, v2}, Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;->access$000(Lcom/facebook/cameracore/audio/encoder/AudioEncoderImpl;Lcom/facebook/cameracore/common/StateCallback;Landroid/os/Handler;)V

    .line 68
    return-void
.end method
