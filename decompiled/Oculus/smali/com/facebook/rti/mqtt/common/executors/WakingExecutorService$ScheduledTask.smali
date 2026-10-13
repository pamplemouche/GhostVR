.class Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ScheduledTask;
.super Ljava/lang/Object;
.source "WakingExecutorService.java"

# interfaces
.implements Ljava/lang/Comparable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ScheduledTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<V:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/lang/Comparable",
        "<",
        "Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ScheduledTask",
        "<TV;>;>;"
    }
.end annotation


# instance fields
.field public final executeTimeMs:J

.field public final future:Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl",
            "<TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;J)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl",
            "<TV;>;J)V"
        }
    .end annotation

    .prologue
    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ScheduledTask;->future:Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ListenableScheduledFutureImpl;

    .line 420
    iput-wide p2, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ScheduledTask;->executeTimeMs:J

    .line 421
    return-void
.end method


# virtual methods
.method public compareTo(Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ScheduledTask;)I
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ScheduledTask",
            "<TV;>;)I"
        }
    .end annotation

    .prologue
    .line 425
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ScheduledTask;->executeTimeMs:J

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iget-wide v2, p1, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ScheduledTask;->executeTimeMs:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Long;->compareTo(Ljava/lang/Long;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 414
    check-cast p1, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ScheduledTask;

    invoke-virtual {p0, p1}, Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ScheduledTask;->compareTo(Lcom/facebook/rti/mqtt/common/executors/WakingExecutorService$ScheduledTask;)I

    move-result v0

    return v0
.end method
