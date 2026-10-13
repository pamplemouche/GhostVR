.class public Lcom/oculus/video/SyncMediaPlayer;
.super Lcom/oculus/video/OculusExoPlayer;
.source "SyncMediaPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/video/SyncMediaPlayer$SyncPrimaryHlsPlaylistListener;,
        Lcom/oculus/video/SyncMediaPlayer$SyncVideoRendererEventListener;
    }
.end annotation


# static fields
.field public static final SYNC_DELAY_UNSET_MS:J = -0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SyncMediaPlayer"


# instance fields
.field private final FUTURE_SEEK_OFFSET_DEFAULT_MS:I

.field private final FUTURE_SEEK_OFFSET_MAX_MS:I

.field private final FUTURE_SEEK_OFFSET_MULTIPLIER:F

.field private final OFF_SYNC_THRESHOLD_MS:I

.field private final ONE_SEC_MS:I

.field volatile curPlaylistDurationMillis:J

.field volatile curPlaylistPDTMillis:J

.field private curPlaylistSelected:I

.field private firstSyncOffsetTimeMs:J

.field private futureSeekOffsetMS:J

.field private futureSeekTimeMS:J

.field private isFirstTimeSyncing:Z

.field private isFutureSeeking:Z

.field private isLive:Z

.field private isLoop:Z

.field volatile isMetaDataSkipped:Z

.field private lastReferenceSyncTimeMs:J

.field private lastSystemSyncTimeMs:J

.field volatile numOfTickToSkipSync:I

.field private final pdtLock:Ljava/util/concurrent/locks/ReentrantLock;

.field private useMediaTypeEvent:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/oculus/video/audio/AudioSpatializerController;Landroid/os/Handler;)V
    .locals 2

    .line 120
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/video/OculusExoPlayer;-><init>(Landroid/content/Context;Lcom/oculus/video/audio/AudioSpatializerController;Landroid/os/Handler;)V

    const/16 p1, 0x7d0

    .line 85
    iput p1, p0, Lcom/oculus/video/SyncMediaPlayer;->FUTURE_SEEK_OFFSET_DEFAULT_MS:I

    const p1, 0x3fd9999a    # 1.7f

    .line 86
    iput p1, p0, Lcom/oculus/video/SyncMediaPlayer;->FUTURE_SEEK_OFFSET_MULTIPLIER:F

    const/16 p1, 0x3a98

    .line 88
    iput p1, p0, Lcom/oculus/video/SyncMediaPlayer;->FUTURE_SEEK_OFFSET_MAX_MS:I

    const/16 p1, 0x1f4

    .line 91
    iput p1, p0, Lcom/oculus/video/SyncMediaPlayer;->OFF_SYNC_THRESHOLD_MS:I

    const/16 p1, 0x3e8

    .line 92
    iput p1, p0, Lcom/oculus/video/SyncMediaPlayer;->ONE_SEC_MS:I

    const-wide/16 p1, -0x1

    .line 94
    iput-wide p1, p0, Lcom/oculus/video/SyncMediaPlayer;->futureSeekTimeMS:J

    const-wide/16 v0, 0x0

    .line 96
    iput-wide v0, p0, Lcom/oculus/video/SyncMediaPlayer;->futureSeekOffsetMS:J

    const/4 p3, 0x0

    .line 97
    iput-boolean p3, p0, Lcom/oculus/video/SyncMediaPlayer;->isLive:Z

    .line 98
    iput-boolean p3, p0, Lcom/oculus/video/SyncMediaPlayer;->useMediaTypeEvent:Z

    .line 99
    iput-boolean p3, p0, Lcom/oculus/video/SyncMediaPlayer;->isLoop:Z

    .line 100
    iput-boolean p3, p0, Lcom/oculus/video/SyncMediaPlayer;->isFutureSeeking:Z

    .line 101
    iput-boolean p3, p0, Lcom/oculus/video/SyncMediaPlayer;->isFirstTimeSyncing:Z

    .line 105
    iput-boolean p3, p0, Lcom/oculus/video/SyncMediaPlayer;->isMetaDataSkipped:Z

    const/4 p3, -0x1

    .line 106
    iput p3, p0, Lcom/oculus/video/SyncMediaPlayer;->numOfTickToSkipSync:I

    .line 107
    iput-wide p1, p0, Lcom/oculus/video/SyncMediaPlayer;->curPlaylistPDTMillis:J

    .line 108
    iput-wide p1, p0, Lcom/oculus/video/SyncMediaPlayer;->curPlaylistDurationMillis:J

    .line 110
    new-instance p3, Ljava/util/concurrent/locks/ReentrantLock;

    invoke-direct {p3}, Ljava/util/concurrent/locks/ReentrantLock;-><init>()V

    iput-object p3, p0, Lcom/oculus/video/SyncMediaPlayer;->pdtLock:Ljava/util/concurrent/locks/ReentrantLock;

    .line 112
    iput-wide p1, p0, Lcom/oculus/video/SyncMediaPlayer;->lastReferenceSyncTimeMs:J

    .line 113
    iput-wide p1, p0, Lcom/oculus/video/SyncMediaPlayer;->lastSystemSyncTimeMs:J

    const-wide p1, -0x7fffffffffffffffL    # -4.9E-324

    .line 115
    iput-wide p1, p0, Lcom/oculus/video/SyncMediaPlayer;->firstSyncOffsetTimeMs:J

    .line 121
    new-instance p1, Lcom/oculus/video/SyncMediaPlayer$SyncPrimaryHlsPlaylistListener;

    invoke-direct {p1, p0}, Lcom/oculus/video/SyncMediaPlayer$SyncPrimaryHlsPlaylistListener;-><init>(Lcom/oculus/video/SyncMediaPlayer;)V

    iput-object p1, p0, Lcom/oculus/video/SyncMediaPlayer;->primaryHlsPlaylistListener:Lcom/oculus/video/OculusExoPlayer$PrimaryHlsPlaylistListener;

    .line 122
    new-instance p1, Lcom/oculus/video/SyncMediaPlayer$SyncVideoRendererEventListener;

    invoke-direct {p1, p0}, Lcom/oculus/video/SyncMediaPlayer$SyncVideoRendererEventListener;-><init>(Lcom/oculus/video/SyncMediaPlayer;)V

    iput-object p1, p0, Lcom/oculus/video/SyncMediaPlayer;->videoRendererEventListener:Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/video/SyncMediaPlayer;)I
    .locals 0

    .line 22
    iget p0, p0, Lcom/oculus/video/SyncMediaPlayer;->curPlaylistSelected:I

    return p0
.end method

.method static synthetic access$002(Lcom/oculus/video/SyncMediaPlayer;I)I
    .locals 0

    .line 22
    iput p1, p0, Lcom/oculus/video/SyncMediaPlayer;->curPlaylistSelected:I

    return p1
.end method

.method static synthetic access$100()Ljava/lang/String;
    .locals 1

    .line 22
    sget-object v0, Lcom/oculus/video/SyncMediaPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/video/SyncMediaPlayer;Lcom/oculus/android/exoplayer2/Format;)Ljava/lang/String;
    .locals 0

    .line 22
    invoke-direct {p0, p1}, Lcom/oculus/video/SyncMediaPlayer;->getProfileLog(Lcom/oculus/android/exoplayer2/Format;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300(Lcom/oculus/video/SyncMediaPlayer;)Ljava/util/concurrent/locks/ReentrantLock;
    .locals 0

    .line 22
    iget-object p0, p0, Lcom/oculus/video/SyncMediaPlayer;->pdtLock:Ljava/util/concurrent/locks/ReentrantLock;

    return-object p0
.end method

.method static synthetic access$400(Lcom/oculus/video/SyncMediaPlayer;)J
    .locals 2

    .line 22
    iget-wide v0, p0, Lcom/oculus/video/SyncMediaPlayer;->futureSeekTimeMS:J

    return-wide v0
.end method

.method static synthetic access$402(Lcom/oculus/video/SyncMediaPlayer;J)J
    .locals 0

    .line 22
    iput-wide p1, p0, Lcom/oculus/video/SyncMediaPlayer;->futureSeekTimeMS:J

    return-wide p1
.end method

.method private calculateFutureSeekTimeMs(I)J
    .locals 6

    .line 378
    sget-object v0, Lcom/oculus/video/SyncMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resync with playback position "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    iget-wide v0, p0, Lcom/oculus/video/SyncMediaPlayer;->futureSeekOffsetMS:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    long-to-float v0, v0

    const v1, 0x3fd9999a    # 1.7f

    mul-float v0, v0, v1

    const v1, 0x466a6000    # 15000.0f

    .line 384
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    float-to-long v0, v0

    iput-wide v0, p0, Lcom/oculus/video/SyncMediaPlayer;->futureSeekOffsetMS:J

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x7d0

    .line 389
    iput-wide v0, p0, Lcom/oculus/video/SyncMediaPlayer;->futureSeekOffsetMS:J

    :goto_0
    int-to-long v0, p1

    .line 393
    iget-wide v4, p0, Lcom/oculus/video/SyncMediaPlayer;->futureSeekOffsetMS:J

    add-long/2addr v0, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/video/SyncMediaPlayer;->futureSeekTimeMS:J

    .line 394
    iget-boolean p1, p0, Lcom/oculus/video/SyncMediaPlayer;->isLive:Z

    if-eqz p1, :cond_2

    .line 395
    iget-boolean p1, p0, Lcom/oculus/video/SyncMediaPlayer;->useMediaTypeEvent:Z

    if-eqz p1, :cond_1

    .line 396
    iget-wide v0, p0, Lcom/oculus/video/SyncMediaPlayer;->futureSeekTimeMS:J

    iget-object p1, p0, Lcom/oculus/video/SyncMediaPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    invoke-interface {p1}, Lcom/oculus/android/exoplayer2/ExoPlayer;->getDuration()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/video/SyncMediaPlayer;->futureSeekTimeMS:J

    goto :goto_1

    .line 398
    :cond_1
    iget-wide v0, p0, Lcom/oculus/video/SyncMediaPlayer;->curPlaylistDurationMillis:J

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    .line 400
    iget-wide v0, p0, Lcom/oculus/video/SyncMediaPlayer;->futureSeekTimeMS:J

    iget-wide v2, p0, Lcom/oculus/video/SyncMediaPlayer;->curPlaylistDurationMillis:J

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/video/SyncMediaPlayer;->futureSeekTimeMS:J

    .line 404
    :cond_2
    :goto_1
    iget-wide v0, p0, Lcom/oculus/video/SyncMediaPlayer;->futureSeekTimeMS:J

    return-wide v0
.end method

.method private finishFutureSeek()V
    .locals 2

    .line 328
    iget-object v0, p0, Lcom/oculus/video/SyncMediaPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 332
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/SyncMediaPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Lcom/oculus/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    const/4 v0, 0x0

    .line 333
    iput-boolean v0, p0, Lcom/oculus/video/SyncMediaPlayer;->isFutureSeeking:Z

    const-wide/16 v0, 0x0

    .line 334
    iput-wide v0, p0, Lcom/oculus/video/SyncMediaPlayer;->futureSeekOffsetMS:J

    return-void
.end method

.method private getProfileLog(Lcom/oculus/android/exoplayer2/Format;)Ljava/lang/String;
    .locals 2

    .line 374
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget v1, p1, Lcom/oculus/android/exoplayer2/Format;->width:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/oculus/android/exoplayer2/Format;->height:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " Bitrate="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p1, Lcom/oculus/android/exoplayer2/Format;->bitrate:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, " FPS="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p1, p1, Lcom/oculus/android/exoplayer2/Format;->frameRate:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private initialFutureSeek(J)V
    .locals 3

    .line 317
    iget-object v0, p0, Lcom/oculus/video/SyncMediaPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 321
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/SyncMediaPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, p1, p2}, Lcom/oculus/android/exoplayer2/ExoPlayer;->seekTo(J)V

    .line 322
    iget-object v0, p0, Lcom/oculus/video/SyncMediaPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/oculus/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    const/4 v0, 0x1

    .line 323
    iput-boolean v0, p0, Lcom/oculus/video/SyncMediaPlayer;->isFutureSeeking:Z

    .line 324
    sget-object v0, Lcom/oculus/video/SyncMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "resync at (futureSeekTimeMS) : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private parseVideoData(Lcom/oculus/video/Video;)V
    .locals 4

    const-string v0, "IsLoop"

    const-string v1, "UseMediaTypeEvent"

    .line 353
    invoke-virtual {p1}, Lcom/oculus/video/Video;->isLiveMedia()Z

    move-result v2

    iput-boolean v2, p0, Lcom/oculus/video/SyncMediaPlayer;->isLive:Z

    .line 354
    invoke-virtual {p1}, Lcom/oculus/video/Video;->getClientVideoData()Ljava/lang/String;

    move-result-object p1

    .line 355
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 358
    :try_start_0
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 359
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 360
    invoke-virtual {v2, v1}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oculus/video/SyncMediaPlayer;->useMediaTypeEvent:Z

    .line 361
    sget-object p1, Lcom/oculus/video/SyncMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "UseMediaTypeEvent:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v3, p0, Lcom/oculus/video/SyncMediaPlayer;->useMediaTypeEvent:Z

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    :cond_0
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 364
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getBoolean(Ljava/lang/String;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/oculus/video/SyncMediaPlayer;->isLoop:Z

    .line 365
    sget-object p1, Lcom/oculus/video/SyncMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "IsLoop:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean v1, p0, Lcom/oculus/video/SyncMediaPlayer;->isLoop:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 368
    sget-object v0, Lcom/oculus/video/SyncMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Json parse exception"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private resetSyncPlaybackProperty()V
    .locals 4

    const-wide/16 v0, -0x1

    .line 338
    iput-wide v0, p0, Lcom/oculus/video/SyncMediaPlayer;->futureSeekTimeMS:J

    const-wide/16 v2, 0x0

    .line 339
    iput-wide v2, p0, Lcom/oculus/video/SyncMediaPlayer;->futureSeekOffsetMS:J

    const/4 v2, 0x0

    .line 340
    iput-boolean v2, p0, Lcom/oculus/video/SyncMediaPlayer;->isLive:Z

    .line 341
    iput-boolean v2, p0, Lcom/oculus/video/SyncMediaPlayer;->useMediaTypeEvent:Z

    .line 342
    iput-boolean v2, p0, Lcom/oculus/video/SyncMediaPlayer;->isLoop:Z

    .line 343
    iput-boolean v2, p0, Lcom/oculus/video/SyncMediaPlayer;->isFutureSeeking:Z

    const/4 v3, 0x1

    .line 344
    iput-boolean v3, p0, Lcom/oculus/video/SyncMediaPlayer;->isFirstTimeSyncing:Z

    const/4 v3, -0x1

    .line 345
    iput v3, p0, Lcom/oculus/video/SyncMediaPlayer;->curPlaylistSelected:I

    .line 346
    iput-boolean v2, p0, Lcom/oculus/video/SyncMediaPlayer;->isMetaDataSkipped:Z

    .line 347
    iput v3, p0, Lcom/oculus/video/SyncMediaPlayer;->numOfTickToSkipSync:I

    .line 348
    iput-wide v0, p0, Lcom/oculus/video/SyncMediaPlayer;->curPlaylistPDTMillis:J

    .line 349
    iput-wide v0, p0, Lcom/oculus/video/SyncMediaPlayer;->curPlaylistDurationMillis:J

    return-void
.end method

.method private resync(I)V
    .locals 2

    .line 313
    invoke-direct {p0, p1}, Lcom/oculus/video/SyncMediaPlayer;->calculateFutureSeekTimeMs(I)J

    move-result-wide v0

    invoke-direct {p0, v0, v1}, Lcom/oculus/video/SyncMediaPlayer;->initialFutureSeek(J)V

    return-void
.end method


# virtual methods
.method public bridge synthetic getBufferedPositionMs()J
    .locals 2

    .line 22
    invoke-super {p0}, Lcom/oculus/video/OculusExoPlayer;->getBufferedPositionMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getCurrentEpochTimePositionMs()J
    .locals 2

    .line 22
    invoke-super {p0}, Lcom/oculus/video/OculusExoPlayer;->getCurrentEpochTimePositionMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getCurrentPositionMs()J
    .locals 2

    .line 22
    invoke-super {p0}, Lcom/oculus/video/OculusExoPlayer;->getCurrentPositionMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getDurationMs()J
    .locals 2

    .line 22
    invoke-super {p0}, Lcom/oculus/video/OculusExoPlayer;->getDurationMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getLastPresentationTimeUs()J
    .locals 2

    .line 22
    invoke-super {p0}, Lcom/oculus/video/OculusExoPlayer;->getLastPresentationTimeUs()J

    move-result-wide v0

    return-wide v0
.end method

.method public bridge synthetic getName()Ljava/lang/String;
    .locals 1

    .line 22
    invoke-super {p0}, Lcom/oculus/video/OculusExoPlayer;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getSyncDelayMs()J
    .locals 13

    .line 171
    iget-object v0, p0, Lcom/oculus/video/SyncMediaPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    const-wide/32 v1, -0x36ee80

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oculus/video/SyncMediaPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    .line 172
    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/ExoPlayer;->getCurrentManifest()Ljava/lang/Object;

    move-result-object v0

    instance-of v0, v0, Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oculus/video/SyncMediaPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    .line 173
    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/ExoPlayer;->getCurrentTimeline()Lcom/oculus/android/exoplayer2/Timeline;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    iget-wide v5, p0, Lcom/oculus/video/SyncMediaPlayer;->lastReferenceSyncTimeMs:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-ltz v0, :cond_2

    iget-wide v5, p0, Lcom/oculus/video/SyncMediaPlayer;->lastSystemSyncTimeMs:J

    cmp-long v0, v5, v7

    if-gez v0, :cond_0

    goto :goto_0

    .line 180
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/video/SyncMediaPlayer;->getCurrentEpochTimePositionMs()J

    move-result-wide v5

    .line 182
    iget-wide v7, p0, Lcom/oculus/video/SyncMediaPlayer;->lastReferenceSyncTimeMs:J

    .line 184
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v9

    iget-wide v11, p0, Lcom/oculus/video/SyncMediaPlayer;->lastSystemSyncTimeMs:J

    sub-long/2addr v9, v11

    add-long/2addr v7, v9

    sub-long/2addr v7, v5

    .line 188
    iget-wide v5, p0, Lcom/oculus/video/SyncMediaPlayer;->firstSyncOffsetTimeMs:J

    cmp-long v0, v5, v3

    if-nez v0, :cond_1

    .line 189
    iput-wide v7, p0, Lcom/oculus/video/SyncMediaPlayer;->firstSyncOffsetTimeMs:J

    return-wide v1

    :cond_1
    sub-long/2addr v7, v5

    return-wide v7

    .line 176
    :cond_2
    :goto_0
    iput-wide v3, p0, Lcom/oculus/video/SyncMediaPlayer;->firstSyncOffsetTimeMs:J

    return-wide v1
.end method

.method public bridge synthetic getVolume()F
    .locals 1

    .line 22
    invoke-super {p0}, Lcom/oculus/video/OculusExoPlayer;->getVolume()F

    move-result v0

    return v0
.end method

.method public isBuffering()Z
    .locals 3

    .line 158
    iget-object v0, p0, Lcom/oculus/video/SyncMediaPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/oculus/video/SyncMediaPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/ExoPlayer;->getPlaybackState()I

    move-result v0

    .line 159
    :goto_0
    iget-boolean v2, p0, Lcom/oculus/video/SyncMediaPlayer;->isFutureSeeking:Z

    if-nez v2, :cond_2

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :cond_2
    :goto_1
    return v1
.end method

.method public bridge synthetic isMuted()Z
    .locals 1

    .line 22
    invoke-super {p0}, Lcom/oculus/video/OculusExoPlayer;->isMuted()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isPlaying()Z
    .locals 1

    .line 22
    invoke-super {p0}, Lcom/oculus/video/OculusExoPlayer;->isPlaying()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic isSeekable()Z
    .locals 1

    .line 22
    invoke-super {p0}, Lcom/oculus/video/OculusExoPlayer;->isSeekable()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onRender(Z)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lcom/oculus/video/OculusExoPlayer;->onRender(Z)V

    return-void
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public bridge synthetic release()V
    .locals 0

    .line 22
    invoke-super {p0}, Lcom/oculus/video/OculusExoPlayer;->release()V

    return-void
.end method

.method public resume()V
    .locals 0

    return-void
.end method

.method public seekTo(J)V
    .locals 0

    return-void
.end method

.method public bridge synthetic selectSubtitle(Ljava/lang/String;)Z
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lcom/oculus/video/OculusExoPlayer;->selectSubtitle(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public bridge synthetic setMute(Z)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lcom/oculus/video/OculusExoPlayer;->setMute(Z)V

    return-void
.end method

.method setSyncReferenceTimeMs(JJ)V
    .locals 3

    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-lez v2, :cond_1

    cmp-long v2, p3, v0

    if-gtz v2, :cond_0

    goto :goto_0

    .line 166
    :cond_0
    iput-wide p1, p0, Lcom/oculus/video/SyncMediaPlayer;->lastReferenceSyncTimeMs:J

    .line 167
    iput-wide p3, p0, Lcom/oculus/video/SyncMediaPlayer;->lastSystemSyncTimeMs:J

    :cond_1
    :goto_0
    return-void
.end method

.method public bridge synthetic setVolume(F)V
    .locals 0

    .line 22
    invoke-super {p0, p1}, Lcom/oculus/video/OculusExoPlayer;->setVolume(F)V

    return-void
.end method

.method public start(Lcom/oculus/video/Video;ZLandroid/view/Surface;Lcom/oculus/video/VideoPlayer$EventListener;)V
    .locals 0

    .line 129
    invoke-super {p0, p1, p2, p3, p4}, Lcom/oculus/video/OculusExoPlayer;->start(Lcom/oculus/video/Video;ZLandroid/view/Surface;Lcom/oculus/video/VideoPlayer$EventListener;)V

    const p2, 0x3dcccccd    # 0.1f

    .line 133
    invoke-virtual {p0, p2}, Lcom/oculus/video/SyncMediaPlayer;->setVolume(F)V

    .line 135
    invoke-direct {p0}, Lcom/oculus/video/SyncMediaPlayer;->resetSyncPlaybackProperty()V

    .line 136
    invoke-direct {p0, p1}, Lcom/oculus/video/SyncMediaPlayer;->parseVideoData(Lcom/oculus/video/Video;)V

    .line 138
    iget-object p1, p0, Lcom/oculus/video/SyncMediaPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    iget-boolean p2, p0, Lcom/oculus/video/SyncMediaPlayer;->isLive:Z

    if-eqz p2, :cond_0

    iget-boolean p2, p0, Lcom/oculus/video/SyncMediaPlayer;->useMediaTypeEvent:Z

    if-nez p2, :cond_0

    const/4 p2, 0x1

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    invoke-interface {p1, p2}, Lcom/oculus/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public bridge synthetic stop()V
    .locals 0

    .line 22
    invoke-super {p0}, Lcom/oculus/video/OculusExoPlayer;->stop()V

    return-void
.end method

.method updateSyncedPlaybackTime(ILjava/lang/String;)V
    .locals 12

    const-string v0, ", CurrentPosition : "

    const-string v1, ", playbackTimeMS : "

    const-string v2, ", bufferedEnd : "

    .line 202
    iget-object v3, p0, Lcom/oculus/video/SyncMediaPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    if-nez v3, :cond_0

    return-void

    .line 206
    :cond_0
    iget-object v3, p0, Lcom/oculus/video/SyncMediaPlayer;->pdtLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->tryLock()Z

    move-result v3

    if-eqz v3, :cond_12

    .line 209
    :try_start_0
    iget-boolean v3, p0, Lcom/oculus/video/SyncMediaPlayer;->isLive:Z

    const-wide/16 v4, 0x0

    const/4 v6, 0x1

    const/4 v7, 0x0

    if-eqz v3, :cond_9

    .line 210
    iget-boolean v3, p0, Lcom/oculus/video/SyncMediaPlayer;->useMediaTypeEvent:Z

    if-eqz v3, :cond_1

    goto :goto_2

    .line 215
    :cond_1
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-gtz p1, :cond_3

    .line 307
    :cond_2
    :goto_0
    iget-object p1, p0, Lcom/oculus/video/SyncMediaPlayer;->pdtLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    return-void

    .line 219
    :cond_3
    :try_start_1
    iget-wide v8, p0, Lcom/oculus/video/SyncMediaPlayer;->curPlaylistPDTMillis:J

    cmp-long p1, v8, v4

    if-gez p1, :cond_4

    .line 220
    sget-object p1, Lcom/oculus/video/SyncMediaPlayer;->TAG:Ljava/lang/String;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Skipping syncing as curPlaylistPDTMillis is "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcom/oculus/video/SyncMediaPlayer;->curPlaylistPDTMillis:J

    invoke-virtual {p2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v0, " (less than 0)"

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 224
    :cond_4
    iget p1, p0, Lcom/oculus/video/SyncMediaPlayer;->numOfTickToSkipSync:I

    if-lez p1, :cond_5

    .line 225
    iget p1, p0, Lcom/oculus/video/SyncMediaPlayer;->numOfTickToSkipSync:I

    sub-int/2addr p1, v6

    iput p1, p0, Lcom/oculus/video/SyncMediaPlayer;->numOfTickToSkipSync:I

    goto :goto_0

    :cond_5
    const-wide/16 v8, -0x1

    const-string p1, "\\s+"

    .line 230
    invoke-virtual {p2, p1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 231
    array-length p2, p1

    rem-int/lit8 p2, p2, 0x2

    if-nez p2, :cond_7

    const/4 p2, 0x0

    .line 232
    :goto_1
    array-length v3, p1

    if-ge p2, v3, :cond_7

    .line 233
    aget-object v3, p1, p2

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    .line 234
    iget v10, p0, Lcom/oculus/video/SyncMediaPlayer;->curPlaylistSelected:I

    if-ne v3, v10, :cond_6

    add-int/lit8 v3, p2, 0x1

    .line 235
    aget-object v3, p1, v3

    invoke-static {v3}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v8

    :cond_6
    add-int/lit8 p2, p2, 0x2

    goto :goto_1

    :cond_7
    cmp-long p1, v8, v4

    if-gez p1, :cond_8

    goto :goto_0

    .line 244
    :cond_8
    iget-wide p1, p0, Lcom/oculus/video/SyncMediaPlayer;->curPlaylistPDTMillis:J

    sub-long/2addr v8, p1

    long-to-int p1, v8

    goto :goto_2

    :cond_9
    const/4 v6, 0x0

    .line 248
    :goto_2
    iget-object p2, p0, Lcom/oculus/video/SyncMediaPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    invoke-interface {p2}, Lcom/oculus/android/exoplayer2/ExoPlayer;->getDuration()J

    move-result-wide v8

    const-wide v10, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long p2, v8, v10

    if-nez p2, :cond_a

    goto :goto_0

    .line 253
    :cond_a
    iget-boolean p2, p0, Lcom/oculus/video/SyncMediaPlayer;->isLive:Z

    if-nez p2, :cond_b

    iget-boolean p2, p0, Lcom/oculus/video/SyncMediaPlayer;->isLoop:Z

    if-eqz p2, :cond_b

    const-wide/16 v10, 0x3e8

    cmp-long p2, v8, v10

    if-lez p2, :cond_b

    sub-long v10, v8, v10

    long-to-int p2, v10

    if-le p1, p2, :cond_b

    .line 255
    iget-object p1, p0, Lcom/oculus/video/SyncMediaPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    invoke-interface {p1, v4, v5}, Lcom/oculus/android/exoplayer2/ExoPlayer;->seekTo(J)V

    .line 256
    iget-object p1, p0, Lcom/oculus/video/SyncMediaPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    invoke-interface {p1, v7}, Lcom/oculus/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    goto/16 :goto_0

    :cond_b
    long-to-int p2, v8

    if-le p1, p2, :cond_c

    .line 263
    sget-object p2, Lcom/oculus/video/SyncMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Playback Finished. playbackTimeMS : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p1, ", duration : "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v6, :cond_2

    .line 265
    invoke-virtual {p0}, Lcom/oculus/video/SyncMediaPlayer;->stop()V

    goto/16 :goto_0

    .line 270
    :cond_c
    iget-boolean p2, p0, Lcom/oculus/video/SyncMediaPlayer;->isFirstTimeSyncing:Z

    if-eqz p2, :cond_d

    .line 272
    sget-object p2, Lcom/oculus/video/SyncMediaPlayer;->TAG:Ljava/lang/String;

    const-string v0, "first sync"

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 273
    invoke-direct {p0, p1}, Lcom/oculus/video/SyncMediaPlayer;->resync(I)V

    .line 274
    iput-boolean v7, p0, Lcom/oculus/video/SyncMediaPlayer;->isFirstTimeSyncing:Z

    goto/16 :goto_0

    .line 278
    :cond_d
    iget-object p2, p0, Lcom/oculus/video/SyncMediaPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    invoke-interface {p2}, Lcom/oculus/android/exoplayer2/ExoPlayer;->getPlayWhenReady()Z

    move-result p2

    if-nez p2, :cond_10

    .line 280
    iget-object p2, p0, Lcom/oculus/video/SyncMediaPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    invoke-interface {p2}, Lcom/oculus/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v3

    .line 281
    iget-object p2, p0, Lcom/oculus/video/SyncMediaPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    invoke-interface {p2}, Lcom/oculus/android/exoplayer2/ExoPlayer;->getBufferedPosition()J

    move-result-wide v5

    int-to-long v7, p1

    cmp-long p2, v3, v7

    if-gtz p2, :cond_f

    cmp-long p2, v7, v5

    if-gez p2, :cond_f

    .line 286
    sget-object p2, Lcom/oculus/video/SyncMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "bufferStart : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/oculus/video/SyncMediaPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    invoke-interface {v8}, Lcom/oculus/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v8, "PlaybackState : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcom/oculus/video/SyncMediaPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    invoke-interface {v8}, Lcom/oculus/android/exoplayer2/ExoPlayer;->getPlaybackState()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {p2, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    iget-object p2, p0, Lcom/oculus/video/SyncMediaPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    invoke-interface {p2}, Lcom/oculus/android/exoplayer2/ExoPlayer;->getPlaybackState()I

    move-result p2

    const/4 v7, 0x3

    if-ne p2, v7, :cond_e

    .line 288
    sget-object p1, Lcom/oculus/video/SyncMediaPlayer;->TAG:Ljava/lang/String;

    const-string p2, "ready to play"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    invoke-direct {p0}, Lcom/oculus/video/SyncMediaPlayer;->finishFutureSeek()V

    goto/16 :goto_3

    .line 292
    :cond_e
    sget-object p2, Lcom/oculus/video/SyncMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "caught up, but still buffering. bufferStart : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/oculus/video/SyncMediaPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    invoke-virtual {v7, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    invoke-direct {p0, p1}, Lcom/oculus/video/SyncMediaPlayer;->resync(I)V

    goto :goto_3

    :cond_f
    cmp-long p2, v7, v5

    if-ltz p2, :cond_11

    .line 297
    sget-object p2, Lcom/oculus/video/SyncMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "buffering too slow: bufferedEnd = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    invoke-direct {p0, p1}, Lcom/oculus/video/SyncMediaPlayer;->resync(I)V

    goto :goto_3

    .line 301
    :cond_10
    iget-object p2, p0, Lcom/oculus/video/SyncMediaPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    invoke-interface {p2}, Lcom/oculus/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    int-to-long v2, p1

    sub-long/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(J)J

    move-result-wide v0

    const-wide/16 v2, 0x1f4

    cmp-long p2, v0, v2

    if-lez p2, :cond_11

    .line 302
    sget-object p2, Lcom/oculus/video/SyncMediaPlayer;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "off sync. playbackTimeMS : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", current position = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/oculus/video/SyncMediaPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/oculus/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", futureSeekTimeMS : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oculus/video/SyncMediaPlayer;->futureSeekTimeMS:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    invoke-direct {p0, p1}, Lcom/oculus/video/SyncMediaPlayer;->resync(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 307
    :cond_11
    :goto_3
    iget-object p1, p0, Lcom/oculus/video/SyncMediaPlayer;->pdtLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p1}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    goto :goto_4

    :catchall_0
    move-exception p1

    iget-object p2, p0, Lcom/oculus/video/SyncMediaPlayer;->pdtLock:Ljava/util/concurrent/locks/ReentrantLock;

    invoke-virtual {p2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw p1

    :cond_12
    :goto_4
    return-void
.end method
