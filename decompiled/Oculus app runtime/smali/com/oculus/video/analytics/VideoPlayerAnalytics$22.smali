.class Lcom/oculus/video/analytics/VideoPlayerAnalytics$22;
.super Ljava/lang/Object;
.source "VideoPlayerAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/video/analytics/VideoPlayerAnalytics;->onRenderStall(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

.field final synthetic val$nowMs:J

.field final synthetic val$sessionId:J

.field final synthetic val$stallDurationMs:J


# direct methods
.method constructor <init>(Lcom/oculus/video/analytics/VideoPlayerAnalytics;JJJ)V
    .locals 0

    .line 1147
    iput-object p1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$22;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    iput-wide p2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$22;->val$sessionId:J

    iput-wide p4, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$22;->val$nowMs:J

    iput-wide p6, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$22;->val$stallDurationMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1150
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$22;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    invoke-static {v0}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$000(Lcom/oculus/video/analytics/VideoPlayerAnalytics;)Ljava/util/Map;

    move-result-object v0

    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$22;->val$sessionId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;

    if-nez v0, :cond_0

    .line 1152
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRenderStall: Session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$22;->val$sessionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " not found!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerAnalytics"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1156
    :cond_0
    iget-object v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->state:Lcom/oculus/video/analytics/VideoSessionState;

    sget-object v2, Lcom/oculus/video/analytics/VideoSessionState;->PLAYING:Lcom/oculus/video/analytics/VideoSessionState;

    if-ne v1, v2, :cond_1

    .line 1159
    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$22;->val$nowMs:J

    iget-wide v3, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->lastPlaybackStartTimeMs:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$22;->val$stallDurationMs:J

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v1

    goto :goto_0

    :cond_1
    const-wide/16 v1, 0x0

    .line 1163
    iget-wide v3, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->lastPlaybackEndTimeMs:J

    iget-wide v5, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$22;->val$nowMs:J

    iget-wide v7, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$22;->val$stallDurationMs:J

    sub-long/2addr v5, v7

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 1165
    :goto_0
    iget-object v3, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->stallDurationMsSampler:Lcom/oculus/video/analytics/DataSampler;

    invoke-virtual {v3, v1, v2}, Lcom/oculus/video/analytics/DataSampler;->sample(J)V

    .line 1166
    iget-object v3, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->stallDurationMsPeriodicSampler:Lcom/oculus/video/analytics/DataSampler;

    invoke-virtual {v3, v1, v2}, Lcom/oculus/video/analytics/DataSampler;->sample(J)V

    .line 1168
    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$22;->val$nowMs:J

    iget-wide v3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$22;->val$stallDurationMs:J

    sub-long/2addr v1, v3

    .line 1169
    sget-object v3, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;->STALL:Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    invoke-static {v0, v1, v2, v3}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$2100(Lcom/oculus/video/analytics/VideoAnalyticsSession;JLcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;)V

    .line 1170
    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$22;->val$nowMs:J

    sget-object v3, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;->STALL:Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    invoke-static {v0, v1, v2, v3}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$1300(Lcom/oculus/video/analytics/VideoAnalyticsSession;JLcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;)V

    return-void
.end method
