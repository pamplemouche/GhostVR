.class public Lcom/oculus/video/VideoPlayer_Android;
.super Ljava/lang/Object;
.source "VideoPlayer_Android.java"

# interfaces
.implements Landroid/media/AudioManager$OnAudioFocusChangeListener;
.implements Lcom/oculus/video/VideoSession$EventListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/video/VideoPlayer_Android$OculusAudioSpatializerController;,
        Lcom/oculus/video/VideoPlayer_Android$OculusDataSpec;
    }
.end annotation


# static fields
.field private static final DEFAULT_COOKIE_MANAGER:Ljava/net/CookieManager;

.field private static final TAG:Ljava/lang/String; = "VideoPlayer_Android"

.field private static final VIDEO_SDK_PREFERENCE_NAME:Ljava/lang/String; = "oculus_video_sdk_pref"

.field private static final VIDEO_UPDATE_REASON_AUDIO_METADATA:Ljava/lang/String; = "AUDIO_METADATA"

.field private static final VIDEO_UPDATE_REASON_PREPARE:Ljava/lang/String; = "PREPARE"

.field private static final VIDEO_UPDATE_REASON_TIMELINE_METADATA:Ljava/lang/String; = "TIMELINE_METADATA"

.field private static final VIDEO_UPDATE_REASON_VIDEO_METADATA:Ljava/lang/String; = "VIDEO_METADATA"


# instance fields
.field private audioManager:Landroid/media/AudioManager;

.field private final audioSpatializerController:Lcom/oculus/video/VideoPlayer_Android$OculusAudioSpatializerController;

.field private final context:Landroid/content/Context;

.field private debugSurface:Lcom/oculus/video/ui/DebugSurface;

.field private dynamicDebugInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private nativePtr:J

.field private preferences:Landroid/content/SharedPreferences;

.field private staticDebugInfo:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private useLowPowerMode:Z

.field private videoPlayerAnalytics:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

.field private videoPlayerHandler:Landroid/os/Handler;

.field private videoPlayerThread:Landroid/os/HandlerThread;

.field private videoSessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/oculus/video/VideoSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 69
    new-instance v0, Ljava/net/CookieManager;

    invoke-direct {v0}, Ljava/net/CookieManager;-><init>()V

    sput-object v0, Lcom/oculus/video/VideoPlayer_Android;->DEFAULT_COOKIE_MANAGER:Ljava/net/CookieManager;

    .line 78
    sget-object v0, Lcom/oculus/video/VideoPlayer_Android;->DEFAULT_COOKIE_MANAGER:Ljava/net/CookieManager;

    sget-object v1, Ljava/net/CookiePolicy;->ACCEPT_ORIGINAL_SERVER:Ljava/net/CookiePolicy;

    invoke-virtual {v0, v1}, Ljava/net/CookieManager;->setCookiePolicy(Ljava/net/CookiePolicy;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    const-wide/16 v0, 0x0

    .line 191
    invoke-direct {p0, p1, v0, v1}, Lcom/oculus/video/VideoPlayer_Android;-><init>(Landroid/content/Context;J)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;J)V
    .locals 2

    .line 217
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 136
    iput-wide v0, p0, Lcom/oculus/video/VideoPlayer_Android;->nativePtr:J

    const/4 v0, 0x0

    .line 144
    iput-boolean v0, p0, Lcom/oculus/video/VideoPlayer_Android;->useLowPowerMode:Z

    .line 146
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->videoSessions:Ljava/util/Map;

    .line 186
    new-instance v0, Lcom/oculus/video/VideoPlayer_Android$OculusAudioSpatializerController;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oculus/video/VideoPlayer_Android$OculusAudioSpatializerController;-><init>(Lcom/oculus/video/VideoPlayer_Android;Lcom/oculus/video/VideoPlayer_Android$1;)V

    iput-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->audioSpatializerController:Lcom/oculus/video/VideoPlayer_Android$OculusAudioSpatializerController;

    .line 218
    iput-object p1, p0, Lcom/oculus/video/VideoPlayer_Android;->context:Landroid/content/Context;

    .line 219
    iput-wide p2, p0, Lcom/oculus/video/VideoPlayer_Android;->nativePtr:J

    .line 221
    invoke-direct {p0}, Lcom/oculus/video/VideoPlayer_Android;->configureVideoPlayerHandler()V

    .line 223
    invoke-static {}, Ljava/net/CookieHandler;->getDefault()Ljava/net/CookieHandler;

    move-result-object p1

    .line 224
    sget-object p2, Lcom/oculus/video/VideoPlayer_Android;->DEFAULT_COOKIE_MANAGER:Ljava/net/CookieManager;

    if-eq p1, p2, :cond_0

    .line 225
    invoke-static {p2}, Ljava/net/CookieHandler;->setDefault(Ljava/net/CookieHandler;)V

    .line 228
    :cond_0
    iget-object p1, p0, Lcom/oculus/video/VideoPlayer_Android;->context:Landroid/content/Context;

    invoke-static {p1}, Lcom/oculus/video/Settings;->setAppData(Landroid/content/Context;)V

    .line 229
    invoke-direct {p0}, Lcom/oculus/video/VideoPlayer_Android;->configurePreferences()V

    .line 230
    invoke-direct {p0}, Lcom/oculus/video/VideoPlayer_Android;->configureAudio()V

    .line 231
    invoke-direct {p0}, Lcom/oculus/video/VideoPlayer_Android;->configureAnalytics()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/video/VideoPlayer_Android;)J
    .locals 2

    .line 62
    iget-wide v0, p0, Lcom/oculus/video/VideoPlayer_Android;->nativePtr:J

    return-wide v0
.end method

.method static synthetic access$100(Lcom/oculus/video/VideoPlayer_Android;J)[F
    .locals 0

    .line 62
    invoke-direct {p0, p1, p2}, Lcom/oculus/video/VideoPlayer_Android;->nativeGetHeadOrientationMatrix(J)[F

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .line 62
    sget-object v0, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/video/VideoPlayer_Android;)Landroid/os/HandlerThread;
    .locals 0

    .line 62
    iget-object p0, p0, Lcom/oculus/video/VideoPlayer_Android;->videoPlayerThread:Landroid/os/HandlerThread;

    return-object p0
.end method

.method static synthetic access$500(Lcom/oculus/video/VideoPlayer_Android;)V
    .locals 0

    .line 62
    invoke-direct {p0}, Lcom/oculus/video/VideoPlayer_Android;->configureVideoPlayerHandler()V

    return-void
.end method

.method private apply5k360HevcMkvRotationHack(Lcom/oculus/video/Video;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 846
    invoke-virtual {p1}, Lcom/oculus/video/Video;->getVideoUri()Landroid/net/Uri;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 850
    :cond_0
    invoke-virtual {p1}, Lcom/oculus/video/Video;->getVideoUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v0

    .line 851
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, "mkv"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    .line 858
    :cond_1
    invoke-virtual {p1}, Lcom/oculus/video/Video;->getVideoMimeType()Ljava/lang/String;

    move-result-object v0

    const-string v1, "video/hevc"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 859
    invoke-virtual {p1}, Lcom/oculus/video/Video;->getInitialHeight()I

    move-result v0

    const/16 v1, 0x1000

    if-le v0, v1, :cond_2

    .line 860
    invoke-virtual {p1}, Lcom/oculus/video/Video;->getFrameAspectRatio()F

    move-result v0

    const v1, 0x3f2aaaab

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_2

    .line 861
    invoke-virtual {p1}, Lcom/oculus/video/Video;->getProjectionMetadata()Lcom/oculus/video/projection/VideoProjection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/video/projection/VideoProjection;->getProjectionType()Lcom/oculus/video/projection/ProjectionType;

    move-result-object v0

    sget-object v1, Lcom/oculus/video/projection/ProjectionType;->UNKNOWN:Lcom/oculus/video/projection/ProjectionType;

    if-eq v0, v1, :cond_2

    .line 862
    invoke-virtual {p1}, Lcom/oculus/video/Video;->getProjectionMetadata()Lcom/oculus/video/projection/VideoProjection;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/video/projection/VideoProjection;->getProjectionType()Lcom/oculus/video/projection/ProjectionType;

    move-result-object v0

    sget-object v1, Lcom/oculus/video/projection/ProjectionType;->RECT:Lcom/oculus/video/projection/ProjectionType;

    if-eq v0, v1, :cond_2

    .line 863
    invoke-virtual {p1}, Lcom/oculus/video/Video;->getFovX()D

    move-result-wide v0

    const-wide v2, 0x4070e00000000000L    # 270.0

    cmpl-double v4, v0, v2

    if-ltz v4, :cond_2

    const/16 v0, 0x10e

    .line 864
    invoke-virtual {p1, v0}, Lcom/oculus/video/Video;->setFrameRotation(I)Lcom/oculus/video/Video;

    :cond_2
    :goto_0
    return-void
.end method

.method private canUseMediaPlayer(Lcom/oculus/video/Video;)Z
    .locals 2

    .line 685
    invoke-virtual {p1}, Lcom/oculus/video/Video;->getContentType()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    .line 686
    invoke-virtual {p1}, Lcom/oculus/video/Video;->getDrmProxyUrl()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private configureAnalytics()V
    .locals 5

    .line 625
    new-instance v0, Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    iget-object v1, p0, Lcom/oculus/video/VideoPlayer_Android;->context:Landroid/content/Context;

    .line 627
    invoke-static {}, Lcom/oculus/video/Settings;->getPackageName()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroid/os/Handler;

    iget-object v4, p0, Lcom/oculus/video/VideoPlayer_Android;->context:Landroid/content/Context;

    .line 628
    invoke-virtual {v4}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->videoPlayerAnalytics:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    return-void
.end method

.method private configureAudio()V
    .locals 2

    .line 581
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->context:Landroid/content/Context;

    const-string v1, "audio"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->audioManager:Landroid/media/AudioManager;

    .line 582
    invoke-virtual {p0}, Lcom/oculus/video/VideoPlayer_Android;->requestAudioFocus()V

    .line 583
    invoke-static {}, Lcom/oculus/video/audio/TbeAudioSpatializer;->enableAmbisonicRenderer()V

    return-void
.end method

.method private configureOculusPlayer(Lcom/oculus/video/Video;)Lcom/oculus/video/VideoPlayer;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 587
    invoke-virtual {p1}, Lcom/oculus/video/Video;->canUseExoPlayer()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 588
    invoke-virtual {p1}, Lcom/oculus/video/Video;->getSyncMode()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v2

    const v3, -0x6c869c35

    const/4 v4, 0x1

    if-eq v2, v3, :cond_2

    const v3, 0x33af38

    if-eq v2, v3, :cond_1

    const v3, 0x21ffc6bd

    if-eq v2, v3, :cond_0

    goto :goto_0

    :cond_0
    const-string v2, "internal"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const-string v2, "none"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x2

    goto :goto_0

    :cond_2
    const-string v2, "external"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v1, 0x1

    :cond_3
    :goto_0
    if-eqz v1, :cond_7

    if-eq v1, v4, :cond_6

    .line 607
    sget-object v0, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    const-string v1, "Using OculusExoPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    invoke-virtual {p1}, Lcom/oculus/video/Video;->isLiveMedia()Z

    move-result p1

    if-nez p1, :cond_4

    sget-object p1, Lcom/oculus/video/Settings$GK;->DISABLE_CACHE:Lcom/oculus/video/Settings$GK;

    invoke-virtual {p1}, Lcom/oculus/video/Settings$GK;->isOn()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 609
    :cond_4
    invoke-virtual {p0}, Lcom/oculus/video/VideoPlayer_Android;->freeCachedResources()V

    .line 611
    :cond_5
    new-instance p1, Lcom/oculus/video/OculusExoPlayer;

    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/oculus/video/VideoPlayer_Android;->audioSpatializerController:Lcom/oculus/video/VideoPlayer_Android$OculusAudioSpatializerController;

    iget-object v2, p0, Lcom/oculus/video/VideoPlayer_Android;->videoPlayerHandler:Landroid/os/Handler;

    invoke-direct {p1, v0, v1, v2}, Lcom/oculus/video/OculusExoPlayer;-><init>(Landroid/content/Context;Lcom/oculus/video/audio/AudioSpatializerController;Landroid/os/Handler;)V

    return-object p1

    .line 598
    :cond_6
    sget-object p1, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    const-string v0, "Using SimpleSyncPlayer"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 599
    invoke-virtual {p0}, Lcom/oculus/video/VideoPlayer_Android;->freeCachedResources()V

    .line 600
    new-instance p1, Lcom/oculus/video/SimpleSyncPlayer;

    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/oculus/video/VideoPlayer_Android;->audioSpatializerController:Lcom/oculus/video/VideoPlayer_Android$OculusAudioSpatializerController;

    iget-object v2, p0, Lcom/oculus/video/VideoPlayer_Android;->videoPlayerHandler:Landroid/os/Handler;

    invoke-direct {p1, v0, v1, v2}, Lcom/oculus/video/SimpleSyncPlayer;-><init>(Landroid/content/Context;Lcom/oculus/video/audio/AudioSpatializerController;Landroid/os/Handler;)V

    return-object p1

    .line 590
    :cond_7
    sget-object p1, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    const-string v0, "Using SyncMediaPlayer"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    invoke-virtual {p0}, Lcom/oculus/video/VideoPlayer_Android;->freeCachedResources()V

    .line 592
    new-instance p1, Lcom/oculus/video/SyncMediaPlayer;

    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->context:Landroid/content/Context;

    iget-object v1, p0, Lcom/oculus/video/VideoPlayer_Android;->audioSpatializerController:Lcom/oculus/video/VideoPlayer_Android$OculusAudioSpatializerController;

    iget-object v2, p0, Lcom/oculus/video/VideoPlayer_Android;->videoPlayerHandler:Landroid/os/Handler;

    invoke-direct {p1, v0, v1, v2}, Lcom/oculus/video/SyncMediaPlayer;-><init>(Landroid/content/Context;Lcom/oculus/video/audio/AudioSpatializerController;Landroid/os/Handler;)V

    return-object p1

    .line 618
    :cond_8
    sget-object p1, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    const-string v0, "Using OculusMediaPlayer"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    invoke-virtual {p0}, Lcom/oculus/video/VideoPlayer_Android;->freeCachedResources()V

    .line 620
    new-instance p1, Lcom/oculus/video/OculusMediaPlayer;

    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->context:Landroid/content/Context;

    invoke-direct {p1, v0}, Lcom/oculus/video/OculusMediaPlayer;-><init>(Landroid/content/Context;)V

    return-object p1
.end method

.method private configurePreferences()V
    .locals 3

    .line 577
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->context:Landroid/content/Context;

    const-string v1, "oculus_video_sdk_pref"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->preferences:Landroid/content/SharedPreferences;

    return-void
.end method

.method private configureVideoPlayerHandler()V
    .locals 3

    .line 235
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "VideoPlayerThread"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;I)V

    iput-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->videoPlayerThread:Landroid/os/HandlerThread;

    .line 236
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->videoPlayerThread:Landroid/os/HandlerThread;

    new-instance v1, Lcom/oculus/video/VideoPlayer_Android$1;

    invoke-direct {v1, p0}, Lcom/oculus/video/VideoPlayer_Android$1;-><init>(Lcom/oculus/video/VideoPlayer_Android;)V

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setUncaughtExceptionHandler(Ljava/lang/Thread$UncaughtExceptionHandler;)V

    .line 248
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->videoPlayerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 249
    new-instance v0, Landroid/os/Handler;

    iget-object v1, p0, Lcom/oculus/video/VideoPlayer_Android;->videoPlayerThread:Landroid/os/HandlerThread;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->videoPlayerHandler:Landroid/os/Handler;

    return-void
.end method

.method public static isSideLoaded(Ljava/lang/String;)Z
    .locals 2

    .line 676
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return v1

    .line 680
    :cond_0
    invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 681
    invoke-static {p0}, Lcom/oculus/android/exoplayer2/util/Util;->isLocalFileUri(Landroid/net/Uri;)Z

    move-result p0

    if-eqz p0, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method private native nativeGetHeadOrientationMatrix(J)[F
.end method

.method private native nativeGetSubtitleSurface(JJ)Landroid/view/Surface;
.end method

.method private native nativeOnStartBuffering(JJ)V
.end method

.method private native nativePlaybackFailed(JJLjava/lang/Throwable;)V
.end method

.method private native nativePlaybackFinished(JJ)V
.end method

.method private native nativePlayerReleased(JJ)V
.end method

.method private native nativeSeekFinished(JJ)V
.end method

.method private native nativeSetCameraMotion(JJJ[F)V
.end method

.method private native nativeSetVideoSize(JJIIFIIII)V
.end method

.method private native nativeUpdateVideo(JJLjava/lang/String;Ljava/lang/String;)V
.end method

.method private setLowPoweredMode(Z)V
    .locals 3

    .line 647
    sget-object v0, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting low power mode to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 648
    iput-boolean p1, p0, Lcom/oculus/video/VideoPlayer_Android;->useLowPowerMode:Z

    return-void
.end method


# virtual methods
.method public clearSurface(Landroid/view/Surface;)V
    .locals 3

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 308
    :try_start_0
    invoke-virtual {p1, v0}, Landroid/view/Surface;->lockCanvas(Landroid/graphics/Rect;)Landroid/graphics/Canvas;

    move-result-object v0

    const/4 v1, 0x0

    .line 309
    sget-object v2, Landroid/graphics/PorterDuff$Mode;->CLEAR:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    .line 310
    invoke-virtual {p1, v0}, Landroid/view/Surface;->unlockCanvasAndPost(Landroid/graphics/Canvas;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    :cond_0
    return-void
.end method

.method public freeCachedResources()V
    .locals 1

    .line 573
    sget-object v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->VIDEO_DIRECT_DECODER:Lcom/oculus/video/renderer/VideoDirectDecoder;

    invoke-virtual {v0}, Lcom/oculus/video/renderer/VideoDirectDecoder;->releaseOutputSurface()V

    return-void
.end method

.method public futureSeekVideo(JIJ)V
    .locals 2

    .line 481
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->videoSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/VideoSession;

    if-nez v0, :cond_0

    .line 483
    sget-object p3, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string p5, "VideoSession not found in futureSeekVideo: "

    invoke-virtual {p4, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 486
    :cond_0
    invoke-virtual {v0, p3, p4, p5}, Lcom/oculus/video/VideoSession;->futureSeekVideo(IJ)V

    return-void
.end method

.method public getBufferedPosition(J)I
    .locals 3

    .line 508
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->videoSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/VideoSession;

    if-nez v0, :cond_0

    .line 510
    sget-object v0, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoSession not found in getBufferedPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, -0x1

    return p1

    .line 513
    :cond_0
    invoke-virtual {v0}, Lcom/oculus/video/VideoSession;->getBufferedPosition()I

    move-result p1

    return p1
.end method

.method public getEpochTimePosition(J)J
    .locals 3

    .line 526
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->videoSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/VideoSession;

    if-nez v0, :cond_0

    .line 528
    sget-object v0, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoSession not found in getEpochTimePosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 p1, 0x0

    return-wide p1

    .line 531
    :cond_0
    invoke-virtual {v0}, Lcom/oculus/video/VideoSession;->getEpochTimePosition()J

    move-result-wide p1

    return-wide p1
.end method

.method public getLastPresentationTimeUs(J)J
    .locals 1

    .line 544
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->videoSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/video/VideoSession;

    if-eqz p1, :cond_0

    .line 545
    invoke-virtual {p1}, Lcom/oculus/video/VideoSession;->getLastPresentationTimeUs()J

    move-result-wide p1

    goto :goto_0

    :cond_0
    const-wide/16 p1, -0x1

    :goto_0
    return-wide p1
.end method

.method public getNativePtr()J
    .locals 2

    .line 266
    iget-wide v0, p0, Lcom/oculus/video/VideoPlayer_Android;->nativePtr:J

    return-wide v0
.end method

.method public getPosition(J)I
    .locals 3

    .line 517
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->videoSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/VideoSession;

    if-nez v0, :cond_0

    .line 519
    sget-object v0, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoSession not found in getPosition: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 522
    :cond_0
    invoke-virtual {v0}, Lcom/oculus/video/VideoSession;->getPosition()I

    move-result p1

    return p1
.end method

.method public getStringPreference(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 557
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->preferences:Landroid/content/SharedPreferences;

    const-string v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getSubtitleSurface(Lcom/oculus/video/VideoSession;)Landroid/view/Surface;
    .locals 4

    .line 1036
    iget-wide v0, p0, Lcom/oculus/video/VideoPlayer_Android;->nativePtr:J

    invoke-virtual {p1}, Lcom/oculus/video/VideoSession;->getSessionId()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oculus/video/VideoPlayer_Android;->nativeGetSubtitleSurface(JJ)Landroid/view/Surface;

    move-result-object p1

    return-object p1
.end method

.method public getVideoPlayerAnalytics()Ljava/lang/Object;
    .locals 1

    .line 569
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->videoPlayerAnalytics:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    return-object v0
.end method

.method public getVolume(J)F
    .locals 3

    .line 297
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->videoSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/VideoSession;

    if-nez v0, :cond_0

    .line 299
    sget-object v0, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoSession not found in getVolume: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 302
    :cond_0
    invoke-virtual {v0}, Lcom/oculus/video/VideoSession;->getVolume()F

    move-result p1

    return p1
.end method

.method public init(J)V
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 196
    iput-wide p1, p0, Lcom/oculus/video/VideoPlayer_Android;->nativePtr:J

    return-void
.end method

.method public isBuffering(J)Z
    .locals 3

    .line 499
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->videoSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/VideoSession;

    if-nez v0, :cond_0

    .line 501
    sget-object v0, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoSession not found in isBuffering: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 504
    :cond_0
    invoke-virtual {v0}, Lcom/oculus/video/VideoSession;->isBuffering()Z

    move-result p1

    return p1
.end method

.method public isMuted(J)Z
    .locals 3

    .line 279
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->videoSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/VideoSession;

    if-nez v0, :cond_0

    .line 281
    sget-object v0, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoSession not found in isMuted: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 284
    :cond_0
    invoke-virtual {v0}, Lcom/oculus/video/VideoSession;->isMuted()Z

    move-result p1

    return p1
.end method

.method public isPlaying(J)Z
    .locals 3

    .line 490
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->videoSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/VideoSession;

    if-nez v0, :cond_0

    .line 492
    sget-object v0, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoSession not found in isPlaying: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x0

    return p1

    .line 495
    :cond_0
    invoke-virtual {v0}, Lcom/oculus/video/VideoSession;->isPlaying()Z

    move-result p1

    return p1
.end method

.method public onAdaptivePlaylistUpdate(Lcom/oculus/video/VideoSession;Ljava/util/Map;Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/video/VideoSession;",
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

    .line 1023
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->videoPlayerAnalytics:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    .line 1024
    invoke-virtual {p1}, Lcom/oculus/video/VideoSession;->getSessionId()J

    move-result-wide v1

    .line 1023
    invoke-virtual {v0, v1, v2, p2, p3}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->onAdaptivePlaylistUpdate(JLjava/util/Map;Ljava/util/List;)V

    return-void
.end method

.method public onAudioFocusChange(I)V
    .locals 1

    const/4 v0, -0x3

    if-eq p1, v0, :cond_3

    const/4 v0, -0x2

    if-eq p1, v0, :cond_2

    const/4 v0, -0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    goto :goto_0

    .line 656
    :cond_0
    sget-object p1, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    const-string v0, "onAudioFocusChangedListener: AUDIOFOCUS_GAIN"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 660
    :cond_1
    sget-object p1, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    const-string v0, "onAudioFocusChangedListener: AUDIOFOCUS_LOSS"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 664
    :cond_2
    sget-object p1, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    const-string v0, "onAudioFocusChangedListener: AUDIOFOCUS_LOSS_TRANSIENT"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 668
    :cond_3
    sget-object p1, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    const-string v0, "onAudioFocusChangedListener: AUDIOFOCUS_LOSS_TRANSIENT_CAN_DUCK"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method public onAudioFormatChanged(Lcom/oculus/video/VideoSession;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11

    .line 922
    invoke-virtual {p1}, Lcom/oculus/video/VideoSession;->getSessionVideo()Lcom/oculus/video/Video;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 929
    invoke-virtual {v0}, Lcom/oculus/video/Video;->getAudioTracks()Lorg/json/JSONObject;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 931
    invoke-virtual {v2}, Lorg/json/JSONObject;->length()I

    move-result v1

    .line 933
    :cond_1
    invoke-virtual {v0}, Lcom/oculus/video/Video;->getAudioChannelLayout()Lcom/oculus/video/audio/AudioChannelLayout;

    move-result-object v2

    .line 935
    invoke-virtual {p1}, Lcom/oculus/video/VideoSession;->didStartPlayback()Z

    move-result v3

    if-nez v3, :cond_2

    .line 938
    :try_start_0
    invoke-virtual {v0, p2}, Lcom/oculus/video/Video;->setAudioMimeType(Ljava/lang/String;)Lcom/oculus/video/Video;

    move-result-object v3

    .line 939
    invoke-virtual {v3, p3}, Lcom/oculus/video/Video;->setAudioRendererName(Ljava/lang/String;)Lcom/oculus/video/Video;

    move-result-object v3

    .line 940
    invoke-virtual {v3, v2}, Lcom/oculus/video/Video;->setAudioChannelLayout(Lcom/oculus/video/audio/AudioChannelLayout;)Lcom/oculus/video/Video;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 945
    :catch_0
    iget-wide v5, p0, Lcom/oculus/video/VideoPlayer_Android;->nativePtr:J

    .line 947
    invoke-virtual {p1}, Lcom/oculus/video/VideoSession;->getSessionId()J

    move-result-wide v7

    .line 948
    invoke-virtual {v0}, Lcom/oculus/video/Video;->toString()Ljava/lang/String;

    move-result-object v9

    const-string v10, "AUDIO_METADATA"

    move-object v4, p0

    .line 945
    invoke-direct/range {v4 .. v10}, Lcom/oculus/video/VideoPlayer_Android;->nativeUpdateVideo(JJLjava/lang/String;Ljava/lang/String;)V

    .line 952
    :cond_2
    iget-object p1, p0, Lcom/oculus/video/VideoPlayer_Android;->staticDebugInfo:Ljava/util/Map;

    if-eqz p1, :cond_3

    const-string v0, "Audio Mime"

    .line 953
    invoke-interface {p1, v0, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 954
    iget-object p1, p0, Lcom/oculus/video/VideoPlayer_Android;->staticDebugInfo:Ljava/util/Map;

    const/16 p2, 0x2e

    .line 955
    invoke-virtual {p3, p2}, Ljava/lang/String;->lastIndexOf(I)I

    move-result p2

    add-int/lit8 p2, p2, 0x1

    .line 954
    invoke-virtual {p3, p2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Audio Renderer"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 956
    iget-object p1, p0, Lcom/oculus/video/VideoPlayer_Android;->staticDebugInfo:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Audio Tracks"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 957
    iget-object p1, p0, Lcom/oculus/video/VideoPlayer_Android;->staticDebugInfo:Ljava/util/Map;

    iget-object p2, v2, Lcom/oculus/video/audio/AudioChannelLayout;->key:Ljava/lang/String;

    const-string p3, "Audio Layout"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3
    return-void
.end method

.method public onBuffering(Lcom/oculus/video/VideoSession;)V
    .locals 4

    .line 757
    iget-wide v0, p0, Lcom/oculus/video/VideoPlayer_Android;->nativePtr:J

    invoke-virtual {p1}, Lcom/oculus/video/VideoSession;->getSessionId()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oculus/video/VideoPlayer_Android;->nativeOnStartBuffering(JJ)V

    .line 758
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->videoPlayerAnalytics:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    invoke-virtual {p1}, Lcom/oculus/video/VideoSession;->getSessionId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->onBuffering(J)V

    return-void
.end method

.method public onCameraMotionData(Lcom/oculus/video/VideoSession;Lcom/oculus/video/metadata/CameraMotionData;)V
    .locals 8

    .line 980
    iget-wide v1, p0, Lcom/oculus/video/VideoPlayer_Android;->nativePtr:J

    invoke-virtual {p1}, Lcom/oculus/video/VideoSession;->getSessionId()J

    move-result-wide v3

    iget-wide v5, p2, Lcom/oculus/video/metadata/CameraMotionData;->timeUs:J

    iget-object v7, p2, Lcom/oculus/video/metadata/CameraMotionData;->data:[F

    move-object v0, p0

    invoke-direct/range {v0 .. v7}, Lcom/oculus/video/VideoPlayer_Android;->nativeSetCameraMotion(JJJ[F)V

    return-void
.end method

.method public onDestroy()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 213
    sget-object v0, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    const-string v1, "onDestroy()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 214
    invoke-virtual {p0}, Lcom/oculus/video/VideoPlayer_Android;->shutDown()V

    return-void
.end method

.method public onDroppedFrames(Lcom/oculus/video/VideoSession;JJJJ)V
    .locals 12

    move-object v0, p0

    .line 1001
    iget-object v1, v0, Lcom/oculus/video/VideoPlayer_Android;->videoPlayerAnalytics:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    .line 1002
    invoke-virtual {p1}, Lcom/oculus/video/VideoSession;->getSessionId()J

    move-result-wide v2

    move-wide v4, p2

    move-wide/from16 v6, p4

    move-wide/from16 v8, p6

    move-wide/from16 v10, p8

    .line 1001
    invoke-virtual/range {v1 .. v11}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->onDroppedFrames(JJJJJ)V

    return-void
.end method

.method public onError(Lcom/oculus/video/VideoSession;Ljava/lang/Exception;)V
    .locals 10

    .line 773
    instance-of v0, p2, Lcom/oculus/android/exoplayer2/ExoPlaybackException;

    if-eqz v0, :cond_1

    .line 774
    invoke-virtual {p2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    instance-of v0, v0, Lcom/oculus/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    if-eqz v0, :cond_1

    .line 777
    invoke-virtual {p2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p2

    check-cast p2, Lcom/oculus/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    .line 778
    new-instance v0, Lcom/oculus/video/VideoPlayer_Android$OculusDataSpec;

    iget-object v1, p2, Lcom/oculus/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Lcom/oculus/android/exoplayer2/upstream/DataSpec;

    invoke-direct {v0, p0, v1}, Lcom/oculus/video/VideoPlayer_Android$OculusDataSpec;-><init>(Lcom/oculus/video/VideoPlayer_Android;Lcom/oculus/android/exoplayer2/upstream/DataSpec;)V

    .line 779
    invoke-virtual {p2}, Lcom/oculus/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/IOException;

    if-eqz v1, :cond_0

    .line 780
    invoke-virtual {p2}, Lcom/oculus/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    check-cast v1, Ljava/io/IOException;

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 782
    :goto_0
    new-instance v2, Lcom/oculus/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    .line 783
    invoke-virtual {p2}, Lcom/oculus/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->getMessage()Ljava/lang/String;

    move-result-object v3

    iget p2, p2, Lcom/oculus/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->type:I

    invoke-direct {v2, v3, v1, v0, p2}, Lcom/oculus/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;-><init>(Ljava/lang/String;Ljava/io/IOException;Lcom/oculus/android/exoplayer2/upstream/DataSpec;I)V

    move-object v9, v2

    goto :goto_1

    :cond_1
    move-object v9, p2

    .line 789
    :goto_1
    invoke-virtual {p1, v9}, Lcom/oculus/video/VideoSession;->shouldRetryPlayback(Ljava/lang/Exception;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 790
    invoke-virtual {p1}, Lcom/oculus/video/VideoSession;->markForRetryPlayback()V

    .line 791
    invoke-virtual {p0, p1, v9}, Lcom/oculus/video/VideoPlayer_Android;->onSoftError(Lcom/oculus/video/VideoSession;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 792
    :cond_2
    invoke-virtual {p1}, Lcom/oculus/video/VideoSession;->getSessionVideo()Lcom/oculus/video/Video;

    move-result-object p2

    invoke-direct {p0, p2}, Lcom/oculus/video/VideoPlayer_Android;->canUseMediaPlayer(Lcom/oculus/video/Video;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 793
    invoke-virtual {p1}, Lcom/oculus/video/VideoSession;->getPlayer()Lcom/oculus/video/VideoPlayer;

    move-result-object p2

    instance-of p2, p2, Lcom/oculus/video/OculusMediaPlayer;

    if-nez p2, :cond_3

    .line 794
    invoke-virtual {p0}, Lcom/oculus/video/VideoPlayer_Android;->freeCachedResources()V

    .line 795
    invoke-virtual {p1}, Lcom/oculus/video/VideoSession;->markForFallback()V

    .line 796
    invoke-virtual {p0, p1, v9}, Lcom/oculus/video/VideoPlayer_Android;->onSoftError(Lcom/oculus/video/VideoSession;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 798
    :cond_3
    iget-wide v5, p0, Lcom/oculus/video/VideoPlayer_Android;->nativePtr:J

    invoke-virtual {p1}, Lcom/oculus/video/VideoSession;->getSessionId()J

    move-result-wide v7

    move-object v4, p0

    invoke-direct/range {v4 .. v9}, Lcom/oculus/video/VideoPlayer_Android;->nativePlaybackFailed(JJLjava/lang/Throwable;)V

    :goto_2
    return-void
.end method

.method public onExtractProjectionMetadata(Lcom/oculus/video/VideoSession;Lcom/oculus/video/projection/VideoProjection;)V
    .locals 3

    .line 1031
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->videoPlayerAnalytics:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    invoke-virtual {p1}, Lcom/oculus/video/VideoSession;->getSessionId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p2}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->onExtractProjectionMetadata(JLcom/oculus/video/projection/VideoProjection;)V

    return-void
.end method

.method public onFinish(Lcom/oculus/video/VideoSession;)V
    .locals 4

    .line 730
    iget-wide v0, p0, Lcom/oculus/video/VideoPlayer_Android;->nativePtr:J

    invoke-virtual {p1}, Lcom/oculus/video/VideoSession;->getSessionId()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oculus/video/VideoPlayer_Android;->nativePlaybackFinished(JJ)V

    return-void
.end method

.method public onHttpConnect(Lcom/oculus/video/VideoSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 10

    move-object v0, p0

    .line 1011
    iget-object v1, v0, Lcom/oculus/video/VideoPlayer_Android;->videoPlayerAnalytics:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    .line 1012
    invoke-virtual {p1}, Lcom/oculus/video/VideoSession;->getSessionId()J

    move-result-wide v2

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move v7, p5

    move-wide/from16 v8, p6

    .line 1011
    invoke-virtual/range {v1 .. v9}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->onHttpConnect(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    return-void
.end method

.method public onPause()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 201
    sget-object v0, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    const-string v1, "onPause()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {p0}, Lcom/oculus/video/VideoPlayer_Android;->releaseAudioFocus()V

    return-void
.end method

.method public onReady(Lcom/oculus/video/VideoSession;)V
    .locals 0

    return-void
.end method

.method public onRelease(Lcom/oculus/video/VideoSession;)V
    .locals 4

    .line 735
    invoke-virtual {p1}, Lcom/oculus/video/VideoSession;->needsRetryPlayback()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 736
    sget-object v0, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    const-string v1, "Movie playback failed with ExoPlayer, attempting to replay after 500ms"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-wide/16 v0, 0x1f4

    .line 738
    :try_start_0
    invoke-static {v0, v1}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 740
    :catch_0
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 743
    :goto_0
    :try_start_1
    invoke-virtual {p1}, Lcom/oculus/video/VideoSession;->getSessionVideo()Lcom/oculus/video/Video;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oculus/video/VideoPlayer_Android;->configureOculusPlayer(Lcom/oculus/video/Video;)Lcom/oculus/video/VideoPlayer;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oculus/video/VideoSession;->startVideo(Lcom/oculus/video/VideoPlayer;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception v0

    .line 745
    invoke-virtual {p0, p1, v0}, Lcom/oculus/video/VideoPlayer_Android;->onError(Lcom/oculus/video/VideoSession;Ljava/lang/Exception;)V

    goto :goto_1

    .line 747
    :cond_0
    invoke-virtual {p1}, Lcom/oculus/video/VideoSession;->needsFallback()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 748
    sget-object v0, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    const-string v1, "Movie playback failed with ExoPlayer, attempting to play with OculusMediaPlayer"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 749
    new-instance v0, Lcom/oculus/video/OculusMediaPlayer;

    iget-object v1, p0, Lcom/oculus/video/VideoPlayer_Android;->context:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/oculus/video/OculusMediaPlayer;-><init>(Landroid/content/Context;)V

    invoke-virtual {p1, v0}, Lcom/oculus/video/VideoSession;->startVideo(Lcom/oculus/video/VideoPlayer;)V

    goto :goto_1

    .line 751
    :cond_1
    iget-wide v0, p0, Lcom/oculus/video/VideoPlayer_Android;->nativePtr:J

    invoke-virtual {p1}, Lcom/oculus/video/VideoSession;->getSessionId()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oculus/video/VideoPlayer_Android;->nativePlayerReleased(JJ)V

    :goto_1
    return-void
.end method

.method public onRender(JZ)V
    .locals 2

    .line 535
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->videoSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/VideoSession;

    if-nez v0, :cond_0

    .line 537
    sget-object p3, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoSession not found in onRender: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 540
    :cond_0
    invoke-virtual {v0, p3}, Lcom/oculus/video/VideoSession;->onRender(Z)V

    return-void
.end method

.method public onResume()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 207
    sget-object v0, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    const-string v1, "onResume()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 208
    invoke-virtual {p0}, Lcom/oculus/video/VideoPlayer_Android;->requestAudioFocus()V

    return-void
.end method

.method public onSeekComplete(Lcom/oculus/video/VideoSession;)V
    .locals 4

    .line 768
    iget-wide v0, p0, Lcom/oculus/video/VideoPlayer_Android;->nativePtr:J

    invoke-virtual {p1}, Lcom/oculus/video/VideoSession;->getSessionId()J

    move-result-wide v2

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/oculus/video/VideoPlayer_Android;->nativeSeekFinished(JJ)V

    return-void
.end method

.method public onSoftError(Lcom/oculus/video/VideoSession;Ljava/lang/Throwable;)V
    .locals 3

    .line 804
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->videoPlayerAnalytics:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    invoke-virtual {p1}, Lcom/oculus/video/VideoSession;->getSessionId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, p2}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->onSoftError(JLjava/lang/Throwable;)V

    return-void
.end method

.method public onStartVideo(Lcom/oculus/video/VideoSession;)V
    .locals 0

    return-void
.end method

.method public onStopBuffering(Lcom/oculus/video/VideoSession;)V
    .locals 3

    .line 763
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->videoPlayerAnalytics:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    invoke-virtual {p1}, Lcom/oculus/video/VideoSession;->getSessionId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->onStopBuffering(J)V

    return-void
.end method

.method public onStreamingSample(Lcom/oculus/video/VideoSession;JJJJ)V
    .locals 17

    move-object/from16 v0, p0

    .line 987
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/video/VideoSession;->getPlayer()Lcom/oculus/video/VideoPlayer;

    move-result-object v1

    instance-of v1, v1, Lcom/oculus/video/SyncMediaPlayer;

    if-eqz v1, :cond_0

    .line 988
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/video/VideoSession;->getPlayer()Lcom/oculus/video/VideoPlayer;

    move-result-object v1

    check-cast v1, Lcom/oculus/video/SyncMediaPlayer;

    invoke-virtual {v1}, Lcom/oculus/video/SyncMediaPlayer;->getSyncDelayMs()J

    move-result-wide v1

    .line 989
    iget-object v3, v0, Lcom/oculus/video/VideoPlayer_Android;->videoPlayerAnalytics:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    invoke-virtual/range {p1 .. p1}, Lcom/oculus/video/VideoSession;->getSessionId()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5, v1, v2}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->onSyncDelayUpdate(JJ)V

    .line 992
    :cond_0
    iget-object v6, v0, Lcom/oculus/video/VideoPlayer_Android;->videoPlayerAnalytics:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    .line 993
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/video/VideoSession;->getSessionId()J

    move-result-wide v7

    move-wide/from16 v9, p2

    move-wide/from16 v11, p4

    move-wide/from16 v13, p6

    move-wide/from16 v15, p8

    .line 992
    invoke-virtual/range {v6 .. v16}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->onStreamingSample(JJJJJ)V

    return-void
.end method

.method public onTimelineChanged(Lcom/oculus/video/VideoSession;JJZ)V
    .locals 7

    .line 810
    invoke-virtual {p1}, Lcom/oculus/video/VideoSession;->getSessionVideo()Lcom/oculus/video/Video;

    move-result-object p4

    if-nez p4, :cond_0

    return-void

    .line 818
    :cond_0
    :try_start_0
    invoke-virtual {p4, p2, p3}, Lcom/oculus/video/Video;->setDuration(J)Lcom/oculus/video/Video;

    move-result-object p5

    .line 819
    invoke-virtual {p5, p6}, Lcom/oculus/video/Video;->setIsSeekable(Z)Lcom/oculus/video/Video;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 824
    :catch_0
    iget-wide v1, p0, Lcom/oculus/video/VideoPlayer_Android;->nativePtr:J

    .line 826
    invoke-virtual {p1}, Lcom/oculus/video/VideoSession;->getSessionId()J

    move-result-wide v3

    .line 827
    invoke-virtual {p4}, Lcom/oculus/video/Video;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "TIMELINE_METADATA"

    move-object v0, p0

    .line 824
    invoke-direct/range {v0 .. v6}, Lcom/oculus/video/VideoPlayer_Android;->nativeUpdateVideo(JJLjava/lang/String;Ljava/lang/String;)V

    .line 830
    iget-object p1, p0, Lcom/oculus/video/VideoPlayer_Android;->staticDebugInfo:Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 831
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Duration (ms)"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 832
    iget-object p1, p0, Lcom/oculus/video/VideoPlayer_Android;->staticDebugInfo:Ljava/util/Map;

    invoke-static {p6}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Is Seekable"

    invoke-interface {p1, p3, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method public onVideoFormatChanged(Lcom/oculus/video/VideoSession;IIFILcom/oculus/video/projection/VideoProjection;FILjava/lang/String;Ljava/lang/String;D)V
    .locals 19

    move-object/from16 v7, p0

    move/from16 v8, p2

    move/from16 v9, p3

    move-object/from16 v10, p10

    .line 873
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/video/VideoSession;->getSessionVideo()Lcom/oculus/video/Video;

    move-result-object v11

    if-nez v11, :cond_0

    return-void

    .line 880
    :cond_0
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/video/VideoSession;->didStartPlayback()Z

    move-result v0

    if-nez v0, :cond_1

    .line 883
    :try_start_0
    invoke-virtual {v11, v8}, Lcom/oculus/video/Video;->setInitialWidth(I)Lcom/oculus/video/Video;

    move-result-object v0

    .line 884
    invoke-virtual {v0, v9}, Lcom/oculus/video/Video;->setInitialHeight(I)Lcom/oculus/video/Video;

    move-result-object v0

    move/from16 v1, p5

    .line 885
    invoke-virtual {v0, v1}, Lcom/oculus/video/Video;->setFrameRotation(I)Lcom/oculus/video/Video;

    move-result-object v0

    int-to-float v1, v8

    mul-float v1, v1, p4

    int-to-float v2, v9

    div-float/2addr v1, v2

    .line 886
    invoke-virtual {v0, v1}, Lcom/oculus/video/Video;->setFrameAspectRatio(F)Lcom/oculus/video/Video;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move/from16 v15, p7

    .line 887
    :try_start_1
    invoke-virtual {v0, v15}, Lcom/oculus/video/Video;->setFrameRate(F)Lcom/oculus/video/Video;

    move-result-object v0

    move-object/from16 v1, p9

    .line 888
    invoke-virtual {v0, v1}, Lcom/oculus/video/Video;->setVideoMimeType(Ljava/lang/String;)Lcom/oculus/video/Video;

    move-result-object v0

    .line 889
    invoke-virtual {v0, v10}, Lcom/oculus/video/Video;->setVideoRendererName(Ljava/lang/String;)Lcom/oculus/video/Video;

    move-result-object v0

    move-object/from16 v1, p6

    .line 890
    invoke-virtual {v0, v1}, Lcom/oculus/video/Video;->setProjectionMetadata(Lcom/oculus/video/projection/VideoProjection;)Lcom/oculus/video/Video;

    .line 892
    invoke-direct {v7, v11}, Lcom/oculus/video/VideoPlayer_Android;->apply5k360HevcMkvRotationHack(Lcom/oculus/video/Video;)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move/from16 v15, p7

    .line 897
    :catch_1
    :goto_0
    iget-object v0, v7, Lcom/oculus/video/VideoPlayer_Android;->videoPlayerAnalytics:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    .line 898
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/video/VideoSession;->getSessionId()J

    move-result-wide v1

    invoke-virtual {v11}, Lcom/oculus/video/Video;->getProjectionMetadata()Lcom/oculus/video/projection/VideoProjection;

    move-result-object v3

    .line 897
    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->onSelectProjectionMetadata(JLcom/oculus/video/projection/VideoProjection;)V

    .line 900
    iget-wide v1, v7, Lcom/oculus/video/VideoPlayer_Android;->nativePtr:J

    .line 902
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/video/VideoSession;->getSessionId()J

    move-result-wide v3

    .line 903
    invoke-virtual {v11}, Lcom/oculus/video/Video;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "VIDEO_METADATA"

    move-object/from16 v0, p0

    .line 900
    invoke-direct/range {v0 .. v6}, Lcom/oculus/video/VideoPlayer_Android;->nativeUpdateVideo(JJLjava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    move/from16 v15, p7

    .line 907
    :goto_1
    iget-object v12, v7, Lcom/oculus/video/VideoPlayer_Android;->videoPlayerAnalytics:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    invoke-virtual/range {p1 .. p1}, Lcom/oculus/video/VideoSession;->getSessionId()J

    move-result-wide v13

    move/from16 v15, p7

    move/from16 v16, p8

    move-wide/from16 v17, p11

    invoke-virtual/range {v12 .. v18}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->onVideoFormatChanged(JFID)V

    .line 909
    iget-object v0, v7, Lcom/oculus/video/VideoPlayer_Android;->staticDebugInfo:Ljava/util/Map;

    if-eqz v0, :cond_2

    .line 910
    invoke-static/range {p2 .. p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Size Width"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 911
    iget-object v0, v7, Lcom/oculus/video/VideoPlayer_Android;->staticDebugInfo:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Size Height"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 912
    iget-object v0, v7, Lcom/oculus/video/VideoPlayer_Android;->staticDebugInfo:Ljava/util/Map;

    invoke-static/range {p7 .. p7}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Frame Rate"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 913
    iget-object v0, v7, Lcom/oculus/video/VideoPlayer_Android;->staticDebugInfo:Ljava/util/Map;

    invoke-virtual {v11}, Lcom/oculus/video/Video;->getVideoMimeType()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Video Mime"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 914
    iget-object v0, v7, Lcom/oculus/video/VideoPlayer_Android;->staticDebugInfo:Ljava/util/Map;

    const-string v1, "Video Renderer"

    invoke-interface {v0, v1, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 915
    iget-object v0, v7, Lcom/oculus/video/VideoPlayer_Android;->staticDebugInfo:Ljava/util/Map;

    invoke-static/range {p11 .. p12}, Ljava/lang/Double;->toString(D)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Video Quality Metric"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public onVideoPrepared(Lcom/oculus/video/VideoSession;Z)V
    .locals 10

    .line 691
    invoke-virtual {p1}, Lcom/oculus/video/VideoSession;->getSessionVideo()Lcom/oculus/video/Video;

    move-result-object v0

    .line 692
    iget-object v1, p0, Lcom/oculus/video/VideoPlayer_Android;->staticDebugInfo:Ljava/util/Map;

    if-eqz v1, :cond_0

    .line 693
    invoke-virtual {v0}, Lcom/oculus/video/Video;->getVideoUri()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Video Uri"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    invoke-virtual {v0}, Lcom/oculus/video/Video;->getProjectionMetadata()Lcom/oculus/video/projection/VideoProjection;

    move-result-object v1

    .line 696
    iget-object v2, p0, Lcom/oculus/video/VideoPlayer_Android;->staticDebugInfo:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/oculus/video/projection/VideoProjection;->getStereoModeString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "Video Stereo Mode"

    invoke-interface {v2, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 697
    iget-object v2, p0, Lcom/oculus/video/VideoPlayer_Android;->staticDebugInfo:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/oculus/video/projection/VideoProjection;->getProjectionType()Lcom/oculus/video/projection/ProjectionType;

    move-result-object v1

    iget-object v1, v1, Lcom/oculus/video/projection/ProjectionType;->videoLayout:Ljava/lang/String;

    const-string v3, "Video Projection"

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 701
    :cond_0
    :try_start_0
    invoke-virtual {v0}, Lcom/oculus/video/Video;->getSubtitleMimeTypes()Lorg/json/JSONArray;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 702
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v2

    if-lez v2, :cond_1

    .line 703
    iget-object v3, p0, Lcom/oculus/video/VideoPlayer_Android;->videoPlayerAnalytics:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    .line 704
    invoke-virtual {p1}, Lcom/oculus/video/VideoSession;->getSessionId()J

    move-result-wide v4

    const-string v2, ","

    .line 705
    invoke-virtual {v1, v2}, Lorg/json/JSONArray;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v7, ""

    .line 707
    invoke-virtual {v0}, Lcom/oculus/video/Video;->getAvailableSubtitles()Ljava/util/Collection;

    move-result-object v8

    .line 703
    invoke-virtual/range {v3 .. v8}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->onSubtitleInfo(JLjava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 710
    :catch_0
    sget-object v1, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    const-string v2, "Failed to log subtitle info"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 713
    :cond_1
    :goto_0
    iget-wide v4, p0, Lcom/oculus/video/VideoPlayer_Android;->nativePtr:J

    .line 715
    invoke-virtual {p1}, Lcom/oculus/video/VideoSession;->getSessionId()J

    move-result-wide v6

    if-eqz p2, :cond_2

    .line 716
    invoke-virtual {v0}, Lcom/oculus/video/Video;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_2
    const/4 p1, 0x0

    :goto_1
    move-object v8, p1

    const-string v9, "PREPARE"

    move-object v3, p0

    .line 713
    invoke-direct/range {v3 .. v9}, Lcom/oculus/video/VideoPlayer_Android;->nativeUpdateVideo(JJLjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public onVideoSizeChanged(Lcom/oculus/video/VideoSession;IIFLandroid/graphics/Rect;)V
    .locals 13

    move-object v12, p0

    .line 964
    iget-object v0, v12, Lcom/oculus/video/VideoPlayer_Android;->staticDebugInfo:Ljava/util/Map;

    if-eqz v0, :cond_0

    .line 965
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Size Width"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 966
    iget-object v0, v12, Lcom/oculus/video/VideoPlayer_Android;->staticDebugInfo:Ljava/util/Map;

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Size Height"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    if-nez p5, :cond_1

    .line 969
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    goto :goto_0

    :cond_1
    move-object/from16 v0, p5

    .line 971
    :goto_0
    iget-wide v1, v12, Lcom/oculus/video/VideoPlayer_Android;->nativePtr:J

    .line 972
    invoke-virtual {p1}, Lcom/oculus/video/VideoSession;->getSessionId()J

    move-result-wide v3

    iget v8, v0, Landroid/graphics/Rect;->top:I

    iget v9, v0, Landroid/graphics/Rect;->left:I

    iget v10, v0, Landroid/graphics/Rect;->bottom:I

    iget v11, v0, Landroid/graphics/Rect;->right:I

    move-object v0, p0

    move v5, p2

    move/from16 v6, p3

    move/from16 v7, p4

    .line 971
    invoke-direct/range {v0 .. v11}, Lcom/oculus/video/VideoPlayer_Android;->nativeSetVideoSize(JJIIFIIII)V

    return-void
.end method

.method public pauseVideo(J)V
    .locals 3

    .line 401
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->videoSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/VideoSession;

    if-nez v0, :cond_0

    .line 403
    sget-object v0, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoSession not found in pauseVideo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 406
    :cond_0
    invoke-virtual {v0}, Lcom/oculus/video/VideoSession;->pauseVideo()V

    .line 407
    iget-object p1, p0, Lcom/oculus/video/VideoPlayer_Android;->debugSurface:Lcom/oculus/video/ui/DebugSurface;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/oculus/video/VideoPlayer_Android;->staticDebugInfo:Ljava/util/Map;

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    .line 408
    invoke-virtual {p1, p2, v0}, Lcom/oculus/video/ui/DebugSurface;->setContent(Ljava/util/Map;Z)V

    :cond_1
    return-void
.end method

.method public prepareVideo(JLjava/lang/String;)V
    .locals 6

    .line 333
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->videoSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/VideoSession;

    if-eqz v0, :cond_0

    .line 335
    sget-object p3, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoSession already exists: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 340
    :cond_0
    :try_start_0
    new-instance v0, Lcom/oculus/video/VideoSession;

    iget-object v1, p0, Lcom/oculus/video/VideoPlayer_Android;->videoPlayerHandler:Landroid/os/Handler;

    invoke-direct {v0, p1, p2, v1, p0}, Lcom/oculus/video/VideoSession;-><init>(JLandroid/os/Handler;Lcom/oculus/video/VideoSession$EventListener;)V

    .line 341
    iget-object v1, p0, Lcom/oculus/video/VideoPlayer_Android;->videoSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 342
    iget-object v1, p0, Lcom/oculus/video/VideoPlayer_Android;->staticDebugInfo:Ljava/util/Map;

    if-eqz v1, :cond_1

    .line 343
    iget-object v1, p0, Lcom/oculus/video/VideoPlayer_Android;->staticDebugInfo:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 345
    :cond_1
    iget-object v1, p0, Lcom/oculus/video/VideoPlayer_Android;->dynamicDebugInfo:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 346
    iget-object v1, p0, Lcom/oculus/video/VideoPlayer_Android;->dynamicDebugInfo:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 348
    :cond_2
    iget-object v1, p0, Lcom/oculus/video/VideoPlayer_Android;->debugSurface:Lcom/oculus/video/ui/DebugSurface;

    if-eqz v1, :cond_3

    .line 349
    iget-object v1, p0, Lcom/oculus/video/VideoPlayer_Android;->debugSurface:Lcom/oculus/video/ui/DebugSurface;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Lcom/oculus/video/ui/DebugSurface;->setContent(Ljava/util/Map;Z)V

    .line 352
    :cond_3
    new-instance v1, Lcom/oculus/video/Video;

    invoke-direct {v1, p3}, Lcom/oculus/video/Video;-><init>(Ljava/lang/String;)V

    .line 355
    iget-object p3, p0, Lcom/oculus/video/VideoPlayer_Android;->videoPlayerAnalytics:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    invoke-virtual {v1}, Lcom/oculus/video/Video;->getProjectionMetadata()Lcom/oculus/video/projection/VideoProjection;

    move-result-object v2

    invoke-virtual {p3, p1, p2, v2}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->onExtractProjectionMetadata(JLcom/oculus/video/projection/VideoProjection;)V

    .line 357
    iget-object p3, p0, Lcom/oculus/video/VideoPlayer_Android;->context:Landroid/content/Context;

    invoke-virtual {v0, p3, v1}, Lcom/oculus/video/VideoSession;->prepareVideo(Landroid/content/Context;Lcom/oculus/video/Video;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p3

    move-object v5, p3

    .line 359
    iget-wide v1, p0, Lcom/oculus/video/VideoPlayer_Android;->nativePtr:J

    move-object v0, p0

    move-wide v3, p1

    invoke-direct/range {v0 .. v5}, Lcom/oculus/video/VideoPlayer_Android;->nativePlaybackFailed(JJLjava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method public releaseAudioFocus()V
    .locals 1

    .line 642
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->audioManager:Landroid/media/AudioManager;

    invoke-virtual {v0, p0}, Landroid/media/AudioManager;->abandonAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;)I

    return-void
.end method

.method public releaseVideo(J)V
    .locals 3

    .line 390
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->videoSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/VideoSession;

    if-nez v0, :cond_0

    .line 392
    sget-object v0, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoSession not found in releaseVideo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 395
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " - deleted"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoSession"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 396
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->videoSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    iget-object p1, p0, Lcom/oculus/video/VideoPlayer_Android;->audioSpatializerController:Lcom/oculus/video/VideoPlayer_Android$OculusAudioSpatializerController;

    const/4 p2, 0x0

    iput-object p2, p1, Lcom/oculus/video/VideoPlayer_Android$OculusAudioSpatializerController;->video:Lcom/oculus/video/Video;

    return-void
.end method

.method public requestAudioFocus()V
    .locals 3

    .line 632
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->audioManager:Landroid/media/AudioManager;

    const/4 v1, 0x1

    const/4 v2, 0x3

    invoke-virtual {v0, p0, v2, v1}, Landroid/media/AudioManager;->requestAudioFocus(Landroid/media/AudioManager$OnAudioFocusChangeListener;II)I

    move-result v0

    if-ne v0, v1, :cond_0

    .line 635
    sget-object v0, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    const-string v1, "requestAudioFocus(): GRANTED audio focus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    if-nez v0, :cond_1

    .line 637
    sget-object v0, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    const-string v1, "requestAudioFocus(): FAILED to gain audio focus"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method public resumeVideo(J)V
    .locals 3

    .line 413
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->videoSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/VideoSession;

    if-nez v0, :cond_0

    .line 415
    sget-object v0, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoSession not found in resumeVideo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 418
    :cond_0
    invoke-virtual {v0}, Lcom/oculus/video/VideoSession;->resumeVideo()V

    .line 419
    iget-object p1, p0, Lcom/oculus/video/VideoPlayer_Android;->debugSurface:Lcom/oculus/video/ui/DebugSurface;

    if-eqz p1, :cond_1

    iget-object p2, p0, Lcom/oculus/video/VideoPlayer_Android;->dynamicDebugInfo:Ljava/util/Map;

    if-eqz p2, :cond_1

    const/4 v0, 0x0

    .line 420
    invoke-virtual {p1, p2, v0}, Lcom/oculus/video/ui/DebugSurface;->setContent(Ljava/util/Map;Z)V

    :cond_1
    return-void
.end method

.method public seekVideo(JI)V
    .locals 2

    .line 425
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->videoSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/VideoSession;

    if-nez v0, :cond_0

    .line 427
    sget-object p3, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoSession not found in seekVideo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    int-to-long p1, p3

    .line 430
    invoke-virtual {v0, p1, p2}, Lcom/oculus/video/VideoSession;->seekTo(J)V

    return-void
.end method

.method public selectSubtitle(JLjava/lang/String;)Z
    .locals 8

    .line 434
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->videoSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/VideoSession;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 436
    sget-object p3, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoSession not found in selectSubtitle: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    .line 439
    :cond_0
    invoke-virtual {v0, p3}, Lcom/oculus/video/VideoSession;->selectSubtitle(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 441
    :try_start_0
    invoke-virtual {v0}, Lcom/oculus/video/VideoSession;->getSessionVideo()Lcom/oculus/video/Video;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/video/Video;->getSubtitleMimeTypes()Lorg/json/JSONArray;

    move-result-object v1

    .line 442
    iget-object v2, p0, Lcom/oculus/video/VideoPlayer_Android;->videoPlayerAnalytics:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    if-nez v1, :cond_1

    const-string v1, ""

    goto :goto_0

    :cond_1
    const-string v3, ","

    .line 443
    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->join(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    move-object v5, v1

    .line 444
    invoke-virtual {v0}, Lcom/oculus/video/VideoSession;->getSessionVideo()Lcom/oculus/video/Video;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/video/Video;->getAvailableSubtitles()Ljava/util/Collection;

    move-result-object v7

    move-wide v3, p1

    move-object v6, p3

    .line 442
    invoke-virtual/range {v2 .. v7}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->onSubtitleInfo(JLjava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 446
    :catch_0
    sget-object p1, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    const-string p2, "Failed to parse subtitle info"

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const/4 p1, 0x1

    return p1

    :cond_2
    return v1
.end method

.method public setDebugSurface(Landroid/view/Surface;)V
    .locals 2

    if-eqz p1, :cond_2

    .line 319
    new-instance v0, Lcom/oculus/video/ui/DebugSurface;

    invoke-direct {v0, p1}, Lcom/oculus/video/ui/DebugSurface;-><init>(Landroid/view/Surface;)V

    iput-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->debugSurface:Lcom/oculus/video/ui/DebugSurface;

    .line 320
    iget-object p1, p0, Lcom/oculus/video/VideoPlayer_Android;->staticDebugInfo:Ljava/util/Map;

    if-nez p1, :cond_0

    .line 321
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/oculus/video/VideoPlayer_Android;->staticDebugInfo:Ljava/util/Map;

    .line 323
    :cond_0
    iget-object p1, p0, Lcom/oculus/video/VideoPlayer_Android;->dynamicDebugInfo:Ljava/util/Map;

    if-nez p1, :cond_1

    .line 324
    new-instance p1, Ljava/util/TreeMap;

    invoke-direct {p1}, Ljava/util/TreeMap;-><init>()V

    iput-object p1, p0, Lcom/oculus/video/VideoPlayer_Android;->dynamicDebugInfo:Ljava/util/Map;

    .line 326
    :cond_1
    iget-object p1, p0, Lcom/oculus/video/VideoPlayer_Android;->debugSurface:Lcom/oculus/video/ui/DebugSurface;

    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->staticDebugInfo:Ljava/util/Map;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Lcom/oculus/video/ui/DebugSurface;->setContent(Ljava/util/Map;Z)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 328
    iput-object p1, p0, Lcom/oculus/video/VideoPlayer_Android;->debugSurface:Lcom/oculus/video/ui/DebugSurface;

    :goto_0
    return-void
.end method

.method public setGK(Ljava/lang/String;Z)V
    .locals 0

    .line 549
    invoke-static {p1}, Lcom/oculus/video/Settings$GK;->fromName(Ljava/lang/String;)Lcom/oculus/video/Settings$GK;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 551
    invoke-virtual {p1, p2}, Lcom/oculus/video/Settings$GK;->turnOn(Z)V

    :cond_0
    return-void
.end method

.method public setMute(JZ)V
    .locals 2

    .line 270
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->videoSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/VideoSession;

    if-nez v0, :cond_0

    .line 272
    sget-object p3, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoSession not found in setMute: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 275
    :cond_0
    invoke-virtual {v0, p3}, Lcom/oculus/video/VideoSession;->setMute(Z)V

    return-void
.end method

.method public setStringPreference(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    .line 562
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->preferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 563
    invoke-interface {v0, p1, p2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 564
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method

.method public setSyncReferenceTimeMs(JJ)V
    .locals 2

    .line 454
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->videoSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/VideoSession;

    if-nez v0, :cond_0

    .line 456
    sget-object p3, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VideoSession not found in setSyncReferenceTimeMs: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 459
    :cond_0
    invoke-virtual {v0, p3, p4}, Lcom/oculus/video/VideoSession;->setSyncReferenceTimeMs(J)V

    return-void
.end method

.method public setVolume(JF)V
    .locals 2

    .line 288
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->videoSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/VideoSession;

    if-nez v0, :cond_0

    .line 290
    sget-object p3, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "VideoSession not found in setVolume: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 293
    :cond_0
    invoke-virtual {v0, p3}, Lcom/oculus/video/VideoSession;->setVolume(F)V

    return-void
.end method

.method public shutDown()V
    .locals 2

    .line 253
    invoke-virtual {p0}, Lcom/oculus/video/VideoPlayer_Android;->releaseAudioFocus()V

    .line 254
    invoke-static {}, Landroid/net/http/HttpResponseCache;->getInstalled()Landroid/net/http/HttpResponseCache;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 256
    invoke-virtual {v0}, Landroid/net/http/HttpResponseCache;->flush()V

    .line 259
    :cond_0
    invoke-static {}, Lcom/oculus/video/analytics/PowerMonitor;->release()V

    const-wide/16 v0, 0x0

    .line 260
    iput-wide v0, p0, Lcom/oculus/video/VideoPlayer_Android;->nativePtr:J

    .line 262
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->videoPlayerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->quitSafely()Z

    return-void
.end method

.method public startVideo(JZLandroid/view/Surface;)V
    .locals 2

    .line 365
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->videoSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/VideoSession;

    if-nez v0, :cond_0

    .line 367
    sget-object p3, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VideoSession not found in startVideo:: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 372
    :cond_0
    :try_start_0
    iget-object p1, p0, Lcom/oculus/video/VideoPlayer_Android;->audioSpatializerController:Lcom/oculus/video/VideoPlayer_Android$OculusAudioSpatializerController;

    invoke-virtual {v0}, Lcom/oculus/video/VideoSession;->getSessionVideo()Lcom/oculus/video/Video;

    move-result-object p2

    iput-object p2, p1, Lcom/oculus/video/VideoPlayer_Android$OculusAudioSpatializerController;->video:Lcom/oculus/video/Video;

    .line 374
    invoke-virtual {v0}, Lcom/oculus/video/VideoSession;->getSessionVideo()Lcom/oculus/video/Video;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oculus/video/VideoPlayer_Android;->configureOculusPlayer(Lcom/oculus/video/Video;)Lcom/oculus/video/VideoPlayer;

    move-result-object p1

    .line 373
    invoke-virtual {v0, p1, p3, p4}, Lcom/oculus/video/VideoSession;->startVideo(Lcom/oculus/video/VideoPlayer;ZLandroid/view/Surface;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 376
    invoke-virtual {p0, v0, p1}, Lcom/oculus/video/VideoPlayer_Android;->onError(Lcom/oculus/video/VideoSession;Ljava/lang/Exception;)V

    :goto_0
    return-void
.end method

.method public stopVideo(J)V
    .locals 3

    .line 381
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->videoSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/VideoSession;

    if-nez v0, :cond_0

    .line 383
    sget-object v0, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoSession not found in stopVideo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 386
    :cond_0
    invoke-virtual {v0}, Lcom/oculus/video/VideoSession;->stopVideo()V

    return-void
.end method

.method public updateSyncPlaybackState(J)V
    .locals 3

    .line 472
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->videoSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/VideoSession;

    if-nez v0, :cond_0

    .line 474
    sget-object v0, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "VideoSession not found in updateSyncPlaybackState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 477
    :cond_0
    invoke-virtual {v0}, Lcom/oculus/video/VideoSession;->updateSyncPlaybackState()V

    return-void
.end method

.method public updateSyncedPlaybackTime(JILjava/lang/String;)V
    .locals 2

    .line 463
    iget-object v0, p0, Lcom/oculus/video/VideoPlayer_Android;->videoSessions:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/VideoSession;

    if-nez v0, :cond_0

    .line 465
    sget-object p3, Lcom/oculus/video/VideoPlayer_Android;->TAG:Ljava/lang/String;

    new-instance p4, Ljava/lang/StringBuilder;

    invoke-direct {p4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "VideoSession not found in updateSyncedPlaybackTime: "

    invoke-virtual {p4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p4, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p3, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 468
    :cond_0
    invoke-virtual {v0, p3, p4}, Lcom/oculus/video/VideoSession;->updateSyncedPlaybackTime(ILjava/lang/String;)V

    return-void
.end method
