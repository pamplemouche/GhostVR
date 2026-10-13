.class Lcom/oculus/video/analytics/VideoPlayerAnalytics$3;
.super Ljava/lang/Object;
.source "VideoPlayerAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/video/analytics/VideoPlayerAnalytics;->onTimelineChanged(JJJZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

.field final synthetic val$durationMs:J

.field final synthetic val$isSeekable:Z

.field final synthetic val$positionMs:J

.field final synthetic val$sessionId:J


# direct methods
.method constructor <init>(Lcom/oculus/video/analytics/VideoPlayerAnalytics;JJZJ)V
    .locals 0

    .line 507
    iput-object p1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$3;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    iput-wide p2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$3;->val$sessionId:J

    iput-wide p4, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$3;->val$durationMs:J

    iput-boolean p6, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$3;->val$isSeekable:Z

    iput-wide p7, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$3;->val$positionMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 510
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$3;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    invoke-static {v0}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$000(Lcom/oculus/video/analytics/VideoPlayerAnalytics;)Ljava/util/Map;

    move-result-object v0

    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$3;->val$sessionId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;

    if-nez v0, :cond_0

    .line 512
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onTimelineChanged: Session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$3;->val$sessionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " not found!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerAnalytics"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 515
    :cond_0
    iget-boolean v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->didExtractVideo:Z

    if-nez v1, :cond_1

    .line 516
    iget-object v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$3;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    iget-wide v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$3;->val$durationMs:J

    iget-boolean v4, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$3;->val$isSeekable:Z

    invoke-static {v1, v0, v2, v3, v4}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$700(Lcom/oculus/video/analytics/VideoPlayerAnalytics;Lcom/oculus/video/analytics/VideoAnalyticsSession;JZ)V

    .line 518
    :cond_1
    iget-object v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->selectedProfile:Ljava/util/Map;

    if-eqz v1, :cond_2

    .line 520
    iget-object v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->selectedProfile:Ljava/util/Map;

    iput-object v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->selectedProfileWithTimeline:Ljava/util/Map;

    .line 522
    :cond_2
    iget-object v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->selectedProfileWithTimeline:Ljava/util/Map;

    iget-wide v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$3;->val$durationMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "duration_ms"

    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 523
    iget-object v0, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->selectedProfileWithTimeline:Ljava/util/Map;

    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$3;->val$positionMs:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    const-string v2, "position_ms"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
