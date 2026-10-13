.class Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$EventRunnable;
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
    name = "EventRunnable"
.end annotation


# instance fields
.field private mEvent:Lcom/facebook/rti/common/analytics/AnalyticsEvent;

.field final synthetic this$0:Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;


# direct methods
.method private constructor <init>(Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;Lcom/facebook/rti/common/analytics/AnalyticsEvent;)V
    .locals 0

    .prologue
    .line 234
    iput-object p1, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$EventRunnable;->this$0:Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p2, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$EventRunnable;->mEvent:Lcom/facebook/rti/common/analytics/AnalyticsEvent;

    .line 236
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;Lcom/facebook/rti/common/analytics/AnalyticsEvent;Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$1;)V
    .locals 0

    .prologue
    .line 230
    invoke-direct {p0, p1, p2}, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$EventRunnable;-><init>(Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;Lcom/facebook/rti/common/analytics/AnalyticsEvent;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 240
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$EventRunnable;->this$0:Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;

    iget-object v1, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$EventRunnable;->mEvent:Lcom/facebook/rti/common/analytics/AnalyticsEvent;

    invoke-static {v0, v1}, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->access$700(Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;Lcom/facebook/rti/common/analytics/AnalyticsEvent;)V

    .line 242
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$EventRunnable;->this$0:Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;

    invoke-static {v0}, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->access$800(Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;)Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$EventRunnable;->mEvent:Lcom/facebook/rti/common/analytics/AnalyticsEvent;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;->addEvent(Lcom/facebook/rti/common/analytics/AnalyticsEvent;)V

    .line 244
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$EventRunnable;->this$0:Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;

    invoke-static {v0}, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->access$900(Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 246
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$EventRunnable;->this$0:Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;

    invoke-static {v0}, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->access$800(Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;)Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;->getCurrentBatch()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    .line 247
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$EventRunnable;->this$0:Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;

    invoke-static {v0}, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->access$1000(Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;)V

    .line 254
    :goto_0
    return-void

    .line 252
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$EventRunnable;->this$0:Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;

    invoke-static {v0}, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->access$900(Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;)Landroid/os/Handler;

    move-result-object v0

    const-wide/32 v2, 0x493e0

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
