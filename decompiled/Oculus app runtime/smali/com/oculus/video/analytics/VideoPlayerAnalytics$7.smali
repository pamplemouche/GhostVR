.class Lcom/oculus/video/analytics/VideoPlayerAnalytics$7;
.super Ljava/lang/Object;
.source "VideoPlayerAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/video/analytics/VideoPlayerAnalytics;->onExtractAudio(JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

.field final synthetic val$audioChannelLayout:Ljava/lang/String;

.field final synthetic val$audioMimeType:Ljava/lang/String;

.field final synthetic val$audioRendererName:Ljava/lang/String;

.field final synthetic val$audioTrackCount:I

.field final synthetic val$nowMs:J

.field final synthetic val$sessionId:J


# direct methods
.method constructor <init>(Lcom/oculus/video/analytics/VideoPlayerAnalytics;JLjava/lang/String;Ljava/lang/String;ILjava/lang/String;J)V
    .locals 0

    .line 661
    iput-object p1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$7;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    iput-wide p2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$7;->val$sessionId:J

    iput-object p4, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$7;->val$audioMimeType:Ljava/lang/String;

    iput-object p5, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$7;->val$audioRendererName:Ljava/lang/String;

    iput p6, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$7;->val$audioTrackCount:I

    iput-object p7, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$7;->val$audioChannelLayout:Ljava/lang/String;

    iput-wide p8, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$7;->val$nowMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 664
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$7;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    invoke-static {v0}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$000(Lcom/oculus/video/analytics/VideoPlayerAnalytics;)Ljava/util/Map;

    move-result-object v0

    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$7;->val$sessionId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;

    const-string v1, "VideoPlayerAnalytics"

    if-nez v0, :cond_0

    .line 666
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExtractAudio: Session "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$7;->val$sessionId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " not found!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 669
    :cond_0
    iget-boolean v2, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->didExtractAudio:Z

    if-eqz v2, :cond_1

    return-void

    :cond_1
    const/4 v2, 0x1

    .line 673
    iput-boolean v2, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->didExtractAudio:Z

    .line 674
    iget-object v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$7;->val$audioMimeType:Ljava/lang/String;

    iput-object v2, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->audioMimeType:Ljava/lang/String;

    .line 675
    iget-object v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$7;->val$audioRendererName:Ljava/lang/String;

    iput-object v2, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->audioRendererName:Ljava/lang/String;

    .line 676
    iget v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$7;->val$audioTrackCount:I

    iput v2, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->audioTrackCount:I

    .line 677
    iget-object v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$7;->val$audioChannelLayout:Ljava/lang/String;

    iput-object v2, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->audioChannelLayout:Ljava/lang/String;

    .line 680
    :try_start_0
    iget-object v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$7;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    iget-object v3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$7;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    const-string v4, "on_extract_audio"

    iget-wide v5, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$7;->val$nowMs:J

    invoke-static {v3, v0, v4, v5, v6}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$200(Lcom/oculus/video/analytics/VideoPlayerAnalytics;Lcom/oculus/video/analytics/VideoAnalyticsSession;Ljava/lang/String;J)Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;

    move-result-object v0

    invoke-static {v2, v0}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$400(Lcom/oculus/video/analytics/VideoPlayerAnalytics;Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 682
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception when log extract audio: "

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
