.class public Lcom/facebook/base/lwperf/perfstats/ProcIoStats;
.super Ljava/lang/Object;
.source "ProcIoStats.java"


# static fields
.field private static final PROC_IO_STATS_FORMAT:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 16
    const/16 v0, 0xe

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/facebook/base/lwperf/perfstats/ProcIoStats;->PROC_IO_STATS_FORMAT:[I

    return-void

    :array_0
    .array-data 4
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x20
        0x2020
        0x2020
        0x2020
        0x2020
        0x20
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static final constructThProcStatString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 42
    invoke-static {}, Landroid/os/Process;->myTid()I

    move-result v0

    invoke-static {v0}, Lcom/facebook/base/lwperf/perfstats/ProcIoStats;->constructThProcStatString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final constructThProcStatString(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 46
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "/proc/self/task/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/stat"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static final readFaultsInfoFromProcFile(Ljava/lang/String;)[J
    .locals 2

    .prologue
    .line 55
    const/4 v0, 0x4

    new-array v0, v0, [J

    fill-array-data v0, :array_0

    .line 56
    sget-object v1, Lcom/facebook/base/lwperf/perfstats/ProcIoStats;->PROC_IO_STATS_FORMAT:[I

    invoke-static {p0, v1, v0}, Lcom/facebook/common/procread/ProcReader;->readProcFileLongs(Ljava/lang/String;[I[J)Z

    .line 57
    return-object v0

    .line 55
    :array_0
    .array-data 8
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method public static final readIoStatsFromProc()[J
    .locals 1

    .prologue
    .line 67
    const-string v0, "/proc/self/stat"

    invoke-static {v0}, Lcom/facebook/base/lwperf/perfstats/ProcIoStats;->readFaultsInfoFromProcFile(Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method

.method public static final readThMajorFaultsFromProc()J
    .locals 2

    .prologue
    .line 100
    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/ProcIoStats;->readThPerfLoggerStatsFromProc()[J

    move-result-object v0

    const/4 v1, 0x2

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public static final readThPerfLoggerStatsFromProc()[J
    .locals 1

    .prologue
    .line 92
    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/ProcIoStats;->constructThProcStatString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/base/lwperf/perfstats/ProcIoStats;->readFaultsInfoFromProcFile(Ljava/lang/String;)[J

    move-result-object v0

    return-object v0
.end method
