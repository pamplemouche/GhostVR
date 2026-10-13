.class Lcom/oculus/video/analytics/VideoPlayerAnalytics$2;
.super Ljava/lang/Object;
.source "VideoPlayerAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/video/analytics/VideoPlayerAnalytics;->onStartSession(JLjava/lang/String;Ljava/lang/String;FFLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

.field final synthetic val$channel:Ljava/lang/String;

.field final synthetic val$clientAnalyticsData:Ljava/lang/String;

.field final synthetic val$fovX:F

.field final synthetic val$fovY:F

.field final synthetic val$projection:Ljava/lang/String;

.field final synthetic val$provider:Ljava/lang/String;

.field final synthetic val$sessionId:J

.field final synthetic val$startTimeMs:J

.field final synthetic val$url:Ljava/lang/String;

.field final synthetic val$videoID:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/video/analytics/VideoPlayerAnalytics;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;FFLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 425
    iput-object p1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$2;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    iput-wide p2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$2;->val$sessionId:J

    iput-wide p4, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$2;->val$startTimeMs:J

    iput-object p6, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$2;->val$url:Ljava/lang/String;

    iput-object p7, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$2;->val$provider:Ljava/lang/String;

    iput-object p8, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$2;->val$videoID:Ljava/lang/String;

    iput-object p9, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$2;->val$projection:Ljava/lang/String;

    iput p10, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$2;->val$fovX:F

    iput p11, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$2;->val$fovY:F

    iput-object p12, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$2;->val$channel:Ljava/lang/String;

    iput-object p13, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$2;->val$clientAnalyticsData:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 428
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$2;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    invoke-static {v0}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$000(Lcom/oculus/video/analytics/VideoPlayerAnalytics;)Ljava/util/Map;

    move-result-object v0

    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$2;->val$sessionId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;

    const-string v1, "VideoPlayerAnalytics"

    if-eqz v0, :cond_0

    .line 430
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onStartSession: Session "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$2;->val$sessionId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " already started!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 434
    :cond_0
    new-instance v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;

    iget-object v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$2;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    invoke-static {v2}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$500(Lcom/oculus/video/analytics/VideoPlayerAnalytics;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v0, v2}, Lcom/oculus/video/analytics/VideoAnalyticsSession;-><init>(Landroid/content/Context;)V

    .line 435
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->ID:Ljava/lang/String;

    .line 436
    sget-object v2, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;->START_SESSION:Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    iget-wide v3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$2;->val$startTimeMs:J

    invoke-static {v0, v2, v3, v4}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$600(Lcom/oculus/video/analytics/VideoAnalyticsSession;Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;J)V

    .line 437
    iget-wide v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$2;->val$startTimeMs:J

    iput-wide v2, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->videoStartTimeMs:J

    .line 438
    iget-object v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$2;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    invoke-static {v2}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$000(Lcom/oculus/video/analytics/VideoPlayerAnalytics;)Ljava/util/Map;

    move-result-object v2

    iget-wide v3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$2;->val$sessionId:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 440
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Starting session. ID="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->ID:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    iget-object v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$2;->val$url:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$2;->val$provider:Ljava/lang/String;

    invoke-static {v2, v3}, Lcom/oculus/video/Settings;->analyticsRedactVideoSource(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v3, "REDACTED"

    goto :goto_0

    .line 443
    :cond_1
    iget-object v3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$2;->val$url:Ljava/lang/String;

    :goto_0
    if-eqz v2, :cond_2

    const-string v2, "0"

    goto :goto_1

    .line 444
    :cond_2
    iget-object v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$2;->val$videoID:Ljava/lang/String;

    .line 446
    :goto_1
    iget-object v4, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$2;->val$url:Ljava/lang/String;

    const/4 v5, 0x0

    invoke-static {v4, v5, v5}, Landroid/webkit/URLUtil;->guessFileName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const/4 v5, -0x1

    if-nez v4, :cond_3

    const/4 v6, -0x1

    goto :goto_2

    :cond_3
    const-string v6, "."

    .line 447
    invoke-virtual {v4, v6}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v6

    :goto_2
    const/4 v7, 0x1

    const-string v8, ""

    if-eq v6, v5, :cond_4

    add-int/2addr v6, v7

    .line 448
    invoke-virtual {v4, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_4
    move-object v4, v8

    .line 449
    :goto_3
    invoke-virtual {v4}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    .line 451
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, -0x5

    const/4 v6, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    .line 453
    iput-object v3, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->url:Ljava/lang/String;

    .line 454
    iget-object v3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$2;->val$url:Ljava/lang/String;

    invoke-static {v3}, Lcom/oculus/android/exoplayer2/util/Util;->inferContentType(Ljava/lang/String;)I

    move-result v3

    const-string v5, "DASH"

    if-eqz v3, :cond_a

    if-eq v3, v7, :cond_9

    const/4 v6, 0x2

    if-eq v3, v6, :cond_8

    .line 466
    iget-object v3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$2;->val$url:Ljava/lang/String;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_6

    .line 467
    iget-object v3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$2;->val$url:Ljava/lang/String;

    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 468
    invoke-static {v3}, Lcom/oculus/android/exoplayer2/util/Util;->isLocalFileUri(Landroid/net/Uri;)Z

    move-result v5

    if-eqz v5, :cond_5

    const-string v3, "file"

    goto :goto_4

    :cond_5
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    .line 469
    :goto_4
    invoke-virtual {v3}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->contentType:Ljava/lang/String;

    goto :goto_5

    .line 470
    :cond_6
    iget-object v3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$2;->val$provider:Ljava/lang/String;

    const-string v6, "facebook"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 472
    iput-object v5, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->contentType:Ljava/lang/String;

    goto :goto_5

    .line 474
    :cond_7
    iput-object v8, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->contentType:Ljava/lang/String;

    goto :goto_5

    :cond_8
    const-string v3, "HLS"

    .line 459
    iput-object v3, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->contentType:Ljava/lang/String;

    goto :goto_5

    :cond_9
    const-string v3, "SS"

    .line 462
    iput-object v3, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->contentType:Ljava/lang/String;

    goto :goto_5

    .line 456
    :cond_a
    iput-object v5, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->contentType:Ljava/lang/String;

    .line 478
    :goto_5
    iput-object v4, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->fileExtension:Ljava/lang/String;

    .line 479
    iget-object v3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$2;->val$projection:Ljava/lang/String;

    iput-object v3, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->projection:Ljava/lang/String;

    .line 480
    iget v3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$2;->val$fovX:F

    iput v3, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->fovX:F

    .line 481
    iget v3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$2;->val$fovY:F

    iput v3, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->fovY:F

    .line 482
    iput-object v2, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->videoID:Ljava/lang/String;

    .line 483
    iget-object v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$2;->val$channel:Ljava/lang/String;

    iput-object v2, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->channel:Ljava/lang/String;

    .line 484
    iget-object v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$2;->val$provider:Ljava/lang/String;

    iput-object v2, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->provider:Ljava/lang/String;

    .line 485
    iget-object v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$2;->val$clientAnalyticsData:Ljava/lang/String;

    iput-object v2, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->clientAnalyticsData:Ljava/lang/String;

    .line 488
    :try_start_0
    iget-object v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$2;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    iget-object v3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$2;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    const-string v4, "on_start_session"

    iget-wide v5, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$2;->val$startTimeMs:J

    invoke-static {v3, v0, v4, v5, v6}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$200(Lcom/oculus/video/analytics/VideoPlayerAnalytics;Lcom/oculus/video/analytics/VideoAnalyticsSession;Ljava/lang/String;J)Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$400(Lcom/oculus/video/analytics/VideoPlayerAnalytics;Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_6

    :catch_0
    move-exception v2

    .line 490
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Exception when log start session: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 493
    :goto_6
    iget-object v0, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->powerMonitor:Lcom/oculus/video/analytics/PowerMonitor;

    invoke-virtual {v0}, Lcom/oculus/video/analytics/PowerMonitor;->startMeasure()V

    return-void
.end method
