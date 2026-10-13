.class Lcom/oculus/video/OculusExoPlayer$3;
.super Ljava/lang/Object;
.source "OculusExoPlayer.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/video/OculusExoPlayer;
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

    .line 477
    iput-object p1, p0, Lcom/oculus/video/OculusExoPlayer$3;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAudioDecoderInitialized(Ljava/lang/String;JJ)V
    .locals 0

    return-void
.end method

.method public onAudioDisabled(Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    return-void
.end method

.method public onAudioEnabled(Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;)V
    .locals 0

    return-void
.end method

.method public onAudioInputFormatChanged(Lcom/oculus/android/exoplayer2/Format;)V
    .locals 5

    .line 496
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer$3;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v0}, Lcom/oculus/video/OculusExoPlayer;->access$1900(Lcom/oculus/video/OculusExoPlayer;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 501
    iget-object v1, p0, Lcom/oculus/video/OculusExoPlayer$3;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v1}, Lcom/oculus/video/OculusExoPlayer;->access$1900(Lcom/oculus/video/OculusExoPlayer;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :catch_0
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/android/exoplayer2/Renderer;

    .line 503
    :try_start_0
    instance-of v3, v2, Lcom/oculus/android/exoplayer2/BaseRenderer;

    if-eqz v3, :cond_1

    move-object v3, v2

    check-cast v3, Lcom/oculus/android/exoplayer2/BaseRenderer;

    .line 504
    invoke-virtual {v3, p1}, Lcom/oculus/android/exoplayer2/BaseRenderer;->supportsFormat(Lcom/oculus/android/exoplayer2/Format;)I

    move-result v3
    :try_end_0
    .catch Lcom/oculus/android/exoplayer2/ExoPlaybackException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v4, 0x4

    and-int/2addr v3, v4

    if-ne v3, v4, :cond_1

    move-object v0, v2

    :cond_2
    if-eqz v0, :cond_3

    .line 513
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    const-string v0, "null"

    .line 515
    :goto_0
    iget-object v1, p0, Lcom/oculus/video/OculusExoPlayer$3;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v1}, Lcom/oculus/video/OculusExoPlayer;->access$500(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/video/VideoPlayer$EventListener;

    move-result-object v1

    iget-object p1, p1, Lcom/oculus/android/exoplayer2/Format;->sampleMimeType:Ljava/lang/String;

    invoke-interface {v1, p1, v0}, Lcom/oculus/video/VideoPlayer$EventListener;->onAudioFormatChanged(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onAudioSessionId(I)V
    .locals 0

    return-void
.end method

.method public onAudioSinkUnderrun(IJJ)V
    .locals 0

    return-void
.end method
