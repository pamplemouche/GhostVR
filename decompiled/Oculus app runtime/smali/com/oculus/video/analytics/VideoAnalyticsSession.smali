.class Lcom/oculus/video/analytics/VideoAnalyticsSession;
.super Ljava/lang/Object;
.source "VideoAnalyticsSession.java"


# static fields
.field private static final EXTRA_BUFFERING_DURATION_MS:Ljava/lang/String; = "buffering_duration_ms"

.field private static final EXTRA_BUFFER_AHEAD_DURATION_MS:Ljava/lang/String; = "buffer_ahead_duration_ms"

.field private static final EXTRA_HQ_PLAYBACK_DURATION_MS:Ljava/lang/String; = "hq_playback_duration_ms"

.field private static final EXTRA_PLAYBACK_DURATION_MS:Ljava/lang/String; = "playback_duration_ms"

.field private static final EXTRA_RESPONSE_TIME_MS:Ljava/lang/String; = "response_time_ms"

.field private static final EXTRA_RESUME_DURATION_MS:Ljava/lang/String; = "resume_duration_ms"

.field private static final EXTRA_SEEK_DURATION_MS:Ljava/lang/String; = "seek_duration_ms"

.field private static final EXTRA_STALL_DURATION_MS:Ljava/lang/String; = "stall_duration_ms"

.field private static final EXTRA_STREAMING_BITRATE_BPS:Ljava/lang/String; = "streaming_bitrate_bps"

.field private static final EXTRA_VIDEO_BITRATE:Ljava/lang/String; = "video_bitrate"

.field private static final EXTRA_VIDEO_SIZE:Ljava/lang/String; = "video_size"

.field private static final EXTRA_VQM:Ljava/lang/String; = "vqm"


# instance fields
.field ID:Ljava/lang/String;

.field accumulatedDecodedFrames:J

.field accumulatedDelayedDroppedFrames:J

.field accumulatedDroppedFrames:J

.field accumulatedDroppedFramesElapsedTimeMs:J

.field accumulatedStreamedBytes:J

.field accumulatedStreamingTimeMs:J

.field accumulatedUnconsumedDroppedFrames:J

.field audioChannelLayout:Ljava/lang/String;

.field audioMimeType:Ljava/lang/String;

.field audioRendererName:Ljava/lang/String;

.field audioTrackCount:I

.field availableProfiles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field bufferAheadDurationMsPeriodicSampler:Lcom/oculus/video/analytics/DataSampler;

.field final bufferAheadDurationMsSampler:Lcom/oculus/video/analytics/DataSampler;

.field bufferingDurationMsPeriodicSampler:Lcom/oculus/video/analytics/DataSampler;

.field final bufferingDurationMsSampler:Lcom/oculus/video/analytics/DataSampler;

.field bufferingStartTimeNs:J

.field channel:Ljava/lang/String;

.field clientAnalyticsData:Ljava/lang/String;

.field contentType:Ljava/lang/String;

.field didExtractAudio:Z

.field didExtractVideo:Z

.field didPauseBeforeLoad:Z

.field didPlaybackStart:Z

.field durationMs:J

.field fatalErrorMessage:Ljava/lang/String;

.field fileExtension:Ljava/lang/String;

.field fovX:F

.field fovY:F

.field fps:F

.field height:I

.field final hqPlaybackDurationMsSampler:Lcom/oculus/video/analytics/DataSampler;

.field hqPlaybackTimeRangeMsList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field httpMethod:Ljava/lang/String;

.field httpResponseCode:I

.field httpUrl:Ljava/lang/String;

.field is3D:Z

.field isSeekable:Z

.field final lastEventTimeMs:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field lastPlaybackEndTimeMs:J

.field lastPlaybackStartTimeMs:J

.field lastPlaylistUpdateTimeMs:J

.field lastSubtitleSelectionTimeMs:Landroid/util/Pair;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Pair<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field lastSyncPlaybackDelayMs:J

.field lastVideoFormatSampleTimeMs:J

.field lastVideoSizeChangeTimeMs:J

.field loadDurationMs:J

.field pauseStartTimeMs:J

.field playListUpdatePeriodicCount:I

.field final powerMonitor:Lcom/oculus/video/analytics/PowerMonitor;

.field projection:Ljava/lang/String;

.field provider:Ljava/lang/String;

.field remoteIPAddress:Ljava/lang/String;

.field responseTimeMsPeriodicSampler:Lcom/oculus/video/analytics/DataSampler;

.field final responseTimeMsSampler:Lcom/oculus/video/analytics/DataSampler;

.field final resumeDurationMsSampler:Lcom/oculus/video/analytics/DataSampler;

.field resumeStartTimeMs:J

.field seekDurationMsPeriodicSampler:Lcom/oculus/video/analytics/DataSampler;

.field final seekDurationMsSampler:Lcom/oculus/video/analytics/DataSampler;

.field seekStartTimeMs:J

.field selectedProfile:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field selectedProfileWithTimeline:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field sphericalMetadata:Lorg/json/JSONObject;

.field stallDurationMsPeriodicSampler:Lcom/oculus/video/analytics/DataSampler;

.field final stallDurationMsSampler:Lcom/oculus/video/analytics/DataSampler;

.field state:Lcom/oculus/video/analytics/VideoSessionState;

.field streamingBitrateBpsPeriodicSampler:Lcom/oculus/video/analytics/DataSampler;

.field final streamingBitrateBpsSampler:Lcom/oculus/video/analytics/DataSampler;

.field streamingUpdateDecodedFrames:J

.field streamingUpdateDelayedDroppedFrames:J

.field streamingUpdateDroppedFrames:J

.field streamingUpdateFrameDecodeTimeMs:J

.field streamingUpdateUnconsumedDroppedFrames:J

.field final subtitleDurationMs:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field subtitleMimeType:Ljava/lang/String;

.field syncMode:Ljava/lang/String;

.field totalDecodedFrames:J

.field totalDelayedDroppedFrames:J

.field totalDroppedFrames:J

.field totalPausedDurationMs:J

.field totalStreamedBytes:J

.field totalUnconsumedDroppedFrames:J

.field url:Ljava/lang/String;

.field videoBitrate:I

.field final videoBitrateSampler:Lcom/oculus/video/analytics/DataSampler;

.field videoID:Ljava/lang/String;

.field videoMimeType:Ljava/lang/String;

.field videoRendererName:Ljava/lang/String;

.field final videoSizeSampler:Lcom/oculus/video/analytics/DataSampler;

.field videoStartTimeMs:J

.field vqm:D

.field final vqmSampler:Lcom/oculus/video/analytics/DataSampler;

.field width:I


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 225
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    sget-object v0, Lcom/oculus/video/analytics/VideoSessionState;->INIT:Lcom/oculus/video/analytics/VideoSessionState;

    iput-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->state:Lcom/oculus/video/analytics/VideoSessionState;

    .line 99
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->subtitleDurationMs:Ljava/util/HashMap;

    const/4 v0, 0x0

    .line 100
    iput-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->lastSubtitleSelectionTimeMs:Landroid/util/Pair;

    .line 152
    iput-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->httpUrl:Ljava/lang/String;

    .line 153
    iput-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->remoteIPAddress:Ljava/lang/String;

    .line 154
    iput-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->httpMethod:Ljava/lang/String;

    const-wide/32 v0, -0x36ee80

    .line 169
    iput-wide v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->lastSyncPlaybackDelayMs:J

    .line 174
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->hqPlaybackTimeRangeMsList:Ljava/util/LinkedList;

    .line 182
    new-instance v0, Lcom/oculus/video/analytics/DataSampler;

    const-string v1, "buffer_ahead_duration_ms"

    invoke-direct {v0, v1}, Lcom/oculus/video/analytics/DataSampler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->bufferAheadDurationMsSampler:Lcom/oculus/video/analytics/DataSampler;

    .line 183
    new-instance v0, Lcom/oculus/video/analytics/DataSampler;

    const-string v1, "streaming_bitrate_bps"

    invoke-direct {v0, v1}, Lcom/oculus/video/analytics/DataSampler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->streamingBitrateBpsSampler:Lcom/oculus/video/analytics/DataSampler;

    .line 187
    new-instance v0, Lcom/oculus/video/analytics/DataSampler;

    const-string v1, "response_time_ms"

    invoke-direct {v0, v1}, Lcom/oculus/video/analytics/DataSampler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->responseTimeMsSampler:Lcom/oculus/video/analytics/DataSampler;

    .line 190
    new-instance v0, Lcom/oculus/video/analytics/DataSampler;

    const-string v1, "video_size"

    invoke-direct {v0, v1}, Lcom/oculus/video/analytics/DataSampler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->videoSizeSampler:Lcom/oculus/video/analytics/DataSampler;

    .line 194
    new-instance v0, Lcom/oculus/video/analytics/DataSampler;

    const-string v1, "vqm"

    invoke-direct {v0, v1}, Lcom/oculus/video/analytics/DataSampler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->vqmSampler:Lcom/oculus/video/analytics/DataSampler;

    .line 195
    new-instance v0, Lcom/oculus/video/analytics/DataSampler;

    const-string v1, "video_bitrate"

    invoke-direct {v0, v1}, Lcom/oculus/video/analytics/DataSampler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->videoBitrateSampler:Lcom/oculus/video/analytics/DataSampler;

    .line 200
    new-instance v0, Lcom/oculus/video/analytics/DataSampler;

    const-string v1, "stall_duration_ms"

    invoke-direct {v0, v1}, Lcom/oculus/video/analytics/DataSampler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->stallDurationMsSampler:Lcom/oculus/video/analytics/DataSampler;

    .line 204
    new-instance v0, Lcom/oculus/video/analytics/DataSampler;

    const-string v1, "buffering_duration_ms"

    invoke-direct {v0, v1}, Lcom/oculus/video/analytics/DataSampler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->bufferingDurationMsSampler:Lcom/oculus/video/analytics/DataSampler;

    .line 208
    new-instance v0, Lcom/oculus/video/analytics/DataSampler;

    const-string v1, "seek_duration_ms"

    invoke-direct {v0, v1}, Lcom/oculus/video/analytics/DataSampler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->seekDurationMsSampler:Lcom/oculus/video/analytics/DataSampler;

    .line 211
    new-instance v0, Lcom/oculus/video/analytics/DataSampler;

    const-string v1, "resume_duration_ms"

    invoke-direct {v0, v1}, Lcom/oculus/video/analytics/DataSampler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->resumeDurationMsSampler:Lcom/oculus/video/analytics/DataSampler;

    .line 214
    new-instance v0, Lcom/oculus/video/analytics/DataSampler;

    const-string v1, "hq_playback_duration_ms"

    invoke-direct {v0, v1}, Lcom/oculus/video/analytics/DataSampler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->hqPlaybackDurationMsSampler:Lcom/oculus/video/analytics/DataSampler;

    .line 217
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->lastEventTimeMs:Ljava/util/Map;

    const-wide/16 v0, 0x0

    .line 219
    iput-wide v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->bufferingStartTimeNs:J

    .line 226
    new-instance v0, Lcom/oculus/video/analytics/PowerMonitor;

    invoke-direct {v0, p1}, Lcom/oculus/video/analytics/PowerMonitor;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->powerMonitor:Lcom/oculus/video/analytics/PowerMonitor;

    .line 227
    invoke-virtual {p0}, Lcom/oculus/video/analytics/VideoAnalyticsSession;->resetPeriodicValues()V

    return-void
.end method


# virtual methods
.method isSyncMedia()Z
    .locals 2

    .line 241
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->syncMode:Ljava/lang/String;

    if-eqz v0, :cond_0

    const-string v1, "none"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method resetPeriodicValues()V
    .locals 2

    const/4 v0, 0x0

    .line 231
    iput v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->playListUpdatePeriodicCount:I

    .line 232
    new-instance v0, Lcom/oculus/video/analytics/DataSampler;

    const-string v1, "response_time_ms"

    invoke-direct {v0, v1}, Lcom/oculus/video/analytics/DataSampler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->responseTimeMsPeriodicSampler:Lcom/oculus/video/analytics/DataSampler;

    .line 233
    new-instance v0, Lcom/oculus/video/analytics/DataSampler;

    const-string v1, "buffer_ahead_duration_ms"

    invoke-direct {v0, v1}, Lcom/oculus/video/analytics/DataSampler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->bufferAheadDurationMsPeriodicSampler:Lcom/oculus/video/analytics/DataSampler;

    .line 234
    new-instance v0, Lcom/oculus/video/analytics/DataSampler;

    const-string v1, "streaming_bitrate_bps"

    invoke-direct {v0, v1}, Lcom/oculus/video/analytics/DataSampler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->streamingBitrateBpsPeriodicSampler:Lcom/oculus/video/analytics/DataSampler;

    .line 235
    new-instance v0, Lcom/oculus/video/analytics/DataSampler;

    const-string v1, "stall_duration_ms"

    invoke-direct {v0, v1}, Lcom/oculus/video/analytics/DataSampler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->stallDurationMsPeriodicSampler:Lcom/oculus/video/analytics/DataSampler;

    .line 236
    new-instance v0, Lcom/oculus/video/analytics/DataSampler;

    const-string v1, "buffering_duration_ms"

    invoke-direct {v0, v1}, Lcom/oculus/video/analytics/DataSampler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->bufferingDurationMsPeriodicSampler:Lcom/oculus/video/analytics/DataSampler;

    .line 237
    new-instance v0, Lcom/oculus/video/analytics/DataSampler;

    const-string v1, "seek_duration_ms"

    invoke-direct {v0, v1}, Lcom/oculus/video/analytics/DataSampler;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->seekDurationMsPeriodicSampler:Lcom/oculus/video/analytics/DataSampler;

    return-void
.end method
