.class Lcom/oculus/video/OculusMediaPlayer;
.super Ljava/lang/Object;
.source "OculusMediaPlayer.java"

# interfaces
.implements Lcom/oculus/video/VideoPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "OculusMediaPlayer"


# instance fields
.field private final context:Landroid/content/Context;

.field private eventListener:Lcom/oculus/video/VideoPlayer$EventListener;

.field private frameIntervalNs:J

.field private isBuffering:Z

.field private isMuted:Z

.field private isPlayerReady:Z

.field private isSeekable:Z

.field private lastPresentationTimeNs:J

.field private mediaPlayer:Landroid/media/MediaPlayer;

.field private playWhenReady:Z

.field private volume:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 148
    iput-object v0, p0, Lcom/oculus/video/OculusMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 154
    iput v0, p0, Lcom/oculus/video/OculusMediaPlayer;->volume:F

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 157
    iput-wide v0, p0, Lcom/oculus/video/OculusMediaPlayer;->frameIntervalNs:J

    .line 158
    iput-wide v0, p0, Lcom/oculus/video/OculusMediaPlayer;->lastPresentationTimeNs:J

    .line 161
    iput-object p1, p0, Lcom/oculus/video/OculusMediaPlayer;->context:Landroid/content/Context;

    const/4 p1, 0x0

    .line 163
    iput-boolean p1, p0, Lcom/oculus/video/OculusMediaPlayer;->isPlayerReady:Z

    .line 164
    iput-boolean p1, p0, Lcom/oculus/video/OculusMediaPlayer;->isBuffering:Z

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/video/OculusMediaPlayer;)Landroid/media/MediaPlayer;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/oculus/video/OculusMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oculus/video/OculusMediaPlayer;)Lcom/oculus/video/VideoPlayer$EventListener;
    .locals 0

    .line 19
    iget-object p0, p0, Lcom/oculus/video/OculusMediaPlayer;->eventListener:Lcom/oculus/video/VideoPlayer$EventListener;

    return-object p0
.end method

.method static synthetic access$200(Lcom/oculus/video/OculusMediaPlayer;Ljava/lang/Exception;)V
    .locals 0

    .line 19
    invoke-direct {p0, p1}, Lcom/oculus/video/OculusMediaPlayer;->reportError(Ljava/lang/Exception;)V

    return-void
.end method

.method static synthetic access$302(Lcom/oculus/video/OculusMediaPlayer;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/oculus/video/OculusMediaPlayer;->isBuffering:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oculus/video/OculusMediaPlayer;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/oculus/video/OculusMediaPlayer;->isSeekable:Z

    return p0
.end method

.method static synthetic access$402(Lcom/oculus/video/OculusMediaPlayer;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/oculus/video/OculusMediaPlayer;->isSeekable:Z

    return p1
.end method

.method static synthetic access$502(Lcom/oculus/video/OculusMediaPlayer;Z)Z
    .locals 0

    .line 19
    iput-boolean p1, p0, Lcom/oculus/video/OculusMediaPlayer;->isPlayerReady:Z

    return p1
.end method

.method static synthetic access$600(Lcom/oculus/video/OculusMediaPlayer;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/oculus/video/OculusMediaPlayer;->isMuted:Z

    return p0
.end method

.method static synthetic access$700(Lcom/oculus/video/OculusMediaPlayer;)Z
    .locals 0

    .line 19
    iget-boolean p0, p0, Lcom/oculus/video/OculusMediaPlayer;->playWhenReady:Z

    return p0
.end method

.method static synthetic access$800(Lcom/oculus/video/OculusMediaPlayer;)J
    .locals 2

    .line 19
    iget-wide v0, p0, Lcom/oculus/video/OculusMediaPlayer;->frameIntervalNs:J

    return-wide v0
.end method

.method static synthetic access$802(Lcom/oculus/video/OculusMediaPlayer;J)J
    .locals 0

    .line 19
    iput-wide p1, p0, Lcom/oculus/video/OculusMediaPlayer;->frameIntervalNs:J

    return-wide p1
.end method

.method private reportError(Ljava/lang/Exception;)V
    .locals 1

    .line 368
    iget-object v0, p0, Lcom/oculus/video/OculusMediaPlayer;->eventListener:Lcom/oculus/video/VideoPlayer$EventListener;

    invoke-interface {v0, p1}, Lcom/oculus/video/VideoPlayer$EventListener;->onError(Ljava/lang/Exception;)V

    .line 369
    invoke-virtual {p0}, Lcom/oculus/video/OculusMediaPlayer;->release()V

    return-void
.end method


# virtual methods
.method public getBufferedPositionMs()J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public getCurrentEpochTimePositionMs()J
    .locals 2

    .line 293
    invoke-virtual {p0}, Lcom/oculus/video/OculusMediaPlayer;->getCurrentPositionMs()J

    move-result-wide v0

    return-wide v0
.end method

.method public getCurrentPositionMs()J
    .locals 3

    .line 281
    iget-boolean v0, p0, Lcom/oculus/video/OculusMediaPlayer;->isPlayerReady:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 285
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oculus/video/OculusMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getCurrentPosition()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v0, v0

    return-wide v0

    :catch_0
    return-wide v1
.end method

.method public getDurationMs()J
    .locals 5

    .line 351
    iget-boolean v0, p0, Lcom/oculus/video/OculusMediaPlayer;->isPlayerReady:Z

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 355
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oculus/video/OculusMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    int-to-long v3, v0

    cmp-long v0, v3, v1

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    move-wide v1, v3

    :catch_0
    :goto_0
    return-wide v1
.end method

.method public getFrameRate()F
    .locals 6

    .line 404
    iget-object v0, p0, Lcom/oculus/video/OculusMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v0

    const/4 v1, 0x0

    .line 405
    :goto_0
    array-length v2, v0

    const/4 v3, 0x0

    if-ge v1, v2, :cond_1

    .line 406
    aget-object v2, v0, v1

    .line 407
    invoke-virtual {v2}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 408
    invoke-virtual {v2}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v4, "frame-rate"

    .line 409
    invoke-virtual {v2, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 411
    :try_start_0
    invoke-virtual {v2, v4}, Landroid/media/MediaFormat;->getFloat(Ljava/lang/String;)F

    move-result v0
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 415
    :catch_0
    :try_start_1
    invoke-virtual {v2, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    int-to-float v0, v0

    return v0

    :catch_1
    return v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v3
.end method

.method public getLastPresentationTimeUs()J
    .locals 9

    .line 394
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 395
    iget-wide v2, p0, Lcom/oculus/video/OculusMediaPlayer;->frameIntervalNs:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_0

    iget-wide v6, p0, Lcom/oculus/video/OculusMediaPlayer;->lastPresentationTimeNs:J

    cmp-long v8, v6, v4

    if-lez v8, :cond_0

    sub-long/2addr v0, v6

    cmp-long v4, v0, v2

    if-ltz v4, :cond_1

    .line 398
    :cond_0
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/video/OculusMediaPlayer;->lastPresentationTimeNs:J

    .line 400
    :cond_1
    iget-wide v0, p0, Lcom/oculus/video/OculusMediaPlayer;->lastPresentationTimeNs:J

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "OculusMediaPlayer"

    return-object v0
.end method

.method public getRotationDegrees()I
    .locals 6

    .line 426
    iget-object v0, p0, Lcom/oculus/video/OculusMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->getTrackInfo()[Landroid/media/MediaPlayer$TrackInfo;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 427
    :goto_0
    array-length v3, v0

    if-ge v2, v3, :cond_1

    .line 428
    aget-object v3, v0, v2

    .line 429
    invoke-virtual {v3}, Landroid/media/MediaPlayer$TrackInfo;->getTrackType()I

    move-result v4

    const/4 v5, 0x1

    if-ne v4, v5, :cond_0

    .line 430
    invoke-virtual {v3}, Landroid/media/MediaPlayer$TrackInfo;->getFormat()Landroid/media/MediaFormat;

    move-result-object v3

    if-eqz v3, :cond_0

    const-string v4, "rotation-degrees"

    .line 431
    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->containsKey(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 432
    invoke-virtual {v3, v4}, Landroid/media/MediaFormat;->getInteger(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public getVolume()F
    .locals 1

    .line 327
    iget v0, p0, Lcom/oculus/video/OculusMediaPlayer;->volume:F

    return v0
.end method

.method public isBuffering()Z
    .locals 1

    .line 310
    iget-boolean v0, p0, Lcom/oculus/video/OculusMediaPlayer;->isBuffering:Z

    return v0
.end method

.method public isMuted()Z
    .locals 1

    .line 346
    iget-boolean v0, p0, Lcom/oculus/video/OculusMediaPlayer;->isMuted:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 2

    .line 298
    iget-boolean v0, p0, Lcom/oculus/video/OculusMediaPlayer;->isPlayerReady:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 302
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oculus/video/OculusMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->isPlaying()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    :catch_0
    return v1
.end method

.method public isSeekable()Z
    .locals 1

    .line 376
    iget-boolean v0, p0, Lcom/oculus/video/OculusMediaPlayer;->isPlayerReady:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oculus/video/OculusMediaPlayer;->isSeekable:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onRender(Z)V
    .locals 0

    return-void
.end method

.method public pause()V
    .locals 1

    .line 245
    iget-boolean v0, p0, Lcom/oculus/video/OculusMediaPlayer;->isPlayerReady:Z

    if-nez v0, :cond_0

    return-void

    .line 249
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oculus/video/OculusMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->pause()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 251
    invoke-direct {p0, v0}, Lcom/oculus/video/OculusMediaPlayer;->reportError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public release()V
    .locals 2

    .line 228
    iget-object v0, p0, Lcom/oculus/video/OculusMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    if-nez v0, :cond_0

    return-void

    .line 232
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Landroid/media/MediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    const/4 v0, 0x0

    .line 236
    iput-object v0, p0, Lcom/oculus/video/OculusMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    .line 237
    iput-boolean v0, p0, Lcom/oculus/video/OculusMediaPlayer;->isPlayerReady:Z

    const-wide v0, -0x7fffffffffffffffL    # -4.9E-324

    .line 238
    iput-wide v0, p0, Lcom/oculus/video/OculusMediaPlayer;->frameIntervalNs:J

    .line 239
    iput-wide v0, p0, Lcom/oculus/video/OculusMediaPlayer;->lastPresentationTimeNs:J

    .line 240
    iget-object v0, p0, Lcom/oculus/video/OculusMediaPlayer;->eventListener:Lcom/oculus/video/VideoPlayer$EventListener;

    invoke-interface {v0}, Lcom/oculus/video/VideoPlayer$EventListener;->onRelease()V

    return-void
.end method

.method public resume()V
    .locals 1

    .line 257
    iget-boolean v0, p0, Lcom/oculus/video/OculusMediaPlayer;->isPlayerReady:Z

    if-nez v0, :cond_0

    return-void

    .line 261
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oculus/video/OculusMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->start()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 263
    invoke-direct {p0, v0}, Lcom/oculus/video/OculusMediaPlayer;->reportError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public seekTo(J)V
    .locals 3

    .line 269
    iget-boolean v0, p0, Lcom/oculus/video/OculusMediaPlayer;->isPlayerReady:Z

    if-nez v0, :cond_0

    return-void

    .line 273
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oculus/video/OculusMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    const-wide/16 v1, 0x0

    invoke-static {v1, v2, p1, p2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iget-object v1, p0, Lcom/oculus/video/OculusMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v1}, Landroid/media/MediaPlayer;->getDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    long-to-int p2, p1

    invoke-virtual {v0, p2}, Landroid/media/MediaPlayer;->seekTo(I)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 275
    invoke-direct {p0, p1}, Lcom/oculus/video/OculusMediaPlayer;->reportError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public selectSubtitle(Ljava/lang/String;)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public setMute(Z)V
    .locals 1

    .line 332
    iget-boolean v0, p0, Lcom/oculus/video/OculusMediaPlayer;->isPlayerReady:Z

    if-nez v0, :cond_0

    return-void

    .line 335
    :cond_0
    iput-boolean p1, p0, Lcom/oculus/video/OculusMediaPlayer;->isMuted:Z

    .line 336
    iget-boolean p1, p0, Lcom/oculus/video/OculusMediaPlayer;->isMuted:Z

    if-eqz p1, :cond_1

    .line 337
    iget-object p1, p0, Lcom/oculus/video/OculusMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    goto :goto_0

    .line 339
    :cond_1
    iget-object p1, p0, Lcom/oculus/video/OculusMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    iget v0, p0, Lcom/oculus/video/OculusMediaPlayer;->volume:F

    invoke-virtual {p1, v0, v0}, Landroid/media/MediaPlayer;->setVolume(FF)V

    :goto_0
    return-void
.end method

.method public setVolume(F)V
    .locals 0

    .line 321
    iput p1, p0, Lcom/oculus/video/OculusMediaPlayer;->volume:F

    .line 322
    iget-boolean p1, p0, Lcom/oculus/video/OculusMediaPlayer;->isMuted:Z

    invoke-virtual {p0, p1}, Lcom/oculus/video/OculusMediaPlayer;->setMute(Z)V

    return-void
.end method

.method public start(Lcom/oculus/video/Video;ZLandroid/view/Surface;Lcom/oculus/video/VideoPlayer$EventListener;)V
    .locals 2

    .line 173
    iput-boolean p2, p0, Lcom/oculus/video/OculusMediaPlayer;->playWhenReady:Z

    .line 174
    iput-object p4, p0, Lcom/oculus/video/OculusMediaPlayer;->eventListener:Lcom/oculus/video/VideoPlayer$EventListener;

    .line 176
    invoke-virtual {p0}, Lcom/oculus/video/OculusMediaPlayer;->stop()V

    .line 177
    invoke-interface {p4}, Lcom/oculus/video/VideoPlayer$EventListener;->onStartVideo()V

    const/4 p2, 0x0

    .line 178
    iput-boolean p2, p0, Lcom/oculus/video/OculusMediaPlayer;->isBuffering:Z

    .line 179
    iput-boolean p2, p0, Lcom/oculus/video/OculusMediaPlayer;->isPlayerReady:Z

    const/4 p2, 0x1

    .line 180
    iput-boolean p2, p0, Lcom/oculus/video/OculusMediaPlayer;->isSeekable:Z

    .line 182
    new-instance p2, Landroid/media/MediaPlayer;

    invoke-direct {p2}, Landroid/media/MediaPlayer;-><init>()V

    iput-object p2, p0, Lcom/oculus/video/OculusMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    .line 183
    new-instance p2, Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;

    const/4 p4, 0x0

    invoke-direct {p2, p0, p4}, Lcom/oculus/video/OculusMediaPlayer$MediaPlayerListener;-><init>(Lcom/oculus/video/OculusMediaPlayer;Lcom/oculus/video/OculusMediaPlayer$1;)V

    .line 184
    iget-object p4, p0, Lcom/oculus/video/OculusMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p4, p2}, Landroid/media/MediaPlayer;->setOnVideoSizeChangedListener(Landroid/media/MediaPlayer$OnVideoSizeChangedListener;)V

    .line 185
    iget-object p4, p0, Lcom/oculus/video/OculusMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p4, p2}, Landroid/media/MediaPlayer;->setOnErrorListener(Landroid/media/MediaPlayer$OnErrorListener;)V

    .line 186
    iget-object p4, p0, Lcom/oculus/video/OculusMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p4, p2}, Landroid/media/MediaPlayer;->setOnCompletionListener(Landroid/media/MediaPlayer$OnCompletionListener;)V

    .line 187
    iget-object p4, p0, Lcom/oculus/video/OculusMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p4, p2}, Landroid/media/MediaPlayer;->setOnPreparedListener(Landroid/media/MediaPlayer$OnPreparedListener;)V

    .line 188
    iget-object p4, p0, Lcom/oculus/video/OculusMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p4, p2}, Landroid/media/MediaPlayer;->setOnSeekCompleteListener(Landroid/media/MediaPlayer$OnSeekCompleteListener;)V

    .line 189
    iget-object p4, p0, Lcom/oculus/video/OculusMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p4, p2}, Landroid/media/MediaPlayer;->setOnBufferingUpdateListener(Landroid/media/MediaPlayer$OnBufferingUpdateListener;)V

    .line 190
    iget-object p4, p0, Lcom/oculus/video/OculusMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p4, p2}, Landroid/media/MediaPlayer;->setOnInfoListener(Landroid/media/MediaPlayer$OnInfoListener;)V

    .line 192
    :try_start_0
    iget-object p2, p0, Lcom/oculus/video/OculusMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p2, p3}, Landroid/media/MediaPlayer;->setSurface(Landroid/view/Surface;)V

    .line 193
    invoke-virtual {p1}, Lcom/oculus/video/Video;->getHttpRequestHeaders()Lorg/json/JSONObject;

    move-result-object p2

    .line 194
    new-instance p3, Ljava/util/HashMap;

    invoke-direct {p3}, Ljava/util/HashMap;-><init>()V

    if-eqz p2, :cond_0

    .line 196
    invoke-virtual {p2}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p4

    .line 197
    :catch_0
    :goto_0
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz v0, :cond_0

    .line 199
    :try_start_1
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 200
    invoke-virtual {p2, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p3, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 205
    :cond_0
    :try_start_2
    iget-object p2, p0, Lcom/oculus/video/OculusMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    iget-object p4, p0, Lcom/oculus/video/OculusMediaPlayer;->context:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/oculus/video/Video;->getVideoUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p2, p4, p1, p3}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;Ljava/util/Map;)V

    .line 206
    iget-object p1, p0, Lcom/oculus/video/OculusMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {p1}, Landroid/media/MediaPlayer;->prepareAsync()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    :catch_1
    move-exception p1

    .line 208
    invoke-direct {p0, p1}, Lcom/oculus/video/OculusMediaPlayer;->reportError(Ljava/lang/Exception;)V

    :goto_1
    return-void
.end method

.method public stop()V
    .locals 1

    .line 214
    iget-boolean v0, p0, Lcom/oculus/video/OculusMediaPlayer;->isPlayerReady:Z

    if-nez v0, :cond_0

    .line 215
    invoke-virtual {p0}, Lcom/oculus/video/OculusMediaPlayer;->release()V

    return-void

    .line 219
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oculus/video/OculusMediaPlayer;->mediaPlayer:Landroid/media/MediaPlayer;

    invoke-virtual {v0}, Landroid/media/MediaPlayer;->stop()V

    .line 220
    invoke-virtual {p0}, Lcom/oculus/video/OculusMediaPlayer;->release()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 222
    invoke-direct {p0, v0}, Lcom/oculus/video/OculusMediaPlayer;->reportError(Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method
