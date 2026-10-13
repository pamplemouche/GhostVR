.class Lcom/oculus/video/analytics/VideoPlayerAnalytics$6;
.super Ljava/lang/Object;
.source "VideoPlayerAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/video/analytics/VideoPlayerAnalytics;->onExtractVideo(JIIFZLjava/lang/String;Ljava/lang/String;FFLjava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

.field final synthetic val$fovX:F

.field final synthetic val$fovY:F

.field final synthetic val$frameRate:F

.field final synthetic val$height:I

.field final synthetic val$is3D:Z

.field final synthetic val$nowMs:J

.field final synthetic val$sessionId:J

.field final synthetic val$syncMode:Ljava/lang/String;

.field final synthetic val$updatedProjection:Ljava/lang/String;

.field final synthetic val$videoMimeType:Ljava/lang/String;

.field final synthetic val$videoRendererName:Ljava/lang/String;

.field final synthetic val$width:I


# direct methods
.method constructor <init>(Lcom/oculus/video/analytics/VideoPlayerAnalytics;JJIIFZLjava/lang/String;Ljava/lang/String;FFLjava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 598
    iput-object p1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$6;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    iput-wide p2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$6;->val$sessionId:J

    iput-wide p4, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$6;->val$nowMs:J

    iput p6, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$6;->val$width:I

    iput p7, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$6;->val$height:I

    iput p8, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$6;->val$frameRate:F

    iput-boolean p9, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$6;->val$is3D:Z

    iput-object p10, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$6;->val$syncMode:Ljava/lang/String;

    iput-object p11, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$6;->val$updatedProjection:Ljava/lang/String;

    iput p12, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$6;->val$fovX:F

    iput p13, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$6;->val$fovY:F

    iput-object p14, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$6;->val$videoMimeType:Ljava/lang/String;

    iput-object p15, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$6;->val$videoRendererName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 15

    .line 601
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$6;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    invoke-static {v0}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$000(Lcom/oculus/video/analytics/VideoPlayerAnalytics;)Ljava/util/Map;

    move-result-object v0

    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$6;->val$sessionId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcom/oculus/video/analytics/VideoAnalyticsSession;

    if-nez v2, :cond_0

    .line 603
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onExtractVideo: Session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$6;->val$sessionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " not found!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerAnalytics"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 607
    :cond_0
    iget-wide v0, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$6;->val$nowMs:J

    invoke-static {v2, v0, v1}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$800(Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V

    .line 609
    iget-boolean v0, v2, Lcom/oculus/video/analytics/VideoAnalyticsSession;->didExtractVideo:Z

    if-nez v0, :cond_1

    .line 610
    iget-object v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$6;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    iget v3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$6;->val$width:I

    iget v4, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$6;->val$height:I

    iget v5, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$6;->val$frameRate:F

    iget-boolean v6, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$6;->val$is3D:Z

    iget-object v7, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$6;->val$syncMode:Ljava/lang/String;

    iget-object v8, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$6;->val$updatedProjection:Ljava/lang/String;

    iget v9, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$6;->val$fovX:F

    iget v10, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$6;->val$fovY:F

    iget-object v11, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$6;->val$videoMimeType:Ljava/lang/String;

    iget-object v12, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$6;->val$videoRendererName:Ljava/lang/String;

    iget-wide v13, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$6;->val$nowMs:J

    invoke-static/range {v1 .. v14}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$900(Lcom/oculus/video/analytics/VideoPlayerAnalytics;Lcom/oculus/video/analytics/VideoAnalyticsSession;IIFZLjava/lang/String;Ljava/lang/String;FFLjava/lang/String;Ljava/lang/String;J)V

    :cond_1
    return-void
.end method
