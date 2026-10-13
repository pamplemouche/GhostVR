.class Lcom/oculus/video/analytics/VideoPlayerAnalytics$15;
.super Ljava/lang/Object;
.source "VideoPlayerAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/video/analytics/VideoPlayerAnalytics;->onDroppedFrames(JJJJJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

.field final synthetic val$decodedFrameCount:J

.field final synthetic val$delayedCount:J

.field final synthetic val$elapsedTimeMs:J

.field final synthetic val$nowMs:J

.field final synthetic val$sessionId:J

.field final synthetic val$unconsumedCount:J


# direct methods
.method constructor <init>(Lcom/oculus/video/analytics/VideoPlayerAnalytics;JJJJJJ)V
    .locals 0

    .line 910
    iput-object p1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$15;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    iput-wide p2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$15;->val$decodedFrameCount:J

    iput-wide p4, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$15;->val$sessionId:J

    iput-wide p6, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$15;->val$elapsedTimeMs:J

    iput-wide p8, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$15;->val$delayedCount:J

    iput-wide p10, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$15;->val$unconsumedCount:J

    iput-wide p12, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$15;->val$nowMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 913
    iget-wide v0, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$15;->val$decodedFrameCount:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-nez v4, :cond_0

    return-void

    .line 916
    :cond_0
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$15;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    invoke-static {v0}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$000(Lcom/oculus/video/analytics/VideoPlayerAnalytics;)Ljava/util/Map;

    move-result-object v0

    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$15;->val$sessionId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;

    if-nez v0, :cond_1

    .line 918
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDroppedFrames: Session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$15;->val$sessionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " not found!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerAnalytics"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 922
    :cond_1
    iget-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->accumulatedDroppedFramesElapsedTimeMs:J

    iget-wide v3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$15;->val$elapsedTimeMs:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->accumulatedDroppedFramesElapsedTimeMs:J

    .line 923
    iget-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->accumulatedDelayedDroppedFrames:J

    iget-wide v3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$15;->val$delayedCount:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->accumulatedDelayedDroppedFrames:J

    .line 924
    iget-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->accumulatedUnconsumedDroppedFrames:J

    iget-wide v3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$15;->val$unconsumedCount:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->accumulatedUnconsumedDroppedFrames:J

    .line 925
    iget-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->accumulatedDroppedFrames:J

    iget-wide v3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$15;->val$delayedCount:J

    iget-wide v5, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$15;->val$unconsumedCount:J

    add-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->accumulatedDroppedFrames:J

    .line 926
    iget-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->accumulatedDecodedFrames:J

    iget-wide v3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$15;->val$decodedFrameCount:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->accumulatedDecodedFrames:J

    .line 928
    iget-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->streamingUpdateFrameDecodeTimeMs:J

    iget-wide v3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$15;->val$elapsedTimeMs:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->streamingUpdateFrameDecodeTimeMs:J

    .line 929
    iget-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->streamingUpdateDelayedDroppedFrames:J

    iget-wide v3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$15;->val$delayedCount:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->streamingUpdateDelayedDroppedFrames:J

    .line 930
    iget-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->streamingUpdateUnconsumedDroppedFrames:J

    iget-wide v3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$15;->val$unconsumedCount:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->streamingUpdateUnconsumedDroppedFrames:J

    .line 931
    iget-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->streamingUpdateDroppedFrames:J

    iget-wide v3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$15;->val$delayedCount:J

    iget-wide v5, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$15;->val$unconsumedCount:J

    add-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->streamingUpdateDroppedFrames:J

    .line 932
    iget-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->streamingUpdateDecodedFrames:J

    iget-wide v3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$15;->val$decodedFrameCount:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->streamingUpdateDecodedFrames:J

    .line 934
    iget-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->totalDelayedDroppedFrames:J

    iget-wide v3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$15;->val$delayedCount:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->totalDelayedDroppedFrames:J

    .line 935
    iget-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->totalUnconsumedDroppedFrames:J

    iget-wide v3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$15;->val$unconsumedCount:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->totalUnconsumedDroppedFrames:J

    .line 936
    iget-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->totalDroppedFrames:J

    iget-wide v3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$15;->val$delayedCount:J

    iget-wide v5, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$15;->val$unconsumedCount:J

    add-long/2addr v3, v5

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->totalDroppedFrames:J

    .line 937
    iget-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->totalDecodedFrames:J

    iget-wide v3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$15;->val$decodedFrameCount:J

    add-long/2addr v1, v3

    iput-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->totalDecodedFrames:J

    .line 939
    iget-object v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$15;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    const/4 v2, 0x0

    iget-wide v3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$15;->val$nowMs:J

    invoke-static {v1, v0, v2, v3, v4}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$1500(Lcom/oculus/video/analytics/VideoPlayerAnalytics;Lcom/oculus/video/analytics/VideoAnalyticsSession;ZJ)V

    return-void
.end method
