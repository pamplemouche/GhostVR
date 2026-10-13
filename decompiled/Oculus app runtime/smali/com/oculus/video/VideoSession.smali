.class public Lcom/oculus/video/VideoSession;
.super Ljava/lang/Object;
.source "VideoSession.java"

# interfaces
.implements Lcom/oculus/video/VideoPlayer$EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/video/VideoSession$EventListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final MAXIMUM_ERROR_WINDOW_LENGTH_MS:J = 0x3a98L

.field private static final MAXIMUM_RETRY_COUNTS:I = 0xa

.field private static final TAG:Ljava/lang/String; = "VideoSession"


# instance fields
.field private didStartPlayback:Z

.field private eventListener:Lcom/oculus/video/VideoSession$EventListener;

.field private isSeeking:Z

.field private lastErrorWindowClockTimeMs:J

.field private needsFallbackPlayer:Z

.field private needsRetry:Z

.field private playWhenReady:Z

.field private playbackHandler:Landroid/os/Handler;

.field private player:Lcom/oculus/video/VideoPlayer;

.field private retryCount:I

.field private final sessionId:J

.field private sessionVideo:Lcom/oculus/video/Video;

.field private videoInfoExtractor:Lcom/oculus/video/VideoInfoExtractor;

.field private videoSurface:Landroid/view/Surface;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(JLandroid/os/Handler;Lcom/oculus/video/VideoSession$EventListener;)V
    .locals 3

    .line 111
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 115
    sget-object v0, Lcom/oculus/video/VideoSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " - created"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 116
    iput-wide p1, p0, Lcom/oculus/video/VideoSession;->sessionId:J

    .line 117
    iput-object p3, p0, Lcom/oculus/video/VideoSession;->playbackHandler:Landroid/os/Handler;

    .line 118
    iput-object p4, p0, Lcom/oculus/video/VideoSession;->eventListener:Lcom/oculus/video/VideoSession$EventListener;

    const/4 p1, 0x0

    .line 119
    iput-boolean p1, p0, Lcom/oculus/video/VideoSession;->isSeeking:Z

    .line 120
    iput-boolean p1, p0, Lcom/oculus/video/VideoSession;->needsFallbackPlayer:Z

    .line 121
    iput-boolean p1, p0, Lcom/oculus/video/VideoSession;->needsRetry:Z

    .line 122
    iput p1, p0, Lcom/oculus/video/VideoSession;->retryCount:I

    const-wide p2, -0x7fffffffffffffffL    # -4.9E-324

    .line 123
    iput-wide p2, p0, Lcom/oculus/video/VideoSession;->lastErrorWindowClockTimeMs:J

    .line 124
    iput-boolean p1, p0, Lcom/oculus/video/VideoSession;->didStartPlayback:Z

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/video/VideoSession;)Lcom/oculus/video/VideoInfoExtractor;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/oculus/video/VideoSession;->videoInfoExtractor:Lcom/oculus/video/VideoInfoExtractor;

    return-object p0
.end method

.method static synthetic access$002(Lcom/oculus/video/VideoSession;Lcom/oculus/video/VideoInfoExtractor;)Lcom/oculus/video/VideoInfoExtractor;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/oculus/video/VideoSession;->videoInfoExtractor:Lcom/oculus/video/VideoInfoExtractor;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oculus/video/VideoSession;)Landroid/os/Handler;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/oculus/video/VideoSession;->playbackHandler:Landroid/os/Handler;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/oculus/video/VideoSession;)Lcom/oculus/video/Video;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/oculus/video/VideoSession;->sessionVideo:Lcom/oculus/video/Video;

    return-object p0
.end method

.method static synthetic access$1100(Lcom/oculus/video/VideoSession;)Lcom/oculus/video/VideoSession$EventListener;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/oculus/video/VideoSession;->eventListener:Lcom/oculus/video/VideoSession$EventListener;

    return-object p0
.end method

.method static synthetic access$1202(Lcom/oculus/video/VideoSession;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/oculus/video/VideoSession;->isSeeking:Z

    return p1
.end method

.method static synthetic access$200(Lcom/oculus/video/VideoSession;Lcom/oculus/video/Video;Z)V
    .locals 0

    .line 25
    invoke-direct {p0, p1, p2}, Lcom/oculus/video/VideoSession;->onVideoPrepared(Lcom/oculus/video/Video;Z)V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 25
    sget-object v0, Lcom/oculus/video/VideoSession;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/video/VideoSession;)J
    .locals 2

    .line 25
    iget-wide v0, p0, Lcom/oculus/video/VideoSession;->sessionId:J

    return-wide v0
.end method

.method static synthetic access$502(Lcom/oculus/video/VideoSession;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/oculus/video/VideoSession;->playWhenReady:Z

    return p1
.end method

.method static synthetic access$600(Lcom/oculus/video/VideoSession;)Landroid/view/Surface;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/oculus/video/VideoSession;->videoSurface:Landroid/view/Surface;

    return-object p0
.end method

.method static synthetic access$602(Lcom/oculus/video/VideoSession;Landroid/view/Surface;)Landroid/view/Surface;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/oculus/video/VideoSession;->videoSurface:Landroid/view/Surface;

    return-object p1
.end method

.method static synthetic access$700(Lcom/oculus/video/VideoSession;)Lcom/oculus/video/VideoPlayer;
    .locals 0

    .line 25
    iget-object p0, p0, Lcom/oculus/video/VideoSession;->player:Lcom/oculus/video/VideoPlayer;

    return-object p0
.end method

.method static synthetic access$702(Lcom/oculus/video/VideoSession;Lcom/oculus/video/VideoPlayer;)Lcom/oculus/video/VideoPlayer;
    .locals 0

    .line 25
    iput-object p1, p0, Lcom/oculus/video/VideoSession;->player:Lcom/oculus/video/VideoPlayer;

    return-object p1
.end method

.method static synthetic access$802(Lcom/oculus/video/VideoSession;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/oculus/video/VideoSession;->needsFallbackPlayer:Z

    return p1
.end method

.method static synthetic access$902(Lcom/oculus/video/VideoSession;Z)Z
    .locals 0

    .line 25
    iput-boolean p1, p0, Lcom/oculus/video/VideoSession;->needsRetry:Z

    return p1
.end method

.method private onVideoPrepared(Lcom/oculus/video/Video;Z)V
    .locals 3

    .line 164
    :try_start_0
    invoke-virtual {p1}, Lcom/oculus/video/Video;->getProjectionMetadata()Lcom/oculus/video/projection/VideoProjection;

    move-result-object v0

    .line 165
    invoke-virtual {p1}, Lcom/oculus/video/Video;->getFrameAspectRatio()F

    move-result v1

    .line 166
    invoke-virtual {p1}, Lcom/oculus/video/Video;->getFrameRotation()I

    move-result v2

    .line 163
    invoke-static {v0, v1, v2}, Lcom/oculus/video/projection/VideoProjection;->sanitizeAPIProjectionMetadata(Lcom/oculus/video/projection/VideoProjection;FI)Lcom/oculus/video/projection/VideoProjection;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oculus/video/Video;->setProjectionMetadata(Lcom/oculus/video/projection/VideoProjection;)Lcom/oculus/video/Video;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    :catch_0
    iput-object p1, p0, Lcom/oculus/video/VideoSession;->sessionVideo:Lcom/oculus/video/Video;

    .line 171
    iget-object p1, p0, Lcom/oculus/video/VideoSession;->eventListener:Lcom/oculus/video/VideoSession$EventListener;

    invoke-interface {p1, p0, p2}, Lcom/oculus/video/VideoSession$EventListener;->onVideoPrepared(Lcom/oculus/video/VideoSession;Z)V

    .line 172
    sget-object p1, Lcom/oculus/video/VideoSession;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v0, p0, Lcom/oculus/video/VideoSession;->sessionId:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " - video prepared: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oculus/video/VideoSession;->sessionVideo:Lcom/oculus/video/Video;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public didStartPlayback()Z
    .locals 1

    .line 442
    iget-boolean v0, p0, Lcom/oculus/video/VideoSession;->didStartPlayback:Z

    return v0
.end method

.method public futureSeekVideo(IJ)V
    .locals 2

    .line 405
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->playbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/video/VideoSession$9;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/oculus/video/VideoSession$9;-><init>(Lcom/oculus/video/VideoSession;IJ)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method getBufferedPosition()I
    .locals 2

    .line 339
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->player:Lcom/oculus/video/VideoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oculus/video/VideoPlayer;->getBufferedPositionMs()J

    move-result-wide v0

    long-to-int v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, -0x1

    :goto_0
    return v1
.end method

.method getEpochTimePosition()J
    .locals 2

    .line 347
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->player:Lcom/oculus/video/VideoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oculus/video/VideoPlayer;->getCurrentEpochTimePositionMs()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    return-wide v0
.end method

.method public getLastPresentationTimeUs()J
    .locals 2

    .line 446
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->player:Lcom/oculus/video/VideoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oculus/video/VideoPlayer;->getLastPresentationTimeUs()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method getPlayer()Lcom/oculus/video/VideoPlayer;
    .locals 1

    .line 153
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->player:Lcom/oculus/video/VideoPlayer;

    return-object v0
.end method

.method getPosition()I
    .locals 2

    .line 343
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->player:Lcom/oculus/video/VideoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oculus/video/VideoPlayer;->getCurrentPositionMs()J

    move-result-wide v0

    long-to-int v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method getSessionId()J
    .locals 2

    .line 145
    iget-wide v0, p0, Lcom/oculus/video/VideoSession;->sessionId:J

    return-wide v0
.end method

.method getSessionVideo()Lcom/oculus/video/Video;
    .locals 1

    .line 149
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->sessionVideo:Lcom/oculus/video/Video;

    return-object v0
.end method

.method public getStringPreference(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 633
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->eventListener:Lcom/oculus/video/VideoSession$EventListener;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lcom/oculus/video/VideoSession$EventListener;->getStringPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public getSubtitleSurface()Landroid/view/Surface;
    .locals 1

    .line 628
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->eventListener:Lcom/oculus/video/VideoSession$EventListener;

    invoke-interface {v0, p0}, Lcom/oculus/video/VideoSession$EventListener;->getSubtitleSurface(Lcom/oculus/video/VideoSession;)Landroid/view/Surface;

    move-result-object v0

    return-object v0
.end method

.method getVolume()F
    .locals 1

    .line 327
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->player:Lcom/oculus/video/VideoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oculus/video/VideoPlayer;->getVolume()F

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isBuffering()Z
    .locals 1

    .line 335
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->player:Lcom/oculus/video/VideoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oculus/video/VideoPlayer;->isBuffering()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isMuted()Z
    .locals 1

    .line 316
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->player:Lcom/oculus/video/VideoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oculus/video/VideoPlayer;->isMuted()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isPlaying()Z
    .locals 1

    .line 331
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->player:Lcom/oculus/video/VideoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oculus/video/VideoPlayer;->isPlaying()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method isSeeking()Z
    .locals 1

    .line 157
    iget-boolean v0, p0, Lcom/oculus/video/VideoSession;->isSeeking:Z

    return v0
.end method

.method markForFallback()V
    .locals 1

    const/4 v0, 0x1

    .line 242
    iput-boolean v0, p0, Lcom/oculus/video/VideoSession;->needsFallbackPlayer:Z

    return-void
.end method

.method markForRetryPlayback()V
    .locals 2

    const/4 v0, 0x1

    .line 140
    iput-boolean v0, p0, Lcom/oculus/video/VideoSession;->needsRetry:Z

    .line 141
    iget v1, p0, Lcom/oculus/video/VideoSession;->retryCount:I

    add-int/2addr v1, v0

    iput v1, p0, Lcom/oculus/video/VideoSession;->retryCount:I

    return-void
.end method

.method needsFallback()Z
    .locals 1

    .line 246
    iget-boolean v0, p0, Lcom/oculus/video/VideoSession;->needsFallbackPlayer:Z

    return v0
.end method

.method needsRetryPlayback()Z
    .locals 1

    .line 136
    iget-boolean v0, p0, Lcom/oculus/video/VideoSession;->needsRetry:Z

    return v0
.end method

.method public onAdaptivePlaylistUpdate(Ljava/util/Map;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;",
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .line 618
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->eventListener:Lcom/oculus/video/VideoSession$EventListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/oculus/video/VideoSession$EventListener;->onAdaptivePlaylistUpdate(Lcom/oculus/video/VideoSession;Ljava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public onAudioFormatChanged(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .line 553
    sget-object v0, Lcom/oculus/video/VideoSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/oculus/video/VideoSession;->sessionId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " - onAudioFormatChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", audioMimeType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", rendererName="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->eventListener:Lcom/oculus/video/VideoSession$EventListener;

    invoke-interface {v0, p0, p1, p2}, Lcom/oculus/video/VideoSession$EventListener;->onAudioFormatChanged(Lcom/oculus/video/VideoSession;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onBuffering()V
    .locals 4

    .line 480
    sget-object v0, Lcom/oculus/video/VideoSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/oculus/video/VideoSession;->sessionId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " - onBuffering"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->eventListener:Lcom/oculus/video/VideoSession$EventListener;

    invoke-interface {v0, p0}, Lcom/oculus/video/VideoSession$EventListener;->onBuffering(Lcom/oculus/video/VideoSession;)V

    return-void
.end method

.method public onCameraMotionData(Lcom/oculus/video/metadata/CameraMotionData;)V
    .locals 1

    .line 580
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->eventListener:Lcom/oculus/video/VideoSession$EventListener;

    invoke-interface {v0, p0, p1}, Lcom/oculus/video/VideoSession$EventListener;->onCameraMotionData(Lcom/oculus/video/VideoSession;Lcom/oculus/video/metadata/CameraMotionData;)V

    return-void
.end method

.method public onDroppedFrames(JJJJ)V
    .locals 11

    move-object v10, p0

    .line 596
    sget-object v0, Lcom/oculus/video/VideoSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, v10, Lcom/oculus/video/VideoSession;->sessionId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " - onDroppedFrames: elapsedTimeMs="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v2, p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", delayedCount="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v4, p3

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", unconsumedCount="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v6, p5

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", decodedFrameCount="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, p7

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    iget-object v0, v10, Lcom/oculus/video/VideoSession;->eventListener:Lcom/oculus/video/VideoSession$EventListener;

    move-object v1, p0

    invoke-interface/range {v0 .. v9}, Lcom/oculus/video/VideoSession$EventListener;->onDroppedFrames(Lcom/oculus/video/VideoSession;JJJJ)V

    return-void
.end method

.method public onError(Ljava/lang/Exception;)V
    .locals 6

    .line 492
    sget-object v0, Lcom/oculus/video/VideoSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/oculus/video/VideoSession;->sessionId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " - onError"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 493
    iget-wide v0, p0, Lcom/oculus/video/VideoSession;->lastErrorWindowClockTimeMs:J

    const/4 v2, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v0, v3

    if-eqz v5, :cond_0

    .line 494
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v3, p0, Lcom/oculus/video/VideoSession;->lastErrorWindowClockTimeMs:J

    sub-long/2addr v0, v3

    const-wide/16 v3, 0x3a98

    cmp-long v5, v0, v3

    if-lez v5, :cond_1

    .line 495
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/video/VideoSession;->lastErrorWindowClockTimeMs:J

    .line 496
    iput v2, p0, Lcom/oculus/video/VideoSession;->retryCount:I

    .line 498
    :cond_1
    iget-boolean v0, p0, Lcom/oculus/video/VideoSession;->isSeeking:Z

    if-eqz v0, :cond_2

    .line 499
    iput-boolean v2, p0, Lcom/oculus/video/VideoSession;->isSeeking:Z

    .line 500
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->eventListener:Lcom/oculus/video/VideoSession$EventListener;

    invoke-interface {v0, p0}, Lcom/oculus/video/VideoSession$EventListener;->onSeekComplete(Lcom/oculus/video/VideoSession;)V

    .line 502
    :cond_2
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->eventListener:Lcom/oculus/video/VideoSession$EventListener;

    invoke-interface {v0, p0, p1}, Lcom/oculus/video/VideoSession$EventListener;->onError(Lcom/oculus/video/VideoSession;Ljava/lang/Exception;)V

    return-void
.end method

.method public onExtractProjectionMetadata(Lcom/oculus/video/projection/VideoProjection;)V
    .locals 1

    .line 623
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->eventListener:Lcom/oculus/video/VideoSession$EventListener;

    invoke-interface {v0, p0, p1}, Lcom/oculus/video/VideoSession$EventListener;->onExtractProjectionMetadata(Lcom/oculus/video/VideoSession;Lcom/oculus/video/projection/VideoProjection;)V

    return-void
.end method

.method public onFinish()V
    .locals 4

    .line 463
    sget-object v0, Lcom/oculus/video/VideoSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/oculus/video/VideoSession;->sessionId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " - onFinish"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 464
    iget-boolean v0, p0, Lcom/oculus/video/VideoSession;->isSeeking:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 465
    iput-boolean v0, p0, Lcom/oculus/video/VideoSession;->isSeeking:Z

    .line 466
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->eventListener:Lcom/oculus/video/VideoSession$EventListener;

    invoke-interface {v0, p0}, Lcom/oculus/video/VideoSession$EventListener;->onSeekComplete(Lcom/oculus/video/VideoSession;)V

    .line 468
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->eventListener:Lcom/oculus/video/VideoSession$EventListener;

    invoke-interface {v0, p0}, Lcom/oculus/video/VideoSession$EventListener;->onFinish(Lcom/oculus/video/VideoSession;)V

    return-void
.end method

.method public onHttpConnect(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 8

    .line 607
    sget-object v0, Lcom/oculus/video/VideoSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/oculus/video/VideoSession;->sessionId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " - onHttpConnect: uri="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, ", ipAddress="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ", method="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ", responseCode="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", responseTimeMs="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->eventListener:Lcom/oculus/video/VideoSession$EventListener;

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move-wide v6, p5

    invoke-interface/range {v0 .. v7}, Lcom/oculus/video/VideoSession$EventListener;->onHttpConnect(Lcom/oculus/video/VideoSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method public onReady()V
    .locals 4

    .line 456
    sget-object v0, Lcom/oculus/video/VideoSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/oculus/video/VideoSession;->sessionId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " - onReady"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x1

    .line 457
    iput-boolean v0, p0, Lcom/oculus/video/VideoSession;->didStartPlayback:Z

    .line 458
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->eventListener:Lcom/oculus/video/VideoSession$EventListener;

    invoke-interface {v0, p0}, Lcom/oculus/video/VideoSession$EventListener;->onReady(Lcom/oculus/video/VideoSession;)V

    return-void
.end method

.method public onRelease()V
    .locals 4

    .line 473
    sget-object v0, Lcom/oculus/video/VideoSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/oculus/video/VideoSession;->sessionId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " - onRelease"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->eventListener:Lcom/oculus/video/VideoSession$EventListener;

    invoke-interface {v0, p0}, Lcom/oculus/video/VideoSession$EventListener;->onRelease(Lcom/oculus/video/VideoSession;)V

    const/4 v0, 0x0

    .line 475
    iput-object v0, p0, Lcom/oculus/video/VideoSession;->player:Lcom/oculus/video/VideoPlayer;

    return-void
.end method

.method onRender(Z)V
    .locals 1

    .line 435
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->player:Lcom/oculus/video/VideoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 438
    :cond_0
    invoke-interface {v0, p1}, Lcom/oculus/video/VideoPlayer;->onRender(Z)V

    return-void
.end method

.method public onSeekProcessed()V
    .locals 4

    .line 513
    sget-object v0, Lcom/oculus/video/VideoSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/oculus/video/VideoSession;->sessionId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " - onSeekProcessed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 514
    iget-boolean v0, p0, Lcom/oculus/video/VideoSession;->isSeeking:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    .line 515
    iput-boolean v0, p0, Lcom/oculus/video/VideoSession;->isSeeking:Z

    .line 516
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->eventListener:Lcom/oculus/video/VideoSession$EventListener;

    invoke-interface {v0, p0}, Lcom/oculus/video/VideoSession$EventListener;->onSeekComplete(Lcom/oculus/video/VideoSession;)V

    goto :goto_0

    .line 518
    :cond_0
    sget-object v0, Lcom/oculus/video/VideoSession;->TAG:Ljava/lang/String;

    const-string v1, "Unidentified Seek Processed!"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onSoftError(Ljava/lang/Throwable;)V
    .locals 4

    .line 507
    sget-object v0, Lcom/oculus/video/VideoSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/oculus/video/VideoSession;->sessionId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " - onSoftError"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 508
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->eventListener:Lcom/oculus/video/VideoSession$EventListener;

    invoke-interface {v0, p0, p1}, Lcom/oculus/video/VideoSession$EventListener;->onSoftError(Lcom/oculus/video/VideoSession;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onStartVideo()V
    .locals 1

    .line 451
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->eventListener:Lcom/oculus/video/VideoSession$EventListener;

    invoke-interface {v0, p0}, Lcom/oculus/video/VideoSession$EventListener;->onStartVideo(Lcom/oculus/video/VideoSession;)V

    return-void
.end method

.method public onStopBuffering()V
    .locals 4

    .line 486
    sget-object v0, Lcom/oculus/video/VideoSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/oculus/video/VideoSession;->sessionId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " - onStopBuffering"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->eventListener:Lcom/oculus/video/VideoSession$EventListener;

    invoke-interface {v0, p0}, Lcom/oculus/video/VideoSession$EventListener;->onStopBuffering(Lcom/oculus/video/VideoSession;)V

    return-void
.end method

.method public onStreamingSample(JJJJ)V
    .locals 11

    move-object v10, p0

    .line 586
    sget-object v0, Lcom/oculus/video/VideoSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, v10, Lcom/oculus/video/VideoSession;->sessionId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " - onStreamingSample: bytesStreamed="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v2, p1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, ", bitrate="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide v4, p3

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v6, ", bufferLengthMs="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v6, p5

    invoke-virtual {v1, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, ", elapsedMs="

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, p7

    invoke-virtual {v1, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    iget-object v0, v10, Lcom/oculus/video/VideoSession;->eventListener:Lcom/oculus/video/VideoSession$EventListener;

    move-object v1, p0

    invoke-interface/range {v0 .. v9}, Lcom/oculus/video/VideoSession$EventListener;->onStreamingSample(Lcom/oculus/video/VideoSession;JJJJ)V

    return-void
.end method

.method public onTimelineChanged(JJZ)V
    .locals 9

    .line 524
    sget-object v0, Lcom/oculus/video/VideoSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, p0, Lcom/oculus/video/VideoSession;->sessionId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " - onTimelineChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "duration="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", position="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, ", isSeekable="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz p5, :cond_0

    const-string v2, "true"

    goto :goto_0

    :cond_0
    const-string v2, "false"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    iget-object v2, p0, Lcom/oculus/video/VideoSession;->eventListener:Lcom/oculus/video/VideoSession$EventListener;

    move-object v3, p0

    move-wide v4, p1

    move-wide v6, p3

    move v8, p5

    invoke-interface/range {v2 .. v8}, Lcom/oculus/video/VideoSession$EventListener;->onTimelineChanged(Lcom/oculus/video/VideoSession;JJZ)V

    return-void
.end method

.method public onVideoFormatChanged(IIFILcom/oculus/video/projection/VideoProjection;FILjava/lang/String;Ljava/lang/String;D)V
    .locals 14

    move-object v13, p0

    .line 536
    sget-object v0, Lcom/oculus/video/VideoSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, v13, Lcom/oculus/video/VideoSession;->sessionId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " - onVideoFormatChanged: width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, ", height="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v3, p2

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ", pixelWidthHeightRatio="

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v4, p3

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v5, ", rotationDegrees="

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v5, p4

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", frameRate="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v7, p6

    invoke-virtual {v1, v7}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v6, ", bitrate="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v8, p7

    invoke-virtual {v1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ", videoMimeType="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v9, p8

    invoke-virtual {v1, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", videoRendererName="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v10, p9

    invoke-virtual {v1, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, ", VQM="

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v11, p10

    invoke-virtual {v1, v11, v12}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 545
    iget-object v0, v13, Lcom/oculus/video/VideoSession;->eventListener:Lcom/oculus/video/VideoSession$EventListener;

    move-object v1, p0

    move-object/from16 v6, p5

    invoke-interface/range {v0 .. v12}, Lcom/oculus/video/VideoSession$EventListener;->onVideoFormatChanged(Lcom/oculus/video/VideoSession;IIFILcom/oculus/video/projection/VideoProjection;FILjava/lang/String;Ljava/lang/String;D)V

    return-void
.end method

.method public onVideoSizeChanged(IIFLandroid/graphics/Rect;)V
    .locals 18

    move-object/from16 v13, p0

    .line 561
    sget-object v0, Lcom/oculus/video/VideoSession;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v2, v13, Lcom/oculus/video/VideoSession;->sessionId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " - onVideoSizeChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "width="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v14, p1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ", height="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move/from16 v15, p2

    invoke-virtual {v1, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 564
    iget-object v0, v13, Lcom/oculus/video/VideoSession;->player:Lcom/oculus/video/VideoPlayer;

    instance-of v1, v0, Lcom/oculus/video/OculusMediaPlayer;

    if-eqz v1, :cond_0

    const-string v11, "android.media.MediaPlayer"

    .line 566
    check-cast v0, Lcom/oculus/video/OculusMediaPlayer;

    .line 567
    iget-object v1, v13, Lcom/oculus/video/VideoSession;->eventListener:Lcom/oculus/video/VideoSession$EventListener;

    .line 568
    invoke-virtual {v0}, Lcom/oculus/video/OculusMediaPlayer;->getRotationDegrees()I

    move-result v5

    iget-object v2, v13, Lcom/oculus/video/VideoSession;->sessionVideo:Lcom/oculus/video/Video;

    .line 569
    invoke-virtual {v2}, Lcom/oculus/video/Video;->getProjectionMetadata()Lcom/oculus/video/projection/VideoProjection;

    move-result-object v6

    invoke-virtual {v0}, Lcom/oculus/video/OculusMediaPlayer;->getFrameRate()F

    move-result v7

    const/4 v8, -0x1

    iget-object v0, v13, Lcom/oculus/video/VideoSession;->sessionVideo:Lcom/oculus/video/Video;

    .line 570
    invoke-virtual {v0}, Lcom/oculus/video/Video;->getVideoMimeType()Ljava/lang/String;

    move-result-object v9

    const-wide/16 v16, 0x0

    move-object v0, v1

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object v10, v11

    move-object v14, v11

    move-wide/from16 v11, v16

    .line 567
    invoke-interface/range {v0 .. v12}, Lcom/oculus/video/VideoSession$EventListener;->onVideoFormatChanged(Lcom/oculus/video/VideoSession;IIFILcom/oculus/video/projection/VideoProjection;FILjava/lang/String;Ljava/lang/String;D)V

    .line 572
    iget-object v0, v13, Lcom/oculus/video/VideoSession;->eventListener:Lcom/oculus/video/VideoSession$EventListener;

    iget-object v1, v13, Lcom/oculus/video/VideoSession;->sessionVideo:Lcom/oculus/video/Video;

    invoke-virtual {v1}, Lcom/oculus/video/Video;->getAudioMimeType()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v13, v1, v14}, Lcom/oculus/video/VideoSession$EventListener;->onAudioFormatChanged(Lcom/oculus/video/VideoSession;Ljava/lang/String;Ljava/lang/String;)V

    .line 575
    :cond_0
    iget-object v0, v13, Lcom/oculus/video/VideoSession;->eventListener:Lcom/oculus/video/VideoSession$EventListener;

    move-object/from16 v1, p0

    move/from16 v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move-object/from16 v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/oculus/video/VideoSession$EventListener;->onVideoSizeChanged(Lcom/oculus/video/VideoSession;IIFLandroid/graphics/Rect;)V

    return-void
.end method

.method pauseVideo()V
    .locals 2

    .line 263
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 264
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->playbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/video/VideoSession$4;

    invoke-direct {v1, p0}, Lcom/oculus/video/VideoSession$4;-><init>(Lcom/oculus/video/VideoSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method prepareVideo(Landroid/content/Context;Lcom/oculus/video/Video;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 177
    invoke-virtual {p2}, Lcom/oculus/video/Video;->getVideoUri()Landroid/net/Uri;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Util;->inferContentType(Landroid/net/Uri;)I

    move-result v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 182
    invoke-virtual {p2}, Lcom/oculus/video/Video;->getDashManifest()Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object v1

    if-nez v1, :cond_0

    .line 183
    invoke-virtual {p2}, Lcom/oculus/video/Video;->getDrmProxyUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 184
    invoke-virtual {p2}, Lcom/oculus/video/Video;->getProvider()Ljava/lang/String;

    move-result-object v1

    const-string v3, "phone"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 185
    :goto_0
    sget-object v3, Lcom/oculus/video/VideoSession;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v5, p0, Lcom/oculus/video/VideoSession;->sessionId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v5, " - prepareVideo: url="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lcom/oculus/video/Video;->getVideoUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v1, :cond_2

    .line 186
    invoke-virtual {p2}, Lcom/oculus/video/Video;->getDashManifest()Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object v1

    instance-of v1, v1, Lcom/oculus/video/source/dash/OculusDashManifest;

    if-nez v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_2

    if-nez v0, :cond_1

    goto :goto_1

    .line 207
    :cond_1
    invoke-direct {p0, p2, v2}, Lcom/oculus/video/VideoSession;->onVideoPrepared(Lcom/oculus/video/Video;Z)V

    goto :goto_2

    .line 188
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->playbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/video/VideoSession$1;

    invoke-direct {v1, p0, p2, p1}, Lcom/oculus/video/VideoSession$1;-><init>(Lcom/oculus/video/VideoSession;Lcom/oculus/video/Video;Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :goto_2
    return-void
.end method

.method resumeVideo()V
    .locals 2

    .line 277
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->playbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/video/VideoSession$5;

    invoke-direct {v1, p0}, Lcom/oculus/video/VideoSession$5;-><init>(Lcom/oculus/video/VideoSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method seekTo(J)V
    .locals 2

    .line 290
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->playbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/video/VideoSession$6;

    invoke-direct {v1, p0, p1, p2}, Lcom/oculus/video/VideoSession$6;-><init>(Lcom/oculus/video/VideoSession;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method selectSubtitle(Ljava/lang/String;)Z
    .locals 6

    .line 351
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->player:Lcom/oculus/video/VideoPlayer;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    :cond_0
    const/4 v0, 0x0

    .line 355
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 357
    iget-object v2, p0, Lcom/oculus/video/VideoSession;->sessionVideo:Lcom/oculus/video/Video;

    invoke-virtual {v2}, Lcom/oculus/video/Video;->getSubtitleTracks()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 359
    invoke-virtual {v2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v3

    .line 360
    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 362
    :try_start_0
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 363
    invoke-virtual {v2, v4}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 364
    invoke-virtual {v5, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v5, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :catch_0
    nop

    goto :goto_0

    :cond_2
    move-object v4, v0

    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_4

    .line 373
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto :goto_2

    :cond_3
    move-object v0, v4

    goto :goto_3

    :cond_4
    :goto_2
    return v1

    .line 377
    :cond_5
    :goto_3
    sget-object v1, Lcom/oculus/video/VideoSession;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-wide v3, p0, Lcom/oculus/video/VideoSession;->sessionId:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, " - selectSubtitle: language="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object p1, p0, Lcom/oculus/video/VideoSession;->player:Lcom/oculus/video/VideoPlayer;

    invoke-interface {p1, v0}, Lcom/oculus/video/VideoPlayer;->selectSubtitle(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method setMute(Z)V
    .locals 1

    .line 309
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->player:Lcom/oculus/video/VideoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 312
    :cond_0
    invoke-interface {v0, p1}, Lcom/oculus/video/VideoPlayer;->setMute(Z)V

    return-void
.end method

.method public setStringPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 638
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->eventListener:Lcom/oculus/video/VideoSession$EventListener;

    if-eqz v0, :cond_0

    .line 639
    invoke-interface {v0, p1, p2}, Lcom/oculus/video/VideoSession$EventListener;->setStringPreference(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public setSyncReferenceTimeMs(J)V
    .locals 8

    .line 382
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    .line 383
    iget-object v6, p0, Lcom/oculus/video/VideoSession;->playbackHandler:Landroid/os/Handler;

    new-instance v7, Lcom/oculus/video/VideoSession$7;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/oculus/video/VideoSession$7;-><init>(Lcom/oculus/video/VideoSession;JJ)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method setVolume(F)V
    .locals 1

    .line 320
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->player:Lcom/oculus/video/VideoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 323
    :cond_0
    invoke-interface {v0, p1}, Lcom/oculus/video/VideoPlayer;->setVolume(F)V

    return-void
.end method

.method shouldRetryPlayback(Ljava/lang/Exception;)Z
    .locals 2

    .line 129
    iget-object p1, p0, Lcom/oculus/video/VideoSession;->sessionVideo:Lcom/oculus/video/Video;

    invoke-virtual {p1}, Lcom/oculus/video/Video;->getContentType()I

    move-result p1

    .line 130
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->sessionVideo:Lcom/oculus/video/Video;

    invoke-virtual {v0}, Lcom/oculus/video/Video;->getSyncMode()Ljava/lang/String;

    move-result-object v0

    const-string v1, "internal"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x2

    if-eq p1, v0, :cond_0

    if-nez p1, :cond_1

    :cond_0
    iget p1, p0, Lcom/oculus/video/VideoSession;->retryCount:I

    const/16 v0, 0xa

    if-ge p1, v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method startVideo(Lcom/oculus/video/VideoPlayer;)V
    .locals 2

    .line 238
    iget-boolean v0, p0, Lcom/oculus/video/VideoSession;->playWhenReady:Z

    iget-object v1, p0, Lcom/oculus/video/VideoSession;->videoSurface:Landroid/view/Surface;

    invoke-virtual {p0, p1, v0, v1}, Lcom/oculus/video/VideoSession;->startVideo(Lcom/oculus/video/VideoPlayer;ZLandroid/view/Surface;)V

    return-void
.end method

.method startVideo(Lcom/oculus/video/VideoPlayer;ZLandroid/view/Surface;)V
    .locals 2

    .line 219
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->playbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/video/VideoSession$2;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/oculus/video/VideoSession$2;-><init>(Lcom/oculus/video/VideoSession;Lcom/oculus/video/VideoPlayer;ZLandroid/view/Surface;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method stopVideo()V
    .locals 2

    .line 250
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->playbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/video/VideoSession$3;

    invoke-direct {v1, p0}, Lcom/oculus/video/VideoSession$3;-><init>(Lcom/oculus/video/VideoSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateSyncPlaybackState()V
    .locals 2

    .line 424
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->playbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/video/VideoSession$10;

    invoke-direct {v1, p0}, Lcom/oculus/video/VideoSession$10;-><init>(Lcom/oculus/video/VideoSession;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public updateSyncedPlaybackTime(ILjava/lang/String;)V
    .locals 2

    .line 394
    iget-object v0, p0, Lcom/oculus/video/VideoSession;->playbackHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/video/VideoSession$8;

    invoke-direct {v1, p0, p1, p2}, Lcom/oculus/video/VideoSession$8;-><init>(Lcom/oculus/video/VideoSession;ILjava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
