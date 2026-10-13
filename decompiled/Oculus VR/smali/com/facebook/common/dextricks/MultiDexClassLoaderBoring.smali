.class final Lcom/facebook/common/dextricks/MultiDexClassLoaderBoring;
.super Lcom/facebook/common/dextricks/MultiDexClassLoader;
.source "MultiDexClassLoaderBoring.java"


# instance fields
.field private final mClassLoadingStats:Lcom/facebook/common/dextricks/stats/ClassLoadingStats;

.field private mDexFiles:[Ldalvik/system/DexFile;


# direct methods
.method constructor <init>()V
    .locals 2

    .prologue
    .line 18
    invoke-direct {p0}, Lcom/facebook/common/dextricks/MultiDexClassLoader;-><init>()V

    .line 19
    const-string v0, "MultiDexClassLoader"

    const-string v1, "using boring MDCL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 20
    new-instance v0, Lcom/facebook/common/dextricks/stats/ClassLoadingStatsJava;

    invoke-direct {v0}, Lcom/facebook/common/dextricks/stats/ClassLoadingStatsJava;-><init>()V

    invoke-static {v0}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->setInstance(Lcom/facebook/common/dextricks/stats/ClassLoadingStats;)Lcom/facebook/common/dextricks/stats/ClassLoadingStats;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderBoring;->mClassLoadingStats:Lcom/facebook/common/dextricks/stats/ClassLoadingStats;

    .line 21
    return-void
.end method


# virtual methods
.method public configure(Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;)V
    .locals 2

    .prologue
    .line 55
    invoke-super {p0, p1}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->configure(Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;)V

    .line 57
    iget-object v0, p1, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->mDexFiles:Ljava/util/ArrayList;

    iget-object v1, p1, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->mDexFiles:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ldalvik/system/DexFile;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldalvik/system/DexFile;

    iput-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderBoring;->mDexFiles:[Ldalvik/system/DexFile;

    .line 58
    invoke-virtual {p0, p1}, Lcom/facebook/common/dextricks/MultiDexClassLoaderBoring;->configureArtHacks(Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;)V

    .line 59
    return-void
.end method

.method protected doGetConfiguredDexFiles()[Ldalvik/system/DexFile;
    .locals 1

    .prologue
    .line 66
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderBoring;->mDexFiles:[Ldalvik/system/DexFile;

    return-object v0
.end method

.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 25
    const/4 v1, 0x0

    .line 26
    invoke-static {}, Lcom/facebook/profilo/logger/api/ProfiloLogger;->classLoadStart()I

    .line 27
    invoke-static {p1}, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->beginClassLoad(Ljava/lang/String;)V

    .line 28
    iget-object v2, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderBoring;->mClassLoadingStats:Lcom/facebook/common/dextricks/stats/ClassLoadingStats;

    invoke-virtual {v2}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->incrementClassLoadsAttempted()V

    move-object v2, v1

    move v1, v0

    .line 31
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderBoring;->mDexFiles:[Ldalvik/system/DexFile;

    array-length v3, v3

    if-ge v0, v3, :cond_2

    .line 32
    add-int/lit8 v1, v1, 0x1

    .line 33
    iget-object v3, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderBoring;->mDexFiles:[Ldalvik/system/DexFile;

    aget-object v3, v3, v0

    iget-object v4, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderBoring;->mPutativeLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v3, p1, v4}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    .line 34
    if-eqz v2, :cond_1

    .line 39
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderBoring;->mClassLoadingStats:Lcom/facebook/common/dextricks/stats/ClassLoadingStats;

    invoke-virtual {v0, v1}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->incrementDexFileQueries(I)V

    .line 40
    if-eqz v2, :cond_0

    .line 41
    invoke-static {v2}, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->classLoaded(Ljava/lang/Class;)V

    .line 42
    invoke-static {v2}, Lcom/facebook/profilo/logger/api/ProfiloLogger;->classLoadEnd(Ljava/lang/Class;)I

    .line 46
    :goto_1
    return-object v2

    .line 44
    :cond_0
    invoke-static {}, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->classNotFound()V

    .line 45
    invoke-static {}, Lcom/facebook/profilo/logger/api/ProfiloLogger;->classLoadFailed()I

    .line 46
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderBoring;->mClassLoadingStats:Lcom/facebook/common/dextricks/stats/ClassLoadingStats;

    invoke-virtual {v0}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->incrementClassLoadsFailed()V

    goto :goto_1

    .line 31
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_2
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderBoring;->mClassLoadingStats:Lcom/facebook/common/dextricks/stats/ClassLoadingStats;

    invoke-virtual {v0, v1}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->incrementDexFileQueries(I)V

    .line 40
    if-eqz v2, :cond_3

    .line 41
    invoke-static {v2}, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->classLoaded(Ljava/lang/Class;)V

    .line 42
    invoke-static {v2}, Lcom/facebook/profilo/logger/api/ProfiloLogger;->classLoadEnd(Ljava/lang/Class;)I

    .line 50
    :goto_2
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_3
    invoke-static {}, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->classNotFound()V

    .line 45
    invoke-static {}, Lcom/facebook/profilo/logger/api/ProfiloLogger;->classLoadFailed()I

    .line 46
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderBoring;->mClassLoadingStats:Lcom/facebook/common/dextricks/stats/ClassLoadingStats;

    invoke-virtual {v0}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->incrementClassLoadsFailed()V

    goto :goto_2

    .line 39
    :catchall_0
    move-exception v0

    iget-object v3, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderBoring;->mClassLoadingStats:Lcom/facebook/common/dextricks/stats/ClassLoadingStats;

    invoke-virtual {v3, v1}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->incrementDexFileQueries(I)V

    .line 40
    if-eqz v2, :cond_4

    .line 41
    invoke-static {v2}, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->classLoaded(Ljava/lang/Class;)V

    .line 42
    invoke-static {v2}, Lcom/facebook/profilo/logger/api/ProfiloLogger;->classLoadEnd(Ljava/lang/Class;)I

    .line 46
    :goto_3
    throw v0

    .line 44
    :cond_4
    invoke-static {}, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->classNotFound()V

    .line 45
    invoke-static {}, Lcom/facebook/profilo/logger/api/ProfiloLogger;->classLoadFailed()I

    .line 46
    iget-object v1, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderBoring;->mClassLoadingStats:Lcom/facebook/common/dextricks/stats/ClassLoadingStats;

    invoke-virtual {v1}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->incrementClassLoadsFailed()V

    goto :goto_3
.end method

.method protected onColdstartDone()V
    .locals 0

    .prologue
    .line 62
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 71
    const-string v0, "MultiDexClassLoaderBoring"

    return-object v0
.end method
