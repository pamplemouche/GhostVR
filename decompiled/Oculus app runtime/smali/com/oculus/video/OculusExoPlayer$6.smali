.class Lcom/oculus/video/OculusExoPlayer$6;
.super Ljava/lang/Object;
.source "OculusExoPlayer.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/video/OculusExoPlayer;->release()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/OculusExoPlayer;


# direct methods
.method constructor <init>(Lcom/oculus/video/OculusExoPlayer;)V
    .locals 0

    .line 853
    iput-object p1, p0, Lcom/oculus/video/OculusExoPlayer$6;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 856
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$6;->this$0:Lcom/oculus/video/OculusExoPlayer;

    iget-object v0, v0, Lcom/oculus/video/OculusExoPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 859
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$6;->this$0:Lcom/oculus/video/OculusExoPlayer;

    iget-object v0, v0, Lcom/oculus/video/OculusExoPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/ExoPlayer;->release()V

    .line 861
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$6;->this$0:Lcom/oculus/video/OculusExoPlayer;

    iget-object v0, v0, Lcom/oculus/video/OculusExoPlayer;->videoRendererEventListener:Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener;

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener;->onDroppedFrames(IJ)V

    .line 862
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$6;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v0}, Lcom/oculus/video/OculusExoPlayer;->access$2200(Lcom/oculus/video/OculusExoPlayer;)J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 863
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$6;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v0}, Lcom/oculus/video/OculusExoPlayer;->access$500(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/video/VideoPlayer$EventListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/video/OculusExoPlayer$6;->this$0:Lcom/oculus/video/OculusExoPlayer;

    .line 864
    invoke-static {v1}, Lcom/oculus/video/OculusExoPlayer;->access$2600(Lcom/oculus/video/OculusExoPlayer;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/oculus/video/OculusExoPlayer$6;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v3}, Lcom/oculus/video/OculusExoPlayer;->access$2200(Lcom/oculus/video/OculusExoPlayer;)J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 863
    invoke-interface {v0, v1, v2}, Lcom/oculus/video/VideoPlayer$EventListener;->setStringPreference(Ljava/lang/String;Ljava/lang/String;)V

    .line 866
    :cond_1
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$6;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v0}, Lcom/oculus/video/OculusExoPlayer;->access$2700(Lcom/oculus/video/OculusExoPlayer;)V

    .line 867
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$6;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v0}, Lcom/oculus/video/OculusExoPlayer;->access$500(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/video/VideoPlayer$EventListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/oculus/video/VideoPlayer$EventListener;->onRelease()V

    return-void
.end method
