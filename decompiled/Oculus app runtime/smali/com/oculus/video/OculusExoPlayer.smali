.class Lcom/oculus/video/OculusExoPlayer;
.super Ljava/lang/Object;
.source "OculusExoPlayer.java"

# interfaces
.implements Lcom/oculus/video/VideoPlayer;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/video/OculusExoPlayer$DashUpdateListener;,
        Lcom/oculus/video/OculusExoPlayer$PrimaryHlsPlaylistListener;,
        Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;,
        Lcom/oculus/video/OculusExoPlayer$NetworkListener;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final CACHE_SIZE:J = 0x20000000L

.field private static final DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS:J = 0x1388L

.field private static final LAST_REPORTED_BITRATE_PREFRERENCE:Ljava/lang/String; = "last_reported_bitrate"

.field private static final MAX_DROPPED_VIDEO_FRAME_COUNT_TO_NOTIFY:I = 0x32

.field private static final MAX_SEEK_ERROR_US:J = 0x989680L

.field private static final NETWORK_LISTENER:Lcom/oculus/video/OculusExoPlayer$NetworkListener;

.field private static final SECURITY_LEVEL_PROPERTY:Ljava/lang/String; = "securityLevel"

.field private static final TAG:Ljava/lang/String; = "OculusExoPlayer"

.field private static final USER_AGENT:Ljava/lang/String; = "oculus_video_sdk"

.field private static oculusExoPlayerCache:Lcom/oculus/android/exoplayer2/upstream/cache/Cache;


# instance fields
.field private final audioRendererEventListener:Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener;

.field private audioRenderers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/Renderer;",
            ">;"
        }
    .end annotation
.end field

.field private final audioSpatializerController:Lcom/oculus/video/audio/AudioSpatializerController;

.field private final bandwidthMeter:Lcom/oculus/android/exoplayer2/upstream/DefaultBandwidthMeter;

.field private final bandwidthMeterListener:Lcom/oculus/android/exoplayer2/upstream/BandwidthMeter$EventListener;

.field private bitratePreferenceKey:Ljava/lang/String;

.field private final cameraMotionDataListener:Lcom/oculus/android/exoplayer2/metadata/MetadataOutput;

.field private final context:Landroid/content/Context;

.field private currentVolume:F

.field private dashUpdateListener:Lcom/oculus/video/OculusExoPlayer$DashUpdateListener;

.field private final eventHandler:Landroid/os/Handler;

.field private eventListener:Lcom/oculus/video/VideoPlayer$EventListener;

.field protected exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

.field private final exoPlayer2EventListener:Lcom/oculus/android/exoplayer2/Player$EventListener;

.field private final extractorEventListener:Lcom/oculus/video/extractor/OculusExtractorsFactory$EventListener;

.field private fbVqmMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Double;",
            ">;"
        }
    .end annotation
.end field

.field private frameDropReportStartTimeMs:J

.field private hasRemoteAES128IV:Z

.field private hasRemoteAES128Key:Z

.field private isMuted:Z

.field private final keyFrameTimestampsUs:Ljava/util/SortedSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/SortedSet<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private lastRecordedConsumedFrameCount:J

.field private lastRecordedReleasedFrameCount:J

.field private lastSlidingBitrate:J

.field private final oculusCacheDataSourceCallback:Lcom/oculus/video/upstream/OculusCacheDataSource$Callback;

.field primaryHlsPlaylistListener:Lcom/oculus/video/OculusExoPlayer$PrimaryHlsPlaylistListener;

.field private projectionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/oculus/video/projection/ProjectionType;",
            ">;"
        }
    .end annotation
.end field

.field private projectionMetadata:Lcom/oculus/video/projection/VideoProjection;

.field private final subtitleOutput:Lcom/oculus/android/exoplayer2/text/TextOutput;

.field private final subtitleSurfacePainter:Lcom/oculus/video/ui/SubtitleSurfacePainter;

.field private timelinePeriod:Lcom/oculus/android/exoplayer2/Timeline$Period;

.field private final totalConsumedFrameCount:Ljava/util/concurrent/atomic/AtomicLong;

.field private trackSelectorManager:Lcom/oculus/video/trackselection/OculusTrackSelectorManager;

.field private useDataCache:Z

.field private videoDecoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

.field private videoRenderer:Lcom/oculus/android/exoplayer2/Renderer;

.field protected videoRendererEventListener:Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener;

.field private videoSurface:Landroid/view/Surface;

.field private videoSyncMode:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 204
    new-instance v0, Lcom/oculus/video/OculusExoPlayer$NetworkListener;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oculus/video/OculusExoPlayer$NetworkListener;-><init>(Lcom/oculus/video/OculusExoPlayer$1;)V

    sput-object v0, Lcom/oculus/video/OculusExoPlayer;->NETWORK_LISTENER:Lcom/oculus/video/OculusExoPlayer$NetworkListener;

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/oculus/video/audio/AudioSpatializerController;Landroid/os/Handler;)V
    .locals 4

    .line 263
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 231
    new-instance v0, Ljava/util/TreeSet;

    invoke-direct {v0}, Ljava/util/TreeSet;-><init>()V

    iput-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->keyFrameTimestampsUs:Ljava/util/SortedSet;

    const/4 v0, 0x0

    .line 234
    iput-boolean v0, p0, Lcom/oculus/video/OculusExoPlayer;->isMuted:Z

    const/high16 v1, 0x3f800000    # 1.0f

    .line 235
    iput v1, p0, Lcom/oculus/video/OculusExoPlayer;->currentVolume:F

    .line 238
    iput-boolean v0, p0, Lcom/oculus/video/OculusExoPlayer;->useDataCache:Z

    const/4 v1, 0x0

    .line 240
    iput-object v1, p0, Lcom/oculus/video/OculusExoPlayer;->fbVqmMap:Ljava/util/Map;

    .line 241
    iput-object v1, p0, Lcom/oculus/video/OculusExoPlayer;->projectionMap:Ljava/util/Map;

    .line 243
    new-instance v2, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    iput-object v2, p0, Lcom/oculus/video/OculusExoPlayer;->totalConsumedFrameCount:Ljava/util/concurrent/atomic/AtomicLong;

    .line 247
    iput-boolean v0, p0, Lcom/oculus/video/OculusExoPlayer;->hasRemoteAES128Key:Z

    .line 248
    iput-boolean v0, p0, Lcom/oculus/video/OculusExoPlayer;->hasRemoteAES128IV:Z

    const-string v0, "none"

    .line 252
    iput-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->videoSyncMode:Ljava/lang/String;

    .line 256
    new-instance v0, Lcom/oculus/android/exoplayer2/Timeline$Period;

    invoke-direct {v0}, Lcom/oculus/android/exoplayer2/Timeline$Period;-><init>()V

    iput-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->timelinePeriod:Lcom/oculus/android/exoplayer2/Timeline$Period;

    .line 258
    iput-object v1, p0, Lcom/oculus/video/OculusExoPlayer;->bitratePreferenceKey:Ljava/lang/String;

    const-wide/16 v2, -0x1

    .line 259
    iput-wide v2, p0, Lcom/oculus/video/OculusExoPlayer;->lastSlidingBitrate:J

    .line 291
    new-instance v0, Lcom/oculus/video/OculusExoPlayer$2;

    invoke-direct {v0, p0}, Lcom/oculus/video/OculusExoPlayer$2;-><init>(Lcom/oculus/video/OculusExoPlayer;)V

    iput-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->exoPlayer2EventListener:Lcom/oculus/android/exoplayer2/Player$EventListener;

    .line 473
    new-instance v0, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;

    invoke-direct {v0, p0}, Lcom/oculus/video/OculusExoPlayer$OculusVideoRendererEventListener;-><init>(Lcom/oculus/video/OculusExoPlayer;)V

    iput-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->videoRendererEventListener:Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener;

    .line 476
    new-instance v0, Lcom/oculus/video/OculusExoPlayer$3;

    invoke-direct {v0, p0}, Lcom/oculus/video/OculusExoPlayer$3;-><init>(Lcom/oculus/video/OculusExoPlayer;)V

    iput-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->audioRendererEventListener:Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener;

    .line 528
    new-instance v0, Lcom/oculus/video/OculusExoPlayer$4;

    invoke-direct {v0, p0}, Lcom/oculus/video/OculusExoPlayer$4;-><init>(Lcom/oculus/video/OculusExoPlayer;)V

    iput-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->subtitleOutput:Lcom/oculus/android/exoplayer2/text/TextOutput;

    .line 538
    new-instance v0, Lcom/oculus/video/OculusExoPlayer$5;

    invoke-direct {v0, p0}, Lcom/oculus/video/OculusExoPlayer$5;-><init>(Lcom/oculus/video/OculusExoPlayer;)V

    iput-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->bandwidthMeterListener:Lcom/oculus/android/exoplayer2/upstream/BandwidthMeter$EventListener;

    .line 678
    new-instance v0, Lcom/oculus/video/OculusExoPlayer$PrimaryHlsPlaylistListener;

    invoke-direct {v0, p0}, Lcom/oculus/video/OculusExoPlayer$PrimaryHlsPlaylistListener;-><init>(Lcom/oculus/video/OculusExoPlayer;)V

    iput-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->primaryHlsPlaylistListener:Lcom/oculus/video/OculusExoPlayer$PrimaryHlsPlaylistListener;

    .line 762
    iput-object v1, p0, Lcom/oculus/video/OculusExoPlayer;->dashUpdateListener:Lcom/oculus/video/OculusExoPlayer$DashUpdateListener;

    .line 1121
    new-instance v0, Lcom/oculus/video/OculusExoPlayer$7;

    invoke-direct {v0, p0}, Lcom/oculus/video/OculusExoPlayer$7;-><init>(Lcom/oculus/video/OculusExoPlayer;)V

    iput-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->cameraMotionDataListener:Lcom/oculus/android/exoplayer2/metadata/MetadataOutput;

    .line 1154
    new-instance v0, Lcom/oculus/video/OculusExoPlayer$8;

    invoke-direct {v0, p0}, Lcom/oculus/video/OculusExoPlayer$8;-><init>(Lcom/oculus/video/OculusExoPlayer;)V

    iput-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->extractorEventListener:Lcom/oculus/video/extractor/OculusExtractorsFactory$EventListener;

    .line 264
    iput-object p1, p0, Lcom/oculus/video/OculusExoPlayer;->context:Landroid/content/Context;

    .line 265
    iput-object p2, p0, Lcom/oculus/video/OculusExoPlayer;->audioSpatializerController:Lcom/oculus/video/audio/AudioSpatializerController;

    .line 266
    new-instance p2, Lcom/oculus/video/ui/SubtitleSurfacePainter;

    invoke-direct {p2, p1}, Lcom/oculus/video/ui/SubtitleSurfacePainter;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/oculus/video/OculusExoPlayer;->subtitleSurfacePainter:Lcom/oculus/video/ui/SubtitleSurfacePainter;

    .line 267
    iput-object p3, p0, Lcom/oculus/video/OculusExoPlayer;->eventHandler:Landroid/os/Handler;

    .line 268
    new-instance p2, Lcom/oculus/android/exoplayer2/upstream/DefaultBandwidthMeter;

    sget-object v0, Lcom/oculus/video/OculusExoPlayer;->NETWORK_LISTENER:Lcom/oculus/video/OculusExoPlayer$NetworkListener;

    .line 269
    invoke-static {}, Lcom/oculus/video/Settings;->getBandwidthMeterMaxWeight()I

    move-result v1

    invoke-direct {p2, p3, v0, v1}, Lcom/oculus/android/exoplayer2/upstream/DefaultBandwidthMeter;-><init>(Landroid/os/Handler;Lcom/oculus/android/exoplayer2/upstream/BandwidthMeter$EventListener;I)V

    iput-object p2, p0, Lcom/oculus/video/OculusExoPlayer;->bandwidthMeter:Lcom/oculus/android/exoplayer2/upstream/DefaultBandwidthMeter;

    .line 271
    sget-object p2, Lcom/oculus/video/OculusExoPlayer;->oculusExoPlayerCache:Lcom/oculus/android/exoplayer2/upstream/cache/Cache;

    if-nez p2, :cond_0

    .line 272
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p1

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object p1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 273
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 274
    new-instance p2, Lcom/oculus/android/exoplayer2/upstream/cache/SimpleCache;

    new-instance p3, Ljava/io/File;

    invoke-direct {p3, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance p1, Lcom/oculus/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;

    const-wide/32 v0, 0x20000000

    invoke-direct {p1, v0, v1}, Lcom/oculus/android/exoplayer2/upstream/cache/LeastRecentlyUsedCacheEvictor;-><init>(J)V

    invoke-direct {p2, p3, p1}, Lcom/oculus/android/exoplayer2/upstream/cache/SimpleCache;-><init>(Ljava/io/File;Lcom/oculus/android/exoplayer2/upstream/cache/CacheEvictor;)V

    sput-object p2, Lcom/oculus/video/OculusExoPlayer;->oculusExoPlayerCache:Lcom/oculus/android/exoplayer2/upstream/cache/Cache;

    .line 278
    :cond_0
    new-instance p1, Lcom/oculus/video/OculusExoPlayer$1;

    invoke-direct {p1, p0}, Lcom/oculus/video/OculusExoPlayer$1;-><init>(Lcom/oculus/video/OculusExoPlayer;)V

    iput-object p1, p0, Lcom/oculus/video/OculusExoPlayer;->oculusCacheDataSourceCallback:Lcom/oculus/video/upstream/OculusCacheDataSource$Callback;

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/video/OculusExoPlayer;)Z
    .locals 0

    .line 130
    iget-boolean p0, p0, Lcom/oculus/video/OculusExoPlayer;->useDataCache:Z

    return p0
.end method

.method static synthetic access$1000(Lcom/oculus/video/OculusExoPlayer;)J
    .locals 2

    .line 130
    iget-wide v0, p0, Lcom/oculus/video/OculusExoPlayer;->frameDropReportStartTimeMs:J

    return-wide v0
.end method

.method static synthetic access$1002(Lcom/oculus/video/OculusExoPlayer;J)J
    .locals 0

    .line 130
    iput-wide p1, p0, Lcom/oculus/video/OculusExoPlayer;->frameDropReportStartTimeMs:J

    return-wide p1
.end method

.method static synthetic access$1100(Lcom/oculus/video/OculusExoPlayer;Lcom/oculus/video/projection/VideoProjection;)V
    .locals 0

    .line 130
    invoke-direct {p0, p1}, Lcom/oculus/video/OculusExoPlayer;->onTryExtractVideoProjection(Lcom/oculus/video/projection/VideoProjection;)V

    return-void
.end method

.method static synthetic access$1200(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/video/projection/VideoProjection;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/oculus/video/OculusExoPlayer;->projectionMetadata:Lcom/oculus/video/projection/VideoProjection;

    return-object p0
.end method

.method static synthetic access$1300(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/android/exoplayer2/Renderer;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/oculus/video/OculusExoPlayer;->videoRenderer:Lcom/oculus/android/exoplayer2/Renderer;

    return-object p0
.end method

.method static synthetic access$1400(Lcom/oculus/video/OculusExoPlayer;)Ljava/util/Map;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/oculus/video/OculusExoPlayer;->fbVqmMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1500(Lcom/oculus/video/OculusExoPlayer;)J
    .locals 2

    .line 130
    invoke-direct {p0}, Lcom/oculus/video/OculusExoPlayer;->getRemainingReleasedFrameCount()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1600(Lcom/oculus/video/OculusExoPlayer;)J
    .locals 2

    .line 130
    invoke-direct {p0}, Lcom/oculus/video/OculusExoPlayer;->getRemainingConsumedFrameCount()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$1700(Lcom/oculus/video/OculusExoPlayer;)J
    .locals 2

    .line 130
    iget-wide v0, p0, Lcom/oculus/video/OculusExoPlayer;->lastRecordedConsumedFrameCount:J

    return-wide v0
.end method

.method static synthetic access$1702(Lcom/oculus/video/OculusExoPlayer;J)J
    .locals 0

    .line 130
    iput-wide p1, p0, Lcom/oculus/video/OculusExoPlayer;->lastRecordedConsumedFrameCount:J

    return-wide p1
.end method

.method static synthetic access$1800(Lcom/oculus/video/OculusExoPlayer;)Ljava/util/Map;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/oculus/video/OculusExoPlayer;->projectionMap:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$1900(Lcom/oculus/video/OculusExoPlayer;)Ljava/util/List;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/oculus/video/OculusExoPlayer;->audioRenderers:Ljava/util/List;

    return-object p0
.end method

.method static synthetic access$200()Lcom/oculus/android/exoplayer2/upstream/cache/Cache;
    .locals 1

    .line 130
    sget-object v0, Lcom/oculus/video/OculusExoPlayer;->oculusExoPlayerCache:Lcom/oculus/android/exoplayer2/upstream/cache/Cache;

    return-object v0
.end method

.method static synthetic access$2000(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/video/ui/SubtitleSurfacePainter;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/oculus/video/OculusExoPlayer;->subtitleSurfacePainter:Lcom/oculus/video/ui/SubtitleSurfacePainter;

    return-object p0
.end method

.method static synthetic access$2100()Ljava/lang/String;
    .locals 1

    .line 130
    sget-object v0, Lcom/oculus/video/OculusExoPlayer;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2200(Lcom/oculus/video/OculusExoPlayer;)J
    .locals 2

    .line 130
    iget-wide v0, p0, Lcom/oculus/video/OculusExoPlayer;->lastSlidingBitrate:J

    return-wide v0
.end method

.method static synthetic access$2202(Lcom/oculus/video/OculusExoPlayer;J)J
    .locals 0

    .line 130
    iput-wide p1, p0, Lcom/oculus/video/OculusExoPlayer;->lastSlidingBitrate:J

    return-wide p1
.end method

.method static synthetic access$2300(Lcom/oculus/android/exoplayer2/Format;)Ljava/util/Map;
    .locals 0

    .line 130
    invoke-static {p0}, Lcom/oculus/video/OculusExoPlayer;->getFormatData(Lcom/oculus/android/exoplayer2/Format;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2400(Lcom/oculus/video/OculusExoPlayer;Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Ljava/util/Map;
    .locals 0

    .line 130
    invoke-direct {p0, p1}, Lcom/oculus/video/OculusExoPlayer;->getMediaPlaylistData(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2500(Lcom/oculus/video/OculusExoPlayer;Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;)Ljava/util/Map;
    .locals 0

    .line 130
    invoke-direct {p0, p1}, Lcom/oculus/video/OculusExoPlayer;->getDashPlaylistData(Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;)Ljava/util/Map;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2600(Lcom/oculus/video/OculusExoPlayer;)Ljava/lang/String;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/oculus/video/OculusExoPlayer;->bitratePreferenceKey:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$2700(Lcom/oculus/video/OculusExoPlayer;)V
    .locals 0

    .line 130
    invoke-direct {p0}, Lcom/oculus/video/OculusExoPlayer;->resetPlaybackProperties()V

    return-void
.end method

.method static synthetic access$2800(Lcom/oculus/video/OculusExoPlayer;)Ljava/util/SortedSet;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/oculus/video/OculusExoPlayer;->keyFrameTimestampsUs:Ljava/util/SortedSet;

    return-object p0
.end method

.method static synthetic access$300(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/video/OculusExoPlayer$DashUpdateListener;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/oculus/video/OculusExoPlayer;->dashUpdateListener:Lcom/oculus/video/OculusExoPlayer$DashUpdateListener;

    return-object p0
.end method

.method static synthetic access$302(Lcom/oculus/video/OculusExoPlayer;Lcom/oculus/video/OculusExoPlayer$DashUpdateListener;)Lcom/oculus/video/OculusExoPlayer$DashUpdateListener;
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/oculus/video/OculusExoPlayer;->dashUpdateListener:Lcom/oculus/video/OculusExoPlayer$DashUpdateListener;

    return-object p1
.end method

.method static synthetic access$500(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/video/VideoPlayer$EventListener;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/oculus/video/OculusExoPlayer;->eventListener:Lcom/oculus/video/VideoPlayer$EventListener;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/video/trackselection/OculusTrackSelectorManager;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/oculus/video/OculusExoPlayer;->trackSelectorManager:Lcom/oculus/video/trackselection/OculusTrackSelectorManager;

    return-object p0
.end method

.method static synthetic access$800(Lcom/oculus/video/OculusExoPlayer;)Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;
    .locals 0

    .line 130
    iget-object p0, p0, Lcom/oculus/video/OculusExoPlayer;->videoDecoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    return-object p0
.end method

.method static synthetic access$802(Lcom/oculus/video/OculusExoPlayer;Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;)Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;
    .locals 0

    .line 130
    iput-object p1, p0, Lcom/oculus/video/OculusExoPlayer;->videoDecoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    return-object p1
.end method

.method static synthetic access$902(Lcom/oculus/video/OculusExoPlayer;J)J
    .locals 0

    .line 130
    iput-wide p1, p0, Lcom/oculus/video/OculusExoPlayer;->lastRecordedReleasedFrameCount:J

    return-wide p1
.end method

.method private buildDashManifestMediaSource(Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;)Lcom/oculus/android/exoplayer2/source/MediaSource;
    .locals 2

    .line 1222
    instance-of v0, p1, Lcom/oculus/video/source/dash/OculusDashManifest;

    if-eqz v0, :cond_0

    .line 1223
    move-object v0, p1

    check-cast v0, Lcom/oculus/video/source/dash/OculusDashManifest;

    .line 1224
    invoke-static {v0}, Lcom/oculus/video/projection/VideoProjection;->fromFBProjection(Lcom/oculus/video/source/dash/OculusDashManifest;)Lcom/oculus/video/projection/VideoProjection;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oculus/video/OculusExoPlayer;->onTryExtractVideoProjection(Lcom/oculus/video/projection/VideoProjection;)V

    .line 1225
    iget-object v1, v0, Lcom/oculus/video/source/dash/OculusDashManifest;->fbVqmMap:Ljava/util/Map;

    iput-object v1, p0, Lcom/oculus/video/OculusExoPlayer;->fbVqmMap:Ljava/util/Map;

    .line 1226
    iget-object v0, v0, Lcom/oculus/video/source/dash/OculusDashManifest;->projectionMap:Ljava/util/Map;

    iput-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->projectionMap:Ljava/util/Map;

    .line 1229
    :cond_0
    new-instance v0, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;

    new-instance v1, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;

    invoke-direct {v1, p2}, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;-><init>(Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;)V

    const/4 p2, 0x0

    invoke-direct {v0, v1, p2}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/oculus/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;)V

    iget-object v1, p0, Lcom/oculus/video/OculusExoPlayer;->eventHandler:Landroid/os/Handler;

    .line 1231
    invoke-virtual {v0, p1, v1, p2}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;->createMediaSource(Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;Landroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;)Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;

    move-result-object p1

    return-object p1
.end method

.method private buildDrmSessionManager(Lcom/oculus/video/Video;)Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/video/Video;",
            ")",
            "Lcom/oculus/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/oculus/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    .line 560
    invoke-virtual {p1}, Lcom/oculus/video/Video;->getDrmProxyUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 562
    :try_start_0
    sget-object v0, Lcom/oculus/android/exoplayer2/C;->WIDEVINE_UUID:Ljava/util/UUID;

    invoke-direct {p0, p1, v0, v1}, Lcom/oculus/video/OculusExoPlayer;->buildDrmSessionManager(Lcom/oculus/video/Video;Ljava/util/UUID;[Ljava/lang/String;)Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;

    move-result-object p1
    :try_end_0
    .catch Lcom/oculus/android/exoplayer2/drm/UnsupportedDrmException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 567
    sget v0, Lcom/oculus/android/exoplayer2/util/Util;->SDK_INT:I

    const/16 v2, 0x12

    if-ge v0, v2, :cond_0

    const-string p1, "DRM not supported"

    goto :goto_0

    :cond_0
    iget p1, p1, Lcom/oculus/android/exoplayer2/drm/UnsupportedDrmException;->reason:I

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    const-string p1, "DRM Scheme not supported"

    goto :goto_0

    :cond_1
    const-string p1, "Unknown DRM Issue"

    .line 571
    :goto_0
    sget-object v0, Lcom/oculus/video/OculusExoPlayer;->TAG:Ljava/lang/String;

    invoke-static {v0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    return-object v1
.end method

.method private buildDrmSessionManager(Lcom/oculus/video/Video;Ljava/util/UUID;[Ljava/lang/String;)Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/video/Video;",
            "Ljava/util/UUID;",
            "[",
            "Ljava/lang/String;",
            ")",
            "Lcom/oculus/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/oculus/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/android/exoplayer2/drm/UnsupportedDrmException;
        }
    .end annotation

    .line 978
    sget v0, Lcom/oculus/android/exoplayer2/util/Util;->SDK_INT:I

    const/4 v1, 0x0

    const/16 v2, 0x12

    if-lt v0, v2, :cond_3

    invoke-virtual {p1}, Lcom/oculus/video/Video;->getDrmProxyUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_2

    .line 982
    :cond_0
    new-instance v0, Lcom/oculus/video/drm/OculusHttpMediaDrmCallback;

    invoke-virtual {p1}, Lcom/oculus/video/Video;->getDrmProxyUrl()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    .line 983
    invoke-direct {p0, p1, v3}, Lcom/oculus/video/OculusExoPlayer;->buildHttpDataSourceFactory(Lcom/oculus/video/Video;Z)Lcom/oculus/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object v4

    invoke-direct {v0, v2, v4}, Lcom/oculus/video/drm/OculusHttpMediaDrmCallback;-><init>(Ljava/lang/String;Lcom/oculus/android/exoplayer2/upstream/HttpDataSource$Factory;)V

    if-eqz p3, :cond_1

    .line 985
    :goto_0
    array-length v2, p3

    add-int/lit8 v2, v2, -0x1

    if-ge v3, v2, :cond_1

    .line 986
    move-object v2, v0

    check-cast v2, Lcom/oculus/video/drm/OculusHttpMediaDrmCallback;

    aget-object v4, p3, v3

    add-int/lit8 v5, v3, 0x1

    aget-object v5, p3, v5

    invoke-virtual {v2, v4, v5}, Lcom/oculus/video/drm/OculusHttpMediaDrmCallback;->setKeyRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    add-int/lit8 v3, v3, 0x2

    goto :goto_0

    .line 992
    :cond_1
    iget-object p3, p0, Lcom/oculus/video/OculusExoPlayer;->eventHandler:Landroid/os/Handler;

    .line 993
    invoke-static {p2, v0, v1, p3, v1}, Lcom/oculus/android/exoplayer2/drm/DefaultDrmSessionManager;->newFrameworkInstance(Ljava/util/UUID;Lcom/oculus/android/exoplayer2/drm/MediaDrmCallback;Ljava/util/HashMap;Landroid/os/Handler;Lcom/oculus/android/exoplayer2/drm/DefaultDrmSessionManager$EventListener;)Lcom/oculus/android/exoplayer2/drm/DefaultDrmSessionManager;

    move-result-object p2

    .line 994
    invoke-virtual {p1}, Lcom/oculus/video/Video;->getDrmSecurityLevel()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_2

    :try_start_0
    const-string p3, "securityLevel"

    .line 997
    invoke-virtual {p1}, Lcom/oculus/video/Video;->getDrmSecurityLevel()Ljava/lang/String;

    move-result-object p1

    .line 996
    invoke-virtual {p2, p3, p1}, Lcom/oculus/android/exoplayer2/drm/DefaultDrmSessionManager;->setPropertyString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 999
    :catch_0
    sget-object p1, Lcom/oculus/video/OculusExoPlayer;->TAG:Ljava/lang/String;

    const-string p3, "Failed to set securityLevel property for defaultDrmSessionManager"

    invoke-static {p1, p3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_1
    return-object p2

    :cond_3
    :goto_2
    return-object v1
.end method

.method private buildExoPlayer2([Lcom/oculus/android/exoplayer2/Renderer;Lcom/oculus/video/Video;)V
    .locals 2

    .line 949
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    return-void

    .line 952
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->trackSelectorManager:Lcom/oculus/video/trackselection/OculusTrackSelectorManager;

    .line 953
    invoke-virtual {v0}, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;->getTrackSelector()Lcom/oculus/video/trackselection/OculusTrackSelector;

    move-result-object v0

    new-instance v1, Lcom/oculus/video/OculusLoadControl;

    invoke-direct {v1}, Lcom/oculus/video/OculusLoadControl;-><init>()V

    .line 952
    invoke-static {p1, v0, v1}, Lcom/oculus/android/exoplayer2/ExoPlayerFactory;->newInstance([Lcom/oculus/android/exoplayer2/Renderer;Lcom/oculus/android/exoplayer2/trackselection/TrackSelector;Lcom/oculus/android/exoplayer2/LoadControl;)Lcom/oculus/android/exoplayer2/ExoPlayer;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/video/OculusExoPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    .line 954
    iget-object p1, p0, Lcom/oculus/video/OculusExoPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->exoPlayer2EventListener:Lcom/oculus/android/exoplayer2/Player$EventListener;

    invoke-interface {p1, v0}, Lcom/oculus/android/exoplayer2/ExoPlayer;->addListener(Lcom/oculus/android/exoplayer2/Player$EventListener;)V

    .line 955
    iget-object p1, p0, Lcom/oculus/video/OculusExoPlayer;->videoSyncMode:Ljava/lang/String;

    const-string v0, "none"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-static {p2}, Lcom/oculus/video/Settings;->useExoPlayerFastSeek(Lcom/oculus/video/Video;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 956
    new-instance p1, Lcom/oculus/android/exoplayer2/SeekParameters;

    const-wide/32 v0, 0x989680

    invoke-direct {p1, v0, v1, v0, v1}, Lcom/oculus/android/exoplayer2/SeekParameters;-><init>(JJ)V

    .line 957
    iget-object p2, p0, Lcom/oculus/video/OculusExoPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    invoke-interface {p2, p1}, Lcom/oculus/android/exoplayer2/ExoPlayer;->setSeekParameters(Lcom/oculus/android/exoplayer2/SeekParameters;)V

    .line 959
    :cond_1
    iget-object p1, p0, Lcom/oculus/video/OculusExoPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    iget-object p2, p0, Lcom/oculus/video/OculusExoPlayer;->videoRenderer:Lcom/oculus/android/exoplayer2/Renderer;

    .line 960
    invoke-interface {p1, p2}, Lcom/oculus/android/exoplayer2/ExoPlayer;->createMessage(Lcom/oculus/android/exoplayer2/PlayerMessage$Target;)Lcom/oculus/android/exoplayer2/PlayerMessage;

    move-result-object p1

    const/4 p2, 0x1

    .line 961
    invoke-virtual {p1, p2}, Lcom/oculus/android/exoplayer2/PlayerMessage;->setType(I)Lcom/oculus/android/exoplayer2/PlayerMessage;

    move-result-object p1

    iget-object p2, p0, Lcom/oculus/video/OculusExoPlayer;->videoSurface:Landroid/view/Surface;

    .line 962
    invoke-virtual {p1, p2}, Lcom/oculus/android/exoplayer2/PlayerMessage;->setPayload(Ljava/lang/Object;)Lcom/oculus/android/exoplayer2/PlayerMessage;

    move-result-object p1

    .line 963
    invoke-virtual {p1}, Lcom/oculus/android/exoplayer2/PlayerMessage;->send()Lcom/oculus/android/exoplayer2/PlayerMessage;

    return-void
.end method

.method private buildHttpDataSourceFactory(Lcom/oculus/video/Video;Z)Lcom/oculus/android/exoplayer2/upstream/HttpDataSource$Factory;
    .locals 4

    .line 1014
    new-instance v0, Lcom/oculus/video/upstream/OculusHttpDataSourceFactory;

    if-eqz p2, :cond_0

    sget-object p2, Lcom/oculus/video/OculusExoPlayer;->NETWORK_LISTENER:Lcom/oculus/video/OculusExoPlayer$NetworkListener;

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    const-string v1, "oculus_video_sdk"

    invoke-direct {v0, v1, p2}, Lcom/oculus/video/upstream/OculusHttpDataSourceFactory;-><init>(Ljava/lang/String;Lcom/oculus/android/exoplayer2/upstream/TransferListener;)V

    .line 1017
    invoke-virtual {p1}, Lcom/oculus/video/Video;->getHttpRequestHeaders()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1019
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object p2

    .line 1020
    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/upstream/HttpDataSource$Factory;->getDefaultRequestProperties()Lcom/oculus/android/exoplayer2/upstream/HttpDataSource$RequestProperties;

    move-result-object v1

    .line 1021
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1023
    :try_start_0
    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1024
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oculus/android/exoplayer2/upstream/HttpDataSource$RequestProperties;->set(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    nop

    goto :goto_1

    :cond_1
    return-object v0
.end method

.method private buildMediaSource(Lcom/oculus/video/Video;)Lcom/oculus/android/exoplayer2/source/MediaSource;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1185
    invoke-static {p1}, Lcom/oculus/video/Settings;->useDataCache(Lcom/oculus/video/Video;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/video/OculusExoPlayer;->useDataCache:Z

    .line 1187
    new-instance v0, Lcom/oculus/video/upstream/OculusDataSourceFactory;

    iget-object v1, p0, Lcom/oculus/video/OculusExoPlayer;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/oculus/video/OculusExoPlayer;->bandwidthMeter:Lcom/oculus/android/exoplayer2/upstream/DefaultBandwidthMeter;

    const/4 v3, 0x1

    .line 1190
    invoke-direct {p0, p1, v3}, Lcom/oculus/video/OculusExoPlayer;->buildHttpDataSourceFactory(Lcom/oculus/video/Video;Z)Lcom/oculus/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object v4

    iget-object v5, p0, Lcom/oculus/video/OculusExoPlayer;->oculusCacheDataSourceCallback:Lcom/oculus/video/upstream/OculusCacheDataSource$Callback;

    invoke-direct {v0, v1, v2, v4, v5}, Lcom/oculus/video/upstream/OculusDataSourceFactory;-><init>(Landroid/content/Context;Lcom/oculus/android/exoplayer2/upstream/TransferListener;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;Lcom/oculus/video/upstream/OculusCacheDataSource$Callback;)V

    .line 1192
    new-instance v1, Lcom/oculus/video/upstream/OculusDataSourceFactory;

    iget-object v2, p0, Lcom/oculus/video/OculusExoPlayer;->context:Landroid/content/Context;

    const/4 v4, 0x0

    .line 1195
    invoke-direct {p0, p1, v4}, Lcom/oculus/video/OculusExoPlayer;->buildHttpDataSourceFactory(Lcom/oculus/video/Video;Z)Lcom/oculus/android/exoplayer2/upstream/HttpDataSource$Factory;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v2, v5, v4, v5}, Lcom/oculus/video/upstream/OculusDataSourceFactory;-><init>(Landroid/content/Context;Lcom/oculus/android/exoplayer2/upstream/TransferListener;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;Lcom/oculus/video/upstream/OculusCacheDataSource$Callback;)V

    .line 1199
    invoke-virtual {p1}, Lcom/oculus/video/Video;->getDashManifest()Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1200
    invoke-virtual {p1}, Lcom/oculus/video/Video;->getDashManifest()Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/oculus/video/OculusExoPlayer;->buildDashManifestMediaSource(Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;)Lcom/oculus/android/exoplayer2/source/MediaSource;

    move-result-object v1

    goto :goto_0

    .line 1202
    :cond_0
    invoke-direct {p0, p1, v5, v0, v1}, Lcom/oculus/video/OculusExoPlayer;->buildUriMediaSource(Lcom/oculus/video/Video;Ljava/lang/String;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;)Lcom/oculus/android/exoplayer2/source/MediaSource;

    move-result-object v1

    .line 1208
    :goto_0
    invoke-direct {p0, p1, v0}, Lcom/oculus/video/OculusExoPlayer;->buildSubtitleMediaSource(Lcom/oculus/video/Video;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;)Ljava/util/ArrayList;

    move-result-object p1

    .line 1210
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1211
    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1212
    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1214
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-le p1, v3, :cond_1

    new-instance v1, Lcom/oculus/android/exoplayer2/source/MergingMediaSource;

    .line 1215
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Lcom/oculus/android/exoplayer2/source/MediaSource;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/oculus/android/exoplayer2/source/MediaSource;

    invoke-direct {v1, p1}, Lcom/oculus/android/exoplayer2/source/MergingMediaSource;-><init>([Lcom/oculus/android/exoplayer2/source/MediaSource;)V

    :cond_1
    return-object v1
.end method

.method private buildRenderers(Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;Lcom/oculus/video/Video;)[Lcom/oculus/android/exoplayer2/Renderer;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/oculus/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;",
            "Lcom/oculus/video/Video;",
            ")[",
            "Lcom/oculus/android/exoplayer2/Renderer;"
        }
    .end annotation

    .line 1136
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1138
    invoke-direct {p0, p2, p1}, Lcom/oculus/video/OculusExoPlayer;->getVideoRenderer(Lcom/oculus/video/Video;Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;)Lcom/oculus/android/exoplayer2/Renderer;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/video/OculusExoPlayer;->videoRenderer:Lcom/oculus/android/exoplayer2/Renderer;

    .line 1139
    iget-object v1, p0, Lcom/oculus/video/OculusExoPlayer;->videoRenderer:Lcom/oculus/android/exoplayer2/Renderer;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1141
    invoke-direct {p0, p2, p1}, Lcom/oculus/video/OculusExoPlayer;->getAudioRenderers(Lcom/oculus/video/Video;Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/video/OculusExoPlayer;->audioRenderers:Ljava/util/List;

    .line 1142
    iget-object p1, p0, Lcom/oculus/video/OculusExoPlayer;->audioRenderers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 1144
    new-instance p1, Lcom/oculus/android/exoplayer2/text/TextRenderer;

    iget-object p2, p0, Lcom/oculus/video/OculusExoPlayer;->subtitleOutput:Lcom/oculus/android/exoplayer2/text/TextOutput;

    iget-object v1, p0, Lcom/oculus/video/OculusExoPlayer;->eventHandler:Landroid/os/Handler;

    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {p1, p2, v1}, Lcom/oculus/android/exoplayer2/text/TextRenderer;-><init>(Lcom/oculus/android/exoplayer2/text/TextOutput;Landroid/os/Looper;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1146
    new-instance p1, Lcom/oculus/video/metadata/OculusMetadataRenderer;

    iget-object p2, p0, Lcom/oculus/video/OculusExoPlayer;->cameraMotionDataListener:Lcom/oculus/android/exoplayer2/metadata/MetadataOutput;

    iget-object v1, p0, Lcom/oculus/video/OculusExoPlayer;->eventHandler:Landroid/os/Handler;

    .line 1148
    invoke-virtual {v1}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    new-instance v2, Lcom/oculus/video/metadata/OculusMetadataDecoderFactory;

    invoke-direct {v2}, Lcom/oculus/video/metadata/OculusMetadataDecoderFactory;-><init>()V

    invoke-direct {p1, p2, v1, v2}, Lcom/oculus/video/metadata/OculusMetadataRenderer;-><init>(Lcom/oculus/android/exoplayer2/metadata/MetadataOutput;Landroid/os/Looper;Lcom/oculus/android/exoplayer2/metadata/MetadataDecoderFactory;)V

    .line 1146
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1151
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Lcom/oculus/android/exoplayer2/Renderer;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Lcom/oculus/android/exoplayer2/Renderer;

    return-object p1
.end method

.method private buildSubtitleMediaSource(Lcom/oculus/video/Video;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;)Ljava/util/ArrayList;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/video/Video;",
            "Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;",
            ")",
            "Ljava/util/ArrayList<",
            "Lcom/oculus/android/exoplayer2/source/MediaSource;",
            ">;"
        }
    .end annotation

    .line 1279
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1280
    invoke-virtual {p1}, Lcom/oculus/video/Video;->getSubtitleTracks()Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 1282
    invoke-virtual {p1}, Lorg/json/JSONObject;->keys()Ljava/util/Iterator;

    move-result-object v1

    .line 1283
    :catch_0
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1284
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1285
    invoke-static {v2}, Lcom/oculus/video/Video;->extractSubtitleMimeType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1288
    :try_start_0
    new-instance v4, Lcom/oculus/android/exoplayer2/source/SingleSampleMediaSource$Factory;

    invoke-direct {v4, p2}, Lcom/oculus/android/exoplayer2/source/SingleSampleMediaSource$Factory;-><init>(Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;)V

    .line 1291
    invoke-direct {p0, v2}, Lcom/oculus/video/OculusExoPlayer;->buildSubtitleUri(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v6, 0x0

    .line 1293
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1292
    invoke-static {v2, v3, v6, v7}, Lcom/oculus/android/exoplayer2/Format;->createTextSampleFormat(Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Lcom/oculus/android/exoplayer2/Format;

    move-result-object v2

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    .line 1290
    invoke-virtual {v4, v5, v2, v6, v7}, Lcom/oculus/android/exoplayer2/source/SingleSampleMediaSource$Factory;->createMediaSource(Landroid/net/Uri;Lcom/oculus/android/exoplayer2/Format;J)Lcom/oculus/android/exoplayer2/source/SingleSampleMediaSource;

    move-result-object v2

    .line 1295
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_1
    return-object v0
.end method

.method private buildSubtitleUri(Ljava/lang/String;)Landroid/net/Uri;
    .locals 2

    const-string v0, "/"

    .line 1274
    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    return-object p1
.end method

.method private buildTrackSelectorManager(Lcom/oculus/video/Video;)V
    .locals 4

    .line 932
    invoke-virtual {p1}, Lcom/oculus/video/Video;->getVideoUrl()Ljava/lang/String;

    move-result-object v0

    .line 933
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "file://"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 934
    :goto_0
    sget-object v1, Lcom/oculus/video/OculusExoPlayer;->NETWORK_LISTENER:Lcom/oculus/video/OculusExoPlayer$NetworkListener;

    iget-object v2, p0, Lcom/oculus/video/OculusExoPlayer;->eventListener:Lcom/oculus/video/VideoPlayer$EventListener;

    iget-object v3, p0, Lcom/oculus/video/OculusExoPlayer;->bandwidthMeter:Lcom/oculus/android/exoplayer2/upstream/DefaultBandwidthMeter;

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->bandwidthMeterListener:Lcom/oculus/android/exoplayer2/upstream/BandwidthMeter$EventListener;

    :goto_1
    invoke-virtual {v1, v2, v3, v0}, Lcom/oculus/video/OculusExoPlayer$NetworkListener;->reset(Lcom/oculus/video/VideoPlayer$EventListener;Lcom/oculus/android/exoplayer2/upstream/TransferListener;Lcom/oculus/android/exoplayer2/upstream/BandwidthMeter$EventListener;)V

    .line 939
    :try_start_0
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->eventListener:Lcom/oculus/video/VideoPlayer$EventListener;

    iget-object v1, p0, Lcom/oculus/video/OculusExoPlayer;->bitratePreferenceKey:Ljava/lang/String;

    .line 940
    invoke-interface {v0, v1}, Lcom/oculus/video/VideoPlayer$EventListener;->getStringPreference(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 939
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    const-wide/16 v0, -0x1

    .line 944
    :goto_2
    new-instance v2, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;

    iget-object v3, p0, Lcom/oculus/video/OculusExoPlayer;->bandwidthMeter:Lcom/oculus/android/exoplayer2/upstream/DefaultBandwidthMeter;

    .line 945
    invoke-virtual {p1}, Lcom/oculus/video/Video;->getAudioChannelLayout()Lcom/oculus/video/audio/AudioChannelLayout;

    move-result-object p1

    invoke-direct {v2, v3, p1, v0, v1}, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;-><init>(Lcom/oculus/android/exoplayer2/upstream/DefaultBandwidthMeter;Lcom/oculus/video/audio/AudioChannelLayout;J)V

    iput-object v2, p0, Lcom/oculus/video/OculusExoPlayer;->trackSelectorManager:Lcom/oculus/video/trackselection/OculusTrackSelectorManager;

    return-void
.end method

.method private buildUriMediaSource(Lcom/oculus/video/Video;Ljava/lang/String;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;)Lcom/oculus/android/exoplayer2/source/MediaSource;
    .locals 7

    .line 1237
    invoke-virtual {p1}, Lcom/oculus/video/Video;->getVideoUri()Landroid/net/Uri;

    move-result-object v2

    .line 1238
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {v2}, Lcom/oculus/android/exoplayer2/util/Util;->inferContentType(Landroid/net/Uri;)I

    move-result p2

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1239
    invoke-static {p2}, Lcom/oculus/android/exoplayer2/util/Util;->inferContentType(Ljava/lang/String;)I

    move-result p2

    :goto_0
    const/4 v0, 0x0

    if-eqz p2, :cond_4

    const/4 v1, 0x1

    if-eq p2, v1, :cond_3

    const/4 p4, 0x2

    if-eq p2, p4, :cond_2

    const/4 p1, 0x3

    if-ne p2, p1, :cond_1

    .line 1259
    new-instance p1, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;

    iget-object v1, p0, Lcom/oculus/video/OculusExoPlayer;->context:Landroid/content/Context;

    new-instance p2, Lcom/oculus/video/extractor/OculusExtractorsFactory;

    invoke-direct {p2}, Lcom/oculus/video/extractor/OculusExtractorsFactory;-><init>()V

    iget-object p4, p0, Lcom/oculus/video/OculusExoPlayer;->extractorEventListener:Lcom/oculus/video/extractor/OculusExtractorsFactory$EventListener;

    .line 1263
    invoke-virtual {p2, p4}, Lcom/oculus/video/extractor/OculusExtractorsFactory;->setExtractorEventListener(Lcom/oculus/video/extractor/OculusExtractorsFactory$EventListener;)Lcom/oculus/video/extractor/OculusExtractorsFactory;

    move-result-object v4

    iget-object v5, p0, Lcom/oculus/video/OculusExoPlayer;->eventHandler:Landroid/os/Handler;

    const/4 v6, 0x0

    move-object v0, p1

    move-object v3, p3

    invoke-direct/range {v0 .. v6}, Lcom/oculus/video/extractor/source/OculusExtractorMediaSource;-><init>(Landroid/content/Context;Landroid/net/Uri;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;Lcom/oculus/android/exoplayer2/extractor/ExtractorsFactory;Landroid/os/Handler;Lcom/oculus/video/extractor/source/OculusExtractorMediaSource$EventListener;)V

    return-object p1

    .line 1268
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Unsupported type: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 1254
    :cond_2
    new-instance p2, Lcom/oculus/video/source/hls/OculusHlsMediaSource$Factory;

    invoke-direct {p2, p3}, Lcom/oculus/video/source/hls/OculusHlsMediaSource$Factory;-><init>(Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;)V

    new-instance p3, Lcom/oculus/video/source/hls/OculusHlsPlaylistParser;

    .line 1255
    invoke-virtual {p1}, Lcom/oculus/video/Video;->getAes128Key()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Lcom/oculus/video/Video;->getAes128Iv()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p3, p4, p1}, Lcom/oculus/video/source/hls/OculusHlsPlaylistParser;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2, p3}, Lcom/oculus/video/source/hls/OculusHlsMediaSource$Factory;->setPlaylistParser(Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;)Lcom/oculus/video/source/hls/OculusHlsMediaSource$Factory;

    move-result-object p1

    iget-object p2, p0, Lcom/oculus/video/OculusExoPlayer;->eventHandler:Landroid/os/Handler;

    iget-object p3, p0, Lcom/oculus/video/OculusExoPlayer;->primaryHlsPlaylistListener:Lcom/oculus/video/OculusExoPlayer$PrimaryHlsPlaylistListener;

    .line 1256
    invoke-virtual {p1, v2, p2, v0, p3}, Lcom/oculus/video/source/hls/OculusHlsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;Landroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;Lcom/oculus/video/source/hls/OculusHlsPlaylistTracker$PrimaryPlaylistListener;)Lcom/oculus/video/source/hls/OculusHlsMediaSource;

    move-result-object p1

    return-object p1

    .line 1243
    :cond_3
    new-instance p1, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;

    new-instance p2, Lcom/oculus/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;

    invoke-direct {p2, p3}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/DefaultSsChunkSource$Factory;-><init>(Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-direct {p1, p2, p4}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;-><init>(Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsChunkSource$Factory;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;)V

    iget-object p2, p0, Lcom/oculus/video/OculusExoPlayer;->eventHandler:Landroid/os/Handler;

    .line 1245
    invoke-virtual {p1, v2, p2, v0}, Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource$Factory;->createMediaSource(Landroid/net/Uri;Landroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;)Lcom/oculus/android/exoplayer2/source/smoothstreaming/SsMediaSource;

    move-result-object p1

    return-object p1

    .line 1248
    :cond_4
    new-instance p1, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;

    new-instance p2, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;

    invoke-direct {p2, p3}, Lcom/oculus/android/exoplayer2/source/dash/DefaultDashChunkSource$Factory;-><init>(Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;)V

    invoke-direct {p1, p2, p4}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;-><init>(Lcom/oculus/android/exoplayer2/source/dash/DashChunkSource$Factory;Lcom/oculus/android/exoplayer2/upstream/DataSource$Factory;)V

    new-instance p2, Lcom/oculus/video/source/dash/OculusDashManifestParser;

    invoke-direct {p2}, Lcom/oculus/video/source/dash/OculusDashManifestParser;-><init>()V

    .line 1250
    invoke-virtual {p1, p2}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;->setManifestParser(Lcom/oculus/android/exoplayer2/upstream/ParsingLoadable$Parser;)Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;

    move-result-object p1

    iget-object p2, p0, Lcom/oculus/video/OculusExoPlayer;->eventHandler:Landroid/os/Handler;

    .line 1251
    invoke-virtual {p1, v2, p2, v0}, Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource$Factory;->createMediaSource(Landroid/net/Uri;Landroid/os/Handler;Lcom/oculus/android/exoplayer2/source/MediaSourceEventListener;)Lcom/oculus/android/exoplayer2/source/dash/DashMediaSource;

    move-result-object p1

    return-object p1
.end method

.method private getAudioRenderers(Lcom/oculus/video/Video;Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;)Ljava/util/List;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/video/Video;",
            "Lcom/oculus/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/oculus/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;)",
            "Ljava/util/List<",
            "Lcom/oculus/android/exoplayer2/Renderer;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    .line 1062
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1064
    invoke-virtual {p1}, Lcom/oculus/video/Video;->getAudioChannelLayout()Lcom/oculus/video/audio/AudioChannelLayout;

    move-result-object v2

    .line 1069
    invoke-virtual {v2}, Lcom/oculus/video/audio/AudioChannelLayout;->isSpatializationLayout()Z

    move-result v3

    const/4 v4, 0x0

    if-nez v3, :cond_0

    .line 1070
    new-instance v3, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegAudioRenderer;

    iget-object v5, v0, Lcom/oculus/video/OculusExoPlayer;->eventHandler:Landroid/os/Handler;

    iget-object v6, v0, Lcom/oculus/video/OculusExoPlayer;->audioRendererEventListener:Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener;

    new-array v7, v4, [Lcom/oculus/android/exoplayer2/audio/AudioProcessor;

    invoke-direct {v3, v5, v6, v7}, Lcom/oculus/android/exoplayer2/ext/ffmpeg/FfmpegAudioRenderer;-><init>(Landroid/os/Handler;Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener;[Lcom/oculus/android/exoplayer2/audio/AudioProcessor;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1074
    :cond_0
    invoke-static {p1}, Lcom/oculus/video/Settings;->useAudioSpatialization(Lcom/oculus/video/Video;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1075
    invoke-static {v2}, Lcom/oculus/video/audio/TbeAudioSpatializer;->handlesAudioChannelLayout(Lcom/oculus/video/audio/AudioChannelLayout;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1076
    new-instance v3, Lcom/oculus/video/audio/TbeAudioSpatializer;

    invoke-direct {v3, v2}, Lcom/oculus/video/audio/TbeAudioSpatializer;-><init>(Lcom/oculus/video/audio/AudioChannelLayout;)V

    .line 1077
    iget-object v5, v0, Lcom/oculus/video/OculusExoPlayer;->audioSpatializerController:Lcom/oculus/video/audio/AudioSpatializerController;

    invoke-interface {v3, v5}, Lcom/oculus/video/audio/AudioSpatializer;->setAudioSpatializerController(Lcom/oculus/video/audio/AudioSpatializerController;)V

    .line 1079
    sget-object v5, Lcom/oculus/video/audio/AudioChannelLayout;->TBE_4_4_2:Lcom/oculus/video/audio/AudioChannelLayout;

    if-ne v2, v5, :cond_3

    const/4 v2, 0x0

    :goto_0
    const/4 v5, 0x3

    if-ge v2, v5, :cond_2

    .line 1082
    new-instance v13, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;

    const/4 v6, 0x0

    const/4 v7, 0x1

    iget-object v8, v0, Lcom/oculus/video/OculusExoPlayer;->eventHandler:Landroid/os/Handler;

    iget-object v9, v0, Lcom/oculus/video/OculusExoPlayer;->audioRendererEventListener:Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener;

    .line 1088
    invoke-virtual {p1}, Lcom/oculus/video/Video;->getPrimaryAudioTrackIndex()I

    move-result v5

    add-int v11, v5, v2

    if-nez v2, :cond_1

    const/4 v5, 0x1

    const/4 v12, 0x1

    goto :goto_1

    :cond_1
    const/4 v12, 0x0

    :goto_1
    move-object v5, v13

    move-object v10, v3

    invoke-direct/range {v5 .. v12}, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;-><init>(Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener;Lcom/oculus/video/audio/AudioSpatializer;IZ)V

    .line 1082
    invoke-interface {v1, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-object v1

    :cond_3
    if-nez p2, :cond_4

    .line 1095
    invoke-virtual {v2}, Lcom/oculus/video/audio/AudioChannelLayout;->isVirtualizationLayout()Z

    move-result v2

    if-nez v2, :cond_4

    .line 1096
    new-instance v2, Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;

    iget-object v4, v0, Lcom/oculus/video/OculusExoPlayer;->eventHandler:Landroid/os/Handler;

    iget-object v5, v0, Lcom/oculus/video/OculusExoPlayer;->audioRendererEventListener:Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener;

    invoke-direct {v2, v4, v5, v3}, Lcom/oculus/video/renderer/SpatialOpusAudioDeviceRenderer;-><init>(Landroid/os/Handler;Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener;Lcom/oculus/video/audio/AudioSpatializer;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1102
    :cond_4
    new-instance v2, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;

    const/4 v7, 0x1

    iget-object v8, v0, Lcom/oculus/video/OculusExoPlayer;->eventHandler:Landroid/os/Handler;

    iget-object v9, v0, Lcom/oculus/video/OculusExoPlayer;->audioRendererEventListener:Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener;

    move-object v5, v2

    move-object/from16 v6, p2

    move-object v10, v3

    invoke-direct/range {v5 .. v10}, Lcom/oculus/video/renderer/SpatialMediaCodecAudioDeviceRenderer;-><init>(Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener;Lcom/oculus/video/audio/AudioSpatializer;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1111
    :cond_5
    new-instance v2, Lcom/oculus/android/exoplayer2/audio/MediaCodecAudioRenderer;

    sget-object v6, Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecSelector;->DEFAULT:Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecSelector;

    const/4 v8, 0x1

    iget-object v9, v0, Lcom/oculus/video/OculusExoPlayer;->eventHandler:Landroid/os/Handler;

    iget-object v10, v0, Lcom/oculus/video/OculusExoPlayer;->audioRendererEventListener:Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener;

    move-object v5, v2

    move-object/from16 v7, p2

    invoke-direct/range {v5 .. v10}, Lcom/oculus/android/exoplayer2/audio/MediaCodecAudioRenderer;-><init>(Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecSelector;Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/oculus/android/exoplayer2/audio/AudioRendererEventListener;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v1
.end method

.method private getBitratePreferenceKey(Lcom/oculus/video/Video;)Ljava/lang/String;
    .locals 2

    if-nez p1, :cond_0

    const-string p1, "last_reported_bitrate"

    return-object p1

    .line 924
    :cond_0
    invoke-virtual {p1}, Lcom/oculus/video/Video;->getVideoUri()Landroid/net/Uri;

    move-result-object v0

    const-string v1, "last_reported_bitrate|"

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lcom/oculus/video/Video;->getVideoUri()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 925
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oculus/video/Video;->getVideoUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 927
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oculus/video/Video;->getProvider()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oculus/video/Video;->getChannel()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getDashPlaylistData(Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;)Ljava/util/Map;
    .locals 6
    .param p1    # Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 682
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    .line 686
    :cond_0
    iget-boolean v1, p1, Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;->dynamic:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "dash_is_dynamic"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 688
    iget-object v1, p1, Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;->utcTiming:Lcom/oculus/android/exoplayer2/source/dash/manifest/UtcTimingElement;

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 690
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "has_embedded_utc"

    .line 688
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    iget-wide v1, p1, Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;->minBufferTimeMs:J

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v5, v1, v3

    if-eqz v5, :cond_2

    .line 692
    iget-wide v1, p1, Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;->minBufferTimeMs:J

    .line 693
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "dash_min_buffer_time_ms"

    .line 692
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 695
    :cond_2
    iget-wide v1, p1, Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;->minUpdatePeriodMs:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_3

    .line 696
    iget-wide v1, p1, Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;->minUpdatePeriodMs:J

    .line 698
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "dash_min_update_period_ms"

    .line 696
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 700
    :cond_3
    iget-wide v1, p1, Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;->timeShiftBufferDepthMs:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_4

    .line 701
    iget-wide v1, p1, Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;->timeShiftBufferDepthMs:J

    .line 703
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "dash_time_shift_buffer_depth_ms"

    .line 701
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    :cond_4
    iget-wide v1, p1, Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;->timeShiftBufferDepthMs:J

    cmp-long v5, v1, v3

    if-eqz v5, :cond_5

    .line 706
    iget-wide v1, p1, Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;->suggestedPresentationDelayMs:J

    .line 708
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    const-string v1, "dash_suggested_presentation_delay_ms"

    .line 706
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-object v0
.end method

.method private static getFormatData(Lcom/oculus/android/exoplayer2/Format;)Ljava/util/Map;
    .locals 3
    .param p0    # Lcom/oculus/android/exoplayer2/Format;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/android/exoplayer2/Format;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 579
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p0, :cond_0

    return-object v0

    .line 583
    :cond_0
    iget v1, p0, Lcom/oculus/android/exoplayer2/Format;->width:I

    if-lez v1, :cond_1

    .line 584
    iget v1, p0, Lcom/oculus/android/exoplayer2/Format;->width:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "width"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 586
    :cond_1
    iget v1, p0, Lcom/oculus/android/exoplayer2/Format;->height:I

    if-lez v1, :cond_2

    .line 587
    iget v1, p0, Lcom/oculus/android/exoplayer2/Format;->height:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "height"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 589
    :cond_2
    iget v1, p0, Lcom/oculus/android/exoplayer2/Format;->bitrate:I

    if-lez v1, :cond_3

    .line 590
    iget v1, p0, Lcom/oculus/android/exoplayer2/Format;->bitrate:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "bitrate"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 592
    :cond_3
    iget v1, p0, Lcom/oculus/android/exoplayer2/Format;->frameRate:F

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-lez v1, :cond_4

    .line 593
    iget p0, p0, Lcom/oculus/android/exoplayer2/Format;->frameRate:F

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr p0, v1

    float-to-int p0, p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v1, "fps"

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v0
.end method

.method private getMediaPlaylistData(Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;)Ljava/util/Map;
    .locals 8
    .param p1    # Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 600
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    .line 604
    :cond_0
    iget-wide v1, p1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->targetDurationUs:J

    .line 606
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "target_duration_us"

    .line 604
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 609
    iget v1, p1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->playlistType:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_2

    const/4 v3, 0x2

    if-eq v1, v3, :cond_1

    const-string v1, "UNKNOWN"

    goto :goto_0

    :cond_1
    const-string v1, "EVENT"

    goto :goto_0

    :cond_2
    const-string v1, "VOD"

    :goto_0
    const-string v3, "hls_type"

    .line 621
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 623
    iget-boolean v1, p1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->hasProgramDateTime:Z

    .line 624
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "has_embedded_utc"

    .line 623
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 626
    iget-boolean v1, p0, Lcom/oculus/video/OculusExoPlayer;->hasRemoteAES128Key:Z

    .line 627
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "has_remote_key"

    .line 626
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 629
    iget-boolean v1, p0, Lcom/oculus/video/OculusExoPlayer;->hasRemoteAES128IV:Z

    .line 630
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "has_remote_iv"

    .line 629
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 632
    iget-object v1, p1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    const-wide/16 v3, 0x0

    if-eqz v1, :cond_3

    iget-object v1, p1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-long v5, v1

    goto :goto_1

    :cond_3
    move-wide v5, v3

    .line 633
    :goto_1
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v7, "segment_count"

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    cmp-long v1, v5, v3

    if-lez v1, :cond_4

    .line 636
    iget-object p1, p1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist;->segments:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;

    .line 638
    iget-object v1, p1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->fullSegmentEncryptionKeyUri:Ljava/lang/String;

    .line 640
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    xor-int/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v3, "has_embedded_key"

    .line 638
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 642
    iget-object p1, p1, Lcom/oculus/android/exoplayer2/source/hls/playlist/HlsMediaPlaylist$Segment;->encryptionIV:Ljava/lang/String;

    .line 644
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    xor-int/2addr p1, v2

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v1, "has_embedded_iv"

    .line 642
    invoke-interface {v0, v1, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4
    return-object v0
.end method

.method private getRemainingConsumedFrameCount()J
    .locals 4

    .line 1397
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->totalConsumedFrameCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v0

    .line 1398
    iget-wide v2, p0, Lcom/oculus/video/OculusExoPlayer;->lastRecordedConsumedFrameCount:J

    sub-long v2, v0, v2

    .line 1399
    iput-wide v0, p0, Lcom/oculus/video/OculusExoPlayer;->lastRecordedConsumedFrameCount:J

    return-wide v2
.end method

.method private getRemainingReleasedFrameCount()J
    .locals 4

    .line 1383
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->videoDecoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    return-wide v0

    .line 1386
    :cond_0
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->ensureUpdated()V

    .line 1389
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->videoDecoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    iget v0, v0, Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;->renderedOutputBufferCount:I

    int-to-long v0, v0

    .line 1390
    iget-wide v2, p0, Lcom/oculus/video/OculusExoPlayer;->lastRecordedReleasedFrameCount:J

    sub-long v2, v0, v2

    .line 1391
    iput-wide v0, p0, Lcom/oculus/video/OculusExoPlayer;->lastRecordedReleasedFrameCount:J

    return-wide v2
.end method

.method private getVideoRenderer(Lcom/oculus/video/Video;Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;)Lcom/oculus/android/exoplayer2/Renderer;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/video/Video;",
            "Lcom/oculus/android/exoplayer2/drm/DrmSessionManager<",
            "Lcom/oculus/android/exoplayer2/drm/FrameworkMediaCrypto;",
            ">;)",
            "Lcom/oculus/android/exoplayer2/Renderer;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1036
    invoke-static {}, Lcom/oculus/video/Settings;->useVideoDirectDecoder()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1037
    new-instance v1, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;

    iget-object v3, v0, Lcom/oculus/video/OculusExoPlayer;->context:Landroid/content/Context;

    sget-object v4, Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecSelector;->DEFAULT:Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecSelector;

    const-wide/16 v5, 0x1388

    const/4 v8, 0x0

    iget-object v9, v0, Lcom/oculus/video/OculusExoPlayer;->eventHandler:Landroid/os/Handler;

    iget-object v10, v0, Lcom/oculus/video/OculusExoPlayer;->videoRendererEventListener:Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener;

    move-object v2, v1

    move-object/from16 v7, p2

    invoke-direct/range {v2 .. v10}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecSelector;JLcom/oculus/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener;)V

    return-object v1

    .line 1047
    :cond_0
    new-instance v1, Lcom/oculus/video/renderer/VanillaMediaCodecVideoRenderer;

    iget-object v12, v0, Lcom/oculus/video/OculusExoPlayer;->context:Landroid/content/Context;

    sget-object v13, Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecSelector;->DEFAULT:Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecSelector;

    const-wide/16 v14, 0x1388

    const/16 v17, 0x0

    iget-object v2, v0, Lcom/oculus/video/OculusExoPlayer;->eventHandler:Landroid/os/Handler;

    iget-object v3, v0, Lcom/oculus/video/OculusExoPlayer;->videoRendererEventListener:Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener;

    const/16 v20, 0x32

    move-object v11, v1

    move-object/from16 v16, p2

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    invoke-direct/range {v11 .. v20}, Lcom/oculus/video/renderer/VanillaMediaCodecVideoRenderer;-><init>(Landroid/content/Context;Lcom/oculus/android/exoplayer2/mediacodec/MediaCodecSelector;JLcom/oculus/android/exoplayer2/drm/DrmSessionManager;ZLandroid/os/Handler;Lcom/oculus/android/exoplayer2/video/VideoRendererEventListener;I)V

    return-object v1
.end method

.method private onTryExtractVideoProjection(Lcom/oculus/video/projection/VideoProjection;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 810
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->eventListener:Lcom/oculus/video/VideoPlayer$EventListener;

    invoke-interface {v0, p1}, Lcom/oculus/video/VideoPlayer$EventListener;->onExtractProjectionMetadata(Lcom/oculus/video/projection/VideoProjection;)V

    .line 812
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->projectionMetadata:Lcom/oculus/video/projection/VideoProjection;

    invoke-static {v0, p1}, Lcom/oculus/video/projection/VideoProjection;->selectPreferred(Lcom/oculus/video/projection/VideoProjection;Lcom/oculus/video/projection/VideoProjection;)Lcom/oculus/video/projection/VideoProjection;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/video/OculusExoPlayer;->projectionMetadata:Lcom/oculus/video/projection/VideoProjection;

    return-void
.end method

.method private resetPlaybackProperties()V
    .locals 5

    .line 816
    sget-object v0, Lcom/oculus/video/OculusExoPlayer;->NETWORK_LISTENER:Lcom/oculus/video/OculusExoPlayer$NetworkListener;

    invoke-virtual {v0}, Lcom/oculus/video/OculusExoPlayer$NetworkListener;->reset()V

    const/4 v0, 0x0

    .line 817
    iput-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->videoDecoderCounters:Lcom/oculus/android/exoplayer2/decoder/DecoderCounters;

    const-wide/16 v1, 0x0

    .line 818
    iput-wide v1, p0, Lcom/oculus/video/OculusExoPlayer;->frameDropReportStartTimeMs:J

    .line 819
    iput-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    .line 820
    iget-object v3, p0, Lcom/oculus/video/OculusExoPlayer;->keyFrameTimestampsUs:Ljava/util/SortedSet;

    invoke-interface {v3}, Ljava/util/SortedSet;->clear()V

    .line 821
    iput-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->videoRenderer:Lcom/oculus/android/exoplayer2/Renderer;

    .line 822
    iput-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->audioRenderers:Ljava/util/List;

    .line 823
    iget-object v3, p0, Lcom/oculus/video/OculusExoPlayer;->trackSelectorManager:Lcom/oculus/video/trackselection/OculusTrackSelectorManager;

    invoke-virtual {v3}, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;->reset()V

    const/4 v3, 0x0

    .line 824
    iput-boolean v3, p0, Lcom/oculus/video/OculusExoPlayer;->isMuted:Z

    const/high16 v4, 0x3f800000    # 1.0f

    .line 825
    iput v4, p0, Lcom/oculus/video/OculusExoPlayer;->currentVolume:F

    .line 826
    iput-boolean v3, p0, Lcom/oculus/video/OculusExoPlayer;->useDataCache:Z

    .line 827
    iget-object v4, p0, Lcom/oculus/video/OculusExoPlayer;->totalConsumedFrameCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 828
    iput-wide v1, p0, Lcom/oculus/video/OculusExoPlayer;->lastRecordedReleasedFrameCount:J

    .line 829
    iput-wide v1, p0, Lcom/oculus/video/OculusExoPlayer;->lastRecordedConsumedFrameCount:J

    .line 830
    iput-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->fbVqmMap:Ljava/util/Map;

    .line 831
    iput-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->projectionMap:Ljava/util/Map;

    .line 832
    iput-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->projectionMetadata:Lcom/oculus/video/projection/VideoProjection;

    const-string v1, "none"

    .line 833
    iput-object v1, p0, Lcom/oculus/video/OculusExoPlayer;->videoSyncMode:Ljava/lang/String;

    .line 834
    iput-boolean v3, p0, Lcom/oculus/video/OculusExoPlayer;->hasRemoteAES128Key:Z

    .line 835
    iput-boolean v3, p0, Lcom/oculus/video/OculusExoPlayer;->hasRemoteAES128IV:Z

    .line 836
    iput-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->bitratePreferenceKey:Ljava/lang/String;

    const-wide/16 v1, -0x1

    .line 837
    iput-wide v1, p0, Lcom/oculus/video/OculusExoPlayer;->lastSlidingBitrate:J

    .line 838
    iput-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->timelinePeriod:Lcom/oculus/android/exoplayer2/Timeline$Period;

    .line 839
    iput-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->dashUpdateListener:Lcom/oculus/video/OculusExoPlayer$DashUpdateListener;

    return-void
.end method


# virtual methods
.method public getBufferedPositionMs()J
    .locals 2

    .line 1347
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    const-wide/16 v0, -0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/ExoPlayer;->getBufferedPosition()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getCurrentEpochTimePositionMs()J
    .locals 8

    .line 1357
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    const-wide/16 v1, 0x0

    if-nez v0, :cond_0

    return-wide v1

    .line 1361
    :cond_0
    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v3

    .line 1362
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/ExoPlayer;->getCurrentTimeline()Lcom/oculus/android/exoplayer2/Timeline;

    move-result-object v0

    cmp-long v5, v3, v1

    if-lez v5, :cond_2

    .line 1363
    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/Timeline;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1364
    iget-object v1, p0, Lcom/oculus/video/OculusExoPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    invoke-interface {v1}, Lcom/oculus/android/exoplayer2/ExoPlayer;->getCurrentPeriodIndex()I

    move-result v1

    iget-object v2, p0, Lcom/oculus/video/OculusExoPlayer;->timelinePeriod:Lcom/oculus/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/android/exoplayer2/Timeline;->getPeriod(ILcom/oculus/android/exoplayer2/Timeline$Period;)Lcom/oculus/android/exoplayer2/Timeline$Period;

    .line 1365
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->timelinePeriod:Lcom/oculus/android/exoplayer2/Timeline$Period;

    invoke-virtual {v0}, Lcom/oculus/android/exoplayer2/Timeline$Period;->getPositionInWindowMs()J

    move-result-wide v0

    sub-long/2addr v3, v0

    .line 1367
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/ExoPlayer;->getCurrentManifest()Ljava/lang/Object;

    move-result-object v0

    .line 1368
    instance-of v1, v0, Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_2

    .line 1369
    iget-wide v1, v0, Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;->publishTimeMs:J

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v7, v1, v5

    if-eqz v7, :cond_2

    .line 1370
    iget-wide v0, v0, Lcom/oculus/android/exoplayer2/source/dash/manifest/DashManifest;->publishTimeMs:J

    add-long/2addr v3, v0

    :cond_2
    return-wide v3
.end method

.method public getCurrentPositionMs()J
    .locals 2

    .line 1352
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/ExoPlayer;->getCurrentPosition()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getDurationMs()J
    .locals 2

    .line 1379
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    const-wide/16 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/ExoPlayer;->getDuration()J

    move-result-wide v0

    :goto_0
    return-wide v0
.end method

.method public getLastPresentationTimeUs()J
    .locals 2

    .line 1431
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->videoRenderer:Lcom/oculus/android/exoplayer2/Renderer;

    instance-of v1, v0, Lcom/oculus/video/renderer/FrameReleaser;

    if-eqz v1, :cond_0

    check-cast v0, Lcom/oculus/video/renderer/FrameReleaser;

    .line 1432
    invoke-interface {v0}, Lcom/oculus/video/renderer/FrameReleaser;->getLastPresentationTimeUs()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, -0x1

    :goto_0
    return-wide v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    const-string v0, "OculusExoPlayer"

    return-object v0
.end method

.method public getVolume()F
    .locals 1

    .line 1331
    iget v0, p0, Lcom/oculus/video/OculusExoPlayer;->currentVolume:F

    return v0
.end method

.method public isBuffering()Z
    .locals 3

    .line 1341
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/ExoPlayer;->getPlaybackState()I

    move-result v0

    :goto_0
    const/4 v2, 0x2

    if-ne v0, v2, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    return v1
.end method

.method public isMuted()Z
    .locals 1

    .line 1320
    iget-boolean v0, p0, Lcom/oculus/video/OculusExoPlayer;->isMuted:Z

    return v0
.end method

.method public isPlaying()Z
    .locals 1

    .line 1336
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/ExoPlayer;->getPlayWhenReady()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isSeekable()Z
    .locals 1

    .line 1421
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/ExoPlayer;->isCurrentWindowSeekable()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onRender(Z)V
    .locals 2

    if-eqz p1, :cond_0

    .line 1406
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->totalConsumedFrameCount:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 1408
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->videoRenderer:Lcom/oculus/android/exoplayer2/Renderer;

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;

    if-eqz v1, :cond_1

    .line 1410
    check-cast v0, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;

    invoke-virtual {v0, p1}, Lcom/oculus/video/renderer/OculusMediaCodecVideoRenderer;->onRender(Z)V

    :cond_1
    return-void
.end method

.method public pause()V
    .locals 2

    .line 874
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 877
    invoke-interface {v0, v1}, Lcom/oculus/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public release()V
    .locals 2

    .line 844
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    return-void

    .line 848
    :cond_0
    invoke-interface {v0}, Lcom/oculus/android/exoplayer2/ExoPlayer;->stop()V

    .line 853
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/video/OculusExoPlayer$6;

    invoke-direct {v1, p0}, Lcom/oculus/video/OculusExoPlayer$6;-><init>(Lcom/oculus/video/OculusExoPlayer;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public resume()V
    .locals 2

    .line 882
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x1

    .line 885
    invoke-interface {v0, v1}, Lcom/oculus/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V

    return-void
.end method

.method public declared-synchronized seekTo(J)V
    .locals 16

    move-object/from16 v1, p0

    monitor-enter p0

    .line 890
    :try_start_0
    iget-object v0, v1, Lcom/oculus/video/OculusExoPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    .line 891
    monitor-exit p0

    return-void

    :cond_0
    :try_start_1
    const-string v0, "none"

    .line 897
    iget-object v2, v1, Lcom/oculus/video/OculusExoPlayer;->videoSyncMode:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v1, Lcom/oculus/video/OculusExoPlayer;->keyFrameTimestampsUs:Ljava/util/SortedSet;

    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v0

    const/4 v2, 0x1

    if-le v0, v2, :cond_5

    const-wide/16 v2, 0x3e8

    mul-long v4, p1, v2

    .line 900
    iget-object v0, v1, Lcom/oculus/video/OculusExoPlayer;->keyFrameTimestampsUs:Ljava/util/SortedSet;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/SortedSet;->headSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 901
    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v6

    if-nez v6, :cond_1

    const-wide/16 v6, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {v0}, Ljava/util/SortedSet;->last()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 903
    :goto_0
    iget-object v0, v1, Lcom/oculus/video/OculusExoPlayer;->keyFrameTimestampsUs:Ljava/util/SortedSet;

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/SortedSet;->tailSet(Ljava/lang/Object;)Ljava/util/SortedSet;

    move-result-object v0

    .line 904
    invoke-interface {v0}, Ljava/util/SortedSet;->size()I

    move-result v8

    if-nez v8, :cond_2

    move-wide v8, v6

    goto :goto_1

    :cond_2
    invoke-interface {v0}, Ljava/util/SortedSet;->first()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v8

    :goto_1
    sub-long v10, v4, v6

    .line 906
    invoke-static {v10, v11}, Ljava/lang/Math;->abs(J)J

    move-result-wide v10

    sub-long v4, v8, v4

    .line 907
    invoke-static {v4, v5}, Ljava/lang/Math;->abs(J)J

    move-result-wide v4

    const-wide/16 v12, 0xa

    const-wide/32 v14, 0x989680

    cmp-long v0, v10, v14

    if-gtz v0, :cond_3

    cmp-long v0, v10, v4

    if-gtz v0, :cond_3

    .line 911
    div-long/2addr v6, v2

    add-long/2addr v6, v12

    goto :goto_2

    :cond_3
    move-wide/from16 v6, p1

    :goto_2
    cmp-long v0, v4, v14

    if-gtz v0, :cond_4

    cmp-long v0, v10, v4

    if-lez v0, :cond_4

    .line 914
    div-long/2addr v8, v2

    add-long v2, v8, v12

    goto :goto_3

    :cond_4
    move-wide v2, v6

    goto :goto_3

    :cond_5
    move-wide/from16 v2, p1

    .line 917
    :goto_3
    iget-object v0, v1, Lcom/oculus/video/OculusExoPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    invoke-interface {v0, v2, v3}, Lcom/oculus/android/exoplayer2/ExoPlayer;->seekTo(J)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 918
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public selectSubtitle(Ljava/lang/String;)Z
    .locals 1

    .line 1416
    iget-object v0, p0, Lcom/oculus/video/OculusExoPlayer;->trackSelectorManager:Lcom/oculus/video/trackselection/OculusTrackSelectorManager;

    invoke-virtual {v0, p1}, Lcom/oculus/video/trackselection/OculusTrackSelectorManager;->selectSubtitle(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public setMute(Z)V
    .locals 6

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    .line 1307
    :cond_0
    iget v0, p0, Lcom/oculus/video/OculusExoPlayer;->currentVolume:F

    .line 1308
    :goto_0
    iget-object v1, p0, Lcom/oculus/video/OculusExoPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oculus/video/OculusExoPlayer;->audioRenderers:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_1

    .line 1309
    iget-object v1, p0, Lcom/oculus/video/OculusExoPlayer;->audioRenderers:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/android/exoplayer2/Renderer;

    .line 1310
    new-instance v3, Lcom/oculus/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v4, 0x2

    .line 1311
    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-direct {v3, v2, v4, v5}, Lcom/oculus/android/exoplayer2/ExoPlayer$ExoPlayerMessage;-><init>(Lcom/oculus/android/exoplayer2/PlayerMessage$Target;ILjava/lang/Object;)V

    .line 1312
    iget-object v2, p0, Lcom/oculus/video/OculusExoPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    const/4 v4, 0x1

    new-array v4, v4, [Lcom/oculus/android/exoplayer2/ExoPlayer$ExoPlayerMessage;

    const/4 v5, 0x0

    aput-object v3, v4, v5

    invoke-interface {v2, v4}, Lcom/oculus/android/exoplayer2/ExoPlayer;->sendMessages([Lcom/oculus/android/exoplayer2/ExoPlayer$ExoPlayerMessage;)V

    goto :goto_1

    .line 1315
    :cond_1
    iput-boolean p1, p0, Lcom/oculus/video/OculusExoPlayer;->isMuted:Z

    return-void
.end method

.method public setVolume(F)V
    .locals 0

    .line 1325
    iput p1, p0, Lcom/oculus/video/OculusExoPlayer;->currentVolume:F

    .line 1326
    iget-boolean p1, p0, Lcom/oculus/video/OculusExoPlayer;->isMuted:Z

    invoke-virtual {p0, p1}, Lcom/oculus/video/OculusExoPlayer;->setMute(Z)V

    return-void
.end method

.method public start(Lcom/oculus/video/Video;ZLandroid/view/Surface;Lcom/oculus/video/VideoPlayer$EventListener;)V
    .locals 0

    .line 768
    invoke-virtual {p0}, Lcom/oculus/video/OculusExoPlayer;->stop()V

    .line 771
    iput-object p4, p0, Lcom/oculus/video/OculusExoPlayer;->eventListener:Lcom/oculus/video/VideoPlayer$EventListener;

    .line 772
    iput-object p3, p0, Lcom/oculus/video/OculusExoPlayer;->videoSurface:Landroid/view/Surface;

    .line 773
    invoke-virtual {p1}, Lcom/oculus/video/Video;->getAes128Key()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    iput-boolean p3, p0, Lcom/oculus/video/OculusExoPlayer;->hasRemoteAES128Key:Z

    .line 774
    invoke-virtual {p1}, Lcom/oculus/video/Video;->getAes128Iv()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p3

    xor-int/lit8 p3, p3, 0x1

    iput-boolean p3, p0, Lcom/oculus/video/OculusExoPlayer;->hasRemoteAES128IV:Z

    .line 775
    invoke-virtual {p1}, Lcom/oculus/video/Video;->getSyncMode()Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/oculus/video/OculusExoPlayer;->videoSyncMode:Ljava/lang/String;

    .line 777
    invoke-interface {p4}, Lcom/oculus/video/VideoPlayer$EventListener;->onStartVideo()V

    .line 780
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oculus/video/OculusExoPlayer;->getBitratePreferenceKey(Lcom/oculus/video/Video;)Ljava/lang/String;

    move-result-object p3

    iput-object p3, p0, Lcom/oculus/video/OculusExoPlayer;->bitratePreferenceKey:Ljava/lang/String;

    .line 784
    invoke-direct {p0, p1}, Lcom/oculus/video/OculusExoPlayer;->buildDrmSessionManager(Lcom/oculus/video/Video;)Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;

    move-result-object p3

    .line 785
    invoke-direct {p0, p3, p1}, Lcom/oculus/video/OculusExoPlayer;->buildRenderers(Lcom/oculus/android/exoplayer2/drm/DrmSessionManager;Lcom/oculus/video/Video;)[Lcom/oculus/android/exoplayer2/Renderer;

    move-result-object p3

    .line 786
    invoke-direct {p0, p1}, Lcom/oculus/video/OculusExoPlayer;->buildTrackSelectorManager(Lcom/oculus/video/Video;)V

    .line 787
    invoke-direct {p0, p3, p1}, Lcom/oculus/video/OculusExoPlayer;->buildExoPlayer2([Lcom/oculus/android/exoplayer2/Renderer;Lcom/oculus/video/Video;)V

    .line 792
    invoke-direct {p0, p1}, Lcom/oculus/video/OculusExoPlayer;->buildMediaSource(Lcom/oculus/video/Video;)Lcom/oculus/android/exoplayer2/source/MediaSource;

    move-result-object p1

    .line 794
    iget-object p3, p0, Lcom/oculus/video/OculusExoPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    invoke-interface {p3, p1}, Lcom/oculus/android/exoplayer2/ExoPlayer;->prepare(Lcom/oculus/android/exoplayer2/source/MediaSource;)V

    .line 796
    iget-object p1, p0, Lcom/oculus/video/OculusExoPlayer;->exoPlayer2:Lcom/oculus/android/exoplayer2/ExoPlayer;

    invoke-interface {p1, p2}, Lcom/oculus/android/exoplayer2/ExoPlayer;->setPlayWhenReady(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 798
    invoke-interface {p4, p1}, Lcom/oculus/video/VideoPlayer$EventListener;->onError(Ljava/lang/Exception;)V

    .line 799
    invoke-virtual {p0}, Lcom/oculus/video/OculusExoPlayer;->release()V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 0

    .line 805
    invoke-virtual {p0}, Lcom/oculus/video/OculusExoPlayer;->release()V

    return-void
.end method
