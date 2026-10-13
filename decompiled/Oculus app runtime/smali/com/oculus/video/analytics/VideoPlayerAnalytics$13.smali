.class Lcom/oculus/video/analytics/VideoPlayerAnalytics$13;
.super Ljava/lang/Object;
.source "VideoPlayerAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/video/analytics/VideoPlayerAnalytics;->onExtractProjectionMetadata(JLcom/oculus/video/projection/VideoProjection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

.field final synthetic val$projection:Lcom/oculus/video/projection/VideoProjection;

.field final synthetic val$sessionId:J


# direct methods
.method constructor <init>(Lcom/oculus/video/analytics/VideoPlayerAnalytics;JLcom/oculus/video/projection/VideoProjection;)V
    .locals 0

    .line 857
    iput-object p1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$13;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    iput-wide p2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$13;->val$sessionId:J

    iput-object p4, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$13;->val$projection:Lcom/oculus/video/projection/VideoProjection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    const-string v0, "VideoPlayerAnalytics"

    .line 861
    :try_start_0
    iget-object v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$13;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    invoke-static {v1}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$000(Lcom/oculus/video/analytics/VideoPlayerAnalytics;)Ljava/util/Map;

    move-result-object v1

    iget-wide v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$13;->val$sessionId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/video/analytics/VideoAnalyticsSession;

    if-nez v1, :cond_0

    .line 863
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onExtractProjectionMetadata: Session "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$13;->val$sessionId:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v2, " not found!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 866
    :cond_0
    iget-object v2, v1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->sphericalMetadata:Lorg/json/JSONObject;

    if-nez v2, :cond_1

    .line 867
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    iput-object v2, v1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->sphericalMetadata:Lorg/json/JSONObject;

    .line 869
    :cond_1
    iget-object v1, v1, Lcom/oculus/video/analytics/VideoAnalyticsSession;->sphericalMetadata:Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$13;->val$projection:Lcom/oculus/video/projection/VideoProjection;

    invoke-virtual {v2}, Lcom/oculus/video/projection/VideoProjection;->getMetadataSource()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$13;->val$projection:Lcom/oculus/video/projection/VideoProjection;

    invoke-virtual {v3}, Lcom/oculus/video/projection/VideoProjection;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    const-string v2, "Error tracking projection metadata: "

    .line 871
    invoke-static {v0, v2, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_0
    return-void
.end method
