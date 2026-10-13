.class Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter$1;
.super Ljava/lang/Object;
.source "FsStats.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter;->getAvailableDiskSpaceKbAsync()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter;


# direct methods
.method constructor <init>(Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter$1;->this$0:Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter$1;->this$0:Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter;

    invoke-static {v0}, Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter;->access$100(Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    .line 55
    invoke-static {}, Lcom/facebook/common/statfs/StatFsHelper;->getInstance()Lcom/facebook/common/statfs/StatFsHelper;

    move-result-object v1

    sget-object v2, Lcom/facebook/common/statfs/StatFsHelper$StorageType;->INTERNAL:Lcom/facebook/common/statfs/StatFsHelper$StorageType;

    .line 56
    invoke-virtual {v1, v2}, Lcom/facebook/common/statfs/StatFsHelper;->getAvailableStorageSpace(Lcom/facebook/common/statfs/StatFsHelper$StorageType;)J

    move-result-wide v2

    const/16 v1, 0xa

    shr-long/2addr v2, v1

    .line 54
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 58
    iget-object v0, p0, Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter$1;->this$0:Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter;

    invoke-static {v0}, Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter;->access$200(Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter;)Landroid/os/ConditionVariable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->open()V

    .line 59
    iget-object v0, p0, Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter$1;->this$0:Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter;

    invoke-static {v0}, Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter;->access$300(Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter;)Ljava/util/concurrent/atomic/AtomicBoolean;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 60
    return-void
.end method
