.class public Lcom/facebook/common/dextricks/stats/ClassLoadingStats$SnapshotStats;
.super Ljava/lang/Object;
.source "ClassLoadingStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/dextricks/stats/ClassLoadingStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SnapshotStats"
.end annotation


# instance fields
.field public final classLoadsAttempted:I

.field public final classLoadsFailed:I

.field public final dexFileQueries:I

.field public final incorrectDfaGuesses:I

.field public final locatorAssistedClassLoads:I


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 133
    const-string v0, "[ Class Load Attempts: %d, Class Loads Failed: %d, Dex Queries: %d, Locator-assisted Class Loads: %d, Incorrect DFA Guesses: %d ]"

    const/4 v1, 0x5

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/facebook/common/dextricks/stats/ClassLoadingStats$SnapshotStats;->classLoadsAttempted:I

    .line 135
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/facebook/common/dextricks/stats/ClassLoadingStats$SnapshotStats;->classLoadsFailed:I

    .line 136
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/facebook/common/dextricks/stats/ClassLoadingStats$SnapshotStats;->dexFileQueries:I

    .line 137
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget v3, p0, Lcom/facebook/common/dextricks/stats/ClassLoadingStats$SnapshotStats;->locatorAssistedClassLoads:I

    .line 138
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x4

    iget v3, p0, Lcom/facebook/common/dextricks/stats/ClassLoadingStats$SnapshotStats;->incorrectDfaGuesses:I

    .line 139
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    .line 133
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
