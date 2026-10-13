.class public final Lcom/facebook/common/dextricks/stats/ClassLoadingStatsJava;
.super Lcom/facebook/common/dextricks/stats/ClassLoadingStats;
.source "ClassLoadingStatsJava.java"


# instance fields
.field private final mClassLoadsAttempted:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mClassLoadsFailed:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mDexFileQueries:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mIncorrectDfaGuesses:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mTLClassLookupFailures:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mTLClassLookupSuccesses:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mTLMapGenerationFailures:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mTLMapGenerationSuccesses:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 7
    invoke-direct {p0}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;-><init>()V

    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/facebook/common/dextricks/stats/ClassLoadingStatsJava;->mClassLoadsAttempted:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 10
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/facebook/common/dextricks/stats/ClassLoadingStatsJava;->mClassLoadsFailed:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 11
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/facebook/common/dextricks/stats/ClassLoadingStatsJava;->mDexFileQueries:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 12
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/facebook/common/dextricks/stats/ClassLoadingStatsJava;->mIncorrectDfaGuesses:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 14
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/facebook/common/dextricks/stats/ClassLoadingStatsJava;->mTLMapGenerationSuccesses:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 15
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/facebook/common/dextricks/stats/ClassLoadingStatsJava;->mTLMapGenerationFailures:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 16
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/facebook/common/dextricks/stats/ClassLoadingStatsJava;->mTLClassLookupSuccesses:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 17
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    iput-object v0, p0, Lcom/facebook/common/dextricks/stats/ClassLoadingStatsJava;->mTLClassLookupFailures:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method


# virtual methods
.method public decrementDexFileQueries()V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/facebook/common/dextricks/stats/ClassLoadingStatsJava;->mDexFileQueries:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    .line 108
    return-void
.end method

.method protected getClassLoadsAttempted()I
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/facebook/common/dextricks/stats/ClassLoadingStatsJava;->mClassLoadsAttempted:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method protected getClassLoadsFailed()I
    .locals 1

    .prologue
    .line 26
    iget-object v0, p0, Lcom/facebook/common/dextricks/stats/ClassLoadingStatsJava;->mClassLoadsFailed:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method protected getDexFileQueries()I
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/common/dextricks/stats/ClassLoadingStatsJava;->mDexFileQueries:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method protected getIncorrectDfaGuesses()I
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/common/dextricks/stats/ClassLoadingStatsJava;->mIncorrectDfaGuesses:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method protected getLocatorAssistedClassLoads()I
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    return v0
.end method

.method public incrementClassLoadsAttempted()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/facebook/common/dextricks/stats/ClassLoadingStatsJava;->mClassLoadsAttempted:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 87
    return-void
.end method

.method public incrementClassLoadsFailed()V
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/facebook/common/dextricks/stats/ClassLoadingStatsJava;->mClassLoadsFailed:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 92
    return-void
.end method

.method public incrementDexFileQueries(I)V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/facebook/common/dextricks/stats/ClassLoadingStatsJava;->mDexFileQueries:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->addAndGet(I)I

    .line 103
    return-void
.end method

.method public incrementIncorrectDfaGuesses()V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/facebook/common/dextricks/stats/ClassLoadingStatsJava;->mIncorrectDfaGuesses:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 113
    return-void
.end method

.method public incrementTurboLoaderMapGenerationFailures()V
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Lcom/facebook/common/dextricks/stats/ClassLoadingStatsJava;->mTLMapGenerationFailures:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 72
    return-void
.end method

.method public incrementTurboLoaderMapGenerationSuccesses()V
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/common/dextricks/stats/ClassLoadingStatsJava;->mTLMapGenerationSuccesses:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 67
    return-void
.end method
