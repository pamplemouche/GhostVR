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

.method public static setInstance(Lcom/facebook/common/dextricks/stats/ClassLoadingStats;)Lcom/facebook/common/dextricks/stats/ClassLoadingStats;
    .locals 1

    .prologue
    .line 20
    sget-object v0, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->sInstance:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v0, p0}, Ljava/util/concurrent/atomic/AtomicReference;->getAndSet(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 24
    :cond_0
    return-object p0
.end method


# virtual methods
.method public abstract decrementDexFileQueries()V
.end method

.method public getClassLoadThreadTime()I
    .locals 1

    .prologue
    .line 70
    const/4 v0, 0x0

    return v0
.end method

.method protected abstract getClassLoadsAttempted()I
.end method

.method protected abstract getClassLoadsFailed()I
.end method

.method protected abstract getDexFileQueries()I
.end method

.method protected abstract getIncorrectDfaGuesses()I
.end method

.method protected abstract getLocatorAssistedClassLoads()I
.end method

.method public abstract incrementClassLoadsAttempted()V
.end method

.method public abstract incrementClassLoadsFailed()V
.end method

.method public abstract incrementDexFileQueries(I)V
.end method

.method public abstract incrementIncorrectDfaGuesses()V
.end method

.method public abstract incrementTurboLoaderMapGenerationFailures()V
.end method

.method public abstract incrementTurboLoaderMapGenerationSuccesses()V
.end method

.method public setClassLoadTimeTrackingForThisThread(Z)Z
    .locals 1

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method
