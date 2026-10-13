.class public final Lcom/facebook/common/dextricks/MultiDexClassLoaderDalvikNative;
.super Lcom/facebook/common/dextricks/MultiDexClassLoader;
.source "MultiDexClassLoaderDalvikNative.java"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation


# static fields
.field public static final AVG_DEX_SIZE:I = 0x700000

.field public static final DEFAULT_LOCK_DEX_NUM:I = -0x1

.field public static final MAX_COLDSTART_OAT_SIZE:I = 0x1e00000

.field public static final MB:I = 0x100000

.field public static final OAT_HEADER_SIZE:I = 0x100000

.field private static final USE_LOW_LEVEL_DALVIK_HOOKS:Z = true

.field private static final USE_O1_DALVIK_LOCATOR_HACK:Z = true

.field private static final WANT_PROC_EXEC:I = 0x1

.field public static sIsIntialized:Z


# instance fields
.field private final mAuxDexes:[Ldalvik/system/DexFile;

.field private mDirectLookupsEnabled:Z

.field private mHacksAttempted:Z

.field private mO1HackEnabled:Z

.field private final mPrimaryDexes:[Ldalvik/system/DexFile;

.field private mSecondaryDexes:[Ldalvik/system/DexFile;

.field private mStoreLocators:[I
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 36
    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/common/dextricks/MultiDexClassLoaderDalvikNative;->sIsIntialized:Z

    .line 48
    const-string v0, "dextricks"

    invoke-static {v0}, Lcom/facebook/soloader/SoLoader;->loadLibrary(Ljava/lang/String;)Z

    .line 49
    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/ArrayList",
            "<",
            "Ldalvik/system/DexFile;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ldalvik/system/DexFile;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 52
    invoke-direct {p0}, Lcom/facebook/common/dextricks/MultiDexClassLoader;-><init>()V

    .line 43
    iput-boolean v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderDalvikNative;->mDirectLookupsEnabled:Z

    .line 44
    iput-boolean v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderDalvikNative;->mO1HackEnabled:Z

    .line 45
    iput-boolean v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderDalvikNative;->mHacksAttempted:Z

    .line 53
    const-string v2, "MultiDexClassLoader"

    const-string v3, "using Dalvik-native MDCL"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 55
    invoke-virtual {p2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p3}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move v0, v1

    .line 57
    :cond_1
    if-eqz v0, :cond_2

    .line 58
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ldalvik/system/DexFile;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldalvik/system/DexFile;

    iput-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderDalvikNative;->mPrimaryDexes:[Ldalvik/system/DexFile;

    .line 59
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ldalvik/system/DexFile;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldalvik/system/DexFile;

    iput-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderDalvikNative;->mAuxDexes:[Ldalvik/system/DexFile;

    .line 66
    :goto_0
    new-instance v0, Lcom/facebook/common/dextricks/stats/ClassLoadingStatsNative;

    invoke-direct {v0}, Lcom/facebook/common/dextricks/stats/ClassLoadingStatsNative;-><init>()V

    .line 67
    invoke-static {v0}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->setInstance(Lcom/facebook/common/dextricks/stats/ClassLoadingStats;)Lcom/facebook/common/dextricks/stats/ClassLoadingStats;

    .line 68
    iget-object v2, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderDalvikNative;->mPutativeLoader:Ljava/lang/ClassLoader;

    iget-object v3, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderDalvikNative;->mAuxDexes:[Ldalvik/system/DexFile;

    invoke-direct {p0, v2, v0, v3}, Lcom/facebook/common/dextricks/MultiDexClassLoaderDalvikNative;->nativeInitialize(Ljava/lang/Object;Lcom/facebook/common/dextricks/stats/ClassLoadingStatsNative;[Ljava/lang/Object;)V

    .line 69
    sput-boolean v1, Lcom/facebook/common/dextricks/MultiDexClassLoaderDalvikNative;->sIsIntialized:Z

    .line 70
    const-string v0, "MultiDexClassLoader"

    const-string v1, "using native MDCL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    return-void

    .line 61
    :cond_2
    const-string v0, "MultiDexClassLoader"

    const-string v2, "cannot enable dex hooks: failure to locate primary/aux dexes"

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    iput-object v4, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderDalvikNative;->mPrimaryDexes:[Ldalvik/system/DexFile;

    .line 63
    iput-object v4, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderDalvikNative;->mAuxDexes:[Ldalvik/system/DexFile;

    goto :goto_0
.end method

.method private static native nativeConfigure([Ljava/lang/Object;[Ljava/lang/Object;IIIII[I)V
    .param p7    # [I
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
.end method

.method private native nativeEnableDirectLookupHooks()V
.end method

.method private static native nativeEnableO1Hack()V
.end method

.method private native nativeInitialize(Ljava/lang/Object;Lcom/facebook/common/dextricks/stats/ClassLoadingStatsNative;[Ljava/lang/Object;)V
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation
.end method

.method private static native unlockAllMemory()V
.end method


# virtual methods
.method public declared-synchronized configure(Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;)V
    .locals 8

    .prologue
    .line 132
    monitor-enter p0

    :try_start_0
    iget-object v0, p1, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->mDexFiles:Ljava/util/ArrayList;

    .line 133
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    new-array v1, v1, [Ldalvik/system/DexFile;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ldalvik/system/DexFile;

    .line 135
    sget v4, Lcom/facebook/common/dextricks/DalvikConstants;->FB_REDEX_COLD_START_SET_DEX_COUNT:I

    .line 137
    invoke-virtual {p1}, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->getExperiment()Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperiment;

    move-result-object v0

    check-cast v0, Lcom/facebook/common/coldstartexperiments/experiments/DexTricksDiExperiment;

    .line 138
    if-eqz v0, :cond_1

    .line 139
    invoke-interface {v0}, Lcom/facebook/common/coldstartexperiments/experiments/DexTricksDiExperiment;->enableLockDexExp()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 140
    invoke-interface {v0}, Lcom/facebook/common/coldstartexperiments/experiments/DexTricksDiExperiment;->lockDexNum()I

    move-result v5

    .line 142
    :goto_0
    iget-object v0, p1, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->storeLocators:[I

    iput-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderDalvikNative;->mStoreLocators:[I

    .line 144
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderDalvikNative;->mPrimaryDexes:[Ldalvik/system/DexFile;

    .line 147
    invoke-virtual {p1}, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->getConfigFlags()I

    move-result v2

    sget v3, Lcom/facebook/common/dextricks/DalvikConstants;->FB_REDEX_COLD_START_SET_DEX_COUNT:I

    const/4 v6, 0x1

    iget-object v7, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderDalvikNative;->mStoreLocators:[I

    .line 144
    invoke-static/range {v0 .. v7}, Lcom/facebook/common/dextricks/MultiDexClassLoaderDalvikNative;->nativeConfigure([Ljava/lang/Object;[Ljava/lang/Object;IIIII[I)V

    .line 154
    iput-object v1, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderDalvikNative;->mSecondaryDexes:[Ldalvik/system/DexFile;

    .line 156
    iget-boolean v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderDalvikNative;->mHacksAttempted:Z

    if-nez v0, :cond_0

    .line 157
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderDalvikNative;->mHacksAttempted:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 160
    :try_start_1
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/MultiDexClassLoaderDalvikNative;->enableDirectLookupHooks()V

    .line 161
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderDalvikNative;->mDirectLookupsEnabled:Z

    .line 162
    const-string v0, "MultiDexClassLoader"

    const-string v1, "installed direct Dalvik class-lookup hooks"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 176
    :goto_1
    :try_start_2
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/MultiDexClassLoaderDalvikNative;->enableO1Hack()V

    .line 177
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderDalvikNative;->mO1HackEnabled:Z

    .line 178
    const-string v0, "MultiDexClassLoader"

    const-string v1, "installed Dalvik O1 class-lookup hack"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 184
    :cond_0
    :goto_2
    monitor-exit p0

    return-void

    .line 140
    :cond_1
    const/4 v5, -0x1

    goto :goto_0

    .line 163
    :catch_0
    move-exception v0

    .line 164
    :try_start_3
    const-string v1, "MultiDexClassLoader"

    const-string v2, "unable to install direct Dalvik class-lookup hooks; continuing with classloader API"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 132
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 179
    :catch_1
    move-exception v0

    .line 180
    :try_start_4
    const-string v1, "MultiDexClassLoader"

    const-string v2, "unable to enable O1 Dalvik hack"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_2
.end method

.method protected doGetConfiguredDexFiles()[Ldalvik/system/DexFile;
    .locals 1

    .prologue
    .line 196
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderDalvikNative;->mSecondaryDexes:[Ldalvik/system/DexFile;

    return-object v0
.end method

.method enableDirectLookupHooks()V
    .locals 2

    .prologue
    .line 92
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderDalvikNative;->mPrimaryDexes:[Ldalvik/system/DexFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderDalvikNative;->mAuxDexes:[Ldalvik/system/DexFile;

    if-nez v0, :cond_1

    .line 93
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "cannot enable direct hooks: we could not locate primary and aux dexes"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 97
    :cond_1
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderDalvikNative;->mPrimaryDexes:[Ldalvik/system/DexFile;

    array-length v0, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    .line 98
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "cannot enable direct hooks: must have found exactly one primary dex"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_2
    invoke-direct {p0}, Lcom/facebook/common/dextricks/MultiDexClassLoaderDalvikNative;->nativeEnableDirectLookupHooks()V

    .line 103
    return-void
.end method

.method enableO1Hack()V
    .locals 4

    .prologue
    .line 118
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderDalvikNative;->mPrimaryDexes:[Ldalvik/system/DexFile;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 119
    :goto_0
    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 120
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "To use the O(1) class lookup hack, must have exactly one primary dex: have "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 118
    :cond_0
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderDalvikNative;->mPrimaryDexes:[Ldalvik/system/DexFile;

    array-length v0, v0

    goto :goto_0

    .line 125
    :cond_1
    invoke-static {}, Lcom/facebook/common/dextricks/MultiDexClassLoaderDalvikNative;->nativeEnableO1Hack()V

    .line 126
    return-void
.end method

.method protected native findClass(Ljava/lang/String;)Ljava/lang/Class;
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
.end method

.method protected native loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation
.end method

.method protected onColdstartDone()V
    .locals 2

    .prologue
    .line 188
    const-string v0, "MultiDexClassLoader"

    const-string v1, "Unlock memory on coldstart done"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-static {}, Lcom/facebook/common/dextricks/MultiDexClassLoaderDalvikNative;->unlockAllMemory()V

    .line 190
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 201
    const-string v0, "MultiDexClassLoaderDalvikNative(lookups=%s,o1=%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-boolean v3, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderDalvikNative;->mDirectLookupsEnabled:Z

    .line 202
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-boolean v3, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderDalvikNative;->mO1HackEnabled:Z

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 201
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
