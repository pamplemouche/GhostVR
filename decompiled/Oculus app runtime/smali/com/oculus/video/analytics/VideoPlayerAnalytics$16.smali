.class Lcom/oculus/video/analytics/VideoPlayerAnalytics$16;
.super Ljava/lang/Object;
.source "VideoPlayerAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/video/analytics/VideoPlayerAnalytics;->onVideoSizeChanged(JII)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

.field final synthetic val$height:I

.field final synthetic val$nowMs:J

.field final synthetic val$sessionId:J

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/oculus/video/analytics/VideoPlayerAnalytics;JIIJ)V
    .locals 0

    .line 954
    iput-object p1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$16;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    iput-wide p2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$16;->val$sessionId:J

    iput p4, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$16;->val$width:I

    iput p5, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$16;->val$height:I

    iput-wide p6, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$16;->val$nowMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 957
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$16;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    invoke-static {v0}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$000(Lcom/oculus/video/analytics/VideoPlayerAnalytics;)Ljava/util/Map;

    move-result-object v0

    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$16;->val$sessionId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;

    const-string v1, "VideoPlayerAnalytics"

    if-nez v0, :cond_0

    .line 959
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onVideoSizeChanged: Session "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$16;->val$sessionId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " not found!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 963
    :cond_0
    iget-wide v2, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->lastVideoSizeChangeTimeMs:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    iget v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$16;->val$width:I

    iget v3, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->width:I

    if-ne v2, v3, :cond_1

    iget v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$16;->val$height:I

    iget v3, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->height:I

    if-ne v2, v3, :cond_1

    return-void

    .line 968
    :cond_1
    iget-wide v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$16;->val$nowMs:J

    invoke-static {v0, v2, v3}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$1600(Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V

    .line 970
    iget v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$16;->val$width:I

    iput v2, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->width:I

    .line 971
    iget v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$16;->val$height:I

    iput v2, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->height:I

    .line 973
    iget-wide v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$16;->val$nowMs:J

    sget-object v4, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;->VIDEO_SIZE_CHANGED:Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    invoke-static {v0, v2, v3, v4}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$1700(Lcom/oculus/video/analytics/VideoAnalyticsSession;JLcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;)V

    .line 974
    iget-wide v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$16;->val$nowMs:J

    sget-object v4, Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;->VIDEO_SIZE_CHANGED:Lcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;

    invoke-static {v0, v2, v3, v4}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$1300(Lcom/oculus/video/analytics/VideoAnalyticsSession;JLcom/oculus/video/analytics/VideoPlayerAnalytics$VideoSessionEvent;)V

    .line 977
    :try_start_0
    iget-object v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$16;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    const-string v3, "on_video_size_changed"

    iget-wide v4, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$16;->val$nowMs:J

    invoke-static {v2, v0, v3, v4, v5}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$200(Lcom/oculus/video/analytics/VideoPlayerAnalytics;Lcom/oculus/video/analytics/VideoAnalyticsSession;Ljava/lang/String;J)Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;

    move-result-object v2

    const-string v3, "width"

    .line 978
    iget v4, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->width:I

    invoke-virtual {v2, v3, v4}, Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    move-result-object v3

    const-string v4, "height"

    iget v0, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->height:I

    .line 979
    invoke-virtual {v3, v4, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    .line 980
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$16;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    invoke-static {v0, v2}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$400(Lcom/oculus/video/analytics/VideoPlayerAnalytics;Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 982
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception when log changed video size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
