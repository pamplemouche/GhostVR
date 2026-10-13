.class Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$1;
.super Landroid/os/Handler;
.source "DefaultAnalyticsLogger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSamplePolicy;Landroid/content/SharedPreferences;Lcom/facebook/rti/common/util/NonInjectProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;


# direct methods
.method constructor <init>(Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;Landroid/os/Looper;)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$1;->this$0:Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 122
    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 123
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$1;->this$0:Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;

    new-instance v1, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$StoreBatchRunnable;

    iget-object v2, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$1;->this$0:Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;

    invoke-direct {v1, v2, v3}, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$StoreBatchRunnable;-><init>(Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$1;)V

    invoke-static {v0, v1}, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->access$100(Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;Ljava/lang/Runnable;)V

    .line 124
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$1;->this$0:Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;

    new-instance v1, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$UploadRunnable;

    iget-object v2, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$1;->this$0:Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;

    invoke-direct {v1, v2, v3}, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$UploadRunnable;-><init>(Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$1;)V

    invoke-static {v0, v1}, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->access$100(Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;Ljava/lang/Runnable;)V

    .line 126
    :cond_0
    return-void
.end method
