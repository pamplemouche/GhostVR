.class Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector$ThreadProvider;
.super Ljava/lang/Object;
.source "ProcessErrorMonitorANRDetector.java"


# annotations
.annotation build Lcom/facebook/common/internal/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/acra/anr/ProcessErrorMonitorANRDetector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ThreadProvider"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static runOnNewThread(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 79
    new-instance v0, Ljava/lang/Thread;

    const-string v1, "ProcessErrorMonitorANRDetectorThread"

    invoke-direct {v0, p0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 80
    return-void
.end method
