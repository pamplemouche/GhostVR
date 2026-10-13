.class Llibraries/marauder/analytics/DefaultAnalyticsLogger$LowLatencyEventRunnable;
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
    name = "LowLatencyEventRunnable"
.end annotation


# instance fields
.field private final mEvent:Llibraries/marauder/analytics/IAnalyticsEvent;

.field final synthetic this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;


# direct methods
.method private constructor <init>(Llibraries/marauder/analytics/DefaultAnalyticsLogger;Llibraries/marauder/analytics/IAnalyticsEvent;)V
    .locals 0
    .param p2, "event"    # Llibraries/marauder/analytics/IAnalyticsEvent;

    .prologue
    .line 433
    iput-object p1, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$LowLatencyEventRunnable;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 434
    iput-object p2, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$LowLatencyEventRunnable;->mEvent:Llibraries/marauder/analytics/IAnalyticsEvent;

    .line 435
    return-void
.end method

.method synthetic constructor <init>(Llibraries/marauder/analytics/DefaultAnalyticsLogger;Llibraries/marauder/analytics/IAnalyticsEvent;Llibraries/marauder/analytics/DefaultAnalyticsLogger$1;)V
    .locals 0
    .param p1, "x0"    # Llibraries/marauder/analytics/DefaultAnalyticsLogger;
    .param p2, "x1"    # Llibraries/marauder/analytics/IAnalyticsEvent;
    .param p3, "x2"    # Llibraries/marauder/analytics/DefaultAnalyticsLogger$1;

    .prologue
    .line 429
    invoke-direct {p0, p1, p2}, Llibraries/marauder/analytics/DefaultAnalyticsLogger$LowLatencyEventRunnable;-><init>(Llibraries/marauder/analytics/DefaultAnalyticsLogger;Llibraries/marauder/analytics/IAnalyticsEvent;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 439
    iget-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$LowLatencyEventRunnable;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    iget-object v1, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$LowLatencyEventRunnable;->mEvent:Llibraries/marauder/analytics/IAnalyticsEvent;

    invoke-static {v0, v1}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->access$1400(Llibraries/marauder/analytics/DefaultAnalyticsLogger;Llibraries/marauder/analytics/IAnalyticsEvent;)V

    .line 441
    const-string v0, "DefaultAnalyticsLogger"

    const-string v1, "New low-latency event %s."

    iget-object v2, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$LowLatencyEventRunnable;->mEvent:Llibraries/marauder/analytics/IAnalyticsEvent;

    invoke-static {v0, v1, v2}, Llibraries/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 443
    iget-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$LowLatencyEventRunnable;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-static {v0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->access$1100(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)Llibraries/marauder/analytics/AnalyticsSession;

    move-result-object v0

    if-nez v0, :cond_0

    .line 444
    const-string v0, "DefaultAnalyticsLogger"

    const-string v1, "Starting new low-latency session"

    invoke-static {v0, v1}, Llibraries/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 445
    iget-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$LowLatencyEventRunnable;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    iget-object v1, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$LowLatencyEventRunnable;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-static {v1}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->access$1700(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)Llibraries/marauder/analytics/AnalyticsSession;

    move-result-object v1

    invoke-static {v0, v1}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->access$1102(Llibraries/marauder/analytics/DefaultAnalyticsLogger;Llibraries/marauder/analytics/AnalyticsSession;)Llibraries/marauder/analytics/AnalyticsSession;

    .line 447
    iget-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$LowLatencyEventRunnable;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-static {v0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->access$1100(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)Llibraries/marauder/analytics/AnalyticsSession;

    move-result-object v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Llibraries/marauder/analytics/AnalyticsSession;->setTime(J)V

    .line 450
    iget-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$LowLatencyEventRunnable;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-static {v0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->access$1600(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    const-wide/16 v2, 0x1388

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    .line 453
    :cond_0
    iget-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$LowLatencyEventRunnable;->this$0:Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    invoke-static {v0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->access$1100(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)Llibraries/marauder/analytics/AnalyticsSession;

    move-result-object v0

    iget-object v1, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$LowLatencyEventRunnable;->mEvent:Llibraries/marauder/analytics/IAnalyticsEvent;

    invoke-virtual {v0, v1}, Llibraries/marauder/analytics/AnalyticsSession;->addEvent(Llibraries/marauder/analytics/IAnalyticsEvent;)V

    .line 454
    return-void
.end method
