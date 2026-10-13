.class final Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;
.super Lcom/facebook/common/dextricks/MultiDexClassLoader;
.source "MultiDexClassLoaderJava.java"


# static fields
.field private static final API_FALLBACK:B = 0x3t

.field private static final API_NEW_WORKS:B = 0x1t

.field private static final API_OLD_WORKS:B = 0x2t

.field private static final API_UNTESTED:B = 0x0t

.field private static final HIGH_WATER_MARK_CLASS_NAME_LEN_RENAME:I = 0x6

.field private static sApiDetectionState:B


# instance fields
.field private final mAuxiliaryDexes:[Ldalvik/system/DexFile;

.field private final mClassLoadingStats:Lcom/facebook/common/dextricks/stats/ClassLoadingStats;

.field private mDexFiles:[Ldalvik/system/DexFile;

.field private final mDexLoadFailureHistory:[Ljava/lang/String;

.field private mDexLoadFailurePosition:I

.field private final mLastLoadedDexIndex:Ljava/util/concurrent/atomic/AtomicInteger;

.field private final mPrimaryDexes:[Ldalvik/system/DexFile;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const/4 v0, 0x0

    sput-byte v0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->sApiDetectionState:B

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
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
    .line 73
    invoke-direct {p0}, Lcom/facebook/common/dextricks/MultiDexClassLoader;-><init>()V

    .line 74
    const/4 v0, 0x0

    new-array v0, v0, [Ldalvik/system/DexFile;

    iput-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mDexFiles:[Ldalvik/system/DexFile;

    .line 75
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mLastLoadedDexIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 76
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mDexLoadFailureHistory:[Ljava/lang/String;

    .line 77
    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ldalvik/system/DexFile;

    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldalvik/system/DexFile;

    iput-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mPrimaryDexes:[Ldalvik/system/DexFile;

    .line 78
    invoke-virtual {p3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ldalvik/system/DexFile;

    invoke-virtual {p3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ldalvik/system/DexFile;

    iput-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mAuxiliaryDexes:[Ldalvik/system/DexFile;

    .line 79
    new-instance v0, Lcom/facebook/common/dextricks/stats/ClassLoadingStatsJava;

    invoke-direct {v0}, Lcom/facebook/common/dextricks/stats/ClassLoadingStatsJava;-><init>()V

    invoke-static {v0}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->setInstance(Lcom/facebook/common/dextricks/stats/ClassLoadingStats;)Lcom/facebook/common/dextricks/stats/ClassLoadingStats;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mClassLoadingStats:Lcom/facebook/common/dextricks/stats/ClassLoadingStats;

    .line 81
    const-string v0, "MultiDexClassLoader"

    const-string v1, "using java MDCL"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 82
    return-void
.end method

.method private canPromoteDexesAndUpdateState(II)Z
    .locals 2

    .prologue
    .line 609
    if-gt p2, p1, :cond_0

    .line 610
    const/4 v0, 0x0

    .line 619
    :goto_0
    return v0

    .line 615
    :cond_0
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mLastLoadedDexIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    .line 616
    if-ge v0, p1, :cond_1

    iget-object v1, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mLastLoadedDexIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 617
    invoke-virtual {v1, v0, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 619
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private findClassSlowPath(Ljava/lang/String;)Ljava/lang/Class;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v7, 0x0

    const/4 v1, 0x1

    .line 92
    iget-object v4, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mDexFiles:[Ldalvik/system/DexFile;

    .line 93
    array-length v2, v4

    if-nez v2, :cond_0

    .line 154
    :goto_0
    return-object v0

    .line 97
    :cond_0
    array-length v5, v4

    .line 98
    iget-object v6, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mPutativeLoader:Ljava/lang/ClassLoader;

    .line 102
    const/4 v2, 0x0

    :try_start_0
    aget-object v2, v4, v2

    .line 103
    if-eqz v2, :cond_1

    .line 104
    invoke-static {v2, p1, v6}, Lcom/facebook/common/dextricks/DexFileLoadNew;->loadClassBinaryName(Ldalvik/system/DexFile;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    move v2, v1

    .line 109
    :goto_1
    if-nez v0, :cond_2

    if-ge v2, v5, :cond_2

    .line 110
    aget-object v3, v4, v2

    invoke-static {v3, p1, v6}, Lcom/facebook/common/dextricks/DexFileLoadNew;->loadClassBinaryName(Ldalvik/system/DexFile;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 109
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v3

    goto :goto_1

    .line 106
    :cond_1
    invoke-direct {p0}, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->onNoDexInThePromotedFrontDexSpot()V

    move v2, v1

    goto :goto_1

    .line 113
    :cond_2
    if-le v5, v1, :cond_3

    .line 118
    const/4 v3, 0x1

    sput-byte v3, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->sApiDetectionState:B

    .line 121
    :cond_3
    iget-object v3, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mClassLoadingStats:Lcom/facebook/common/dextricks/stats/ClassLoadingStats;

    invoke-virtual {v3, v2}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->incrementDexFileQueries(I)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 123
    :catch_0
    move-exception v2

    .line 125
    const/4 v2, 0x0

    :try_start_1
    aget-object v2, v4, v2

    .line 126
    if-eqz v2, :cond_4

    .line 127
    invoke-static {v2, p1, v6}, Lcom/facebook/common/dextricks/DexFileLoadOld;->loadClassBinaryName(Ldalvik/system/DexFile;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    :goto_2
    move v2, v1

    .line 132
    :goto_3
    if-nez v0, :cond_5

    if-ge v2, v5, :cond_5

    .line 133
    aget-object v3, v4, v2

    invoke-static {v3, p1, v6}, Lcom/facebook/common/dextricks/DexFileLoadOld;->loadClassBinaryName(Ldalvik/system/DexFile;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v3

    .line 132
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    move-object v0, v3

    goto :goto_3

    .line 129
    :cond_4
    invoke-direct {p0}, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->onNoDexInThePromotedFrontDexSpot()V
    :try_end_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_2

    .line 139
    :catch_1
    move-exception v2

    .line 140
    const/4 v2, 0x3

    sput-byte v2, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->sApiDetectionState:B

    .line 142
    aget-object v2, v4, v7

    .line 143
    if-eqz v2, :cond_6

    .line 144
    invoke-virtual {v2, p1, v6}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 149
    :goto_4
    if-nez v0, :cond_7

    if-ge v1, v5, :cond_7

    .line 150
    aget-object v0, v4, v1

    invoke-virtual {v0, p1, v6}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 149
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    move-object v0, v2

    goto :goto_4

    .line 136
    :cond_5
    const/4 v3, 0x2

    :try_start_2
    sput-byte v3, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->sApiDetectionState:B

    .line 137
    iget-object v3, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mClassLoadingStats:Lcom/facebook/common/dextricks/stats/ClassLoadingStats;

    invoke-virtual {v3, v2}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->incrementDexFileQueries(I)V
    :try_end_2
    .catch Ljava/lang/NoSuchMethodError; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 146
    :cond_6
    invoke-direct {p0}, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->onNoDexInThePromotedFrontDexSpot()V

    goto :goto_4

    .line 153
    :cond_7
    iget-object v2, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mClassLoadingStats:Lcom/facebook/common/dextricks/stats/ClassLoadingStats;

    invoke-virtual {v2, v1}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->incrementDexFileQueries(I)V

    goto :goto_0
.end method

.method private static getDexLength([Ldalvik/system/DexFile;)I
    .locals 1

    .prologue
    .line 629
    array-length v0, p0

    .line 631
    add-int/lit8 v0, v0, -0x1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private static getFirstIndexOfFixedDexes([Ldalvik/system/DexFile;)I
    .locals 1

    .prologue
    .line 623
    array-length v0, p0

    .line 625
    add-int/lit8 v0, v0, 0x1

    div-int/lit8 v0, v0, 0x2

    return v0
.end method

.method private static getFixedDexIndex(II)I
    .locals 1

    .prologue
    .line 635
    add-int v0, p1, p0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method private loadInnerFallbackApiClass(Ljava/lang/String;[Ldalvik/system/DexFile;I)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ldalvik/system/DexFile;",
            "I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 354
    const/4 v0, 0x0

    .line 355
    :try_start_0
    iget-object v3, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mPutativeLoader:Ljava/lang/ClassLoader;

    .line 357
    const/4 v2, 0x0

    aget-object v2, p2, v2

    .line 358
    if-eqz v2, :cond_1

    .line 359
    invoke-virtual {v2, p1, v3}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    move v2, v1

    .line 364
    :goto_1
    if-nez v0, :cond_2

    if-ge v2, p3, :cond_2

    .line 365
    :try_start_1
    aget-object v4, p2, v2

    .line 367
    invoke-virtual {v4, p1, v3}, Ldalvik/system/DexFile;->loadClass(Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 369
    if-eqz v0, :cond_0

    if-le v2, v1, :cond_0

    .line 370
    invoke-direct {p0, v4, v2}, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->promoteDexFile(Ldalvik/system/DexFile;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 364
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 361
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->onNoDexInThePromotedFrontDexSpot()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 376
    :catchall_0
    move-exception v0

    :goto_2
    iget-object v2, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mClassLoadingStats:Lcom/facebook/common/dextricks/stats/ClassLoadingStats;

    invoke-virtual {v2, v1}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->incrementDexFileQueries(I)V

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mClassLoadingStats:Lcom/facebook/common/dextricks/stats/ClassLoadingStats;

    invoke-virtual {v1, v2}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->incrementDexFileQueries(I)V

    return-object v0

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_2
.end method

.method private loadInnerNewApiClass(Ljava/lang/String;[Ldalvik/system/DexFile;I)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ldalvik/system/DexFile;",
            "I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 295
    const/4 v0, 0x0

    .line 296
    :try_start_0
    iget-object v3, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mPutativeLoader:Ljava/lang/ClassLoader;

    .line 298
    const/4 v2, 0x0

    aget-object v2, p2, v2

    .line 299
    if-eqz v2, :cond_1

    .line 300
    invoke-static {v2, p1, v3}, Lcom/facebook/common/dextricks/DexFileLoadNew;->loadClassBinaryName(Ldalvik/system/DexFile;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    move v2, v1

    .line 305
    :goto_1
    if-nez v0, :cond_2

    if-ge v2, p3, :cond_2

    .line 306
    :try_start_1
    aget-object v4, p2, v2

    .line 308
    invoke-static {v4, p1, v3}, Lcom/facebook/common/dextricks/DexFileLoadNew;->loadClassBinaryName(Ldalvik/system/DexFile;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 310
    if-eqz v0, :cond_0

    if-le v2, v1, :cond_0

    .line 311
    invoke-direct {p0, v4, v2}, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->promoteDexFile(Ldalvik/system/DexFile;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 305
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 302
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->onNoDexInThePromotedFrontDexSpot()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 317
    :catchall_0
    move-exception v0

    :goto_2
    iget-object v2, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mClassLoadingStats:Lcom/facebook/common/dextricks/stats/ClassLoadingStats;

    invoke-virtual {v2, v1}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->incrementDexFileQueries(I)V

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mClassLoadingStats:Lcom/facebook/common/dextricks/stats/ClassLoadingStats;

    invoke-virtual {v1, v2}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->incrementDexFileQueries(I)V

    return-object v0

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_2
.end method

.method private loadInnerOldApiClass(Ljava/lang/String;[Ldalvik/system/DexFile;I)Ljava/lang/Class;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "[",
            "Ldalvik/system/DexFile;",
            "I)",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 325
    const/4 v0, 0x0

    .line 326
    :try_start_0
    iget-object v3, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mPutativeLoader:Ljava/lang/ClassLoader;

    .line 328
    const/4 v2, 0x0

    aget-object v2, p2, v2

    .line 329
    if-eqz v2, :cond_1

    .line 330
    invoke-static {v2, p1, v3}, Lcom/facebook/common/dextricks/DexFileLoadOld;->loadClassBinaryName(Ldalvik/system/DexFile;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    :goto_0
    move v2, v1

    .line 335
    :goto_1
    if-nez v0, :cond_2

    if-ge v2, p3, :cond_2

    .line 336
    :try_start_1
    aget-object v4, p2, v2

    .line 338
    invoke-static {v4, p1, v3}, Lcom/facebook/common/dextricks/DexFileLoadOld;->loadClassBinaryName(Ldalvik/system/DexFile;Ljava/lang/String;Ljava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0

    .line 340
    if-eqz v0, :cond_0

    if-le v2, v1, :cond_0

    .line 341
    invoke-direct {p0, v4, v2}, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->promoteDexFile(Ldalvik/system/DexFile;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 335
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 332
    :cond_1
    :try_start_2
    invoke-direct {p0}, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->onNoDexInThePromotedFrontDexSpot()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 346
    :catchall_0
    move-exception v0

    :goto_2
    iget-object v2, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mClassLoadingStats:Lcom/facebook/common/dextricks/stats/ClassLoadingStats;

    invoke-virtual {v2, v1}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->incrementDexFileQueries(I)V

    throw v0

    :cond_2
    iget-object v1, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mClassLoadingStats:Lcom/facebook/common/dextricks/stats/ClassLoadingStats;

    invoke-virtual {v1, v2}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->incrementDexFileQueries(I)V

    return-object v0

    :catchall_1
    move-exception v0

    move v1, v2

    goto :goto_2
.end method

.method private loadParentBootLoaderClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 584
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    .line 585
    if-eqz v0, :cond_0

    .line 587
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->getParent()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 594
    :goto_0
    return-object v0

    .line 588
    :catch_0
    move-exception v0

    .line 594
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private noteClassLoadFailure(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 696
    iget-object v1, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mDexLoadFailureHistory:[Ljava/lang/String;

    .line 697
    monitor-enter v1

    .line 698
    :try_start_0
    iget v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mDexLoadFailurePosition:I

    add-int/lit8 v2, v0, 0x1

    iput v2, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mDexLoadFailurePosition:I

    array-length v2, v1

    rem-int/2addr v0, v2

    aput-object p1, v1, v0

    .line 700
    monitor-exit v1

    .line 701
    return-void

    .line 700
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private oldShouldAskBootClassLoader(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 580
    const-string v0, "com.facebook."

    invoke-virtual {p1, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onNoDexInThePromotedFrontDexSpot()V
    .locals 1

    .prologue
    .line 604
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mClassLoadingStats:Lcom/facebook/common/dextricks/stats/ClassLoadingStats;

    invoke-virtual {v0}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->decrementDexFileQueries()V

    .line 605
    return-void
.end method

.method private promoteDexFile(Ldalvik/system/DexFile;I)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 160
    iget-object v1, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mDexFiles:[Ldalvik/system/DexFile;

    .line 161
    invoke-static {v1}, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->getFirstIndexOfFixedDexes([Ldalvik/system/DexFile;)I

    move-result v0

    .line 163
    invoke-direct {p0, p2, v0}, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->canPromoteDexesAndUpdateState(II)Z

    move-result v0

    if-nez v0, :cond_0

    .line 208
    :goto_0
    return-void

    .line 170
    :cond_0
    monitor-enter v1

    .line 172
    const/4 v0, 0x1

    :try_start_0
    aget-object v0, v1, v0

    if-ne v0, p1, :cond_1

    .line 173
    monitor-exit v1

    goto :goto_0

    .line 207
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 177
    :cond_1
    :try_start_1
    aget-object v0, v1, p2

    if-ne v0, p1, :cond_2

    .line 202
    const/4 v0, 0x0

    aput-object p1, v1, v0

    .line 203
    :goto_1
    if-lt p2, v2, :cond_3

    .line 204
    add-int/lit8 v0, p2, -0x1

    aget-object v0, v1, v0

    aput-object v0, v1, p2

    .line 203
    add-int/lit8 p2, p2, -0x1

    goto :goto_1

    .line 186
    :cond_2
    monitor-exit v1

    goto :goto_0

    .line 206
    :cond_3
    const/4 v0, 0x0

    const/4 v2, 0x0

    aput-object v2, v1, v0

    .line 207
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method static shouldAskParent(Ljava/lang/String;)Z
    .locals 7

    .prologue
    const/4 v6, 0x6

    const/4 v4, 0x5

    const/16 v5, 0x2e

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 455
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 456
    if-gt v2, v6, :cond_1

    move v1, v0

    .line 575
    :cond_0
    :goto_0
    :sswitch_0
    return v1

    .line 462
    :cond_1
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_0

    move v1, v0

    .line 571
    goto :goto_0

    .line 467
    :sswitch_1
    const/16 v3, 0xa

    if-lt v2, v3, :cond_4

    const/4 v3, 0x7

    .line 468
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x78

    if-ne v3, v4, :cond_4

    const/16 v3, 0x8

    .line 469
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_4

    .line 470
    const-string v2, "ndroidx."

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "test."

    const/16 v3, 0x9

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_3

    :cond_2
    move v0, v1

    :cond_3
    move v1, v0

    goto :goto_0

    .line 475
    :cond_4
    const/16 v3, 0x10

    if-lt v2, v3, :cond_7

    const/16 v3, 0x8

    .line 476
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x73

    if-ne v3, v4, :cond_7

    const/16 v3, 0x9

    .line 477
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x75

    if-ne v3, v4, :cond_7

    const/16 v3, 0xf

    .line 478
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_7

    const/4 v3, 0x7

    .line 479
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_7

    .line 481
    const-string v2, "ndroid.support"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_5

    const-string v2, "test."

    const/16 v3, 0x10

    .line 482
    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_6

    :cond_5
    move v0, v1

    :cond_6
    move v1, v0

    goto :goto_0

    .line 485
    :cond_7
    const/16 v3, 0xd

    if-lt v2, v3, :cond_0

    const/16 v2, 0x8

    .line 486
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x61

    if-ne v2, v3, :cond_0

    const/16 v2, 0xc

    .line 487
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v5, :cond_0

    .line 488
    const-string v2, "ndroid.arch."

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto/16 :goto_0

    .line 496
    :sswitch_2
    const/16 v3, 0x8

    if-ge v2, v3, :cond_0

    move v1, v0

    goto/16 :goto_0

    .line 500
    :sswitch_3
    const/4 v2, 0x1

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    sparse-switch v2, :sswitch_data_1

    move v1, v0

    .line 508
    goto/16 :goto_0

    .line 517
    :sswitch_4
    if-ge v2, v6, :cond_8

    move v1, v0

    .line 518
    goto/16 :goto_0

    .line 520
    :cond_8
    const/4 v3, 0x4

    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    sparse-switch v3, :sswitch_data_2

    move v1, v0

    .line 542
    goto/16 :goto_0

    .line 525
    :sswitch_5
    const/16 v3, 0xc

    if-lt v2, v3, :cond_9

    const/4 v2, 0x5

    .line 526
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x70

    if-ne v2, v3, :cond_9

    const/4 v2, 0x6

    .line 527
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x61

    if-ne v2, v3, :cond_9

    const/16 v2, 0xa

    .line 528
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_0

    :cond_9
    move v1, v0

    goto/16 :goto_0

    .line 537
    :sswitch_6
    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x33

    if-eq v2, v3, :cond_0

    move v1, v0

    goto/16 :goto_0

    .line 548
    :sswitch_7
    if-lt v2, v4, :cond_a

    const/4 v2, 0x3

    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-eq v2, v5, :cond_0

    :cond_a
    move v1, v0

    goto/16 :goto_0

    .line 552
    :sswitch_8
    const/16 v3, 0x1d

    if-lt v2, v3, :cond_b

    const/4 v3, 0x4

    .line 553
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x61

    if-ne v3, v4, :cond_b

    const/4 v3, 0x5

    .line 554
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x6e

    if-ne v3, v4, :cond_b

    const/16 v3, 0xc

    .line 555
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x69

    if-ne v3, v4, :cond_b

    const/16 v3, 0x1b

    .line 556
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v5, :cond_b

    .line 557
    const-string v2, "om.android.installreferrer."

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    move v1, v0

    goto/16 :goto_0

    .line 561
    :cond_b
    if-lt v2, v6, :cond_c

    const/4 v2, 0x4

    .line 562
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x61

    if-ne v2, v3, :cond_c

    const/4 v2, 0x5

    .line 563
    invoke-virtual {p0, v2}, Ljava/lang/String;->charAt(I)C
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    const/16 v3, 0x6e

    if-eq v2, v3, :cond_0

    :cond_c
    move v1, v0

    .line 568
    goto/16 :goto_0

    .line 573
    :catch_0
    move-exception v1

    .line 574
    const-string v2, "MultiDexClassLoader"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Class out of bounds: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    move v1, v0

    .line 575
    goto/16 :goto_0

    .line 462
    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_1
        0x63 -> :sswitch_8
        0x64 -> :sswitch_2
        0x6a -> :sswitch_3
        0x6c -> :sswitch_0
        0x6f -> :sswitch_4
        0x73 -> :sswitch_7
    .end sparse-switch

    .line 500
    :sswitch_data_1
    .sparse-switch
        0x61 -> :sswitch_0
        0x75 -> :sswitch_0
    .end sparse-switch

    .line 520
    :sswitch_data_2
    .sparse-switch
        0x61 -> :sswitch_5
        0x6a -> :sswitch_0
        0x77 -> :sswitch_6
        0x78 -> :sswitch_0
    .end sparse-switch
.end method


# virtual methods
.method public configure(Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;)V
    .locals 10

    .prologue
    const/4 v1, 0x0

    .line 643
    invoke-super {p0, p1}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->configure(Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;)V

    .line 645
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mPrimaryDexes:[Ldalvik/system/DexFile;

    array-length v3, v0

    .line 646
    iget-object v0, p1, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->mDexFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 647
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mAuxiliaryDexes:[Ldalvik/system/DexFile;

    array-length v5, v0

    .line 648
    add-int v0, v3, v4

    add-int v6, v0, v5

    .line 649
    mul-int/lit8 v0, v6, 0x2

    add-int/lit8 v0, v0, 0x1

    .line 650
    new-array v7, v0, [Ldalvik/system/DexFile;

    .line 653
    const/4 v0, 0x0

    aput-object v0, v7, v1

    .line 655
    const/4 v2, 0x1

    move v0, v1

    .line 657
    :goto_0
    if-ge v0, v3, :cond_0

    .line 658
    iget-object v8, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mPrimaryDexes:[Ldalvik/system/DexFile;

    aget-object v8, v8, v0

    .line 659
    aput-object v8, v7, v2

    .line 660
    add-int v9, v2, v6

    aput-object v8, v7, v9

    .line 657
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    move v3, v1

    .line 663
    :goto_1
    if-ge v3, v4, :cond_1

    .line 664
    iget-object v0, p1, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->mDexFiles:Ljava/util/ArrayList;

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldalvik/system/DexFile;

    .line 665
    aput-object v0, v7, v2

    .line 666
    add-int v8, v2, v6

    aput-object v0, v7, v8

    .line 663
    add-int/lit8 v0, v3, 0x1

    add-int/lit8 v2, v2, 0x1

    move v3, v0

    goto :goto_1

    :cond_1
    move v0, v1

    move v1, v2

    .line 669
    :goto_2
    if-ge v0, v5, :cond_2

    .line 670
    iget-object v2, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mAuxiliaryDexes:[Ldalvik/system/DexFile;

    aget-object v2, v2, v0

    .line 671
    aput-object v2, v7, v1

    .line 672
    add-int v3, v1, v6

    aput-object v2, v7, v3

    .line 669
    add-int/lit8 v0, v0, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 679
    :cond_2
    iput-object v7, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mDexFiles:[Ldalvik/system/DexFile;

    .line 681
    invoke-virtual {p0, p1}, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->configureArtHacks(Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;)V

    .line 682
    return-void
.end method

.method protected doGetConfiguredDexFiles()[Ldalvik/system/DexFile;
    .locals 5

    .prologue
    .line 686
    iget-object v1, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mDexFiles:[Ldalvik/system/DexFile;

    .line 687
    invoke-static {v1}, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->getDexLength([Ldalvik/system/DexFile;)I

    move-result v2

    .line 688
    new-array v3, v2, [Ldalvik/system/DexFile;

    .line 689
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_0

    .line 690
    invoke-static {v0, v2}, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->getFixedDexIndex(II)I

    move-result v4

    aget-object v4, v1, v4

    aput-object v4, v3, v0

    .line 689
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 692
    :cond_0
    return-object v3
.end method

.method protected findClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 4
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
    .line 219
    const/4 v1, 0x0

    .line 221
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mDexFiles:[Ldalvik/system/DexFile;

    .line 222
    array-length v2, v0

    .line 223
    if-nez v2, :cond_0

    .line 228
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 231
    :cond_0
    invoke-static {}, Lcom/facebook/profilo/logger/api/ProfiloLogger;->classLoadStart()I

    .line 233
    invoke-static {p1}, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->beginClassLoad(Ljava/lang/String;)V

    .line 234
    iget-object v3, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mClassLoadingStats:Lcom/facebook/common/dextricks/stats/ClassLoadingStats;

    invoke-virtual {v3}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->incrementClassLoadsAttempted()V

    .line 240
    :try_start_0
    sget-byte v3, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->sApiDetectionState:B
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    packed-switch v3, :pswitch_data_0

    .line 272
    :cond_1
    :goto_0
    if-eqz v1, :cond_2

    .line 273
    invoke-static {v1}, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->classLoaded(Ljava/lang/Class;)V

    .line 274
    invoke-static {v1}, Lcom/facebook/common/dextricks/coverage/logger/ClassCoverageLogger;->classLoaded(Ljava/lang/Class;)V

    .line 275
    invoke-static {v1}, Lcom/facebook/common/dextricks/benchmarkhelper/ClassloadNameCollector;->classLoaded(Ljava/lang/Class;)V

    .line 276
    invoke-static {v1}, Lcom/facebook/profilo/logger/api/ProfiloLogger;->classLoadEnd(Ljava/lang/Class;)I

    .line 284
    :goto_1
    if-eqz v1, :cond_4

    .line 285
    return-object v1

    .line 243
    :pswitch_0
    :try_start_1
    iget-object v3, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mLastLoadedDexIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-direct {p0, p1, v0, v3}, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->loadInnerNewApiClass(Ljava/lang/String;[Ldalvik/system/DexFile;I)Ljava/lang/Class;

    move-result-object v1

    .line 244
    if-nez v1, :cond_1

    .line 245
    invoke-direct {p0, p1, v0, v2}, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->loadInnerNewApiClass(Ljava/lang/String;[Ldalvik/system/DexFile;I)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 251
    :pswitch_1
    iget-object v3, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mLastLoadedDexIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-direct {p0, p1, v0, v3}, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->loadInnerOldApiClass(Ljava/lang/String;[Ldalvik/system/DexFile;I)Ljava/lang/Class;

    move-result-object v1

    .line 252
    if-nez v1, :cond_1

    .line 253
    invoke-direct {p0, p1, v0, v2}, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->loadInnerOldApiClass(Ljava/lang/String;[Ldalvik/system/DexFile;I)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 259
    :pswitch_2
    iget-object v3, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mLastLoadedDexIndex:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v3

    invoke-direct {p0, p1, v0, v3}, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->loadInnerFallbackApiClass(Ljava/lang/String;[Ldalvik/system/DexFile;I)Ljava/lang/Class;

    move-result-object v1

    .line 260
    if-nez v1, :cond_1

    .line 261
    invoke-direct {p0, p1, v0, v2}, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->loadInnerFallbackApiClass(Ljava/lang/String;[Ldalvik/system/DexFile;I)Ljava/lang/Class;

    move-result-object v1

    goto :goto_0

    .line 267
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->findClassSlowPath(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v1

    goto :goto_0

    .line 278
    :cond_2
    invoke-static {}, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->classNotFound()V

    .line 279
    invoke-static {}, Lcom/facebook/profilo/logger/api/ProfiloLogger;->classLoadFailed()I

    .line 280
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mClassLoadingStats:Lcom/facebook/common/dextricks/stats/ClassLoadingStats;

    invoke-virtual {v0}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->incrementClassLoadsFailed()V

    goto :goto_1

    .line 272
    :catchall_0
    move-exception v0

    if-eqz v1, :cond_3

    .line 273
    invoke-static {v1}, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->classLoaded(Ljava/lang/Class;)V

    .line 274
    invoke-static {v1}, Lcom/facebook/common/dextricks/coverage/logger/ClassCoverageLogger;->classLoaded(Ljava/lang/Class;)V

    .line 275
    invoke-static {v1}, Lcom/facebook/common/dextricks/benchmarkhelper/ClassloadNameCollector;->classLoaded(Ljava/lang/Class;)V

    .line 276
    invoke-static {v1}, Lcom/facebook/profilo/logger/api/ProfiloLogger;->classLoadEnd(Ljava/lang/Class;)I

    .line 280
    :goto_2
    throw v0

    .line 278
    :cond_3
    invoke-static {}, Lcom/facebook/common/dextricks/classtracing/logger/ClassTracingLogger;->classNotFound()V

    .line 279
    invoke-static {}, Lcom/facebook/profilo/logger/api/ProfiloLogger;->classLoadFailed()I

    .line 280
    iget-object v1, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mClassLoadingStats:Lcom/facebook/common/dextricks/stats/ClassLoadingStats;

    invoke-virtual {v1}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->incrementClassLoadsFailed()V

    goto :goto_2

    .line 288
    :cond_4
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 240
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_3
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public getRecentFailedClasses()[Ljava/lang/String;
    .locals 6

    .prologue
    .line 705
    iget-object v2, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mDexLoadFailureHistory:[Ljava/lang/String;

    .line 706
    array-length v3, v2

    .line 707
    new-array v4, v3, [Ljava/lang/String;

    .line 709
    monitor-enter v2

    .line 710
    :try_start_0
    iget v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mDexLoadFailurePosition:I

    .line 711
    if-ge v0, v3, :cond_0

    .line 712
    add-int/2addr v0, v3

    .line 714
    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    .line 715
    add-int/lit8 v5, v1, 0x1

    sub-int v5, v0, v5

    rem-int/2addr v5, v3

    aget-object v5, v2, v5

    aput-object v5, v4, v1

    .line 714
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 717
    :cond_1
    monitor-exit v2

    return-object v4

    .line 718
    :catchall_0
    move-exception v0

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected loadClass(Ljava/lang/String;Z)Ljava/lang/Class;
    .locals 4
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

    .prologue
    .line 404
    const/4 v0, 0x0

    .line 405
    invoke-static {p1}, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->shouldAskParent(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 406
    const/4 v1, 0x1

    .line 407
    invoke-direct {p0, p1}, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->loadParentBootLoaderClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 408
    if-eqz v0, :cond_1

    .line 438
    :goto_0
    return-object v0

    :cond_0
    move v1, v0

    .line 414
    :cond_1
    :try_start_0
    invoke-virtual {p0, p1}, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->findClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 415
    :catch_0
    move-exception v0

    .line 421
    if-nez v1, :cond_2

    invoke-direct {p0, p1}, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->oldShouldAskBootClassLoader(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 422
    invoke-direct {p0, p1}, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->loadParentBootLoaderClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 423
    if-eqz v1, :cond_2

    .line 424
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->mClassLoadingStats:Lcom/facebook/common/dextricks/stats/ClassLoadingStats;

    invoke-virtual {v0}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->incrementIncorrectDfaGuesses()V

    .line 425
    const-string v0, "MultiDexClassLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Class "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " was loaded on fallback. "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "This should be fixed and added to the shouldAskParent method."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    move-object v0, v1

    .line 431
    goto :goto_0

    .line 436
    :cond_2
    :try_start_1
    invoke-virtual {p0, p1, v0}, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->maybeFallbackLoadDexes(Ljava/lang/String;Ljava/lang/Throwable;)Z
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    if-eqz v1, :cond_3

    .line 438
    :try_start_2
    invoke-virtual {p0, p1}, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->findClass(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_2
    .catch Ljava/lang/ClassNotFoundException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    move-result-object v0

    goto :goto_0

    .line 443
    :catch_1
    move-exception v0

    move-object v1, v0

    .line 444
    new-instance v0, Ljava/lang/ClassNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Fallback dex load failed for "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 447
    :cond_3
    :goto_1
    invoke-direct {p0, p1}, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;->noteClassLoadFailure(Ljava/lang/String;)V

    .line 448
    throw v0

    .line 439
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method protected onColdstartDone()V
    .locals 0

    .prologue
    .line 639
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 723
    const-string v0, "MultiDexClassLoaderJava"

    return-object v0
.end method
