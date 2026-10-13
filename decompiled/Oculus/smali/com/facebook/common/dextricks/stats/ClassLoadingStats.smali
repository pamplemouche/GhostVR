.class public abstract Lcom/facebook/common/dextricks/stats/ClassLoadingStats;
.super Ljava/lang/Object;
.source "ClassLoadingStats.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/dextricks/stats/ClassLoadingStats$NullClassLoadingStats;,
        Lcom/facebook/common/dextricks/stats/ClassLoadingStats$SnapshotStats;
    }
.end annotation


# static fields
.field private static final sInstance:Ljava/util/concurrent/atomic/AtomicReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/atomic/AtomicReference",
            "<",
            "Lcom/facebook/common/dextricks/stats/ClassLoadingStats;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 9
    new-instance v0, Ljava/util/concurrent/atomic/AtomicReference;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicReference;-><init>()V

    sput-object v0, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->sInstance:Ljava/util/concurrent/atomic/AtomicReference;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getInstance()Lcom/facebook/common/dextricks/stats/ClassLoadingStats;
    .locals 2

    .prologue
    .line 12
    sget-object v0, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->sInstance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_0

    .line 14
    new-instance v0, Lcom/facebook/common/dextricks/stats/ClassLoadingStats$NullClassLoadingStats;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats$NullClassLoadingStats;-><init>(Lcom/facebook/common/dextricks/stats/ClassLoadingStats$1;)V

    .line 16
    :goto_0
    return-object v0

    :cond_0
    sget-object v0, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->sInstance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;

    goto :goto_0
.end method


# virtual methods
.method protected abstract getClassLoadsAttempted()I
.end method

.method protected abstract getClassLoadsFailed()I
.end method

.method protected abstract getDexFileQueries()I
.end method

.method public getDifference(Lcom/facebook/common/dextricks/stats/ClassLoadingStats$SnapshotStats;)Lcom/facebook/common/dextricks/stats/ClassLoadingStats$SnapshotStats;
    .locals 11

    .prologue
    .line 74
    new-instance v0, Lcom/facebook/common/dextricks/stats/ClassLoadingStats$SnapshotStats;

    .line 75
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->getClassLoadsAttempted()I

    move-result v1

    iget v2, p1, Lcom/facebook/common/dextricks/stats/ClassLoadingStats$SnapshotStats;->classLoadsAttempted:I

    sub-int/2addr v1, v2

    .line 76
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->getClassLoadsFailed()I

    move-result v2

    iget v3, p1, Lcom/facebook/common/dextricks/stats/ClassLoadingStats$SnapshotStats;->classLoadsFailed:I

    sub-int/2addr v2, v3

    .line 77
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->getDexFileQueries()I

    move-result v3

    iget v4, p1, Lcom/facebook/common/dextricks/stats/ClassLoadingStats$SnapshotStats;->dexFileQueries:I

    sub-int/2addr v3, v4

    .line 78
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->getLocatorAssistedClassLoads()I

    move-result v4

    iget v5, p1, Lcom/facebook/common/dextricks/stats/ClassLoadingStats$SnapshotStats;->locatorAssistedClassLoads:I

    sub-int/2addr v4, v5

    .line 79
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->getIncorrectDfaGuesses()I

    move-result v5

    iget v6, p1, Lcom/facebook/common/dextricks/stats/ClassLoadingStats$SnapshotStats;->incorrectDfaGuesses:I

    sub-int/2addr v5, v6

    .line 80
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->getTurboLoaderMapGenerationSuccesses()I

    move-result v6

    iget v7, p1, Lcom/facebook/common/dextricks/stats/ClassLoadingStats$SnapshotStats;->tlMapGenerationSuccesses:I

    sub-int/2addr v6, v7

    .line 81
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->getTurboLoaderMapGenerationFailures()I

    move-result v7

    iget v8, p1, Lcom/facebook/common/dextricks/stats/ClassLoadingStats$SnapshotStats;->tlMapGenerationFailures:I

    sub-int/2addr v7, v8

    .line 82
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->getTurboLoaderClassLocationSuccesses()I

    move-result v8

    iget v9, p1, Lcom/facebook/common/dextricks/stats/ClassLoadingStats$SnapshotStats;->tlClassLookupSuccesses:I

    sub-int/2addr v8, v9

    .line 83
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->getTurboLoaderClassLocationFailures()I

    move-result v9

    iget v10, p1, Lcom/facebook/common/dextricks/stats/ClassLoadingStats$SnapshotStats;->tlClassLookupFailures:I

    sub-int/2addr v9, v10

    invoke-direct/range {v0 .. v9}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats$SnapshotStats;-><init>(IIIIIIIII)V

    return-object v0
.end method

.method protected abstract getIncorrectDfaGuesses()I
.end method

.method protected abstract getLocatorAssistedClassLoads()I
.end method

.method public getSnapShot()Lcom/facebook/common/dextricks/stats/ClassLoadingStats$SnapshotStats;
    .locals 10

    .prologue
    .line 87
    new-instance v0, Lcom/facebook/common/dextricks/stats/ClassLoadingStats$SnapshotStats;

    .line 88
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->getClassLoadsAttempted()I

    move-result v1

    .line 89
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->getClassLoadsFailed()I

    move-result v2

    .line 90
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->getDexFileQueries()I

    move-result v3

    .line 91
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->getLocatorAssistedClassLoads()I

    move-result v4

    .line 92
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->getIncorrectDfaGuesses()I

    move-result v5

    .line 93
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->getTurboLoaderMapGenerationSuccesses()I

    move-result v6

    .line 94
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->getTurboLoaderMapGenerationFailures()I

    move-result v7

    .line 95
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->getTurboLoaderClassLocationSuccesses()I

    move-result v8

    .line 96
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->getTurboLoaderClassLocationFailures()I

    move-result v9

    invoke-direct/range {v0 .. v9}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats$SnapshotStats;-><init>(IIIIIIIII)V

    return-object v0
.end method

.method public abstract getTurboLoaderClassLocationFailures()I
.end method

.method public abstract getTurboLoaderClassLocationSuccesses()I
.end method

.method public abstract getTurboLoaderMapGenerationFailures()I
.end method

.method public abstract getTurboLoaderMapGenerationSuccesses()I
.end method
