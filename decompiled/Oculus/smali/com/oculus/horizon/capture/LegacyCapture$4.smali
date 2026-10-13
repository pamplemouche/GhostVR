.class Lcom/oculus/horizon/capture/LegacyCapture$4;
.super Ljava/lang/Object;
.source "LegacyCapture.java"

# interfaces
.implements Lcom/facebook/cameracore/mediapipeline/filterlib/VideoOutputProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/capture/LegacyCapture;
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
    .line 116
    iput-object p1, p0, Lcom/oculus/horizon/capture/LegacyCapture$4;->this$0:Lcom/oculus/horizon/capture/LegacyCapture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public addOutput(Lcom/facebook/cameracore/mediapipeline/filterlib/output/VideoOutput;Landroid/view/Surface;)V
    .locals 2
    .param p2    # Landroid/view/Surface;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 120
    invoke-static {}, Lcom/oculus/horizon/capture/LegacyCapture;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "addOutput surface = %s"

    invoke-static {v0, v1, p2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 121
    iget-object v0, p0, Lcom/oculus/horizon/capture/LegacyCapture$4;->this$0:Lcom/oculus/horizon/capture/LegacyCapture;

    invoke-static {v0}, Lcom/oculus/horizon/capture/LegacyCapture;->access$300(Lcom/oculus/horizon/capture/LegacyCapture;)Lcom/oculus/horizon/capture/ScreenCapture$VideoStateListener;

    move-result-object v0

    invoke-interface {v0, p2}, Lcom/oculus/horizon/capture/ScreenCapture$VideoStateListener;->addOutputSurface(Landroid/view/Surface;)V

    .line 122
    return-void
.end method

.method public removeOutput(Lcom/facebook/cameracore/mediapipeline/filterlib/output/VideoOutput;)V
    .locals 0

    .prologue
    .line 125
    return-void
.end method
