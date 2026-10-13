.class Lcom/oculus/video/analytics/VideoPlayerAnalytics$24;
.super Ljava/lang/Object;
.source "VideoPlayerAnalytics.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/video/analytics/VideoPlayerAnalytics;->onCompleteSession(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

.field final synthetic val$RenderingStatsJSON:Ljava/lang/String;

.field final synthetic val$clientAnalyticsData:Ljava/lang/String;

.field final synthetic val$fatalError:Ljava/lang/Throwable;

.field final synthetic val$maxReportedPositionMs:J

.field final synthetic val$nowMs:J

.field final synthetic val$sessionId:J


# direct methods
.method constructor <init>(Lcom/oculus/video/analytics/VideoPlayerAnalytics;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;J)V
    .locals 0

    .line 1222
    iput-object p1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$24;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    iput-wide p2, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$24;->val$sessionId:J

    iput-wide p4, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$24;->val$maxReportedPositionMs:J

    iput-object p6, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$24;->val$RenderingStatsJSON:Ljava/lang/String;

    iput-object p7, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$24;->val$clientAnalyticsData:Ljava/lang/String;

    iput-object p8, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$24;->val$fatalError:Ljava/lang/Throwable;

    iput-wide p9, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$24;->val$nowMs:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 10

    .line 1225
    iget-object v0, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$24;->this$0:Lcom/oculus/video/analytics/VideoPlayerAnalytics;

    iget-wide v1, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$24;->val$sessionId:J

    iget-wide v3, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$24;->val$maxReportedPositionMs:J

    iget-object v5, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$24;->val$RenderingStatsJSON:Ljava/lang/String;

    iget-object v6, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$24;->val$clientAnalyticsData:Ljava/lang/String;

    iget-object v7, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$24;->val$fatalError:Ljava/lang/Throwable;

    iget-wide v8, p0, Lcom/oculus/video/analytics/VideoPlayerAnalytics$24;->val$nowMs:J

    invoke-static/range {v0 .. v9}, Lcom/oculus/video/analytics/VideoPlayerAnalytics;->access$2200(Lcom/oculus/video/analytics/VideoPlayerAnalytics;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;J)V

    return-void
.end method
