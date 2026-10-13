.class Lcom/oculus/video/analytics/VideoPlayerAnalytics$5;
.super Ljava/lang/Object;
.source "VideoPlayerAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/video/analytics/VideoPlayerAnalytics;->onVideoFormatChanged(JFID)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

.field final synthetic val$bitrate:I

.field final synthetic val$frameRate:F

.field final synthetic val$nowMs:J

.field final synthetic val$sessionId:J

.field final synthetic val$vqm:D


# direct methods
.method constructor <init>(Lcom/oculus/video/analytics/VideoPlayerAnalytics;JJFID)V
    .locals 0

    .line 559
    iput-object p1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$5;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    iput-wide p2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$5;->val$sessionId:J

    iput-wide p4, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$5;->val$nowMs:J

    iput p6, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$5;->val$frameRate:F

    iput p7, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$5;->val$bitrate:I

    iput-wide p8, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$5;->val$vqm:D

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 562
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$5;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    invoke-static {v0}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$000(Lcom/oculus/video/analytics/VideoPlayerAnalytics;)Ljava/util/Map;

    move-result-object v0

    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$5;->val$sessionId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;

    if-nez v0, :cond_0

    .line 564
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onVideoFormatChanged: Session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$5;->val$sessionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " not found!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerAnalytics"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 568
    :cond_0
    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$5;->val$nowMs:J

    invoke-static {v0, v1, v2}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$800(Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V

    .line 572
    iget v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$5;->val$frameRate:F

    iput v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->fps:F

    .line 573
    iget v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$5;->val$bitrate:I

    if-lez v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    iput v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->videoBitrate:I

    .line 574
    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$5;->val$vqm:D

    iput-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->vqm:D

    return-void
.end method
