.class Llibraries/marauder/analytics/DefaultAnalyticsLogger$EventRunnable;
.super Ljava/lang/Object;
.source "DefaultAnalyticsLogger.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Llibraries/marauder/analytics/DefaultAnalyticsLogger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventRunnable"
.end annotation


# instance fields
.field private mEvent:Llibraries/marauder/analytics/IAnalyticsEvent;

.field final synthetic this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;


# direct methods
.method private constructor <init>(Llibraries/marauder/analytics/DefaultAnalyticsLogger;Llibraries/marauder/analytics/IAnalyticsEvent;)V
    .locals 0
    .param p2, "event"    # Llibraries/marauder/analytics/IAnalyticsEvent;

    .prologue
    .line 404
    iput-object p1, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$EventRunnable;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 405
    iput-object p2, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$EventRunnable;->mEvent:Llibraries/marauder/analytics/IAnalyticsEvent;

    .line 406
    return-void
.end method

.method synthetic constructor <init>(Llibraries/marauder/analytics/DefaultAnalyticsLogger;Llibraries/marauder/analytics/IAnalyticsEvent;Llibraries/marauder/analytics/DefaultAnalyticsLogger$1;)V
    .locals 0
    .param p1, "x0"    # Llibraries/marauder/analytics/DefaultAnalyticsLogger;
    .param p2, "x1"    # Llibraries/marauder/analytics/IAnalyticsEvent;
    .param p3, "x2"    # Llibraries/marauder/analytics/DefaultAnalyticsLogger$1;

    .prologue
    .line 400
    invoke-direct {p0, p1, p2}, Llibraries/marauder/analytics/DefaultAnalyticsLogger$EventRunnable;-><init>(Llibraries/marauder/analytics/DefaultAnalyticsLogger;Llibraries/marauder/analytics/IAnalyticsEvent;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    .line 410
    iget-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$EventRunnable;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    iget-object v1, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$EventRunnable;->mEvent:Llibraries/marauder/analytics/IAnalyticsEvent;

    invoke-static {v0, v1}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->access$1400(Llibraries/marauder/analytics/DefaultAnalyticsLogger;Llibraries/marauder/analytics/IAnalyticsEvent;)V

    .line 412
    const-string v0, "DefaultAnalyticsLogger"

    const-string v1, "New event %s."

    iget-object v2, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$EventRunnable;->mEvent:Llibraries/marauder/analytics/IAnalyticsEvent;

    invoke-static {v0, v1, v2}, Llibraries/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 414
    iget-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$EventRunnable;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-static {v0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->access$1500(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)Llibraries/marauder/analytics/AnalyticsSession;

    move-result-object v0

    iget-object v1, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$EventRunnable;->mEvent:Llibraries/marauder/analytics/IAnalyticsEvent;

    invoke-virtual {v0, v1}, Llibraries/marauder/analytics/AnalyticsSession;->addEvent(Llibraries/marauder/analytics/IAnalyticsEvent;)V

    .line 416
    iget-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$EventRunnable;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-static {v0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->access$1600(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V

    .line 418
    iget-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$EventRunnable;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-static {v0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->access$1500(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)Llibraries/marauder/analytics/AnalyticsSession;

    move-result-object v0

    invoke-virtual {v0}, Llibraries/marauder/analytics/AnalyticsSession;->getCurrentBatch()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/16 v1, 0x32

    if-lt v0, v1, :cond_0

    .line 419
    iget-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$EventRunnable;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-virtual {v0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->maybeStoreCurrentBatch()V

    .line 426
    :goto_0
    return-void

    .line 424
    :cond_0
    iget-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$EventRunnable;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-static {v0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->access$1600(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)Landroid/os/Handler;

    move-result-object v0

    const-wide/16 v2, 0x3a98

    invoke-virtual {v0, v4, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    goto :goto_0
.end method
