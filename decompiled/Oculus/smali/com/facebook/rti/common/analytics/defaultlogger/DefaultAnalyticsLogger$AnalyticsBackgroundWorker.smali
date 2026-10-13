.class Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$AnalyticsBackgroundWorker;
.super Ljava/lang/Object;
.source "DefaultAnalyticsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnalyticsBackgroundWorker"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;


# direct methods
.method private constructor <init>(Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;)V
    .locals 0

    .prologue
    .line 214
    iput-object p1, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$AnalyticsBackgroundWorker;->this$0:Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$1;)V
    .locals 0

    .prologue
    .line 214
    invoke-direct {p0, p1}, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$AnalyticsBackgroundWorker;-><init>(Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$AnalyticsBackgroundWorker;->this$0:Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;

    invoke-static {v0}, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->access$500(Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 220
    :goto_0
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$AnalyticsBackgroundWorker;->this$0:Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;

    invoke-static {v0}, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->access$600(Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 221
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$AnalyticsBackgroundWorker;->this$0:Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;

    invoke-static {v0}, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->access$600(Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;)Ljava/util/Queue;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Queue;->remove()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 223
    :cond_0
    return-void
.end method
