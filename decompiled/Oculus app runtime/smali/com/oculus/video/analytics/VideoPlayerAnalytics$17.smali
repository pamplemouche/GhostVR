.class Lcom/oculus/video/analytics/VideoPlayerAnalytics$17;
.super Ljava/lang/Object;
.source "VideoPlayerAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/video/analytics/VideoPlayerAnalytics;->onSubtitleInfo(JLjava/lang/String;Ljava/lang/String;Ljava/util/Collection;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

.field final synthetic val$availableSubtitles:Ljava/util/Collection;

.field final synthetic val$nowMs:J

.field final synthetic val$selectedSubtitle:Ljava/lang/String;

.field final synthetic val$sessionId:J

.field final synthetic val$subtitleMimeType:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/video/analytics/VideoPlayerAnalytics;JLjava/lang/String;Ljava/lang/String;Ljava/util/Collection;J)V
    .locals 0

    .line 1000
    iput-object p1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$17;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    iput-wide p2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$17;->val$sessionId:J

    iput-object p4, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$17;->val$subtitleMimeType:Ljava/lang/String;

    iput-object p5, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$17;->val$selectedSubtitle:Ljava/lang/String;

    iput-object p6, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$17;->val$availableSubtitles:Ljava/util/Collection;

    iput-wide p7, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$17;->val$nowMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1003
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$17;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    invoke-static {v0}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$000(Lcom/oculus/video/analytics/VideoPlayerAnalytics;)Ljava/util/Map;

    move-result-object v0

    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$17;->val$sessionId:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;

    if-nez v0, :cond_0

    .line 1005
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onSubtitleInfo: Session "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$17;->val$sessionId:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " not found!"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "VideoPlayerAnalytics"

    invoke-static {v1, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    .line 1009
    :cond_0
    iget-object v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$17;->val$subtitleMimeType:Ljava/lang/String;

    iput-object v1, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->subtitleMimeType:Ljava/lang/String;

    .line 1011
    iget-object v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$17;->val$selectedSubtitle:Ljava/lang/String;

    .line 1012
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const-string v1, ""

    .line 1016
    :cond_1
    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    .line 1019
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    const-wide/16 v3, 0x0

    if-nez v2, :cond_2

    iget-object v2, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->subtitleDurationMs:Ljava/util/HashMap;

    .line 1020
    invoke-virtual {v2, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1021
    iget-object v2, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->subtitleDurationMs:Ljava/util/HashMap;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v1, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1025
    :cond_2
    iget-object v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$17;->val$availableSubtitles:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1026
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_3

    iget-object v6, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->subtitleDurationMs:Ljava/util/HashMap;

    .line 1027
    invoke-virtual {v6, v5}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3

    .line 1028
    iget-object v6, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->subtitleDurationMs:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v6, v5, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 1032
    :cond_4
    iget-wide v2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$17;->val$nowMs:J

    invoke-static {v0, v2, v3}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$1800(Lcom/oculus/video/analytics/VideoAnalyticsSession;J)V

    .line 1034
    new-instance v2, Landroid/util/Pair;

    iget-wide v3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$17;->val$nowMs:J

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    iput-object v2, v0, Lcom/oculus/video/analytics/VideoAnalyticsSession;->lastSubtitleSelectionTimeMs:Landroid/util/Pair;

    return-void
.end method
