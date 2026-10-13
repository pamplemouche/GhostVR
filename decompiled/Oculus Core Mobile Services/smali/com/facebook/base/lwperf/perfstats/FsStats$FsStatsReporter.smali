.class final Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter;
.super Ljava/lang/Object;
.source "FsStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/base/lwperf/perfstats/FsStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "FsStatsReporter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter$SingletonHolder;
    }
.end annotation


# instance fields
.field private final mAvailableSpace:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mExecutor:Ljava/util/concurrent/ExecutorService;

.field private final mHasThreadRunCompleted:Landroid/os/ConditionVariable;

.field private final mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method private constructor <init>()V
    .locals 4

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    invoke-static {}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter;->mExecutor:Ljava/util/concurrent/ExecutorService;

    .line 38
    new-instance v0, Landroid/os/ConditionVariable;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/os/ConditionVariable;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter;->mHasThreadRunCompleted:Landroid/os/ConditionVariable;

    .line 39
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 40
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, -0x1

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter;->mAvailableSpace:Ljava/util/concurrent/atomic/AtomicLong;

    .line 41
    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/base/lwperf/perfstats/FsStats$1;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter;->mAvailableSpace:Ljava/util/concurrent/atomic/AtomicLong;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter;)Landroid/os/ConditionVariable;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter;->mHasThreadRunCompleted:Landroid/os/ConditionVariable;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method public static getInstance()Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter;
    .locals 1

    .prologue
    .line 34
    sget-object v0, Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter$SingletonHolder;->instance:Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter;

    return-object v0
.end method


# virtual methods
.method public getAvailableDiskSpaceKbAsync()V
    .locals 2

    .prologue
    .line 44
    iget-object v0, p0, Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter;->mIsRunning:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    :goto_0
    return-void

    .line 48
    :cond_0
    iget-object v0, p0, Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter;->mHasThreadRunCompleted:Landroid/os/ConditionVariable;

    invoke-virtual {v0}, Landroid/os/ConditionVariable;->close()V

    .line 50
    iget-object v0, p0, Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter;->mExecutor:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter$1;

    invoke-direct {v1, p0}, Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter$1;-><init>(Lcom/facebook/base/lwperf/perfstats/FsStats$FsStatsReporter;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
