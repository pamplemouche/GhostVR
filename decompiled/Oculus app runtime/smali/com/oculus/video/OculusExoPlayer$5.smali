.class Lcom/oculus/video/OculusExoPlayer$5;
.super Ljava/lang/Object;
.source "OculusExoPlayer.java"

# interfaces
.implements Lcom/oculus/android/exoplayer2/upstream/BandwidthMeter$EventListener;


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

    .line 539
    iput-object p1, p0, Lcom/oculus/video/OculusExoPlayer$5;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBandwidthSample(IJJ)V
    .locals 18

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-wide/from16 v4, p4

    .line 542
    iget-object v2, v0, Lcom/oculus/video/OculusExoPlayer$5;->this$0:Lcom/oculus/video/OculusExoPlayer;

    iget-object v2, v2, Lcom/oculus/video/OculusExoPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    const-wide/16 v6, 0x0

    if-eqz v2, :cond_0

    iget-object v2, v0, Lcom/oculus/video/OculusExoPlayer$5;->this$0:Lcom/oculus/video/OculusExoPlayer;

    iget-object v2, v2, Lcom/oculus/video/OculusExoPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    invoke-interface {v2}, Lcom/oculus/android/exoplayer2/ExoPlayer;->getBufferedPosition()J

    move-result-wide v2

    goto :goto_0

    :cond_0
    move-wide v2, v6

    .line 543
    :goto_0
    iget-object v8, v0, Lcom/oculus/video/OculusExoPlayer$5;->this$0:Lcom/oculus/video/OculusExoPlayer;

    iget-object v8, v8, Lcom/oculus/video/OculusExoPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    if-eqz v8, :cond_1

    iget-object v8, v0, Lcom/oculus/video/OculusExoPlayer$5;->this$0:Lcom/oculus/video/OculusExoPlayer;

    iget-object v8, v8, Lcom/oculus/video/OculusExoPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    invoke-interface {v8}, Lcom/oculus/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v8

    goto :goto_1

    :cond_1
    move-wide v8, v6

    :goto_1
    sub-long v8, v2, v8

    .line 545
    invoke-static {}, Lcom/oculus/video/OculusExoPlayer;->access$2100()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "onBandwidthSample "

    invoke-virtual {v3, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v10, p2

    long-to-double v12, v10

    const-wide/high16 v14, 0x4130000000000000L    # 1048576.0

    div-double/2addr v12, v14

    const-wide v16, 0x408f400000000000L    # 1000.0

    mul-double v12, v12, v16

    .line 546
    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-double v12, v12

    div-double v12, v12, v16

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v12, "MB "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v12, "ms = "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    long-to-double v12, v4

    div-double/2addr v12, v14

    mul-double v12, v12, v16

    .line 548
    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-double v12, v12

    div-double v12, v12, v16

    invoke-virtual {v3, v12, v13}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v12, "ms, buffered "

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v12, "ms"

    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 545
    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    iget-object v2, v0, Lcom/oculus/video/OculusExoPlayer$5;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v2, v4, v5}, Lcom/oculus/video/OculusExoPlayer;->access$2202(Lcom/oculus/video/OculusExoPlayer;J)J

    .line 551
    iget-object v2, v0, Lcom/oculus/video/OculusExoPlayer$5;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v2}, Lcom/oculus/video/OculusExoPlayer;->access$500(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/video/VideoPlayer$EventListener;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 553
    iget-object v2, v0, Lcom/oculus/video/OculusExoPlayer$5;->this$0:Lcom/oculus/video/OculusExoPlayer;

    iget-object v2, v2, Lcom/oculus/video/OculusExoPlayer;->videoRendererEventListener:Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener;

    const/4 v3, 0x0

    invoke-interface {v2, v3, v6, v7}, Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener;->onDroppedFrames(IJ)V

    .line 554
    iget-object v2, v0, Lcom/oculus/video/OculusExoPlayer$5;->this$0:Lcom/oculus/video/OculusExoPlayer;

    invoke-static {v2}, Lcom/oculus/video/OculusExoPlayer;->access$500(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/video/VideoPlayer$EventListener;

    move-result-object v2

    int-to-long v12, v1

    move-object v1, v2

    move-wide/from16 v2, p2

    move-wide/from16 v4, p4

    move-wide v6, v8

    move-wide v8, v12

    invoke-interface/range {v1 .. v9}, Lcom/oculus/video/VideoPlayer$EventListener;->onStreamingSample(JJJJ)V

    :cond_2
    return-void
.end method
