.class Lcom/facebook/common/dextricks/stats/ClassLoadingStats$NullClassLoadingStats;
.super Lcom/facebook/common/dextricks/stats/ClassLoadingStats;
.source "ClassLoadingStats.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/common/dextricks/stats/ClassLoadingStats;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "NullClassLoadingStats"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/common/dextricks/stats/ClassLoadingStats$1;)V
    .locals 0

    .prologue
    .line 143
    invoke-direct {p0}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats$NullClassLoadingStats;-><init>()V

    return-void
.end method


# virtual methods
.method public decrementDexFileQueries()V
    .locals 0

    .prologue
    .line 214
    return-void
.end method

.method protected getClassLoadsAttempted()I
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method protected getClassLoadsFailed()I
    .locals 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method protected getDexFileQueries()I
    .locals 1

    .prologue
    .line 156
    const/4 v0, 0x0

    return v0
.end method

.method protected getIncorrectDfaGuesses()I
    .locals 1

    .prologue
    .line 161
    const/4 v0, 0x0

    return v0
.end method

.method protected getLocatorAssistedClassLoads()I
    .locals 1

    .prologue
    .line 166
    const/4 v0, 0x0

    return v0
.end method

.method public incrementClassLoadsAttempted()V
    .locals 0

    .prologue
    .line 202
    return-void
.end method

.method public incrementClassLoadsFailed()V
    .locals 0

    .prologue
    .line 205
    return-void
.end method

.method public incrementDexFileQueries(I)V
    .locals 0

    .prologue
    .line 211
    return-void
.end method

.method public incrementIncorrectDfaGuesses()V
    .locals 0

    .prologue
    .line 217
    return-void
.end method

.method public incrementTurboLoaderMapGenerationFailures()V
    .locals 0

    .prologue
    .line 193
    return-void
.end method

.method public incrementTurboLoaderMapGenerationSuccesses()V
    .locals 0

    .prologue
    .line 190
    return-void
.end method
