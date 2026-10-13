.class public Lcom/oculus/video/analytics/VideoPlayerAnalytics;
.super Ljava/lang/Object;
.source "VideoPlayerAnalytics.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;,
        Lcom/oculus/video/analytics/VideoPlayerAnalytics$PlaybackSyncMode;
    }
.end annotation


# static fields
.field private static final EVENT_NAME:Ljava/lang/String; = "oculus_video_sdk_playback_event"

.field private static final EVENT_TYPE_ON_DROPPED_FRAMES:Ljava/lang/String; = "on_dropped_frames"

.field private static final EVENT_TYPE_ON_EXTRACT_AUDIO:Ljava/lang/String; = "on_extract_audio"

.field private static final EVENT_TYPE_ON_EXTRACT_VIDEO:Ljava/lang/String; = "on_extract_video"

.field private static final EVENT_TYPE_ON_FATAL_ERROR:Ljava/lang/String; = "on_fatal_error"

.field private static final EVENT_TYPE_ON_SOFT_ERROR:Ljava/lang/String; = "on_soft_error"

.field private static final EVENT_TYPE_ON_START_PLAYBACK:Ljava/lang/String; = "on_start_playback"

.field private static final EVENT_TYPE_ON_START_SESSION:Ljava/lang/String; = "on_start_session"

.field private static final EVENT_TYPE_ON_STOP_SESSION:Ljava/lang/String; = "on_stop_session"

.field private static final EVENT_TYPE_ON_STREAMING_UPDATE:Ljava/lang/String; = "on_streaming_update"

.field private static final EVENT_TYPE_ON_VIDEO_SIZE_CHANGED:Ljava/lang/String; = "on_video_size_changed"

.field private static final EXTRA_ADAPTIVE_PLAYLIST:Ljava/lang/String; = "adaptive_playlist"

.field private static final EXTRA_AUDIO_CHANNEL_LAYOUT:Ljava/lang/String; = "audio_channel_layout"

.field private static final EXTRA_AUDIO_MIME_TYPE:Ljava/lang/String; = "audio_mime_type"

.field private static final EXTRA_AUDIO_RENDERER_NAME:Ljava/lang/String; = "audio_renderer_name"

.field private static final EXTRA_AUDIO_TRACK_COUNT:Ljava/lang/String; = "audio_track_count"

.field private static final EXTRA_BOARD:Ljava/lang/String; = "board"

.field private static final EXTRA_CHANNEL:Ljava/lang/String; = "channel"

.field private static final EXTRA_CLIENT_DATA:Ljava/lang/String; = "client_data"

.field private static final EXTRA_CONTENT_TYPE:Ljava/lang/String; = "content_type"

.field private static final EXTRA_DECODED_FRAMES_COUNT:Ljava/lang/String; = "decoded_frames_count"

.field private static final EXTRA_DELAYED_DROPPED_FRAMES_COUNT:Ljava/lang/String; = "dropped_delayed_frames_count"

.field private static final EXTRA_DID_EXTRACT_AUDIO:Ljava/lang/String; = "did_extract_audio"

.field private static final EXTRA_DID_EXTRACT_VIDEO:Ljava/lang/String; = "did_extract_video"

.field private static final EXTRA_DID_START_PLAYBACK:Ljava/lang/String; = "did_start_playback"

.field private static final EXTRA_DROPPED_FRAMES_COUNT:Ljava/lang/String; = "dropped_frames_count"

.field private static final EXTRA_DURATION_MS:Ljava/lang/String; = "duration_ms"

.field private static final EXTRA_EFFECTIVE_FPS:Ljava/lang/String; = "effective_fps"

.field private static final EXTRA_ELAPSED_TIME_MS:Ljava/lang/String; = "elapsed_time_ms"

.field private static final EXTRA_EVENT_TYPE:Ljava/lang/String; = "event_type"

.field private static final EXTRA_EXCEPTION:Ljava/lang/String; = "exception"

.field private static final EXTRA_EXCEPTION_STACK:Ljava/lang/String; = "exception_stack"

.field private static final EXTRA_FATAL_ERROR_MESSAGE:Ljava/lang/String; = "fatal_error_message"

.field private static final EXTRA_FILE_EXTENSION:Ljava/lang/String; = "file_extension"

.field private static final EXTRA_FOV_X:Ljava/lang/String; = "FOV_X"

.field private static final EXTRA_FOV_Y:Ljava/lang/String; = "FOV_Y"

.field private static final EXTRA_FPS:Ljava/lang/String; = "fps"

.field private static final EXTRA_GATEKEEPERS:Ljava/lang/String; = "gatekeepers"

.field private static final EXTRA_HEIGHT:Ljava/lang/String; = "height"

.field private static final EXTRA_HTTP_METHOD:Ljava/lang/String; = "http_method"

.field private static final EXTRA_HTTP_RESPONSE_CODE:Ljava/lang/String; = "http_response_code"

.field private static final EXTRA_HTTP_URL:Ljava/lang/String; = "http_url"

.field private static final EXTRA_HVQ_PERCENTAGE:Ljava/lang/String; = "hvq_percentage"

.field private static final EXTRA_IS_3D:Ljava/lang/String; = "is_3D"

.field private static final EXTRA_IS_SEEKABLE:Ljava/lang/String; = "is_seekable"

.field private static final EXTRA_LOAD_DURATION_MS:Ljava/lang/String; = "load_duration_ms"

.field private static final EXTRA_MAX_POSITION_MS:Ljava/lang/String; = "max_position_ms"

.field private static final EXTRA_MOST_USED_SUBTITLE:Ljava/lang/String; = "most_used_subtitle"

.field private static final EXTRA_OVR_USER_ID:Ljava/lang/String; = "ovr_user_id"

.field private static final EXTRA_PAUSED_DURATION_MS:Ljava/lang/String; = "paused_duration_ms"

.field private static final EXTRA_PLAYBACK_DURATION_MS:Ljava/lang/String; = "playback_duration_ms"

.field private static final EXTRA_PLAYBACK_PERCENTAGE:Ljava/lang/String; = "playback_percentage"

.field private static final EXTRA_POSITION_MS:Ljava/lang/String; = "position_ms"

.field private static final EXTRA_POWER_CONSUMED_MAH:Ljava/lang/String; = "power_consumed_mAh"

.field private static final EXTRA_PROJECTION:Ljava/lang/String; = "projection"

.field private static final EXTRA_PROVIDER:Ljava/lang/String; = "provider"

.field private static final EXTRA_REMOTE_IP_ADDRESS:Ljava/lang/String; = "remote_ip_address"

.field private static final EXTRA_SESSION_DURATION_MS:Ljava/lang/String; = "session_duration_ms"

.field private static final EXTRA_SESSION_ID:Ljava/lang/String; = "session_ID"

.field private static final EXTRA_SPHERICAL_METADATA:Ljava/lang/String; = "spherical_metadata"

.field private static final EXTRA_STREAMED_BYTES_COUNT:Ljava/lang/String; = "streamed_bytes_count"

.field private static final EXTRA_SUBTITLE_LIST:Ljava/lang/String; = "subtitle_list"

.field private static final EXTRA_SUBTITLE_MIME_TYPE:Ljava/lang/String; = "subtitle_mime_type"

.field private static final EXTRA_SYNC_MODE:Ljava/lang/String; = "is_sync_media"

.field private static final EXTRA_SYNC_PLAYBACK_DELAY_MS:Ljava/lang/String; = "sync_playback_delay_ms"

.field private static final EXTRA_TIME_FROM_LAUNCH_MS:Ljava/lang/String; = "time_from_launch_ms"

.field private static final EXTRA_UNCONSUMED_DROPPED_FRAMES_COUNT:Ljava/lang/String; = "dropped_unconsumed_frames_count"

.field private static final EXTRA_URL:Ljava/lang/String; = "url"

.field private static final EXTRA_VIDEO_BITRATE:Ljava/lang/String; = "video_bitrate"

.field private static final EXTRA_VIDEO_ID:Ljava/lang/String; = "video_id"

.field private static final EXTRA_VIDEO_MIME_TYPE:Ljava/lang/String; = "video_mime_type"

.field private static final EXTRA_VIDEO_RENDERER_NAME:Ljava/lang/String; = "video_renderer_name"

.field private static final EXTRA_WIDTH:Ljava/lang/String; = "width"

.field private static final GO_360_MONO_HQ_WIDTH_THRES:I = 0x1400

.field private static final MAX_CLIENT_DATA_LENGTH:I = 0x400

.field private static final MAX_LOG_LINE_LENGTH:I = 0x3e8

.field private static final MIN_DEFAULT_TIME_BETWEEN_HEAVY_EVENTS_MS:J = 0x249f0L

.field private static final MIN_DEFAULT_TIME_BETWEEN_LIGHT_EVENTS_MS:J = 0x3a98L

.field private static final MIN_DROPPED_FRAMES_TO_LOG:I = 0x32

.field private static final MIN_SYNC_PLAYER_TIME_BETWEEN_HEAVY_EVENTS_MS:J = 0x7530L

.field private static final ONGOING_PLAYBACK:J = -0x1L

.field private static final PLAYLIST_ALL_PROFILES:Ljava/lang/String; = "playlist"

.field public static final PLAYLIST_DASH_IS_DYNAMIC:Ljava/lang/String; = "dash_is_dynamic"

.field public static final PLAYLIST_HLS_TYPE:Ljava/lang/String; = "hls_type"

.field public static final PLAYLIST_PROFILE_DASH_MIN_BUFFER_TIME_MS:Ljava/lang/String; = "dash_min_buffer_time_ms"

.field public static final PLAYLIST_PROFILE_DASH_MIN_UPDATE_PERIOD_MS:Ljava/lang/String; = "dash_min_update_period_ms"

.field public static final PLAYLIST_PROFILE_DASH_SUGGESTED_PRESENTATION_DELAY_MS:Ljava/lang/String; = "dash_suggested_presentation_delay_ms"

.field public static final PLAYLIST_PROFILE_DASH_TIME_SHIFT_BUFFER_DEPTH_MS:Ljava/lang/String; = "dash_time_shift_buffer_depth_ms"

.field public static final PLAYLIST_PROFILE_HAS_EMBEDDED_IV:Ljava/lang/String; = "has_embedded_iv"

.field public static final PLAYLIST_PROFILE_HAS_EMBEDDED_KEY:Ljava/lang/String; = "has_embedded_key"

.field public static final PLAYLIST_PROFILE_HAS_EMBEDDED_UTC:Ljava/lang/String; = "has_embedded_utc"

.field public static final PLAYLIST_PROFILE_HAS_REMOTE_IV:Ljava/lang/String; = "has_remote_iv"

.field public static final PLAYLIST_PROFILE_HAS_REMOTE_KEY:Ljava/lang/String; = "has_remote_key"

.field public static final PLAYLIST_PROFILE_ITEM_BITRATE:Ljava/lang/String; = "bitrate"

.field public static final PLAYLIST_PROFILE_ITEM_FPS:Ljava/lang/String; = "fps"

.field public static final PLAYLIST_PROFILE_ITEM_HEIGHT:Ljava/lang/String; = "height"

.field public static final PLAYLIST_PROFILE_ITEM_TARGET_DURATION_US:Ljava/lang/String; = "target_duration_us"

.field public static final PLAYLIST_PROFILE_ITEM_WIDTH:Ljava/lang/String; = "width"

.field private static final PLAYLIST_PROFILE_UPDATE_COUNT:Ljava/lang/String; = "update_count"

.field private static final PLAYLIST_PROFILE_UPDATE_INTERVAL_MS:Ljava/lang/String; = "update_interval_ms"

.field public static final PLAYLIST_SEGMENT_COUNT:Ljava/lang/String; = "segment_count"

.field private static final PLAYLIST_SELECTED_PROFILE:Ljava/lang/String; = "selected"

.field private static final QUEST_360_MONO_HQ_WIDTH_THRES:I = 0x1770

.field private static final REDACTED_URL:Ljava/lang/String; = "REDACTED"

.field private static final TAG:Ljava/lang/String; = "VideoPlayerAnalytics"


# instance fields
.field private final applicationName:Ljava/lang/String;

.field private final context:Landroid/content/Context;

.field private creationTimeMs:J

.field private final eventHandler:Landroid/os/Handler;

.field private gkResult:Ljava/lang/String;

.field private nativePtr:J

.field private ovrUserID:Ljava/lang/String;

.field private sessions:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Long;",
            "Lcom/oculus/video/analytics/VideoAnalyticsSession;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Landroid/os/Handler;)V
    .locals 1

    .line 258
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 237
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->sessions:Ljava/util/Map;

    .line 259
    iput-object p1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->context:Landroid/content/Context;

    .line 260
    iput-object p2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->applicationName:Ljava/lang/String;

    .line 261
    iput-object p3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->eventHandler:Landroid/os/Handler;

    .line 263
    invoke-static {}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->getCurrentTimeMs()J

    move-result-wide p1

    iput-wide p1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->creationTimeMs:J

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/video/analytics/VideoPlayerAnalytics;)Ljava/util/Map;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->sessions:Ljava/util/Map;

    return-object p0
.end method

.method static synthetic access$100(Lcom/oculus/video/analytics/VideoAnalyticsSession;Ljava/lang/String;)Z
    .locals 0

    .line 39
    invoke-static {p0, p1}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->canLogEvent(Lcom/oculus/video/analytics/VideoAnalyticsSession;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$1000(Lcom/oculus/video/analytics/VideoPlayerAnalytics;Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->maybeLogPlaybackStart(Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V

    return-void
.end method

.method static synthetic access$1100(Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V
    .locals 0

    .line 39
    invoke-static {p0, p1, p2}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->maybeLogSeekSample(Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V

    return-void
.end method

.method static synthetic access$1200(Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V
    .locals 0

    .line 39
    invoke-static {p0, p1, p2}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->maybeLogResumeSample(Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V

    return-void
.end method

.method static synthetic access$1300(Lcom/oculus/video/analytics/VideoAnalyticsSession;JLcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;)V
    .locals 0

    .line 39
    invoke-static {p0, p1, p2, p3}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->recordHQPlaybackStart(Lcom/oculus/video/analytics/VideoAnalyticsSession;JLcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;)V

    return-void
.end method

.method static synthetic access$1400(Lcom/oculus/video/analytics/VideoPlayerAnalytics;Lcom/oculus/video/analytics/VideoAnalyticsSession;ZJ)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->maybeLogStreamingSampleEvent(Lcom/oculus/video/analytics/VideoAnalyticsSession;ZJ)V

    return-void
.end method

.method static synthetic access$1500(Lcom/oculus/video/analytics/VideoPlayerAnalytics;Lcom/oculus/video/analytics/VideoAnalyticsSession;ZJ)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->maybeLogDroppedFramesEvent(Lcom/oculus/video/analytics/VideoAnalyticsSession;ZJ)V

    return-void
.end method

.method static synthetic access$1600(Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V
    .locals 0

    .line 39
    invoke-static {p0, p1, p2}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->sampleLastVideoSize(Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V

    return-void
.end method

.method static synthetic access$1700(Lcom/oculus/video/analytics/VideoAnalyticsSession;JLcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;)V
    .locals 0

    .line 39
    invoke-static {p0, p1, p2, p3}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->recordHQPlaybackEnd(Lcom/oculus/video/analytics/VideoAnalyticsSession;JLcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V
    .locals 0

    .line 39
    invoke-static {p0, p1, p2}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->addLastSubtitleDurationMs(Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V

    return-void
.end method

.method static synthetic access$1900(Lcom/oculus/video/analytics/VideoPlayerAnalytics;Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->onPause(Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/video/analytics/VideoPlayerAnalytics;Lcom/oculus/video/analytics/VideoAnalyticsSession;Ljava/lang/String;J)Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->newEvent(Lcom/oculus/video/analytics/VideoAnalyticsSession;Ljava/lang/String;J)Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2000(Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V
    .locals 0

    .line 39
    invoke-static {p0, p1, p2}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->maybeAddPausedDuration(Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V

    return-void
.end method

.method static synthetic access$2100(Lcom/oculus/video/analytics/VideoAnalyticsSession;JLcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;)V
    .locals 0

    .line 39
    invoke-static {p0, p1, p2, p3}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->updateHQPlaybackDurations(Lcom/oculus/video/analytics/VideoAnalyticsSession;JLcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;)V

    return-void
.end method

.method static synthetic access$2200(Lcom/oculus/video/analytics/VideoPlayerAnalytics;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;J)V
    .locals 0

    .line 39
    invoke-direct/range {p0 .. p9}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->onCompleteSessionImpl(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;J)V

    return-void
.end method

.method static synthetic access$300(Lcom/oculus/video/analytics/VideoPlayerAnalytics;Ljava/lang/Throwable;Ljava/lang/String;Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 39
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->addErrorDataToEvent(Ljava/lang/Throwable;Ljava/lang/String;Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oculus/video/analytics/VideoPlayerAnalytics;Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;)V
    .locals 0

    .line 39
    invoke-direct {p0, p1}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->logEvent(Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;)V

    return-void
.end method

.method static synthetic access$500(Lcom/oculus/video/analytics/VideoPlayerAnalytics;)Landroid/content/Context;
    .locals 0

    .line 39
    iget-object p0, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->context:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic access$600(Lcom/oculus/video/analytics/VideoAnalyticsSession;Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;J)V
    .locals 0

    .line 39
    invoke-static {p0, p1, p2, p3}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->sessionStateTransit(Lcom/oculus/video/analytics/VideoAnalyticsSession;Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;J)V

    return-void
.end method

.method static synthetic access$700(Lcom/oculus/video/analytics/VideoPlayerAnalytics;Lcom/oculus/video/analytics/VideoAnalyticsSession;JZ)V
    .locals 0

    .line 39
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->onExtractTimeline(Lcom/oculus/video/analytics/VideoAnalyticsSession;JZ)V

    return-void
.end method

.method static synthetic access$800(Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V
    .locals 0

    .line 39
    invoke-static {p0, p1, p2}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->sampleLastVideoFormat(Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V

    return-void
.end method

.method static synthetic access$900(Lcom/oculus/video/analytics/VideoPlayerAnalytics;Lcom/oculus/video/analytics/VideoAnalyticsSession;IIFZLjava/lang/String;Ljava/lang/String;FFLjava/lang/String;Ljava/lang/String;J)V
    .locals 0

    .line 39
    invoke-direct/range {p0 .. p13}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->onExtractVideo(Lcom/oculus/video/analytics/VideoAnalyticsSession;IIFZLjava/lang/String;Ljava/lang/String;FFLjava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private addErrorDataToEvent(Ljava/lang/Throwable;Ljava/lang/String;Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;)V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 292
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    move-object v1, p1

    :goto_0
    if-eqz v1, :cond_3

    if-eq v1, p1, :cond_1

    const-string v2, "Caused by: "

    .line 296
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 299
    :cond_1
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ": "

    .line 300
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 301
    invoke-virtual {v1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n"

    .line 302
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 304
    invoke-virtual {v1}, Ljava/lang/Throwable;->getStackTrace()[Ljava/lang/StackTraceElement;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v3, :cond_2

    aget-object v5, v2, v4

    const-string v6, "  at "

    .line 305
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 306
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getClassName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x2e

    .line 307
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 308
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getMethodName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x28

    .line 309
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 310
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getFileName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v6, 0x3a

    .line 311
    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 312
    invoke-virtual {v5}, Ljava/lang/StackTraceElement;->getLineNumber()I

    move-result v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v5, ")\n"

    .line 313
    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 294
    :cond_2
    invoke-virtual {v1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    goto :goto_0

    .line 317
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 318
    instance-of v2, p1, Ljava/lang/Exception;

    if-eqz v2, :cond_4

    move-object v2, p1

    check-cast v2, Ljava/lang/Exception;

    goto :goto_2

    :cond_4
    const/4 v2, 0x0

    .line 319
    :goto_2
    instance-of v3, p1, Lcom/oculus/android/exoplayer2/ExoPlaybackException;

    if-eqz v3, :cond_8

    .line 320
    move-object v2, p1

    check-cast v2, Lcom/oculus/android/exoplayer2/ExoPlaybackException;

    .line 321
    iget p1, v2, Lcom/oculus/android/exoplayer2/ExoPlaybackException;->type:I

    if-eqz p1, :cond_7

    const/4 v3, 0x1

    if-eq p1, v3, :cond_6

    const/4 v3, 0x2

    if-eq p1, v3, :cond_5

    goto :goto_3

    .line 329
    :cond_5
    invoke-virtual {v2}, Lcom/oculus/android/exoplayer2/ExoPlaybackException;->getUnexpectedException()Ljava/lang/RuntimeException;

    move-result-object v2

    goto :goto_3

    .line 326
    :cond_6
    invoke-virtual {v2}, Lcom/oculus/android/exoplayer2/ExoPlaybackException;->getRendererException()Ljava/lang/Exception;

    move-result-object v2

    goto :goto_3

    .line 323
    :cond_7
    invoke-virtual {v2}, Lcom/oculus/android/exoplayer2/ExoPlaybackException;->getSourceException()Ljava/io/IOException;

    move-result-object v2

    :cond_8
    :goto_3
    if-eqz v2, :cond_b

    .line 337
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 338
    instance-of v1, v2, Lcom/oculus/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    if-eqz v1, :cond_a

    .line 339
    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 340
    invoke-virtual {v2}, Ljava/lang/Exception;->getCause()Ljava/lang/Throwable;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    .line 342
    :cond_9
    move-object v1, v2

    check-cast v1, Lcom/oculus/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;

    iget-object v1, v1, Lcom/oculus/android/exoplayer2/upstream/HttpDataSource$HttpDataSourceException;->dataSpec:Lcom/oculus/android/exoplayer2/upstream/DataSpec;

    .line 343
    iget-object v3, v1, Lcom/oculus/android/exoplayer2/upstream/DataSpec;->uri:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    .line 344
    invoke-static {v3, p2}, Lcom/oculus/video/Settings;->analyticsRedactVideoSource(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p2

    if-nez p2, :cond_a

    const-string p2, "http_url"

    .line 345
    invoke-virtual {p3, p2, v3}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 346
    instance-of p2, v1, Lcom/oculus/video/VideoPlayer_Android$OculusDataSpec;

    if-eqz p2, :cond_a

    .line 347
    check-cast v1, Lcom/oculus/video/VideoPlayer_Android$OculusDataSpec;

    iget-object p2, v1, Lcom/oculus/video/VideoPlayer_Android$OculusDataSpec;->ipAddress:Ljava/lang/String;

    .line 348
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "remote_ip_address"

    .line 349
    invoke-virtual {p3, v1, p2}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_a
    move-object v1, p1

    .line 354
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_b

    .line 355
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    :cond_b
    const-string p1, "exception"

    .line 359
    invoke-virtual {p3, p1, v1}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p1

    .line 360
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "exception_stack"

    invoke-virtual {p1, p3, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    return-void
.end method

.method private addHttpDataToEvent(Lcom/oculus/video/analytics/VideoAnalyticsSession;Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 802
    iget-object v0, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->httpUrl:Ljava/lang/String;

    if-nez v0, :cond_0

    return-void

    .line 805
    :cond_0
    iget-object v0, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->httpUrl:Ljava/lang/String;

    const-string v1, "http_url"

    invoke-virtual {p2, v1, v0}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->httpMethod:Ljava/lang/String;

    const-string v2, "http_method"

    .line 806
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v0

    iget v1, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->httpResponseCode:I

    const-string v2, "http_response_code"

    .line 807
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 809
    iget-object v0, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->remoteIPAddress:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 810
    iget-object p1, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->remoteIPAddress:Ljava/lang/String;

    const-string v0, "remote_ip_address"

    invoke-virtual {p2, v0, p1}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_1
    return-void
.end method

.method private static addLastSubtitleDurationMs(Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V
    .locals 5

    .line 1726
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->lastSubtitleSelectionTimeMs:Landroid/util/Pair;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->lastSubtitleSelectionTimeMs:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/CharSequence;

    .line 1727
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 1731
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->lastSubtitleSelectionTimeMs:Landroid/util/Pair;

    iget-object v0, v0, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 1732
    iget-object v1, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->subtitleDurationMs:Ljava/util/HashMap;

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    .line 1735
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v3, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->lastSubtitleSelectionTimeMs:Landroid/util/Pair;

    iget-object v3, v3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Long;

    .line 1736
    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    sub-long/2addr p1, v3

    add-long/2addr v1, p1

    .line 1738
    iget-object p0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->subtitleDurationMs:Ljava/util/HashMap;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {p0, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1
    :goto_0
    return-void
.end method

.method private static canLogEvent(Lcom/oculus/video/analytics/VideoAnalyticsSession;Ljava/lang/String;)Z
    .locals 4

    const-string v0, "on_streaming_update"

    .line 1781
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-wide/32 v0, 0x249f0

    .line 1783
    invoke-virtual {p0}, Lcom/oculus/video/analytics/VideoAnalyticsSession;->isSyncMedia()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v0, 0x7530

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x3a98

    .line 1787
    :cond_1
    :goto_0
    invoke-static {}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->getCurrentTimeMs()J

    move-result-wide v2

    invoke-static {p0, p1}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->getLastEventTimeMs(Lcom/oculus/video/analytics/VideoAnalyticsSession;Ljava/lang/String;)J

    move-result-wide p0

    sub-long/2addr v2, p0

    cmp-long p0, v2, v0

    if-lez p0, :cond_2

    const/4 p0, 0x1

    goto :goto_1

    :cond_2
    const/4 p0, 0x0

    :goto_1
    return p0
.end method

.method private static getCurrentTimeMs()J
    .locals 4

    .line 1771
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    const-wide/32 v2, 0xf4240

    div-long/2addr v0, v2

    return-wide v0
.end method

.method private static getLastEventTimeMs(Lcom/oculus/video/analytics/VideoAnalyticsSession;Ljava/lang/String;)J
    .locals 1

    .line 1775
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->lastEventTimeMs:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->lastEventTimeMs:Ljava/util/Map;

    .line 1776
    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/Long;

    invoke-virtual {p0}, Ljava/lang/Long;->longValue()J

    move-result-wide p0

    goto :goto_0

    :cond_0
    iget-wide p0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->videoStartTimeMs:J

    :goto_0
    return-wide p0
.end method

.method private static isVideoHQ(Lcom/oculus/video/analytics/VideoAnalyticsSession;)Z
    .locals 4

    .line 1880
    sget-object v0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$25;->$SwitchMap$com$oculus$video$projection$ProjectionType:[I

    iget-object v1, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->projection:Ljava/lang/String;

    invoke-static {v1}, Lcom/oculus/video/projection/ProjectionType;->fromVideoLayout(Ljava/lang/String;)Lcom/oculus/video/projection/ProjectionType;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/video/projection/ProjectionType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    const/4 v3, 0x2

    if-eq v0, v3, :cond_0

    return v2

    .line 1883
    :cond_0
    iget v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->fovX:F

    const/high16 v3, 0x43b40000    # 360.0f

    cmpl-float v0, v0, v3

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->is3D:Z

    if-nez v0, :cond_4

    .line 1884
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v3, "pacific"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1885
    iget p0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->width:I

    const/16 v0, 0x1400

    if-lt p0, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1

    .line 1886
    :cond_2
    sget-object v0, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v3, "monterey"

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1887
    iget p0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->width:I

    const/16 v0, 0x1770

    if-lt p0, v0, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    :goto_1
    return v1

    :cond_4
    return v2
.end method

.method private logEvent(Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;)V
    .locals 2

    .line 1521
    invoke-direct {p0, p1}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->logEventToLogcat(Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;)V

    .line 1522
    iget-wide v0, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->nativePtr:J

    invoke-virtual {p1}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v0, v1, p1}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->nativeReportAnalyticsEvent(JLjava/lang/String;)V

    return-void
.end method

.method private logEventToLogcat(Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;)V
    .locals 5

    .line 1526
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Event : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1527
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    div-int/lit16 v0, v0, 0x3e8

    const/4 v1, 0x0

    :goto_0
    if-gt v1, v0, :cond_0

    mul-int/lit16 v2, v1, 0x3e8

    add-int/lit8 v1, v1, 0x1

    mul-int/lit16 v3, v1, 0x3e8

    .line 1531
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    invoke-static {v4, v3}, Ljava/lang/Math;->min(II)I

    move-result v3

    .line 1532
    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    const-string v3, "VideoPlayerAnalytics"

    invoke-static {v3, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    return-void
.end method

.method private maybeAddAdaptivePlaylistJSON(Lcom/oculus/video/analytics/VideoAnalyticsSession;Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;)V
    .locals 4

    if-eqz p1, :cond_4

    if-eqz p2, :cond_4

    .line 1537
    iget-object v0, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->selectedProfileWithTimeline:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->availableProfiles:Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_1

    .line 1542
    :cond_0
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "update_count"

    .line 1543
    iget v2, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->playListUpdatePeriodicCount:I

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string v1, "selected"

    .line 1544
    new-instance v2, Lorg/json/JSONObject;

    iget-object v3, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->selectedProfileWithTimeline:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1545
    new-instance v1, Lorg/json/JSONArray;

    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 1546
    iget-object p1, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->availableProfiles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    if-nez v2, :cond_1

    goto :goto_0

    .line 1550
    :cond_1
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    invoke-virtual {v1, v3}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    goto :goto_0

    .line 1552
    :cond_2
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result p1

    if-eqz p1, :cond_3

    const-string p1, "playlist"

    .line 1553
    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    const-string p1, "adaptive_playlist"

    .line 1555
    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, p1, v0}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p1, "VideoPlayerAnalytics"

    const-string p2, "Unable to construct adaptive playlist JSON"

    .line 1557
    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_4
    :goto_1
    return-void
.end method

.method private static maybeAddPausedDuration(Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V
    .locals 6

    .line 1716
    iget-wide v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->pauseStartTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 1720
    :cond_0
    iget-wide v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->totalPausedDurationMs:J

    iget-wide v4, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->pauseStartTimeMs:J

    sub-long/2addr p1, v4

    add-long/2addr v0, p1

    iput-wide v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->totalPausedDurationMs:J

    .line 1721
    iput-wide v2, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->pauseStartTimeMs:J

    return-void
.end method

.method private maybeLogDroppedFramesEvent(Lcom/oculus/video/analytics/VideoAnalyticsSession;ZJ)V
    .locals 5

    const-string v0, "on_dropped_frames"

    if-nez p2, :cond_0

    .line 1647
    invoke-static {p1, v0}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->canLogEvent(Lcom/oculus/video/analytics/VideoAnalyticsSession;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-wide v1, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->accumulatedDroppedFrames:J

    const-wide/16 v3, 0x32

    cmp-long p2, v1, v3

    if-ltz p2, :cond_1

    .line 1650
    :cond_0
    :try_start_0
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->newEvent(Lcom/oculus/video/analytics/VideoAnalyticsSession;Ljava/lang/String;J)Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;

    move-result-object p2

    const-string p3, "elapsed_time_ms"

    .line 1651
    iget-wide v0, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->accumulatedDroppedFramesElapsedTimeMs:J

    invoke-virtual {p2, p3, v0, v1}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p3

    const-string p4, "dropped_delayed_frames_count"

    iget-wide v0, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->accumulatedDelayedDroppedFrames:J

    .line 1652
    invoke-virtual {p3, p4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p3

    const-string p4, "dropped_unconsumed_frames_count"

    iget-wide v0, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->accumulatedUnconsumedDroppedFrames:J

    .line 1653
    invoke-virtual {p3, p4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p3

    const-string p4, "dropped_frames_count"

    iget-wide v0, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->accumulatedDroppedFrames:J

    .line 1654
    invoke-virtual {p3, p4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p3

    const-string p4, "decoded_frames_count"

    iget-wide v0, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->accumulatedDecodedFrames:J

    .line 1655
    invoke-virtual {p3, p4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1657
    invoke-direct {p0, p2}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->logEvent(Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p2

    .line 1659
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string p4, "Exception when log dropped frame: "

    invoke-virtual {p3, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "VideoPlayerAnalytics"

    invoke-static {p3, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-wide/16 p2, 0x0

    .line 1662
    iput-wide p2, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->accumulatedDroppedFramesElapsedTimeMs:J

    .line 1663
    iput-wide p2, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->accumulatedDelayedDroppedFrames:J

    .line 1664
    iput-wide p2, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->accumulatedUnconsumedDroppedFrames:J

    .line 1665
    iput-wide p2, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->accumulatedDroppedFrames:J

    .line 1666
    iput-wide p2, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->accumulatedDecodedFrames:J

    :cond_1
    return-void
.end method

.method private maybeLogFatalError(Lcom/oculus/video/analytics/VideoAnalyticsSession;Ljava/lang/Throwable;J)V
    .locals 1

    if-nez p2, :cond_0

    return-void

    .line 368
    :cond_0
    invoke-virtual {p2}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->fatalErrorMessage:Ljava/lang/String;

    :try_start_0
    const-string v0, "on_fatal_error"

    .line 371
    invoke-direct {p0, p1, v0, p3, p4}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->newEvent(Lcom/oculus/video/analytics/VideoAnalyticsSession;Ljava/lang/String;J)Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;

    move-result-object p3

    .line 372
    iget-object p1, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->provider:Ljava/lang/String;

    invoke-direct {p0, p2, p1, p3}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->addErrorDataToEvent(Ljava/lang/Throwable;Ljava/lang/String;Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;)V

    .line 373
    invoke-direct {p0, p3}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->logEvent(Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 375
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception when log fatal error: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoPlayerAnalytics"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private maybeLogPlaybackStart(Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V
    .locals 2

    .line 1671
    iget-boolean v0, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->didPlaybackStart:Z

    if-eqz v0, :cond_0

    return-void

    .line 1675
    :cond_0
    iget-boolean v0, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->didPauseBeforeLoad:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    .line 1676
    iput-boolean v0, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->didPauseBeforeLoad:Z

    .line 1679
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->onPause(Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V

    :cond_1
    const/4 v0, 0x1

    .line 1682
    iput-boolean v0, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->didPlaybackStart:Z

    .line 1683
    iget-wide v0, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->videoStartTimeMs:J

    sub-long v0, p2, v0

    iput-wide v0, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->loadDurationMs:J

    :try_start_0
    const-string v0, "on_start_playback"

    .line 1686
    invoke-direct {p0, p1, v0, p2, p3}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->newEvent(Lcom/oculus/video/analytics/VideoAnalyticsSession;Ljava/lang/String;J)Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->logEvent(Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 1688
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception when log playback start: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoPlayerAnalytics"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private static maybeLogResumeSample(Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V
    .locals 5

    .line 1705
    iget-wide v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->resumeStartTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 1709
    :cond_0
    iget-wide v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->resumeStartTimeMs:J

    sub-long/2addr p1, v0

    .line 1710
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->resumeDurationMsSampler:Lcom/oculus/video/analytics/DataSampler;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/video/analytics/DataSampler;->sample(J)V

    .line 1712
    iput-wide v2, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->resumeStartTimeMs:J

    return-void
.end method

.method private static maybeLogSeekSample(Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V
    .locals 5

    .line 1693
    iget-wide v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->seekStartTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 1697
    :cond_0
    iget-wide v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->seekStartTimeMs:J

    sub-long/2addr p1, v0

    .line 1698
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->seekDurationMsSampler:Lcom/oculus/video/analytics/DataSampler;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/video/analytics/DataSampler;->sample(J)V

    .line 1699
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->seekDurationMsPeriodicSampler:Lcom/oculus/video/analytics/DataSampler;

    invoke-virtual {v0, p1, p2}, Lcom/oculus/video/analytics/DataSampler;->sample(J)V

    .line 1701
    iput-wide v2, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->seekStartTimeMs:J

    return-void
.end method

.method private maybeLogStreamingSampleEvent(Lcom/oculus/video/analytics/VideoAnalyticsSession;ZJ)V
    .locals 9

    const-string v0, "bitrate"

    const-string v1, "on_streaming_update"

    const-wide/16 v2, 0x0

    if-eqz p2, :cond_0

    .line 1562
    iget-wide v4, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->accumulatedStreamedBytes:J

    cmp-long p2, v4, v2

    if-gtz p2, :cond_1

    .line 1563
    :cond_0
    invoke-static {p1, v1}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->canLogEvent(Lcom/oculus/video/analytics/VideoAnalyticsSession;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_8

    .line 1564
    :cond_1
    invoke-static {p1, v1}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->getLastEventTimeMs(Lcom/oculus/video/analytics/VideoAnalyticsSession;Ljava/lang/String;)J

    move-result-wide v4

    sub-long v4, p3, v4

    .line 1567
    :try_start_0
    invoke-direct {p0, p1, v1, p3, p4}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->newEvent(Lcom/oculus/video/analytics/VideoAnalyticsSession;Ljava/lang/String;J)Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;

    move-result-object p2

    const-string p3, "elapsed_time_ms"

    .line 1569
    invoke-virtual {p2, p3, v4, v5}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p3

    const-string p4, "streamed_bytes_count"

    iget-wide v4, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->accumulatedStreamedBytes:J

    .line 1570
    invoke-virtual {p3, p4, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1571
    iget-object p3, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->bufferAheadDurationMsPeriodicSampler:Lcom/oculus/video/analytics/DataSampler;

    const/4 p4, 0x0

    invoke-virtual {p3, p2, p4, p4}, Lcom/oculus/video/analytics/DataSampler;->appendToEvent(Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;ZZ)V

    .line 1572
    iget-object p3, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->streamingBitrateBpsPeriodicSampler:Lcom/oculus/video/analytics/DataSampler;

    invoke-virtual {p3, p2, p4, p4}, Lcom/oculus/video/analytics/DataSampler;->appendToEvent(Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;ZZ)V

    .line 1573
    iget-object p3, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->responseTimeMsPeriodicSampler:Lcom/oculus/video/analytics/DataSampler;

    invoke-virtual {p3, p2, p4, p4}, Lcom/oculus/video/analytics/DataSampler;->appendToEvent(Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;ZZ)V

    .line 1576
    iget p3, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->videoBitrate:I

    if-gtz p3, :cond_2

    iget-object p3, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->selectedProfile:Ljava/util/Map;

    if-eqz p3, :cond_2

    iget-object p3, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->selectedProfile:Ljava/util/Map;

    .line 1578
    invoke-interface {p3, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result p3
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    if-eqz p3, :cond_2

    .line 1580
    :try_start_1
    iget-object p3, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->selectedProfile:Ljava/util/Map;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p3

    .line 1581
    invoke-static {p3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p3

    iput p3, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->videoBitrate:I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 1583
    :catch_0
    :try_start_2
    iput p4, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->videoBitrate:I

    .line 1586
    :cond_2
    :goto_0
    iget p3, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->videoBitrate:I

    if-lez p3, :cond_3

    const-string p3, "video_bitrate"

    .line 1587
    iget v0, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->videoBitrate:I

    invoke-virtual {p2, p3, v0}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1590
    :cond_3
    iget-wide v0, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->lastSyncPlaybackDelayMs:J

    const-wide/32 v4, -0x36ee80

    cmp-long p3, v0, v4

    if-lez p3, :cond_4

    const-string p3, "sync_playback_delay_ms"

    .line 1591
    iget-wide v0, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->lastSyncPlaybackDelayMs:J

    invoke-virtual {p2, p3, v0, v1}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    :cond_4
    const-string p3, "width"

    .line 1595
    iget v0, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->width:I

    invoke-virtual {p2, p3, v0}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object p3

    const-string v0, "height"

    iget v1, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->height:I

    .line 1596
    invoke-virtual {p3, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1599
    iget-object p3, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->stallDurationMsPeriodicSampler:Lcom/oculus/video/analytics/DataSampler;

    const/4 v0, 0x1

    invoke-virtual {p3, p2, v0, p4}, Lcom/oculus/video/analytics/DataSampler;->appendToEvent(Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;ZZ)V

    .line 1600
    iget-object p3, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->bufferingDurationMsPeriodicSampler:Lcom/oculus/video/analytics/DataSampler;

    invoke-virtual {p3, p2, v0, p4}, Lcom/oculus/video/analytics/DataSampler;->appendToEvent(Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;ZZ)V

    .line 1601
    iget-object p3, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->seekDurationMsPeriodicSampler:Lcom/oculus/video/analytics/DataSampler;

    invoke-virtual {p3, p2, v0, p4}, Lcom/oculus/video/analytics/DataSampler;->appendToEvent(Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;ZZ)V

    .line 1604
    iget-wide p3, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->streamingUpdateFrameDecodeTimeMs:J

    long-to-float p3, p3

    const/high16 p4, 0x447a0000    # 1000.0f

    const/4 v0, 0x0

    cmpl-float v1, p3, v0

    if-lez v1, :cond_5

    .line 1605
    iget-wide v4, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->streamingUpdateDecodedFrames:J

    long-to-float v4, v4

    mul-float v4, v4, p4

    div-float/2addr v4, p3

    goto :goto_1

    :cond_5
    const/4 v4, 0x0

    :goto_1
    if-lez v1, :cond_6

    .line 1609
    iget-wide v5, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->streamingUpdateDecodedFrames:J

    iget-wide v7, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->streamingUpdateDroppedFrames:J

    sub-long/2addr v5, v7

    long-to-float v1, v5

    mul-float v1, v1, p4

    div-float p3, v1, p3

    goto :goto_2

    :cond_6
    const/4 p3, 0x0

    :goto_2
    const-string p4, "fps"

    .line 1614
    iget v1, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->fps:F

    cmpl-float v0, v1, v0

    if-lez v0, :cond_7

    iget v0, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->fps:F

    float-to-double v0, v0

    goto :goto_3

    :cond_7
    float-to-double v0, v4

    :goto_3
    invoke-virtual {p2, p4, v0, v1}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object p4

    const-string v0, "effective_fps"

    float-to-double v4, p3

    .line 1615
    invoke-virtual {p4, v0, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    move-result-object p3

    const-string p4, "dropped_delayed_frames_count"

    iget-wide v0, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->streamingUpdateDelayedDroppedFrames:J

    .line 1616
    invoke-virtual {p3, p4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p3

    const-string p4, "dropped_unconsumed_frames_count"

    iget-wide v0, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->streamingUpdateUnconsumedDroppedFrames:J

    .line 1617
    invoke-virtual {p3, p4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p3

    const-string p4, "dropped_frames_count"

    iget-wide v0, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->streamingUpdateDroppedFrames:J

    .line 1618
    invoke-virtual {p3, p4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p3

    const-string p4, "decoded_frames_count"

    iget-wide v0, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->streamingUpdateDecodedFrames:J

    .line 1619
    invoke-virtual {p3, p4, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1622
    invoke-direct {p0, p1, p2}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->addHttpDataToEvent(Lcom/oculus/video/analytics/VideoAnalyticsSession;Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;)V

    .line 1625
    invoke-direct {p0, p1, p2}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->maybeAddAdaptivePlaylistJSON(Lcom/oculus/video/analytics/VideoAnalyticsSession;Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;)V

    .line 1627
    invoke-direct {p0, p2}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->logEvent(Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;)V

    .line 1630
    iput-wide v2, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->accumulatedStreamingTimeMs:J

    .line 1631
    iput-wide v2, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->accumulatedStreamedBytes:J

    .line 1633
    iput-wide v2, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->streamingUpdateFrameDecodeTimeMs:J

    .line 1634
    iput-wide v2, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->streamingUpdateDelayedDroppedFrames:J

    .line 1635
    iput-wide v2, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->streamingUpdateUnconsumedDroppedFrames:J

    .line 1636
    iput-wide v2, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->streamingUpdateDecodedFrames:J

    .line 1637
    iput-wide v2, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->streamingUpdateDroppedFrames:J

    .line 1639
    invoke-virtual {p1}, Lcom/oculus/video/analytics/VideoAnalyticsSession;->resetPeriodicValues()V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_4

    :catch_1
    move-exception p1

    .line 1641
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Unable to construct streaming sample JSON: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoPlayerAnalytics"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_8
    :goto_4
    return-void
.end method

.method private static maybeLogSubtitleInfo(Lcom/oculus/video/analytics/VideoAnalyticsSession;Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;J)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1743
    invoke-static {p0, p2, p3}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->addLastSubtitleDurationMs(Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V

    .line 1745
    iget-object p2, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->subtitleDurationMs:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->isEmpty()Z

    move-result p2

    if-eqz p2, :cond_0

    return-void

    .line 1749
    :cond_0
    iget-object p2, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->subtitleDurationMs:Ljava/util/HashMap;

    invoke-virtual {p2}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p2

    .line 1750
    invoke-interface {p2}, Ljava/util/Set;->size()I

    move-result p3

    new-array p3, p3, [Ljava/lang/String;

    invoke-interface {p2, p3}, Ljava/util/Set;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p3

    check-cast p3, [Ljava/lang/String;

    .line 1751
    invoke-static {p3}, Ljava/util/Arrays;->sort([Ljava/lang/Object;)V

    .line 1752
    invoke-static {p3}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    const-string v0, "subtitle_list"

    invoke-virtual {p1, v0, p3}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const/4 p3, 0x0

    const-wide/16 v0, 0x0

    .line 1757
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1758
    iget-object v3, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->subtitleDurationMs:Ljava/util/HashMap;

    invoke-virtual {v3, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Long;

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v3, v0

    if-lez v5, :cond_1

    move-object p3, v2

    move-wide v0, v3

    goto :goto_0

    :cond_2
    if-eqz p3, :cond_3

    const-string p0, "most_used_subtitle"

    .line 1766
    invoke-virtual {p1, p0, p3}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_3
    return-void
.end method

.method private newEvent(Lcom/oculus/video/analytics/VideoAnalyticsSession;Ljava/lang/String;J)Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1491
    new-instance v0, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;

    const-string v1, "oculus_video_sdk_playback_event"

    invoke-direct {v0, v1, p2}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1493
    iget-object v1, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->lastEventTimeMs:Ljava/util/Map;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, p2, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "event_type"

    .line 1495
    invoke-virtual {v0, v1, p2}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object v1

    iget-wide v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->creationTimeMs:J

    sub-long/2addr p3, v2

    const-string v2, "time_from_launch_ms"

    .line 1496
    invoke-virtual {v1, v2, p3, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object p3

    iget-object p4, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->ovrUserID:Ljava/lang/String;

    const-string v1, "ovr_user_id"

    .line 1497
    invoke-virtual {p3, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    move-result-object p3

    sget-object p4, Landroid/os/Build;->BOARD:Ljava/lang/String;

    const-string v1, "board"

    .line 1498
    invoke-virtual {p3, v1, p4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string p3, "on_start_session"

    .line 1501
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "on_stop_session"

    .line 1502
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-nez p3, :cond_0

    const-string p3, "on_fatal_error"

    .line 1503
    invoke-virtual {p3, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 1504
    :cond_0
    iget-object p2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->gkResult:Ljava/lang/String;

    const-string p3, "gatekeepers"

    invoke-virtual {v0, p3, p2}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1507
    :cond_1
    invoke-static {p1, v0}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->setInitializationInfo(Lcom/oculus/video/analytics/VideoAnalyticsSession;Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;)V

    .line 1508
    invoke-static {p1, v0}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->setExtractedInfo(Lcom/oculus/video/analytics/VideoAnalyticsSession;Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;)V

    .line 1509
    invoke-static {p1, v0}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->setPlaybackStartInfo(Lcom/oculus/video/analytics/VideoAnalyticsSession;Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;)V

    .line 1511
    iget-object p1, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->clientAnalyticsData:Ljava/lang/String;

    .line 1512
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-nez p2, :cond_2

    .line 1513
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p2

    const/16 p3, 0x400

    invoke-static {p2, p3}, Ljava/lang/Math;->min(II)I

    move-result p2

    const/4 p3, 0x0

    .line 1514
    invoke-virtual {p1, p3, p2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    const-string p2, "client_data"

    invoke-virtual {v0, p2, p1}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_2
    return-object v0
.end method

.method private onCompleteSessionImpl(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;J)V
    .locals 16

    move-object/from16 v1, p0

    move-wide/from16 v2, p3

    move-wide/from16 v4, p8

    .line 1238
    iget-object v0, v1, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->sessions:Ljava/util/Map;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Lcom/oculus/video/analytics/VideoAnalyticsSession;

    const-string v7, "VideoPlayerAnalytics"

    if-nez v6, :cond_0

    .line 1240
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onCompleteSessionImpl: Session "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-wide/from16 v8, p1

    invoke-virtual {v0, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " not found"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    move-wide/from16 v8, p1

    move-object/from16 v0, p6

    .line 1245
    iput-object v0, v6, Lcom/oculus/video/analytics/VideoAnalyticsSession;->clientAnalyticsData:Ljava/lang/String;

    move-object/from16 v0, p7

    .line 1248
    invoke-direct {v1, v6, v0, v4, v5}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->maybeLogFatalError(Lcom/oculus/video/analytics/VideoAnalyticsSession;Ljava/lang/Throwable;J)V

    const/4 v0, 0x0

    .line 1253
    :try_start_0
    new-instance v10, Lcom/oculus/video/analytics/RenderingStats;

    move-object/from16 v11, p5

    invoke-direct {v10, v11}, Lcom/oculus/video/analytics/RenderingStats;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1254
    :try_start_1
    iget v0, v6, Lcom/oculus/video/analytics/VideoAnalyticsSession;->fps:F

    const/4 v11, 0x0

    cmpg-float v0, v0, v11

    if-gtz v0, :cond_1

    .line 1255
    iget-wide v11, v10, Lcom/oculus/video/analytics/RenderingStats;->estimatedFrameRate:D

    double-to-float v0, v11

    iput v0, v6, Lcom/oculus/video/analytics/VideoAnalyticsSession;->fps:F
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    :catch_0
    move-object v10, v0

    .line 1264
    :catch_1
    :cond_1
    :goto_0
    iget-object v0, v6, Lcom/oculus/video/analytics/VideoAnalyticsSession;->syncMode:Ljava/lang/String;

    const/4 v12, 0x1

    const-string v13, "none"

    if-eq v0, v13, :cond_2

    const/4 v0, 0x1

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    :goto_1
    invoke-direct {v1, v6, v0, v4, v5}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->maybeLogStreamingSampleEvent(Lcom/oculus/video/analytics/VideoAnalyticsSession;ZJ)V

    .line 1267
    invoke-direct {v1, v6, v12, v4, v5}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->maybeLogDroppedFramesEvent(Lcom/oculus/video/analytics/VideoAnalyticsSession;ZJ)V

    .line 1268
    invoke-static {v6, v4, v5}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->maybeLogSeekSample(Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V

    .line 1269
    invoke-static {v6, v4, v5}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->maybeLogResumeSample(Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V

    .line 1270
    invoke-static {v6, v4, v5}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->maybeAddPausedDuration(Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V

    .line 1272
    invoke-static {v6, v4, v5}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->sampleLastVideoSize(Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V

    .line 1273
    invoke-static {v6, v4, v5}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->sampleLastVideoFormat(Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V

    .line 1275
    sget-object v0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;->COMPLETE_SESSION:Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    invoke-static {v6, v0, v4, v5}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->sessionStateTransit(Lcom/oculus/video/analytics/VideoAnalyticsSession;Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;J)V

    .line 1276
    sget-object v0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;->COMPLETE_SESSION:Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    invoke-static {v6, v4, v5, v0}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->updateHQPlaybackDurations(Lcom/oculus/video/analytics/VideoAnalyticsSession;JLcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;)V

    :try_start_2
    const-string v0, "on_stop_session"

    .line 1278
    invoke-direct {v1, v6, v0, v4, v5}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->newEvent(Lcom/oculus/video/analytics/VideoAnalyticsSession;Ljava/lang/String;J)Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;

    move-result-object v0

    .line 1281
    iget-object v13, v6, Lcom/oculus/video/analytics/VideoAnalyticsSession;->fatalErrorMessage:Ljava/lang/String;

    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v13

    if-nez v13, :cond_3

    const-string v13, "fatal_error_message"

    .line 1282
    iget-object v14, v6, Lcom/oculus/video/analytics/VideoAnalyticsSession;->fatalErrorMessage:Ljava/lang/String;

    invoke-virtual {v0, v13, v14}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1287
    :cond_3
    iget-wide v13, v6, Lcom/oculus/video/analytics/VideoAnalyticsSession;->videoStartTimeMs:J

    sub-long v13, v4, v13

    const-string v15, "session_duration_ms"

    .line 1288
    invoke-virtual {v0, v15, v13, v14}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v15, "paused_duration_ms"

    .line 1290
    iget-wide v11, v6, Lcom/oculus/video/analytics/VideoAnalyticsSession;->totalPausedDurationMs:J

    invoke-virtual {v0, v15, v11, v12}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1292
    iget-object v11, v6, Lcom/oculus/video/analytics/VideoAnalyticsSession;->seekDurationMsSampler:Lcom/oculus/video/analytics/DataSampler;

    const/4 v12, 0x0

    const/4 v15, 0x1

    invoke-virtual {v11, v0, v15, v12}, Lcom/oculus/video/analytics/DataSampler;->appendToEvent(Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;ZZ)V

    .line 1294
    iget-object v11, v6, Lcom/oculus/video/analytics/VideoAnalyticsSession;->resumeDurationMsSampler:Lcom/oculus/video/analytics/DataSampler;

    invoke-virtual {v11, v0, v15, v12}, Lcom/oculus/video/analytics/DataSampler;->appendToEvent(Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;ZZ)V

    .line 1296
    iget-object v11, v6, Lcom/oculus/video/analytics/VideoAnalyticsSession;->stallDurationMsSampler:Lcom/oculus/video/analytics/DataSampler;

    invoke-virtual {v11, v0, v15, v12}, Lcom/oculus/video/analytics/DataSampler;->appendToEvent(Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;ZZ)V

    .line 1300
    iget-wide v11, v6, Lcom/oculus/video/analytics/VideoAnalyticsSession;->loadDurationMs:J

    sub-long v11, v13, v11

    iget-wide v8, v6, Lcom/oculus/video/analytics/VideoAnalyticsSession;->totalPausedDurationMs:J

    sub-long/2addr v11, v8

    iget-object v8, v6, Lcom/oculus/video/analytics/VideoAnalyticsSession;->resumeDurationMsSampler:Lcom/oculus/video/analytics/DataSampler;

    .line 1303
    invoke-virtual {v8}, Lcom/oculus/video/analytics/DataSampler;->getSum()J

    move-result-wide v8

    sub-long/2addr v11, v8

    iget-object v8, v6, Lcom/oculus/video/analytics/VideoAnalyticsSession;->seekDurationMsSampler:Lcom/oculus/video/analytics/DataSampler;

    .line 1304
    invoke-virtual {v8}, Lcom/oculus/video/analytics/DataSampler;->getSum()J

    move-result-wide v8

    sub-long/2addr v11, v8

    iget-object v8, v6, Lcom/oculus/video/analytics/VideoAnalyticsSession;->stallDurationMsSampler:Lcom/oculus/video/analytics/DataSampler;

    .line 1305
    invoke-virtual {v8}, Lcom/oculus/video/analytics/DataSampler;->getSum()J

    move-result-wide v8

    sub-long/2addr v11, v8

    const-wide/16 v8, 0x0

    cmp-long v15, v11, v13

    if-gtz v15, :cond_4

    cmp-long v15, v11, v8

    if-gez v15, :cond_5

    .line 1307
    :cond_4
    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Invalid playback_duration_ms: "

    invoke-virtual {v15, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v15, v11, v12}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    :cond_5
    invoke-static {v13, v14, v11, v12}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v8

    const-wide/16 v11, 0x0

    invoke-static {v11, v12, v8, v9}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v8

    const-string v13, "playback_duration_ms"

    .line 1311
    invoke-virtual {v0, v13, v8, v9}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const/high16 v13, 0x42c80000    # 100.0f

    cmp-long v14, v8, v11

    if-lez v14, :cond_7

    .line 1315
    iget-object v11, v6, Lcom/oculus/video/analytics/VideoAnalyticsSession;->hqPlaybackDurationMsSampler:Lcom/oculus/video/analytics/DataSampler;

    invoke-virtual {v11}, Lcom/oculus/video/analytics/DataSampler;->getSum()J

    move-result-wide v11

    long-to-float v11, v11

    mul-float v11, v11, v13

    long-to-float v8, v8

    div-float/2addr v11, v8

    const/4 v8, 0x2

    cmpl-float v9, v11, v13

    if-lez v9, :cond_6

    const-string v9, "Weird thing happening, HVQ=%.02f%% > 1 for Session %d"

    .line 1317
    new-array v12, v8, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v14

    const/4 v15, 0x0

    aput-object v14, v12, v15

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v14

    const/4 v15, 0x1

    aput-object v14, v12, v15

    invoke-static {v9, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    const-string v9, "hvq_percentage"

    .line 1319
    invoke-static {v11, v13}, Ljava/lang/Math;->min(FF)F

    move-result v12

    float-to-double v14, v12

    invoke-virtual {v0, v9, v14, v15}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v9, "Logging HVQ=%.02f for Session %d"

    .line 1320
    new-array v8, v8, [Ljava/lang/Object;

    invoke-static {v11}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v11

    const/4 v12, 0x0

    aput-object v11, v8, v12

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    const/4 v12, 0x1

    aput-object v11, v8, v12

    invoke-static {v9, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    :cond_7
    const-string v8, "HVQ not available for Session %d, skip logging."

    const/4 v9, 0x1

    .line 1322
    new-array v11, v9, [Ljava/lang/Object;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    const/4 v12, 0x0

    aput-object v9, v11, v12

    invoke-static {v8, v11}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    const-string v8, "dropped_delayed_frames_count"

    .line 1326
    iget-wide v11, v6, Lcom/oculus/video/analytics/VideoAnalyticsSession;->totalDelayedDroppedFrames:J

    invoke-virtual {v0, v8, v11, v12}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "dropped_unconsumed_frames_count"

    iget-wide v11, v6, Lcom/oculus/video/analytics/VideoAnalyticsSession;->totalUnconsumedDroppedFrames:J

    .line 1327
    invoke-virtual {v8, v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "dropped_frames_count"

    iget-wide v11, v6, Lcom/oculus/video/analytics/VideoAnalyticsSession;->totalDroppedFrames:J

    .line 1328
    invoke-virtual {v8, v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v8

    const-string v9, "decoded_frames_count"

    iget-wide v11, v6, Lcom/oculus/video/analytics/VideoAnalyticsSession;->totalDecodedFrames:J

    .line 1329
    invoke-virtual {v8, v9, v11, v12}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1332
    invoke-direct {v1, v6, v0}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->addHttpDataToEvent(Lcom/oculus/video/analytics/VideoAnalyticsSession;Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;)V

    const-string v8, "streamed_bytes_count"

    .line 1336
    iget-wide v11, v6, Lcom/oculus/video/analytics/VideoAnalyticsSession;->totalStreamedBytes:J

    invoke-virtual {v0, v8, v11, v12}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 1338
    iget-object v8, v6, Lcom/oculus/video/analytics/VideoAnalyticsSession;->streamingBitrateBpsSampler:Lcom/oculus/video/analytics/DataSampler;

    const/4 v9, 0x0

    const/4 v11, 0x1

    invoke-virtual {v8, v0, v9, v11}, Lcom/oculus/video/analytics/DataSampler;->appendToEvent(Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;ZZ)V

    .line 1340
    iget-object v8, v6, Lcom/oculus/video/analytics/VideoAnalyticsSession;->bufferAheadDurationMsSampler:Lcom/oculus/video/analytics/DataSampler;

    invoke-virtual {v8, v0, v9, v11}, Lcom/oculus/video/analytics/DataSampler;->appendToEvent(Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;ZZ)V

    .line 1342
    iget-object v8, v6, Lcom/oculus/video/analytics/VideoAnalyticsSession;->responseTimeMsSampler:Lcom/oculus/video/analytics/DataSampler;

    invoke-virtual {v8, v0, v9, v11}, Lcom/oculus/video/analytics/DataSampler;->appendToEvent(Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;ZZ)V

    .line 1345
    iget-object v8, v6, Lcom/oculus/video/analytics/VideoAnalyticsSession;->bufferingDurationMsSampler:Lcom/oculus/video/analytics/DataSampler;

    invoke-virtual {v8, v0, v11, v9}, Lcom/oculus/video/analytics/DataSampler;->appendToEvent(Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;ZZ)V

    .line 1349
    iget-object v8, v6, Lcom/oculus/video/analytics/VideoAnalyticsSession;->vqmSampler:Lcom/oculus/video/analytics/DataSampler;

    invoke-virtual {v8, v0, v9, v11}, Lcom/oculus/video/analytics/DataSampler;->appendToEvent(Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;ZZ)V

    .line 1351
    iget-object v8, v6, Lcom/oculus/video/analytics/VideoAnalyticsSession;->videoBitrateSampler:Lcom/oculus/video/analytics/DataSampler;

    invoke-virtual {v8, v0, v9, v11}, Lcom/oculus/video/analytics/DataSampler;->appendToEvent(Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;ZZ)V

    .line 1353
    iget-object v8, v6, Lcom/oculus/video/analytics/VideoAnalyticsSession;->videoSizeSampler:Lcom/oculus/video/analytics/DataSampler;

    invoke-virtual {v8, v0, v9, v11}, Lcom/oculus/video/analytics/DataSampler;->appendToEvent(Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;ZZ)V

    if-eqz v10, :cond_8

    .line 1357
    invoke-virtual {v10, v0}, Lcom/oculus/video/analytics/RenderingStats;->appendToEvent(Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;)V

    :cond_8
    const-string v8, "power_consumed_mAh"

    .line 1361
    iget-object v9, v6, Lcom/oculus/video/analytics/VideoAnalyticsSession;->powerMonitor:Lcom/oculus/video/analytics/PowerMonitor;

    invoke-virtual {v9}, Lcom/oculus/video/analytics/PowerMonitor;->getMeasurementMAh()D

    move-result-wide v9

    invoke-virtual {v0, v8, v9, v10}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1362
    iget-object v8, v6, Lcom/oculus/video/analytics/VideoAnalyticsSession;->powerMonitor:Lcom/oculus/video/analytics/PowerMonitor;

    invoke-virtual {v8}, Lcom/oculus/video/analytics/PowerMonitor;->stopMeasure()V

    const-string v8, "max_position_ms"

    .line 1365
    invoke-virtual {v0, v8, v2, v3}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v8, "playback_percentage"

    long-to-float v2, v2

    mul-float v2, v2, v13

    float-to-double v2, v2

    .line 1367
    iget-wide v9, v6, Lcom/oculus/video/analytics/VideoAnalyticsSession;->durationMs:J

    long-to-float v9, v9

    float-to-double v9, v9

    const-wide v11, 0x3eb0c6f7a0b5ed8dL    # 1.0E-6

    .line 1368
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(DD)D

    move-result-wide v9

    div-double/2addr v2, v9

    .line 1367
    invoke-virtual {v0, v8, v2, v3}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1371
    invoke-static {v6, v0, v4, v5}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->maybeLogSubtitleInfo(Lcom/oculus/video/analytics/VideoAnalyticsSession;Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;J)V

    .line 1373
    invoke-direct {v1, v0}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->logEvent(Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_3

    :catch_2
    move-exception v0

    .line 1375
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception when log completed video session: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1378
    :goto_3
    iget-object v0, v1, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->sessions:Ljava/util/Map;

    invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 1379
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Completed session. ID="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v6, Lcom/oculus/video/analytics/VideoAnalyticsSession;->ID:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v7, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private onExtractTimeline(Lcom/oculus/video/analytics/VideoAnalyticsSession;JZ)V
    .locals 1

    .line 551
    iget-boolean v0, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->didExtractVideo:Z

    xor-int/lit8 v0, v0, 0x1

    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 552
    iput-wide p2, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->durationMs:J

    .line 553
    iput-boolean p4, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->isSeekable:Z

    return-void
.end method

.method private onExtractVideo(Lcom/oculus/video/analytics/VideoAnalyticsSession;IIFZLjava/lang/String;Ljava/lang/String;FFLjava/lang/String;Ljava/lang/String;J)V
    .locals 2

    .line 623
    iget-boolean v0, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->didExtractVideo:Z

    const/4 v1, 0x1

    xor-int/2addr v0, v1

    invoke-static {v0}, Lcom/oculus/android/exoplayer2/util/Assertions;->checkState(Z)V

    .line 624
    iput-boolean v1, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->didExtractVideo:Z

    .line 625
    iput p2, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->width:I

    .line 626
    iput p3, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->height:I

    .line 627
    iput p4, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->fps:F

    .line 628
    iput-boolean p5, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->is3D:Z

    .line 629
    iput-object p6, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->syncMode:Ljava/lang/String;

    .line 630
    invoke-static {p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_0

    iget-object p2, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->projection:Ljava/lang/String;

    goto :goto_0

    .line 632
    :cond_0
    invoke-virtual {p7}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object p2

    :goto_0
    iput-object p2, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->projection:Ljava/lang/String;

    const/4 p2, 0x0

    cmpl-float p3, p8, p2

    if-lez p3, :cond_1

    goto :goto_1

    .line 633
    :cond_1
    iget p8, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->fovX:F

    :goto_1
    iput p8, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->fovX:F

    cmpl-float p2, p9, p2

    if-lez p2, :cond_2

    goto :goto_2

    .line 634
    :cond_2
    iget p9, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->fovY:F

    :goto_2
    iput p9, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->fovY:F

    .line 635
    iput-object p10, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->videoMimeType:Ljava/lang/String;

    .line 636
    iput-object p11, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->videoRendererName:Ljava/lang/String;

    :try_start_0
    const-string p2, "on_extract_video"

    .line 639
    invoke-direct {p0, p1, p2, p12, p13}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->newEvent(Lcom/oculus/video/analytics/VideoAnalyticsSession;Ljava/lang/String;J)Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->logEvent(Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p1

    .line 641
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Exception when log extract video: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "VideoPlayerAnalytics"

    invoke-static {p2, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_3
    return-void
.end method

.method private onPause(Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V
    .locals 1

    .line 1067
    invoke-static {p1, p2, p3}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->maybeLogSeekSample(Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V

    .line 1069
    invoke-static {p1, p2, p3}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->maybeLogResumeSample(Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V

    .line 1071
    iput-wide p2, p1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->pauseStartTimeMs:J

    .line 1072
    sget-object v0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;->PAUSE:Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    invoke-static {p1, v0, p2, p3}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->sessionStateTransit(Lcom/oculus/video/analytics/VideoAnalyticsSession;Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;J)V

    .line 1073
    sget-object v0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;->PAUSE:Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    invoke-static {p1, p2, p3, v0}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->recordHQPlaybackEnd(Lcom/oculus/video/analytics/VideoAnalyticsSession;JLcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;)V

    return-void
.end method

.method private static recordHQPlaybackEnd(Lcom/oculus/video/analytics/VideoAnalyticsSession;JLcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;)V
    .locals 0

    .line 1911
    iget-object p0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->hqPlaybackTimeRangeMsList:Ljava/util/LinkedList;

    invoke-static {p0, p1, p2, p3}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->recordPlaybackEndTime(Ljava/util/LinkedList;JLcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;)V

    return-void
.end method

.method private static recordHQPlaybackStart(Lcom/oculus/video/analytics/VideoAnalyticsSession;JLcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;)V
    .locals 2

    .line 1897
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->state:Lcom/oculus/video/analytics/VideoSessionState;

    sget-object v1, Lcom/oculus/video/analytics/VideoSessionState;->PLAYING:Lcom/oculus/video/analytics/VideoSessionState;

    if-ne v0, v1, :cond_0

    .line 1898
    invoke-static {p0}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->isVideoHQ(Lcom/oculus/video/analytics/VideoAnalyticsSession;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1899
    iget-object p0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->hqPlaybackTimeRangeMsList:Ljava/util/LinkedList;

    invoke-static {p0, p1, p2, p3}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->recordPlaybackStartTime(Ljava/util/LinkedList;JLcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;)V

    :cond_0
    return-void
.end method

.method private static recordPlaybackEndTime(Ljava/util/LinkedList;JLcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;J",
            "Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;",
            ")V"
        }
    .end annotation

    .line 1915
    invoke-virtual {p0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p3

    if-nez p3, :cond_0

    .line 1916
    invoke-virtual {p0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/Pair;

    .line 1917
    iget-object v0, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    const-wide/16 v2, -0x1

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    .line 1918
    invoke-virtual {p0}, Ljava/util/LinkedList;->pollLast()Ljava/lang/Object;

    .line 1919
    new-instance v0, Landroid/util/Pair;

    iget-object p3, p3, Landroid/util/Pair;->first:Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-direct {v0, p3, p1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method private static recordPlaybackStartTime(Ljava/util/LinkedList;JLcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;J",
            "Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;",
            ")V"
        }
    .end annotation

    .line 1905
    invoke-virtual {p0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result p3

    const-wide/16 v0, -0x1

    if-nez p3, :cond_0

    invoke-virtual {p0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Landroid/util/Pair;

    iget-object p3, p3, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long p3, v2, v0

    if-eqz p3, :cond_1

    .line 1906
    :cond_0
    new-instance p3, Landroid/util/Pair;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-direct {p3, p1, p2}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, p3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method private static sampleLastVideoFormat(Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V
    .locals 7

    .line 1393
    iget-wide v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->lastVideoFormatSampleTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_1

    .line 1395
    iget-wide v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->lastVideoFormatSampleTimeMs:J

    sub-long v0, p1, v0

    .line 1396
    iget-wide v2, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->vqm:D

    const-wide/16 v4, 0x0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_0

    .line 1398
    iget-object v2, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->vqmSampler:Lcom/oculus/video/analytics/DataSampler;

    iget-wide v3, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->vqm:D

    const-wide v5, 0x41cdcd6500000000L    # 1.0E9

    mul-double v3, v3, v5

    double-to-long v3, v3

    long-to-double v5, v0

    invoke-virtual {v2, v3, v4, v5, v6}, Lcom/oculus/video/analytics/DataSampler;->sample(JD)V

    .line 1400
    :cond_0
    iget v2, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->videoBitrate:I

    if-lez v2, :cond_1

    .line 1401
    iget-object v2, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->videoBitrateSampler:Lcom/oculus/video/analytics/DataSampler;

    iget v3, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->videoBitrate:I

    int-to-long v3, v3

    long-to-double v0, v0

    invoke-virtual {v2, v3, v4, v0, v1}, Lcom/oculus/video/analytics/DataSampler;->sample(JD)V

    .line 1404
    :cond_1
    iput-wide p1, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->lastVideoFormatSampleTimeMs:J

    return-void
.end method

.method private static sampleLastVideoSize(Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V
    .locals 5

    .line 1383
    iget-wide v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->lastVideoSizeChangeTimeMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 1384
    iget v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->width:I

    int-to-long v0, v0

    iget v2, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->height:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    .line 1386
    iget-wide v2, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->lastVideoSizeChangeTimeMs:J

    sub-long v2, p1, v2

    .line 1387
    iget-object v4, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->videoSizeSampler:Lcom/oculus/video/analytics/DataSampler;

    long-to-double v2, v2

    invoke-virtual {v4, v0, v1, v2, v3}, Lcom/oculus/video/analytics/DataSampler;->sample(JD)V

    .line 1389
    :cond_0
    iput-wide p1, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->lastVideoSizeChangeTimeMs:J

    return-void
.end method

.method private static sessionStateTransit(Lcom/oculus/video/analytics/VideoAnalyticsSession;Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;J)V
    .locals 9

    .line 1792
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->state:Lcom/oculus/video/analytics/VideoSessionState;

    .line 1794
    sget-object v1, Lcom/oculus/video/analytics/VideoPlayerAnalytics$25;->$SwitchMap$com$oculus$video$analytics$VideoPlayerAnalytics$VideoSessionEvent:[I

    invoke-virtual {p1}, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x4

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x0

    const/4 v6, 0x1

    packed-switch v1, :pswitch_data_0

    move-object v1, v0

    :cond_0
    :goto_0
    const/4 v7, 0x0

    goto :goto_3

    .line 1854
    :pswitch_0
    sget-object v1, Lcom/oculus/video/analytics/VideoSessionState;->SESSION_END:Lcom/oculus/video/analytics/VideoSessionState;

    :cond_1
    :goto_1
    const/4 v7, 0x1

    goto :goto_3

    .line 1836
    :pswitch_1
    sget-object v1, Lcom/oculus/video/analytics/VideoPlayerAnalytics$25;->$SwitchMap$com$oculus$video$analytics$VideoSessionState:[I

    invoke-virtual {v0}, Lcom/oculus/video/analytics/VideoSessionState;->ordinal()I

    move-result v7

    aget v1, v1, v7

    if-eq v1, v4, :cond_3

    if-eq v1, v3, :cond_3

    if-eq v1, v2, :cond_3

    const/4 v7, 0x5

    if-eq v1, v7, :cond_2

    .line 1847
    sget-object v1, Lcom/oculus/video/analytics/VideoSessionState;->SEEKING:Lcom/oculus/video/analytics/VideoSessionState;

    goto :goto_0

    .line 1844
    :cond_2
    sget-object v1, Lcom/oculus/video/analytics/VideoSessionState;->PAUSED:Lcom/oculus/video/analytics/VideoSessionState;

    goto :goto_1

    .line 1840
    :cond_3
    sget-object v1, Lcom/oculus/video/analytics/VideoSessionState;->SEEKING:Lcom/oculus/video/analytics/VideoSessionState;

    goto :goto_1

    .line 1831
    :pswitch_2
    sget-object v1, Lcom/oculus/video/analytics/VideoSessionState;->RESUMING:Lcom/oculus/video/analytics/VideoSessionState;

    .line 1832
    sget-object v7, Lcom/oculus/video/analytics/VideoSessionState;->PAUSED:Lcom/oculus/video/analytics/VideoSessionState;

    if-ne v0, v7, :cond_0

    goto :goto_1

    .line 1816
    :pswitch_3
    sget-object v1, Lcom/oculus/video/analytics/VideoSessionState;->PAUSED:Lcom/oculus/video/analytics/VideoSessionState;

    .line 1817
    sget-object v7, Lcom/oculus/video/analytics/VideoPlayerAnalytics$25;->$SwitchMap$com$oculus$video$analytics$VideoSessionState:[I

    invoke-virtual {v0}, Lcom/oculus/video/analytics/VideoSessionState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v6, :cond_1

    if-eq v7, v4, :cond_1

    if-eq v7, v3, :cond_1

    if-eq v7, v2, :cond_1

    goto :goto_2

    .line 1801
    :pswitch_4
    sget-object v1, Lcom/oculus/video/analytics/VideoSessionState;->PLAYING:Lcom/oculus/video/analytics/VideoSessionState;

    .line 1802
    sget-object v7, Lcom/oculus/video/analytics/VideoPlayerAnalytics$25;->$SwitchMap$com$oculus$video$analytics$VideoSessionState:[I

    invoke-virtual {v0}, Lcom/oculus/video/analytics/VideoSessionState;->ordinal()I

    move-result v8

    aget v7, v7, v8

    if-eq v7, v6, :cond_1

    if-eq v7, v4, :cond_1

    if-eq v7, v3, :cond_1

    if-eq v7, v2, :cond_1

    :goto_2
    goto :goto_0

    .line 1796
    :pswitch_5
    sget-object v1, Lcom/oculus/video/analytics/VideoSessionState;->LOADING:Lcom/oculus/video/analytics/VideoSessionState;

    .line 1797
    sget-object v7, Lcom/oculus/video/analytics/VideoSessionState;->INIT:Lcom/oculus/video/analytics/VideoSessionState;

    if-ne v0, v7, :cond_0

    goto :goto_1

    :goto_3
    const-string v8, "VideoPlayerAnalytics"

    if-eqz v7, :cond_4

    .line 1864
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    aput-object p1, v2, v6

    aput-object v1, v2, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "state transition: (\'%s\',\'%s\')->\'%s\' at %d"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1866
    :cond_4
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v5

    aput-object p1, v2, v6

    aput-object v1, v2, v4

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    aput-object p1, v2, v3

    const-string p1, "invalid state transition (\'%s\',\'%s\')->\'%s\' detected at %d"

    invoke-static {p1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v8, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1869
    :goto_4
    sget-object p1, Lcom/oculus/video/analytics/VideoSessionState;->PLAYING:Lcom/oculus/video/analytics/VideoSessionState;

    if-ne v0, p1, :cond_5

    if-eq v1, v0, :cond_5

    .line 1870
    iput-wide p2, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->lastPlaybackEndTimeMs:J

    .line 1872
    :cond_5
    sget-object p1, Lcom/oculus/video/analytics/VideoSessionState;->PLAYING:Lcom/oculus/video/analytics/VideoSessionState;

    if-ne v1, p1, :cond_6

    if-eq v1, v0, :cond_6

    .line 1873
    iput-wide p2, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->lastPlaybackStartTimeMs:J

    .line 1875
    :cond_6
    iput-object v1, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->state:Lcom/oculus/video/analytics/VideoSessionState;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private static setExtractedInfo(Lcom/oculus/video/analytics/VideoAnalyticsSession;Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1445
    iget-boolean v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->didExtractVideo:Z

    if-eqz v0, :cond_0

    .line 1446
    iget v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->width:I

    const-string v1, "width"

    invoke-virtual {p1, v1, v0}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    iget v1, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->height:I

    const-string v2, "height"

    .line 1447
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v0

    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->durationMs:J

    const-string v3, "duration_ms"

    .line 1448
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->is3D:Z

    const-string v2, "is_3D"

    .line 1449
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    iget-boolean v1, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->isSeekable:Z

    const-string v2, "is_seekable"

    .line 1450
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->syncMode:Ljava/lang/String;

    .line 1451
    invoke-virtual {v1}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oculus/video/analytics/VideoPlayerAnalytics$PlaybackSyncMode;->valueOf(Ljava/lang/String;)Lcom/oculus/video/analytics/VideoPlayerAnalytics$PlaybackSyncMode;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/video/analytics/VideoPlayerAnalytics$PlaybackSyncMode;->ordinal()I

    move-result v1

    const-string v2, "is_sync_media"

    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1452
    iget v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->fps:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 1453
    iget v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->fps:F

    float-to-double v0, v0

    const-string v2, "fps"

    invoke-virtual {p1, v2, v0, v1}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1456
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->videoMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1457
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->videoMimeType:Ljava/lang/String;

    const-string v1, "video_mime_type"

    invoke-virtual {p1, v1, v0}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1459
    :cond_1
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->videoRendererName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1460
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->videoRendererName:Ljava/lang/String;

    const-string v1, "video_renderer_name"

    invoke-virtual {p1, v1, v0}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1462
    :cond_2
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->audioMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1463
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->audioMimeType:Ljava/lang/String;

    const-string v1, "audio_mime_type"

    invoke-virtual {p1, v1, v0}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1465
    :cond_3
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->audioRendererName:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1466
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->audioRendererName:Ljava/lang/String;

    const-string v1, "audio_renderer_name"

    invoke-virtual {p1, v1, v0}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1468
    :cond_4
    iget v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->audioTrackCount:I

    const-string v1, "audio_track_count"

    invoke-virtual {p1, v1, v0}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 1469
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->audioChannelLayout:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1470
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->audioChannelLayout:Ljava/lang/String;

    const-string v1, "audio_channel_layout"

    invoke-virtual {p1, v1, v0}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1472
    :cond_5
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->subtitleMimeType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1473
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->subtitleMimeType:Ljava/lang/String;

    const-string v1, "subtitle_mime_type"

    invoke-virtual {p1, v1, v0}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1475
    :cond_6
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->sphericalMetadata:Lorg/json/JSONObject;

    if-eqz v0, :cond_7

    .line 1476
    iget-object p0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->sphericalMetadata:Lorg/json/JSONObject;

    invoke-virtual {p0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "spherical_metadata"

    invoke-virtual {p1, v0, p0}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_7
    return-void
.end method

.method private static setInitializationInfo(Lcom/oculus/video/analytics/VideoAnalyticsSession;Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1409
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->ID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1410
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->ID:Ljava/lang/String;

    const-string v1, "session_ID"

    invoke-virtual {p1, v1, v0}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1412
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->url:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1413
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->url:Ljava/lang/String;

    const-string v1, "url"

    invoke-virtual {p1, v1, v0}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1415
    :cond_1
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->contentType:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1416
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->contentType:Ljava/lang/String;

    const-string v1, "content_type"

    invoke-virtual {p1, v1, v0}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1418
    :cond_2
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->fileExtension:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1419
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->fileExtension:Ljava/lang/String;

    const-string v1, "file_extension"

    invoke-virtual {p1, v1, v0}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1421
    :cond_3
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->projection:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1422
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->projection:Ljava/lang/String;

    const-string v1, "projection"

    invoke-virtual {p1, v1, v0}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1425
    iget v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->fovX:F

    float-to-double v0, v0

    const-string v2, "FOV_X"

    invoke-virtual {p1, v2, v0, v1}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1426
    iget v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->fovY:F

    float-to-double v0, v0

    const-string v2, "FOV_Y"

    invoke-virtual {p1, v2, v0, v1}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 1428
    :cond_4
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->videoID:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1429
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->videoID:Ljava/lang/String;

    const-string v1, "video_id"

    invoke-virtual {p1, v1, v0}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1431
    :cond_5
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->provider:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 1432
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->provider:Ljava/lang/String;

    const-string v1, "provider"

    invoke-virtual {p1, v1, v0}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1434
    :cond_6
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->channel:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 1435
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->channel:Ljava/lang/String;

    const-string v1, "channel"

    invoke-virtual {p1, v1, v0}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 1438
    :cond_7
    iget-boolean v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->didExtractVideo:Z

    const-string v1, "did_extract_video"

    invoke-virtual {p1, v1, v0}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1439
    iget-boolean v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->didExtractAudio:Z

    const-string v1, "did_extract_audio"

    invoke-virtual {p1, v1, v0}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 1440
    iget-boolean p0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->didPlaybackStart:Z

    const-string v0, "did_start_playback"

    invoke-virtual {p1, v0, p0}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    return-void
.end method

.method private static setPlaybackStartInfo(Lcom/oculus/video/analytics/VideoAnalyticsSession;Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1482
    iget-boolean v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->didPlaybackStart:Z

    if-nez v0, :cond_0

    return-void

    .line 1486
    :cond_0
    iget-wide v0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->loadDurationMs:J

    const-string p0, "load_duration_ms"

    invoke-virtual {p1, p0, v0, v1}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    return-void
.end method

.method private static updateHQPlaybackDurations(Lcom/oculus/video/analytics/VideoAnalyticsSession;JLcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;)V
    .locals 0

    .line 1926
    iget-object p3, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->hqPlaybackTimeRangeMsList:Ljava/util/LinkedList;

    iget-object p0, p0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->hqPlaybackDurationMsSampler:Lcom/oculus/video/analytics/DataSampler;

    invoke-static {p3, p0, p1, p2}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->updatePlaybackDurations(Ljava/util/LinkedList;Lcom/oculus/video/analytics/DataSampler;J)V

    return-void
.end method

.method private static updatePlaybackDurations(Ljava/util/LinkedList;Lcom/oculus/video/analytics/DataSampler;J)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Landroid/util/Pair<",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            ">;>;",
            "Lcom/oculus/video/analytics/DataSampler;",
            "J)V"
        }
    .end annotation

    .line 1940
    invoke-virtual {p0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/util/Pair;

    .line 1941
    iget-object v2, v1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Long;

    .line 1942
    iget-object v1, v1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Long;

    .line 1943
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v7, v3, v5

    if-eqz v7, :cond_1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    cmp-long v5, v3, p2

    if-gtz v5, :cond_1

    .line 1944
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    cmp-long v7, v3, v5

    if-lez v7, :cond_0

    .line 1945
    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v3

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    sub-long/2addr v3, v1

    .line 1946
    invoke-virtual {p1, v3, v4}, Lcom/oculus/video/analytics/DataSampler;->sample(J)V

    goto :goto_0

    .line 1949
    :cond_1
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    cmp-long v3, p2, v0

    if-lez v3, :cond_2

    .line 1950
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr p2, v0

    .line 1951
    invoke-virtual {p1, p2, p3}, Lcom/oculus/video/analytics/DataSampler;->sample(J)V

    .line 1957
    :cond_2
    invoke-virtual {p0}, Ljava/util/LinkedList;->clear()V

    return-void
.end method


# virtual methods
.method public getSurfaceTextureTimestamp(Ljava/lang/Object;)J
    .locals 2

    .line 280
    instance-of v0, p1, Landroid/graphics/SurfaceTexture;

    if-eqz v0, :cond_0

    .line 281
    check-cast p1, Landroid/graphics/SurfaceTexture;

    invoke-virtual {p1}, Landroid/graphics/SurfaceTexture;->getTimestamp()J

    move-result-wide v0

    return-wide v0

    :cond_0
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method native nativeReportAnalyticsEvent(JLjava/lang/String;)V
.end method

.method public onAdaptivePlaylistUpdate(JLjava/util/Map;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
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

    .line 822
    invoke-static {}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->getCurrentTimeMs()J

    move-result-wide v5

    .line 823
    iget-object v8, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->eventHandler:Landroid/os/Handler;

    new-instance v9, Lcom/oculus/video/analytics/VideoPlayerAnalytics$12;

    move-object v0, v9

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/oculus/video/analytics/VideoPlayerAnalytics$12;-><init>(Lcom/oculus/video/analytics/VideoPlayerAnalytics;JLjava/util/Map;JLjava/util/List;)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onBuffering(J)V
    .locals 2

    .line 1105
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/video/analytics/VideoPlayerAnalytics$20;

    invoke-direct {v1, p0, p1, p2}, Lcom/oculus/video/analytics/VideoPlayerAnalytics$20;-><init>(Lcom/oculus/video/analytics/VideoPlayerAnalytics;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onCompleteSession(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 9

    .line 1214
    invoke-static/range {p7 .. p7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/Exception;

    move-object/from16 v1, p7

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    :goto_0
    move-object v8, v0

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object v6, p5

    move-object v7, p6

    .line 1215
    invoke-virtual/range {v1 .. v8}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->onCompleteSession(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public onCompleteSession(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 14

    .line 1221
    invoke-static {}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->getCurrentTimeMs()J

    move-result-wide v9

    move-object v11, p0

    .line 1222
    iget-object v12, v11, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->eventHandler:Landroid/os/Handler;

    new-instance v13, Lcom/oculus/video/analytics/VideoPlayerAnalytics$24;

    move-object v0, v13

    move-object v1, p0

    move-wide v2, p1

    move-wide/from16 v4, p3

    move-object/from16 v6, p5

    move-object/from16 v7, p6

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v10}, Lcom/oculus/video/analytics/VideoPlayerAnalytics$24;-><init>(Lcom/oculus/video/analytics/VideoPlayerAnalytics;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;J)V

    invoke-virtual {v12, v13}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onDroppedFrames(JJJJJ)V
    .locals 16

    .line 909
    invoke-static {}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->getCurrentTimeMs()J

    move-result-wide v12

    move-object/from16 v14, p0

    .line 910
    iget-object v15, v14, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->eventHandler:Landroid/os/Handler;

    new-instance v10, Lcom/oculus/video/analytics/VideoPlayerAnalytics$15;

    move-object v0, v10

    move-object/from16 v1, p0

    move-wide/from16 v2, p9

    move-wide/from16 v4, p1

    move-wide/from16 v6, p3

    move-wide/from16 v8, p5

    move-object v14, v10

    move-wide/from16 v10, p7

    invoke-direct/range {v0 .. v13}, Lcom/oculus/video/analytics/VideoPlayerAnalytics$15;-><init>(Lcom/oculus/video/analytics/VideoPlayerAnalytics;JJJJJJ)V

    invoke-virtual {v15, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onExtractAudio(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
    .locals 13

    .line 660
    invoke-static {}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->getCurrentTimeMs()J

    move-result-wide v8

    move-object v10, p0

    .line 661
    iget-object v11, v10, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->eventHandler:Landroid/os/Handler;

    new-instance v12, Lcom/oculus/video/analytics/VideoPlayerAnalytics$7;

    move-object v0, v12

    move-object v1, p0

    move-wide v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move/from16 v6, p5

    move-object/from16 v7, p6

    invoke-direct/range {v0 .. v9}, Lcom/oculus/video/analytics/VideoPlayerAnalytics$7;-><init>(Lcom/oculus/video/analytics/VideoPlayerAnalytics;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;J)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onExtractProjectionMetadata(JLcom/oculus/video/projection/VideoProjection;)V
    .locals 2

    .line 857
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/video/analytics/VideoPlayerAnalytics$13;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/oculus/video/analytics/VideoPlayerAnalytics$13;-><init>(Lcom/oculus/video/analytics/VideoPlayerAnalytics;JLcom/oculus/video/projection/VideoProjection;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onExtractTimeline(JJZ)V
    .locals 9

    .line 535
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->eventHandler:Landroid/os/Handler;

    new-instance v8, Lcom/oculus/video/analytics/VideoPlayerAnalytics$4;

    move-object v1, v8

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    move v7, p5

    invoke-direct/range {v1 .. v7}, Lcom/oculus/video/analytics/VideoPlayerAnalytics$4;-><init>(Lcom/oculus/video/analytics/VideoPlayerAnalytics;JJZ)V

    invoke-virtual {v0, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onExtractVideo(JIIFZLjava/lang/String;Ljava/lang/String;FFLjava/lang/String;Ljava/lang/String;)V
    .locals 18

    .line 597
    invoke-static {}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->getCurrentTimeMs()J

    move-result-wide v4

    move-object/from16 v15, p0

    .line 598
    iget-object v14, v15, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->eventHandler:Landroid/os/Handler;

    new-instance v13, Lcom/oculus/video/analytics/VideoPlayerAnalytics$6;

    move-object v0, v13

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    move-object/from16 v10, p7

    move-object/from16 v11, p8

    move/from16 v12, p9

    move-object/from16 v16, v13

    move/from16 v13, p10

    move-object/from16 v17, v14

    move-object/from16 v14, p11

    move-object/from16 v15, p12

    invoke-direct/range {v0 .. v15}, Lcom/oculus/video/analytics/VideoPlayerAnalytics$6;-><init>(Lcom/oculus/video/analytics/VideoPlayerAnalytics;JJIIFZLjava/lang/String;Ljava/lang/String;FFLjava/lang/String;Ljava/lang/String;)V

    move-object/from16 v1, v16

    move-object/from16 v0, v17

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onHttpConnect(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 13

    move-object v10, p0

    .line 779
    iget-object v11, v10, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->eventHandler:Landroid/os/Handler;

    new-instance v12, Lcom/oculus/video/analytics/VideoPlayerAnalytics$11;

    move-object v0, v12

    move-object v1, p0

    move-wide v2, p1

    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    move/from16 v7, p6

    move-wide/from16 v8, p7

    invoke-direct/range {v0 .. v9}, Lcom/oculus/video/analytics/VideoPlayerAnalytics$11;-><init>(Lcom/oculus/video/analytics/VideoPlayerAnalytics;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onPause(J)V
    .locals 8

    .line 1043
    invoke-static {}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->getCurrentTimeMs()J

    move-result-wide v4

    .line 1044
    iget-object v6, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->eventHandler:Landroid/os/Handler;

    new-instance v7, Lcom/oculus/video/analytics/VideoPlayerAnalytics$18;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/oculus/video/analytics/VideoPlayerAnalytics$18;-><init>(Lcom/oculus/video/analytics/VideoPlayerAnalytics;JJ)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRenderStall(JJ)V
    .locals 10

    .line 1146
    invoke-static {}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->getCurrentTimeMs()J

    move-result-wide v4

    .line 1147
    iget-object v8, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->eventHandler:Landroid/os/Handler;

    new-instance v9, Lcom/oculus/video/analytics/VideoPlayerAnalytics$22;

    move-object v0, v9

    move-object v1, p0

    move-wide v2, p1

    move-wide v6, p3

    invoke-direct/range {v0 .. v7}, Lcom/oculus/video/analytics/VideoPlayerAnalytics$22;-><init>(Lcom/oculus/video/analytics/VideoPlayerAnalytics;JJJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onRestartRender(J)V
    .locals 8

    .line 692
    invoke-static {}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->getCurrentTimeMs()J

    move-result-wide v4

    .line 693
    iget-object v6, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->eventHandler:Landroid/os/Handler;

    new-instance v7, Lcom/oculus/video/analytics/VideoPlayerAnalytics$8;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/oculus/video/analytics/VideoPlayerAnalytics$8;-><init>(Lcom/oculus/video/analytics/VideoPlayerAnalytics;JJ)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onResume(J)V
    .locals 8

    .line 1080
    invoke-static {}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->getCurrentTimeMs()J

    move-result-wide v4

    .line 1081
    iget-object v6, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->eventHandler:Landroid/os/Handler;

    new-instance v7, Lcom/oculus/video/analytics/VideoPlayerAnalytics$19;

    move-object v0, v7

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/oculus/video/analytics/VideoPlayerAnalytics$19;-><init>(Lcom/oculus/video/analytics/VideoPlayerAnalytics;JJ)V

    invoke-virtual {v6, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSeekStart(JJ)V
    .locals 6

    .line 1181
    invoke-static {}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->getCurrentTimeMs()J

    move-result-wide v4

    .line 1182
    iget-object p3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->eventHandler:Landroid/os/Handler;

    new-instance p4, Lcom/oculus/video/analytics/VideoPlayerAnalytics$23;

    move-object v0, p4

    move-object v1, p0

    move-wide v2, p1

    invoke-direct/range {v0 .. v5}, Lcom/oculus/video/analytics/VideoPlayerAnalytics$23;-><init>(Lcom/oculus/video/analytics/VideoPlayerAnalytics;JJ)V

    invoke-virtual {p3, p4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSelectProjectionMetadata(JLcom/oculus/video/projection/VideoProjection;)V
    .locals 2

    .line 878
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/video/analytics/VideoPlayerAnalytics$14;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/oculus/video/analytics/VideoPlayerAnalytics$14;-><init>(Lcom/oculus/video/analytics/VideoPlayerAnalytics;JLcom/oculus/video/projection/VideoProjection;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSoftError(JLjava/lang/Throwable;)V
    .locals 9

    .line 385
    invoke-static {}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->getCurrentTimeMs()J

    move-result-wide v4

    .line 386
    iget-object v7, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->eventHandler:Landroid/os/Handler;

    new-instance v8, Lcom/oculus/video/analytics/VideoPlayerAnalytics$1;

    move-object v0, v8

    move-object v1, p0

    move-wide v2, p1

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/oculus/video/analytics/VideoPlayerAnalytics$1;-><init>(Lcom/oculus/video/analytics/VideoPlayerAnalytics;JJLjava/lang/Throwable;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStartSession(JLjava/lang/String;Ljava/lang/String;FFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 16

    .line 424
    invoke-static {}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->getCurrentTimeMs()J

    move-result-wide v4

    move-object/from16 v14, p0

    .line 425
    iget-object v15, v14, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->eventHandler:Landroid/os/Handler;

    new-instance v13, Lcom/oculus/video/analytics/VideoPlayerAnalytics$2;

    move-object v0, v13

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-object/from16 v6, p3

    move-object/from16 v7, p9

    move-object/from16 v8, p7

    move-object/from16 v9, p4

    move/from16 v10, p5

    move/from16 v11, p6

    move-object/from16 v12, p8

    move-object v14, v13

    move-object/from16 v13, p10

    invoke-direct/range {v0 .. v13}, Lcom/oculus/video/analytics/VideoPlayerAnalytics$2;-><init>(Lcom/oculus/video/analytics/VideoPlayerAnalytics;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFLjava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v15, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStopBuffering(J)V
    .locals 2

    .line 1122
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->eventHandler:Landroid/os/Handler;

    new-instance v1, Lcom/oculus/video/analytics/VideoPlayerAnalytics$21;

    invoke-direct {v1, p0, p1, p2}, Lcom/oculus/video/analytics/VideoPlayerAnalytics$21;-><init>(Lcom/oculus/video/analytics/VideoPlayerAnalytics;J)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onStreamingSample(JJJJJ)V
    .locals 16

    .line 741
    invoke-static {}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->getCurrentTimeMs()J

    move-result-wide v12

    move-object/from16 v14, p0

    .line 742
    iget-object v15, v14, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->eventHandler:Landroid/os/Handler;

    new-instance v10, Lcom/oculus/video/analytics/VideoPlayerAnalytics$10;

    move-object v0, v10

    move-object/from16 v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v4, p7

    move-wide/from16 v6, p9

    move-wide/from16 v8, p5

    move-object v14, v10

    move-wide/from16 v10, p3

    invoke-direct/range {v0 .. v13}, Lcom/oculus/video/analytics/VideoPlayerAnalytics$10;-><init>(Lcom/oculus/video/analytics/VideoPlayerAnalytics;JJJJJJ)V

    invoke-virtual {v15, v14}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSubtitleInfo(JLjava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Collection<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 999
    invoke-static {}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->getCurrentTimeMs()J

    move-result-wide v7

    move-object v9, p0

    .line 1000
    iget-object v10, v9, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->eventHandler:Landroid/os/Handler;

    new-instance v11, Lcom/oculus/video/analytics/VideoPlayerAnalytics$17;

    move-object v0, v11

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v0 .. v8}, Lcom/oculus/video/analytics/VideoPlayerAnalytics$17;-><init>(Lcom/oculus/video/analytics/VideoPlayerAnalytics;JLjava/lang/String;Ljava/lang/String;Ljava/util/Collection;J)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onSyncDelayUpdate(JJ)V
    .locals 8

    .line 716
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->eventHandler:Landroid/os/Handler;

    new-instance v7, Lcom/oculus/video/analytics/VideoPlayerAnalytics$9;

    move-object v1, v7

    move-object v2, p0

    move-wide v3, p1

    move-wide v5, p3

    invoke-direct/range {v1 .. v6}, Lcom/oculus/video/analytics/VideoPlayerAnalytics$9;-><init>(Lcom/oculus/video/analytics/VideoPlayerAnalytics;JJ)V

    invoke-virtual {v0, v7}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onTimelineChanged(JJJZ)V
    .locals 12

    move-object v9, p0

    .line 507
    iget-object v10, v9, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->eventHandler:Landroid/os/Handler;

    new-instance v11, Lcom/oculus/video/analytics/VideoPlayerAnalytics$3;

    move-object v0, v11

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move/from16 v6, p7

    move-wide/from16 v7, p5

    invoke-direct/range {v0 .. v8}, Lcom/oculus/video/analytics/VideoPlayerAnalytics$3;-><init>(Lcom/oculus/video/analytics/VideoPlayerAnalytics;JJZJ)V

    invoke-virtual {v10, v11}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVideoFormatChanged(JFID)V
    .locals 13

    .line 558
    invoke-static {}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->getCurrentTimeMs()J

    move-result-wide v4

    move-object v10, p0

    .line 559
    iget-object v11, v10, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->eventHandler:Landroid/os/Handler;

    new-instance v12, Lcom/oculus/video/analytics/VideoPlayerAnalytics$5;

    move-object v0, v12

    move-object v1, p0

    move-wide v2, p1

    move/from16 v6, p3

    move/from16 v7, p4

    move-wide/from16 v8, p5

    invoke-direct/range {v0 .. v9}, Lcom/oculus/video/analytics/VideoPlayerAnalytics$5;-><init>(Lcom/oculus/video/analytics/VideoPlayerAnalytics;JJFID)V

    invoke-virtual {v11, v12}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public onVideoSizeChanged(JII)V
    .locals 10

    .line 953
    invoke-static {}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->getCurrentTimeMs()J

    move-result-wide v6

    .line 954
    iget-object v8, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->eventHandler:Landroid/os/Handler;

    new-instance v9, Lcom/oculus/video/analytics/VideoPlayerAnalytics$16;

    move-object v0, v9

    move-object v1, p0

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v7}, Lcom/oculus/video/analytics/VideoPlayerAnalytics$16;-><init>(Lcom/oculus/video/analytics/VideoPlayerAnalytics;JIIJ)V

    invoke-virtual {v8, v9}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public reportGKResult(Ljava/lang/String;)V
    .locals 0

    .line 276
    iput-object p1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->gkResult:Ljava/lang/String;

    return-void
.end method

.method public setNativePtr(J)V
    .locals 0

    .line 268
    iput-wide p1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->nativePtr:J

    return-void
.end method

.method public setOvrUserId(Ljava/lang/String;)V
    .locals 0

    .line 272
    iput-object p1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->ovrUserID:Ljava/lang/String;

    return-void
.end method
