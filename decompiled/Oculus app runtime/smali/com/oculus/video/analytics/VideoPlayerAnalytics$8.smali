.class Lcom/oculus/video/analytics/VideoPlayerAnalytics$8;
.super Ljava/lang/Object;
.source "VideoPlayerAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/video/analytics/VideoPlayerAnalytics;->onRestartRender(J)V
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

    .line 693
    iput-object p1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$8;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    iput-wide p2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$8;->val$sessionId:J

    iput-wide p4, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$8;->val$nowMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 696
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$8;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    invoke-static {v0}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$000(Lcom/oculus/video/analytics/VideoPlayerAnalytics;)Ljava/util/Map;

    move-result-object v0

    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$8;->val$sessionId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;

    if-nez v0, :cond_0

    .line 698
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRestartRender: Session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$8;->val$sessionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " not found!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerAnalytics"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 701
    :cond_0
    iget-object v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$8;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    iget-wide v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$8;->val$nowMs:J

    invoke-static {v1, v0, v2, v3}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$1000(Lcom/oculus/video/analytics/VideoPlayerAnalytics;Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V

    .line 702
    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$8;->val$nowMs:J

    invoke-static {v0, v1, v2}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$1100(Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V

    .line 703
    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$8;->val$nowMs:J

    invoke-static {v0, v1, v2}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$1200(Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V

    .line 704
    sget-object v1, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;->RENDER_RESTART:Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    iget-wide v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$8;->val$nowMs:J

    invoke-static {v0, v1, v2, v3}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$600(Lcom/oculus/video/analytics/VideoAnalyticsSession;Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;J)V

    .line 705
    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$8;->val$nowMs:J

    sget-object v3, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;->RENDER_RESTART:Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    invoke-static {v0, v1, v2, v3}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$1300(Lcom/oculus/video/analytics/VideoAnalyticsSession;JLcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;)V

    return-void
.end method
