.class Lcom/oculus/video/analytics/VideoPlayerAnalytics$1;
.super Ljava/lang/Object;
.source "VideoPlayerAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/video/analytics/VideoPlayerAnalytics;->onSoftError(JLjava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

.field final synthetic val$nowMs:J

.field final synthetic val$sessionId:J

.field final synthetic val$throwable:Ljava/lang/Throwable;


# direct methods
.method constructor <init>(Lcom/oculus/video/analytics/VideoPlayerAnalytics;JJLjava/lang/Throwable;)V
    .locals 0

    .line 386
    iput-object p1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$1;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    iput-wide p2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$1;->val$sessionId:J

    iput-wide p4, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$1;->val$nowMs:J

    iput-object p6, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$1;->val$throwable:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 389
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$1;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    invoke-static {v0}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$000(Lcom/oculus/video/analytics/VideoPlayerAnalytics;)Ljava/util/Map;

    move-result-object v0

    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$1;->val$sessionId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;

    const-string v1, "VideoPlayerAnalytics"

    if-nez v0, :cond_0

    .line 391
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onSoftError: Session "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$1;->val$sessionId:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " not found!"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    const-string v2, "on_soft_error"

    .line 394
    invoke-static {v0, v2}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$100(Lcom/oculus/video/analytics/VideoAnalyticsSession;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 396
    :try_start_0
    iget-object v3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$1;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    iget-wide v4, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$1;->val$nowMs:J

    invoke-static {v3, v0, v2, v4, v5}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$200(Lcom/oculus/video/analytics/VideoPlayerAnalytics;Lcom/oculus/video/analytics/VideoAnalyticsSession;Ljava/lang/String;J)Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;

    move-result-object v2

    .line 397
    iget-object v3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$1;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    iget-object v4, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$1;->val$throwable:Ljava/lang/Throwable;

    iget-object v0, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->provider:Ljava/lang/String;

    invoke-static {v3, v4, v0, v2}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$300(Lcom/oculus/video/analytics/VideoPlayerAnalytics;Ljava/lang/Throwable;Ljava/lang/String;Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;)V

    .line 398
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$1;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    invoke-static {v0, v2}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$400(Lcom/oculus/video/analytics/VideoPlayerAnalytics;Lcom/oculus/video/analytics/VideoPlayerAnalyticsLogEvent;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 400
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Exception when log soft error: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method
