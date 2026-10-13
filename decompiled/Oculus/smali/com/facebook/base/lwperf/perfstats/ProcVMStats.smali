.class public Lcom/facebook/base/lwperf/perfstats/ProcVMStats;
.super Ljava/lang/Object;
.source "ProcVMStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;
    }
.end annotation


# static fields
.field private static final PROC_VMSTAT_LINES:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 30
    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    sput-object v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats;->PROC_VMSTAT_LINES:[Ljava/lang/String;

    .line 33
    sget-object v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats;->PROC_VMSTAT_LINES:[Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pgpgin"

    aput-object v2, v0, v1

    .line 34
    sget-object v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats;->PROC_VMSTAT_LINES:[Ljava/lang/String;

    const/4 v1, 0x1

    const-string v2, "pgpgout"

    aput-object v2, v0, v1

    .line 35
    sget-object v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats;->PROC_VMSTAT_LINES:[Ljava/lang/String;

    const/4 v1, 0x2

    const-string v2, "pgmajfault"

    aput-object v2, v0, v1

    .line 37
    sget-object v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats;->PROC_VMSTAT_LINES:[Ljava/lang/String;

    const/4 v1, 0x3

    const-string v2, "allocstall"

    aput-object v2, v0, v1

    .line 38
    sget-object v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats;->PROC_VMSTAT_LINES:[Ljava/lang/String;

    const/4 v1, 0x4

    const-string v2, "allocstall_high"

    aput-object v2, v0, v1

    .line 39
    sget-object v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats;->PROC_VMSTAT_LINES:[Ljava/lang/String;

    const/4 v1, 0x5

    const-string v2, "allocstall_dma"

    aput-object v2, v0, v1

    .line 40
    sget-object v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats;->PROC_VMSTAT_LINES:[Ljava/lang/String;

    const/4 v1, 0x6

    const-string v2, "allocstall_dma32"

    aput-object v2, v0, v1

    .line 41
    sget-object v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats;->PROC_VMSTAT_LINES:[Ljava/lang/String;

    const/4 v1, 0x7

    const-string v2, "allocstall_normal"

    aput-object v2, v0, v1

    .line 42
    sget-object v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats;->PROC_VMSTAT_LINES:[Ljava/lang/String;

    const/16 v1, 0x8

    const-string v2, "allocstall_movable"

    aput-object v2, v0, v1

    .line 44
    sget-object v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats;->PROC_VMSTAT_LINES:[Ljava/lang/String;

    const/16 v1, 0x9

    const-string v2, "pgsteal_kswapd_normal"

    aput-object v2, v0, v1

    .line 45
    sget-object v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats;->PROC_VMSTAT_LINES:[Ljava/lang/String;

    const/16 v1, 0xa

    const-string v2, "pgsteal_kswapd_high"

    aput-object v2, v0, v1

    .line 46
    sget-object v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats;->PROC_VMSTAT_LINES:[Ljava/lang/String;

    const/16 v1, 0xb

    const-string v2, "pgsteal_kswapd_movable"

    aput-object v2, v0, v1

    .line 47
    sget-object v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats;->PROC_VMSTAT_LINES:[Ljava/lang/String;

    const/16 v1, 0xc

    const-string v2, "pgsteal_direct_normal"

    aput-object v2, v0, v1

    .line 48
    sget-object v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats;->PROC_VMSTAT_LINES:[Ljava/lang/String;

    const/16 v1, 0xd

    const-string v2, "pgsteal_direct_high"

    aput-object v2, v0, v1

    .line 49
    sget-object v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats;->PROC_VMSTAT_LINES:[Ljava/lang/String;

    const/16 v1, 0xe

    const-string v2, "pgsteal_direct_movable"

    aput-object v2, v0, v1

    .line 50
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final readFromProc()Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;
    .locals 8

    .prologue
    const-wide/16 v6, 0x0

    .line 55
    sget-object v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats;->PROC_VMSTAT_LINES:[Ljava/lang/String;

    array-length v0, v0

    new-array v1, v0, [J

    .line 56
    const-string v0, "/proc/vmstat"

    sget-object v2, Lcom/facebook/base/lwperf/perfstats/ProcVMStats;->PROC_VMSTAT_LINES:[Ljava/lang/String;

    invoke-static {v0, v2, v1}, Lcom/facebook/common/procread/ProcReader;->readProcLines(Ljava/lang/String;[Ljava/lang/String;[J)Z

    .line 58
    new-instance v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;

    invoke-direct {v0}, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;-><init>()V

    .line 59
    const/4 v2, 0x0

    aget-wide v2, v1, v2

    iput-wide v2, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mPagesIn:J

    .line 60
    const/4 v2, 0x1

    aget-wide v2, v1, v2

    iput-wide v2, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mPagesOut:J

    .line 61
    const/4 v2, 0x2

    aget-wide v2, v1, v2

    iput-wide v2, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mPagesMajFault:J

    .line 63
    iget-wide v2, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mAllocStalls:J

    const/4 v4, 0x3

    aget-wide v4, v1, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mAllocStalls:J

    .line 64
    iget-wide v2, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mAllocStalls:J

    const/4 v4, 0x4

    aget-wide v4, v1, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mAllocStalls:J

    .line 65
    iget-wide v2, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mAllocStalls:J

    const/4 v4, 0x5

    aget-wide v4, v1, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mAllocStalls:J

    .line 66
    iget-wide v2, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mAllocStalls:J

    const/4 v4, 0x6

    aget-wide v4, v1, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mAllocStalls:J

    .line 67
    iget-wide v2, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mAllocStalls:J

    const/4 v4, 0x7

    aget-wide v4, v1, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mAllocStalls:J

    .line 68
    iget-wide v2, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mAllocStalls:J

    const/16 v4, 0x8

    aget-wide v4, v1, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mAllocStalls:J

    .line 70
    iget-wide v2, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mPageSteals:J

    const/16 v4, 0x9

    aget-wide v4, v1, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mPageSteals:J

    .line 71
    iget-wide v2, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mPageSteals:J

    const/16 v4, 0xa

    aget-wide v4, v1, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mPageSteals:J

    .line 72
    iget-wide v2, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mPageSteals:J

    const/16 v4, 0xb

    aget-wide v4, v1, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mPageSteals:J

    .line 73
    iget-wide v2, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mPageSteals:J

    const/16 v4, 0xc

    aget-wide v4, v1, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mPageSteals:J

    .line 74
    iget-wide v2, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mPageSteals:J

    const/16 v4, 0xd

    aget-wide v4, v1, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mPageSteals:J

    .line 75
    iget-wide v2, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mPageSteals:J

    const/16 v4, 0xe

    aget-wide v4, v1, v4

    add-long/2addr v2, v4

    iput-wide v2, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mPageSteals:J

    .line 78
    iget-wide v2, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mPagesIn:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    iget-wide v2, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mPagesOut:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    iget-wide v2, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mPagesMajFault:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    iget-wide v2, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mAllocStalls:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    iget-wide v2, v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mPageSteals:J

    cmp-long v1, v2, v6

    if-nez v1, :cond_0

    .line 83
    new-instance v0, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;-><init>(I)V

    .line 85
    :cond_0
    return-object v0
.end method
