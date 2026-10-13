.class public Lcom/oculus/video/OculusVideoPlayer;
.super Ljava/lang/Object;
.source "OculusVideoPlayer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;,
        Lcom/oculus/video/OculusVideoPlayer$EventListener;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "OculusVideoPlayer"


# instance fields
.field private currentEventListener:Lcom/oculus/video/OculusVideoPlayer$EventListener;

.field private volatile currentPlayerState:I

.field private final discardedTextureCopiers:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/oculus/video/OESTextureCopier;",
            ">;"
        }
    .end annotation
.end field

.field private instancePtr:J

.field private jniVideoSurfaceToReload:J

.field private needReloadCopyVideoSurface:Z

.field private videoSurfaceManager:Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 212
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/video/OculusVideoPlayer;->discardedTextureCopiers:Ljava/util/ArrayList;

    .line 77
    invoke-static {p1, p0}, Lcom/oculus/video/OculusVideoPlayer;->nativeCreateInstance(Landroid/content/Context;Lcom/oculus/video/OculusVideoPlayer;)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/video/OculusVideoPlayer;->instancePtr:J

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/video/OculusVideoPlayer;)J
    .locals 2

    .line 24
    iget-wide v0, p0, Lcom/oculus/video/OculusVideoPlayer;->instancePtr:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/oculus/video/OculusVideoPlayer;)Ljava/util/ArrayList;
    .locals 0

    .line 24
    iget-object p0, p0, Lcom/oculus/video/OculusVideoPlayer;->discardedTextureCopiers:Ljava/util/ArrayList;

    return-object p0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .line 24
    sget-object v0, Lcom/oculus/video/OculusVideoPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private static native nativeCreateInstance(Landroid/content/Context;Lcom/oculus/video/OculusVideoPlayer;)J
.end method

.method private static native nativeDestroyInstance(J)V
.end method

.method private native nativeGetPosition(J)J
.end method

.method private native nativeGetState(J)I
.end method

.method private native nativeOnRender(JD)V
.end method

.method private native nativePauseVideo(J)Z
.end method

.method private native nativeResumeVideo(J)Z
.end method

.method private native nativeSetEventListener(JLcom/oculus/video/OculusVideoPlayer$EventListener;)Z
.end method

.method private native nativeSetJniVideoSurface(JJ)Z
.end method

.method private native nativeSetPosition(JI)Z
.end method

.method private native nativeStartVideo(JLjava/lang/String;)Z
.end method

.method private native nativeStopVideo(J)Z
.end method

.method private native nativeUpdateFrame(JDFFFFFFF)V
.end method

.method private declared-synchronized releaseVideoSurfaceManager()V
    .locals 1

    monitor-enter p0

    .line 260
    :try_start_0
    iget-object v0, p0, Lcom/oculus/video/OculusVideoPlayer;->videoSurfaceManager:Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/oculus/video/OculusVideoPlayer;->videoSurfaceManager:Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;

    invoke-virtual {v0}, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->release()V

    const/4 v0, 0x0

    .line 262
    iput-object v0, p0, Lcom/oculus/video/OculusVideoPlayer;->videoSurfaceManager:Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 264
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private declared-synchronized reloadVideoSurfaceOnPlayerClose()V
    .locals 5

    monitor-enter p0

    .line 267
    :try_start_0
    invoke-direct {p0}, Lcom/oculus/video/OculusVideoPlayer;->releaseVideoSurfaceManager()V

    .line 268
    iget-wide v0, p0, Lcom/oculus/video/OculusVideoPlayer;->jniVideoSurfaceToReload:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 269
    iget-wide v0, p0, Lcom/oculus/video/OculusVideoPlayer;->jniVideoSurfaceToReload:J

    invoke-virtual {p0, v0, v1}, Lcom/oculus/video/OculusVideoPlayer;->loadJniVideoSurface(J)Z

    goto :goto_0

    .line 270
    :cond_0
    iget-boolean v0, p0, Lcom/oculus/video/OculusVideoPlayer;->needReloadCopyVideoSurface:Z

    if-eqz v0, :cond_1

    .line 271
    invoke-virtual {p0}, Lcom/oculus/video/OculusVideoPlayer;->loadVideoSurface()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 273
    :cond_1
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized clearVideoSurface()Z
    .locals 1

    monitor-enter p0

    .line 236
    :try_start_0
    iget v0, p0, Lcom/oculus/video/OculusVideoPlayer;->currentPlayerState:I

    if-nez v0, :cond_0

    .line 237
    invoke-direct {p0}, Lcom/oculus/video/OculusVideoPlayer;->releaseVideoSurfaceManager()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    const/4 v0, 0x1

    .line 242
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :catch_0
    const/4 v0, 0x0

    .line 240
    monitor-exit p0

    return v0
.end method

.method public declared-synchronized executeTextureCopy()V
    .locals 1

    monitor-enter p0

    .line 254
    :try_start_0
    iget-object v0, p0, Lcom/oculus/video/OculusVideoPlayer;->videoSurfaceManager:Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/oculus/video/OculusVideoPlayer;->videoSurfaceManager:Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;

    invoke-virtual {v0}, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->copyToTexture()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 257
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public finalize()V
    .locals 0

    .line 91
    invoke-virtual {p0}, Lcom/oculus/video/OculusVideoPlayer;->release()V

    return-void
.end method

.method public getInstancePtr()J
    .locals 2

    .line 81
    iget-wide v0, p0, Lcom/oculus/video/OculusVideoPlayer;->instancePtr:J

    return-wide v0
.end method

.method public getPosition()J
    .locals 2

    .line 187
    iget-wide v0, p0, Lcom/oculus/video/OculusVideoPlayer;->instancePtr:J

    invoke-direct {p0, v0, v1}, Lcom/oculus/video/OculusVideoPlayer;->nativeGetPosition(J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getState()I
    .locals 2

    .line 195
    iget-wide v0, p0, Lcom/oculus/video/OculusVideoPlayer;->instancePtr:J

    invoke-direct {p0, v0, v1}, Lcom/oculus/video/OculusVideoPlayer;->nativeGetState(J)I

    move-result v0

    return v0
.end method

.method public loadJniVideoSurface(J)Z
    .locals 2

    const-wide/16 v0, 0x0

    .line 150
    iput-wide v0, p0, Lcom/oculus/video/OculusVideoPlayer;->jniVideoSurfaceToReload:J

    .line 152
    iget v0, p0, Lcom/oculus/video/OculusVideoPlayer;->currentPlayerState:I

    if-nez v0, :cond_0

    .line 153
    iget-wide v0, p0, Lcom/oculus/video/OculusVideoPlayer;->instancePtr:J

    invoke-direct {p0, v0, v1, p1, p2}, Lcom/oculus/video/OculusVideoPlayer;->nativeSetJniVideoSurface(JJ)Z

    move-result p1

    return p1

    .line 157
    :cond_0
    iput-wide p1, p0, Lcom/oculus/video/OculusVideoPlayer;->jniVideoSurfaceToReload:J

    const/4 p1, 0x0

    .line 158
    iput-boolean p1, p0, Lcom/oculus/video/OculusVideoPlayer;->needReloadCopyVideoSurface:Z

    const/4 p1, 0x1

    return p1
.end method

.method public declared-synchronized loadVideoSurface()Z
    .locals 5

    monitor-enter p0

    const/4 v0, 0x0

    .line 220
    :try_start_0
    iget v1, p0, Lcom/oculus/video/OculusVideoPlayer;->currentPlayerState:I

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/oculus/video/OculusVideoPlayer;->releaseVideoSurfaceManager()V

    .line 222
    new-instance v1, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;

    invoke-direct {v1, p0}, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;-><init>(Lcom/oculus/video/OculusVideoPlayer;)V

    iput-object v1, p0, Lcom/oculus/video/OculusVideoPlayer;->videoSurfaceManager:Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;

    .line 223
    iput-boolean v0, p0, Lcom/oculus/video/OculusVideoPlayer;->needReloadCopyVideoSurface:Z

    goto :goto_0

    :cond_0
    const-wide/16 v3, 0x0

    .line 225
    iput-wide v3, p0, Lcom/oculus/video/OculusVideoPlayer;->jniVideoSurfaceToReload:J

    .line 226
    iput-boolean v2, p0, Lcom/oculus/video/OculusVideoPlayer;->needReloadCopyVideoSurface:Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 231
    :goto_0
    monitor-exit p0

    return v2

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 229
    :catch_0
    monitor-exit p0

    return v0
.end method

.method onAnalyticsEvent(Ljava/lang/String;)V
    .locals 1

    .line 134
    iget-object v0, p0, Lcom/oculus/video/OculusVideoPlayer;->currentEventListener:Lcom/oculus/video/OculusVideoPlayer$EventListener;

    if-eqz v0, :cond_0

    .line 135
    invoke-interface {v0, p1}, Lcom/oculus/video/OculusVideoPlayer$EventListener;->onAnalyticsEvent(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method onFrameSizeChanged(IIFIIII)V
    .locals 8

    .line 142
    iget-object v0, p0, Lcom/oculus/video/OculusVideoPlayer;->currentEventListener:Lcom/oculus/video/OculusVideoPlayer$EventListener;

    if-eqz v0, :cond_0

    move v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move v7, p7

    .line 143
    invoke-interface/range {v0 .. v7}, Lcom/oculus/video/OculusVideoPlayer$EventListener;->onFrameSizeChanged(IIFIIII)V

    :cond_0
    return-void
.end method

.method onPlayerSelected()V
    .locals 1

    .line 128
    iget-object v0, p0, Lcom/oculus/video/OculusVideoPlayer;->currentEventListener:Lcom/oculus/video/OculusVideoPlayer$EventListener;

    if-eqz v0, :cond_0

    .line 129
    invoke-interface {v0}, Lcom/oculus/video/OculusVideoPlayer$EventListener;->onPlayerSelected()V

    :cond_0
    return-void
.end method

.method onStateChanged(II)V
    .locals 1

    .line 106
    iput p1, p0, Lcom/oculus/video/OculusVideoPlayer;->currentPlayerState:I

    if-nez p1, :cond_0

    if-eqz p2, :cond_0

    .line 108
    invoke-direct {p0}, Lcom/oculus/video/OculusVideoPlayer;->reloadVideoSurfaceOnPlayerClose()V

    .line 110
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/OculusVideoPlayer;->currentEventListener:Lcom/oculus/video/OculusVideoPlayer$EventListener;

    if-eqz v0, :cond_1

    .line 111
    invoke-interface {v0, p1, p2}, Lcom/oculus/video/OculusVideoPlayer$EventListener;->onStateChanged(II)V

    :cond_1
    return-void
.end method

.method onVideoReset(Ljava/lang/String;)V
    .locals 1

    .line 122
    iget-object v0, p0, Lcom/oculus/video/OculusVideoPlayer;->currentEventListener:Lcom/oculus/video/OculusVideoPlayer$EventListener;

    if-eqz v0, :cond_0

    .line 123
    invoke-interface {v0, p1}, Lcom/oculus/video/OculusVideoPlayer$EventListener;->onVideoReset(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method onVideoUpdated(Ljava/lang/String;I)V
    .locals 1

    .line 116
    iget-object v0, p0, Lcom/oculus/video/OculusVideoPlayer;->currentEventListener:Lcom/oculus/video/OculusVideoPlayer$EventListener;

    if-eqz v0, :cond_0

    .line 117
    invoke-interface {v0, p1, p2}, Lcom/oculus/video/OculusVideoPlayer$EventListener;->onVideoUpdated(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public pauseVideo()Z
    .locals 2

    .line 179
    iget-wide v0, p0, Lcom/oculus/video/OculusVideoPlayer;->instancePtr:J

    invoke-direct {p0, v0, v1}, Lcom/oculus/video/OculusVideoPlayer;->nativePauseVideo(J)Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 2

    .line 85
    invoke-virtual {p0}, Lcom/oculus/video/OculusVideoPlayer;->clearVideoSurface()Z

    .line 86
    iget-wide v0, p0, Lcom/oculus/video/OculusVideoPlayer;->instancePtr:J

    invoke-static {v0, v1}, Lcom/oculus/video/OculusVideoPlayer;->nativeDestroyInstance(J)V

    const-wide/16 v0, 0x0

    .line 87
    iput-wide v0, p0, Lcom/oculus/video/OculusVideoPlayer;->instancePtr:J

    return-void
.end method

.method public resumeVideo()Z
    .locals 2

    .line 183
    iget-wide v0, p0, Lcom/oculus/video/OculusVideoPlayer;->instancePtr:J

    invoke-direct {p0, v0, v1}, Lcom/oculus/video/OculusVideoPlayer;->nativeResumeVideo(J)Z

    move-result v0

    return v0
.end method

.method public setEventListener(Lcom/oculus/video/OculusVideoPlayer$EventListener;)V
    .locals 0

    .line 102
    iput-object p1, p0, Lcom/oculus/video/OculusVideoPlayer;->currentEventListener:Lcom/oculus/video/OculusVideoPlayer$EventListener;

    return-void
.end method

.method public setPosition(I)Z
    .locals 2

    .line 191
    iget-wide v0, p0, Lcom/oculus/video/OculusVideoPlayer;->instancePtr:J

    invoke-direct {p0, v0, v1, p1}, Lcom/oculus/video/OculusVideoPlayer;->nativeSetPosition(JI)Z

    move-result p1

    return p1
.end method

.method public startVideo(Lcom/oculus/video/Video;)Z
    .locals 2

    if-eqz p1, :cond_0

    .line 171
    iget-wide v0, p0, Lcom/oculus/video/OculusVideoPlayer;->instancePtr:J

    invoke-virtual {p1}, Lcom/oculus/video/Video;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, v0, v1, p1}, Lcom/oculus/video/OculusVideoPlayer;->nativeStartVideo(JLjava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public startVideoJson(Ljava/lang/String;)Z
    .locals 2

    .line 201
    :try_start_0
    new-instance v0, Lcom/oculus/video/Video;

    invoke-direct {v0, p1}, Lcom/oculus/video/Video;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 203
    sget-object v0, Lcom/oculus/video/OculusVideoPlayer;->TAG:Ljava/lang/String;

    const-string v1, "No video created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    sget-object v0, Lcom/oculus/video/OculusVideoPlayer;->TAG:Ljava/lang/String;

    invoke-static {p1}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v0, 0x0

    .line 206
    :goto_0
    invoke-virtual {p0, v0}, Lcom/oculus/video/OculusVideoPlayer;->startVideo(Lcom/oculus/video/Video;)Z

    move-result p1

    return p1
.end method

.method public stopVideo()Z
    .locals 2

    .line 175
    iget-wide v0, p0, Lcom/oculus/video/OculusVideoPlayer;->instancePtr:J

    invoke-direct {p0, v0, v1}, Lcom/oculus/video/OculusVideoPlayer;->nativeStopVideo(J)Z

    move-result v0

    return v0
.end method

.method public updateFrame(FFFFFFF)V
    .locals 13

    move-object v12, p0

    .line 163
    iget-wide v1, v12, Lcom/oculus/video/OculusVideoPlayer;->instancePtr:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    long-to-double v3, v3

    const-wide v5, 0x3e112e0be826d695L    # 1.0E-9

    mul-double v3, v3, v5

    move-object v0, p0

    move v5, p1

    move v6, p2

    move/from16 v7, p3

    move/from16 v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    move/from16 v11, p7

    invoke-direct/range {v0 .. v11}, Lcom/oculus/video/OculusVideoPlayer;->nativeUpdateFrame(JDFFFFFFF)V

    return-void
.end method

.method public updateJniVideoSurface()V
    .locals 6

    .line 167
    iget-wide v0, p0, Lcom/oculus/video/OculusVideoPlayer;->instancePtr:J

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    long-to-double v2, v2

    const-wide v4, 0x3e112e0be826d695L    # 1.0E-9

    mul-double v2, v2, v4

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oculus/video/OculusVideoPlayer;->nativeOnRender(JD)V

    return-void
.end method

.method public declared-synchronized updateVideoTexture(IIIZ)V
    .locals 2

    monitor-enter p0

    .line 247
    :try_start_0
    iget-object v0, p0, Lcom/oculus/video/OculusVideoPlayer;->videoSurfaceManager:Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;

    if-eqz v0, :cond_0

    .line 248
    iget-object v0, p0, Lcom/oculus/video/OculusVideoPlayer;->videoSurfaceManager:Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/oculus/video/OculusVideoPlayer$OesSurfaceManager;->loadCopyTargetTexture(IIIZ)V

    .line 249
    iget-wide p1, p0, Lcom/oculus/video/OculusVideoPlayer;->instancePtr:J

    const-wide p3, 0x3e112e0be826d695L    # 1.0E-9

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    long-to-double v0, v0

    mul-double v0, v0, p3

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/oculus/video/OculusVideoPlayer;->nativeOnRender(JD)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
