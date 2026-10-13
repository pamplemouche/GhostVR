.class Lcom/oculus/video/analytics/VideoPlayerAnalytics$12;
.super Ljava/lang/Object;
.source "VideoPlayerAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/video/analytics/VideoPlayerAnalytics;->onAdaptivePlaylistUpdate(JLjava/util/Map;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

.field final synthetic val$availableProfiles:Ljava/util/List;

.field final synthetic val$nowMs:J

.field final synthetic val$selectedProfile:Ljava/util/Map;

.field final synthetic val$sessionId:J


# direct methods
.method constructor <init>(Lcom/oculus/video/analytics/VideoPlayerAnalytics;JLjava/util/Map;JLjava/util/List;)V
    .locals 0

    .line 823
    iput-object p1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$12;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    iput-wide p2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$12;->val$sessionId:J

    iput-object p4, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$12;->val$selectedProfile:Ljava/util/Map;

    iput-wide p5, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$12;->val$nowMs:J

    iput-object p7, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$12;->val$availableProfiles:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 826
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$12;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    invoke-static {v0}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$000(Lcom/oculus/video/analytics/VideoPlayerAnalytics;)Ljava/util/Map;

    move-result-object v0

    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$12;->val$sessionId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;

    if-nez v0, :cond_0

    .line 828
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onAdaptivePlaylistUpdate: Session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$12;->val$sessionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " not found!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerAnalytics"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 832
    :cond_0
    iget-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->lastPlaylistUpdateTimeMs:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-lez v5, :cond_1

    .line 833
    iget-object v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$12;->val$selectedProfile:Ljava/util/Map;

    iget-wide v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$12;->val$nowMs:J

    iget-wide v4, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->lastPlaylistUpdateTimeMs:J

    sub-long/2addr v2, v4

    .line 834
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "update_interval_ms"

    .line 833
    invoke-interface {v1, v3, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 836
    :cond_1
    iget v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->playListUpdatePeriodicCount:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->playListUpdatePeriodicCount:I

    .line 837
    iget-object v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->selectedProfileWithTimeline:Ljava/util/Map;

    if-eqz v1, :cond_3

    .line 839
    iget-object v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->selectedProfileWithTimeline:Ljava/util/Map;

    const-string v2, "duration_ms"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_2

    .line 841
    iget-object v3, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->selectedProfile:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 843
    :cond_2
    iget-object v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->selectedProfileWithTimeline:Ljava/util/Map;

    const-string v2, "position_ms"

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    if-eqz v1, :cond_3

    .line 845
    iget-object v3, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->selectedProfile:Ljava/util/Map;

    invoke-interface {v3, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 848
    :cond_3
    iget-object v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->selectedProfile:Ljava/util/Map;

    iput-object v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->selectedProfileWithTimeline:Ljava/util/Map;

    .line 849
    iget-object v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$12;->val$selectedProfile:Ljava/util/Map;

    iput-object v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->selectedProfile:Ljava/util/Map;

    .line 850
    iget-object v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$12;->val$availableProfiles:Ljava/util/List;

    iput-object v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->availableProfiles:Ljava/util/List;

    .line 851
    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$12;->val$nowMs:J

    iput-wide v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->lastPlaylistUpdateTimeMs:J

    return-void
.end method
