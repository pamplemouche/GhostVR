.class Lcom/oculus/video/analytics/VideoPlayerAnalytics$19;
.super Ljava/lang/Object;
.source "VideoPlayerAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/video/analytics/VideoPlayerAnalytics;->onResume(J)V
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

    .line 1081
    iput-object p1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$19;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    iput-wide p2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$19;->val$sessionId:J

    iput-wide p4, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$19;->val$nowMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1084
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$19;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    invoke-static {v0}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$000(Lcom/oculus/video/analytics/VideoPlayerAnalytics;)Ljava/util/Map;

    move-result-object v0

    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$19;->val$sessionId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;

    if-nez v0, :cond_0

    .line 1086
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onResume: Session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$19;->val$sessionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " not found!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerAnalytics"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const/4 v1, 0x0

    .line 1090
    iput-boolean v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->didPauseBeforeLoad:Z

    .line 1092
    iget-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->pauseStartTimeMs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    return-void

    .line 1096
    :cond_1
    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$19;->val$nowMs:J

    invoke-static {v0, v1, v2}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$2000(Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V

    .line 1098
    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$19;->val$nowMs:J

    iput-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->resumeStartTimeMs:J

    .line 1099
    sget-object v1, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;->RESUME:Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    iget-wide v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$19;->val$nowMs:J

    invoke-static {v0, v1, v2, v3}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$600(Lcom/oculus/video/analytics/VideoAnalyticsSession;Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;J)V

    return-void
.end method
