.class public Lcom/oculus/video/analytics/RenderingStats;
.super Ljava/lang/Object;
.source "RenderingStats.java"


# static fields
.field private static final ESTIMATED_FRAME_RATE_FPS:Ljava/lang/String; = "estimated_frame_rate_fps"

.field private static final EXTRA_APP_RENDER_TIME_ERROR_MS:Ljava/lang/String; = "app_render_time_error_ms"

.field private static final EXTRA_DROPPED_FRAME_CLUSTER_SIZE:Ljava/lang/String; = "dropped_frame_cluster_size"

.field private static final EXTRA_EXCL_DISPLAY_INTERVAL_ERROR_MS:Ljava/lang/String; = "excl_display_interval_error_ms"

.field private static final EXTRA_EXCL_DISPLAY_TIME_ERROR_MS:Ljava/lang/String; = "excl_display_time_error_ms"

.field private static final EXTRA_INCL_DISPLAY_INTERVAL_ERROR_MS:Ljava/lang/String; = "incl_display_interval_error_ms"

.field private static final EXTRA_INCL_DISPLAY_TIME_ERROR_MS:Ljava/lang/String; = "incl_display_time_error_ms"

.field private static final EXTRA_THEATER_RENDERING_PERCENTAGE:Ljava/lang/String; = "theater_rendering_percentage"

.field private static final SUFFIX_AVG:Ljava/lang/String; = "_avg"

.field private static final SUFFIX_COUNT:Ljava/lang/String; = "_count"

.field private static final SUFFIX_STD_DEV:Ljava/lang/String; = "_std_dev"


# instance fields
.field private final appRenderTimeErrorMs:Lcom/oculus/video/analytics/ErrorSamples;

.field private final droppedFrameClusterSize:Lcom/oculus/video/analytics/ErrorSamples;

.field final estimatedFrameRate:D

.field private final exclDisplayIntervalErrorMs:Lcom/oculus/video/analytics/ErrorSamples;

.field private final exclDisplayTimeErrorMs:Lcom/oculus/video/analytics/ErrorSamples;

.field private final inclDisplayIntervalErrorMs:Lcom/oculus/video/analytics/ErrorSamples;

.field private final inclDisplayTimeErrorMs:Lcom/oculus/video/analytics/ErrorSamples;

.field private final theaterRenderingPercentage:D


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 48
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 53
    :catch_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    :goto_0
    const-wide/16 v1, 0x0

    :try_start_1
    const-string p1, "estimated_frame_rate_fps"

    .line 58
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v3
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-wide v3, v1

    :goto_1
    :try_start_2
    const-string p1, "theater_rendering_percentage"

    .line 65
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide v1
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 70
    :catch_2
    iput-wide v3, p0, Lcom/oculus/video/analytics/RenderingStats;->estimatedFrameRate:D

    const-string p1, "app_render_time_error_ms"

    .line 71
    invoke-direct {p0, v0, p1}, Lcom/oculus/video/analytics/RenderingStats;->createErrorSamples(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/oculus/video/analytics/ErrorSamples;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/video/analytics/RenderingStats;->appRenderTimeErrorMs:Lcom/oculus/video/analytics/ErrorSamples;

    const-string p1, "incl_display_time_error_ms"

    .line 72
    invoke-direct {p0, v0, p1}, Lcom/oculus/video/analytics/RenderingStats;->createErrorSamples(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/oculus/video/analytics/ErrorSamples;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/video/analytics/RenderingStats;->inclDisplayTimeErrorMs:Lcom/oculus/video/analytics/ErrorSamples;

    const-string p1, "excl_display_time_error_ms"

    .line 73
    invoke-direct {p0, v0, p1}, Lcom/oculus/video/analytics/RenderingStats;->createErrorSamples(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/oculus/video/analytics/ErrorSamples;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/video/analytics/RenderingStats;->exclDisplayTimeErrorMs:Lcom/oculus/video/analytics/ErrorSamples;

    const-string p1, "incl_display_interval_error_ms"

    .line 74
    invoke-direct {p0, v0, p1}, Lcom/oculus/video/analytics/RenderingStats;->createErrorSamples(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/oculus/video/analytics/ErrorSamples;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/video/analytics/RenderingStats;->inclDisplayIntervalErrorMs:Lcom/oculus/video/analytics/ErrorSamples;

    const-string p1, "excl_display_interval_error_ms"

    .line 75
    invoke-direct {p0, v0, p1}, Lcom/oculus/video/analytics/RenderingStats;->createErrorSamples(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/oculus/video/analytics/ErrorSamples;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/video/analytics/RenderingStats;->exclDisplayIntervalErrorMs:Lcom/oculus/video/analytics/ErrorSamples;

    const-string p1, "dropped_frame_cluster_size"

    .line 76
    invoke-direct {p0, v0, p1}, Lcom/oculus/video/analytics/RenderingStats;->createErrorSamples(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/oculus/video/analytics/ErrorSamples;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/video/analytics/RenderingStats;->droppedFrameClusterSize:Lcom/oculus/video/analytics/ErrorSamples;

    .line 77
    iput-wide v1, p0, Lcom/oculus/video/analytics/RenderingStats;->theaterRenderingPercentage:D

    return-void
.end method

.method private createErrorSamples(Lorg/json/JSONObject;Ljava/lang/String;)Lcom/oculus/video/analytics/ErrorSamples;
    .locals 9

    .line 42
    new-instance v8, Lcom/oculus/video/analytics/ErrorSamples;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_count"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 43
    invoke-direct {p0, p1, v0}, Lcom/oculus/video/analytics/RenderingStats;->getJSONFloat(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v0

    double-to-long v2, v0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_avg"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-direct {p0, p1, v0}, Lcom/oculus/video/analytics/RenderingStats;->getJSONFloat(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_std_dev"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/oculus/video/analytics/RenderingStats;->getJSONFloat(Lorg/json/JSONObject;Ljava/lang/String;)D

    move-result-wide v6

    move-object v0, v8

    move-object v1, p2

    invoke-direct/range {v0 .. v7}, Lcom/oculus/video/analytics/ErrorSamples;-><init>(Ljava/lang/String;JDD)V

    return-object v8
.end method

.method private getJSONFloat(Lorg/json/JSONObject;Ljava/lang/String;)D
    .locals 0

    .line 35
    :try_start_0
    invoke-virtual {p1, p2}, Lorg/json/JSONObject;->getDouble(Ljava/lang/String;)D

    move-result-wide p1
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    const-wide/16 p1, 0x0

    return-wide p1
.end method


# virtual methods
.method appendToEvent(Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 82
    iget-object v0, p0, Lcom/oculus/video/analytics/RenderingStats;->appRenderTimeErrorMs:Lcom/oculus/video/analytics/ErrorSamples;

    invoke-virtual {v0, p1}, Lcom/oculus/video/analytics/ErrorSamples;->appendToEvent(Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;)V

    .line 83
    iget-object v0, p0, Lcom/oculus/video/analytics/RenderingStats;->inclDisplayTimeErrorMs:Lcom/oculus/video/analytics/ErrorSamples;

    invoke-virtual {v0, p1}, Lcom/oculus/video/analytics/ErrorSamples;->appendToEvent(Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;)V

    .line 84
    iget-object v0, p0, Lcom/oculus/video/analytics/RenderingStats;->exclDisplayTimeErrorMs:Lcom/oculus/video/analytics/ErrorSamples;

    invoke-virtual {v0, p1}, Lcom/oculus/video/analytics/ErrorSamples;->appendToEvent(Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;)V

    .line 85
    iget-object v0, p0, Lcom/oculus/video/analytics/RenderingStats;->inclDisplayIntervalErrorMs:Lcom/oculus/video/analytics/ErrorSamples;

    invoke-virtual {v0, p1}, Lcom/oculus/video/analytics/ErrorSamples;->appendToEvent(Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;)V

    .line 86
    iget-object v0, p0, Lcom/oculus/video/analytics/RenderingStats;->exclDisplayIntervalErrorMs:Lcom/oculus/video/analytics/ErrorSamples;

    invoke-virtual {v0, p1}, Lcom/oculus/video/analytics/ErrorSamples;->appendToEvent(Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;)V

    .line 87
    iget-object v0, p0, Lcom/oculus/video/analytics/RenderingStats;->droppedFrameClusterSize:Lcom/oculus/video/analytics/ErrorSamples;

    invoke-virtual {v0, p1}, Lcom/oculus/video/analytics/ErrorSamples;->appendToEvent(Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;)V

    .line 88
    iget-wide v0, p0, Lcom/oculus/video/analytics/RenderingStats;->theaterRenderingPercentage:D

    const-string v2, "theater_rendering_percentage"

    invoke-virtual {p1, v2, v0, v1}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    return-void
.end method
