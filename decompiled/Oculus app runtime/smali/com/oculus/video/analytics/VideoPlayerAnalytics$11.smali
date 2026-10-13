.class Lcom/oculus/video/analytics/VideoPlayerAnalytics$11;
.super Ljava/lang/Object;
.source "VideoPlayerAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/video/analytics/VideoPlayerAnalytics;->onHttpConnect(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

.field final synthetic val$ipAddress:Ljava/lang/String;

.field final synthetic val$method:Ljava/lang/String;

.field final synthetic val$responseCode:I

.field final synthetic val$responseTimeMs:J

.field final synthetic val$sessionId:J

.field final synthetic val$url:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/video/analytics/VideoPlayerAnalytics;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IJ)V
    .locals 0

    .line 779
    iput-object p1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$11;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    iput-wide p2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$11;->val$sessionId:J

    iput-object p4, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$11;->val$url:Ljava/lang/String;

    iput-object p5, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$11;->val$ipAddress:Ljava/lang/String;

    iput-object p6, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$11;->val$method:Ljava/lang/String;

    iput p7, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$11;->val$responseCode:I

    iput-wide p8, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$11;->val$responseTimeMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 782
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$11;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    invoke-static {v0}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$000(Lcom/oculus/video/analytics/VideoPlayerAnalytics;)Ljava/util/Map;

    move-result-object v0

    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$11;->val$sessionId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;

    if-nez v0, :cond_0

    .line 784
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onHttpConnect: Session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$11;->val$sessionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " not found!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerAnalytics"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 788
    :cond_0
    iget-object v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$11;->val$url:Ljava/lang/String;

    iget-object v2, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->provider:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/oculus/video/Settings;->analyticsRedactVideoSource(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v2, "REDACTED"

    goto :goto_0

    .line 789
    :cond_1
    iget-object v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$11;->val$url:Ljava/lang/String;

    :goto_0
    iput-object v2, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->httpUrl:Ljava/lang/String;

    if-eqz v1, :cond_2

    const-string v1, ""

    goto :goto_1

    .line 790
    :cond_2
    iget-object v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$11;->val$ipAddress:Ljava/lang/String;

    :goto_1
    iput-object v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->remoteIPAddress:Ljava/lang/String;

    .line 791
    iget-object v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$11;->val$method:Ljava/lang/String;

    iput-object v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->httpMethod:Ljava/lang/String;

    .line 792
    iget v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$11;->val$responseCode:I

    iput v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->httpResponseCode:I

    .line 794
    iget-object v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->responseTimeMsSampler:Lcom/oculus/video/analytics/DataSampler;

    iget-wide v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$11;->val$responseTimeMs:J

    invoke-virtual {v1, v2, v3}, Lcom/oculus/video/analytics/DataSampler;->sample(J)V

    .line 795
    iget-object v0, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->responseTimeMsPeriodicSampler:Lcom/oculus/video/analytics/DataSampler;

    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$11;->val$responseTimeMs:J

    invoke-virtual {v0, v1, v2}, Lcom/oculus/video/analytics/DataSampler;->sample(J)V

    return-void
.end method
