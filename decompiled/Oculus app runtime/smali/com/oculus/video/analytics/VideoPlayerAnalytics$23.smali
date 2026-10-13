.class Lcom/oculus/video/analytics/VideoPlayerAnalytics$23;
.super Ljava/lang/Object;
.source "VideoPlayerAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/video/analytics/VideoPlayerAnalytics;->onSeekStart(JJ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

.field final synthetic val$nowMs:J

.field final synthetic val$sessionId:J


# direct methods
.method constructor <init>(Lcom/oculus/video/analytics/VideoPlayerAnalytics;JJ)V
    .locals 0

    .line 1182
    iput-object p1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$23;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    iput-wide p2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$23;->val$sessionId:J

    iput-wide p4, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$23;->val$nowMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1185
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$23;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    invoke-static {v0}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$000(Lcom/oculus/video/analytics/VideoPlayerAnalytics;)Ljava/util/Map;

    move-result-object v0

    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$23;->val$sessionId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;

    if-nez v0, :cond_0

    .line 1187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSeekStart: Session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$23;->val$sessionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " not found!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerAnalytics"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1191
    :cond_0
    iget-boolean v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->didPlaybackStart:Z

    if-nez v1, :cond_1

    return-void

    .line 1198
    :cond_1
    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$23;->val$nowMs:J

    invoke-static {v0, v1, v2}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$1100(Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V

    .line 1200
    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$23;->val$nowMs:J

    invoke-static {v0, v1, v2}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$1200(Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V

    .line 1202
    iget-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->pauseStartTimeMs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_2

    .line 1204
    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$23;->val$nowMs:J

    iput-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->seekStartTimeMs:J

    .line 1206
    :cond_2
    sget-object v1, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;->SEEK_START:Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    iget-wide v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$23;->val$nowMs:J

    invoke-static {v0, v1, v2, v3}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$600(Lcom/oculus/video/analytics/VideoAnalyticsSession;Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;J)V

    .line 1207
    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$23;->val$nowMs:J

    sget-object v3, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;->SEEK_START:Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    invoke-static {v0, v1, v2, v3}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$1700(Lcom/oculus/video/analytics/VideoAnalyticsSession;JLcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;)V

    return-void
.end method
