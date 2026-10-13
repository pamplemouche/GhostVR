.class Lcom/oculus/video/analytics/VideoPlayerAnalytics$10;
.super Ljava/lang/Object;
.source "VideoPlayerAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/video/analytics/VideoPlayerAnalytics;->onStreamingSample(JJJJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

.field final synthetic val$bufferAheadDurationMs:J

.field final synthetic val$bytes:J

.field final synthetic val$elapsedTimeMs:J

.field final synthetic val$nowMs:J

.field final synthetic val$sessionId:J

.field final synthetic val$streamingBitrateBps:J


# direct methods
.method constructor <init>(Lcom/oculus/video/analytics/VideoPlayerAnalytics;JJJJJJ)V
    .locals 0

    .line 742
    iput-object p1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$10;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    iput-wide p2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$10;->val$sessionId:J

    iput-wide p4, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$10;->val$bufferAheadDurationMs:J

    iput-wide p6, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$10;->val$elapsedTimeMs:J

    iput-wide p8, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$10;->val$streamingBitrateBps:J

    iput-wide p10, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$10;->val$bytes:J

    iput-wide p12, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$10;->val$nowMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 745
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$10;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    invoke-static {v0}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$000(Lcom/oculus/video/analytics/VideoPlayerAnalytics;)Ljava/util/Map;

    move-result-object v0

    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$10;->val$sessionId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;

    if-nez v0, :cond_0

    .line 747
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onStreamingSample: Session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$10;->val$sessionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " not found!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerAnalytics"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 752
    :cond_0
    iget-object v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->bufferAheadDurationMsSampler:Lcom/oculus/video/analytics/DataSampler;

    iget-wide v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$10;->val$bufferAheadDurationMs:J

    iget-wide v4, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$10;->val$elapsedTimeMs:J

    long-to-double v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/oculus/video/analytics/DataSampler;->sample(JD)V

    .line 753
    iget-object v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->bufferAheadDurationMsPeriodicSampler:Lcom/oculus/video/analytics/DataSampler;

    iget-wide v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$10;->val$bufferAheadDurationMs:J

    iget-wide v4, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$10;->val$elapsedTimeMs:J

    long-to-double v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/oculus/video/analytics/DataSampler;->sample(JD)V

    .line 754
    iget-object v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->streamingBitrateBpsSampler:Lcom/oculus/video/analytics/DataSampler;

    iget-wide v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$10;->val$streamingBitrateBps:J

    iget-wide v4, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$10;->val$elapsedTimeMs:J

    long-to-double v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/oculus/video/analytics/DataSampler;->sample(JD)V

    .line 755
    iget-object v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->streamingBitrateBpsPeriodicSampler:Lcom/oculus/video/analytics/DataSampler;

    iget-wide v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$10;->val$streamingBitrateBps:J

    iget-wide v4, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$10;->val$elapsedTimeMs:J

    long-to-double v4, v4

    invoke-virtual {v1, v2, v3, v4, v5}, Lcom/oculus/video/analytics/DataSampler;->sample(JD)V

    .line 757
    iget-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->accumulatedStreamingTimeMs:J

    iget-wide v3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$10;->val$elapsedTimeMs:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->accumulatedStreamingTimeMs:J

    .line 758
    iget-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->accumulatedStreamedBytes:J

    iget-wide v3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$10;->val$bytes:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->accumulatedStreamedBytes:J

    .line 759
    iget-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->totalStreamedBytes:J

    iget-wide v3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$10;->val$bytes:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->totalStreamedBytes:J

    .line 761
    iget-object v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$10;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$10;->val$nowMs:J

    invoke-static {v1, v0, v2, v3, v4}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$1400(Lcom/oculus/video/analytics/VideoPlayerAnalytics;Lcom/oculus/video/analytics/VideoAnalyticsSession;ZJ)V

    return-void
.end method
