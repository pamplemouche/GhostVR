.class public abstract Lcom/facebook/common/dextricks/MultiDexClassLoader;
.super Ljava/lang/ClassLoader;
.source "MultiDexClassLoader.java"


# annotations
.annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/dextricks/MultiDexClassLoader$FallbackDexLoader;,
        Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;
    }
.end annotation


# static fields
.field private static final APP_CLASSLOADER:Ljava/lang/ClassLoader;

.field private static final BASE_DEX_RETRY_WAIT_MS:I = 0x1f4

.field private static final CLASSLOADER_PARENT_FIELD:Ljava/lang/reflect/Field;

.field private static final INSTALL_LOCK:Ljava/lang/Object;

.field private static final MAX_LOAD_DEX_RETRY:I = 0x3

.field private static final SYSTEM_CLASSLOADER:Ljava/lang/ClassLoader;

.field public static final TAG:Ljava/lang/String; = "MultiDexClassLoader"

.field private static final USE_DALVIK_NATIVE_LOADER:Z = true

.field private static final USE_FANCY_LOADER:Z = true

.field private static volatile sFallbackDexLoader:Lcom/facebook/common/dextricks/MultiDexClassLoader$FallbackDexLoader;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private static sFancyLoaderFailure:Ljava/lang/Throwable;

.field private static volatile sInstalledClassLoader:Ljava/lang/ClassLoader;


# instance fields
.field private mConfig:Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field protected final mPutativeLoader:Ljava/lang/ClassLoader;

.field protected mTurboLoader:Lcom/facebook/common/dextricks/turboloader/TurboLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 132
    sput-object v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->sInstalledClassLoader:Ljava/lang/ClassLoader;

    .line 133
    sput-object v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->sFallbackDexLoader:Lcom/facebook/common/dextricks/MultiDexClassLoader$FallbackDexLoader;

    .line 134
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->INSTALL_LOCK:Ljava/lang/Object;

    .line 144
    :try_start_0
    const-class v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    sput-object v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->APP_CLASSLOADER:Ljava/lang/ClassLoader;

    .line 145
    const-class v0, Ljava/lang/ClassLoader;

    const-string v1, "parent"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    sput-object v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->CLASSLOADER_PARENT_FIELD:Ljava/lang/reflect/Field;

    .line 146
    sget-object v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->CLASSLOADER_PARENT_FIELD:Ljava/lang/reflect/Field;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 147
    sget-object v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->CLASSLOADER_PARENT_FIELD:Ljava/lang/reflect/Field;

    sget-object v1, Lcom/facebook/common/dextricks/MultiDexClassLoader;->APP_CLASSLOADER:Ljava/lang/ClassLoader;

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    sput-object v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->SYSTEM_CLASSLOADER:Ljava/lang/ClassLoader;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 151
    return-void

    .line 148
    :catch_0
    move-exception v0

    .line 149
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected constructor <init>()V
    .locals 1

    .prologue
    .line 337
    sget-object v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->SYSTEM_CLASSLOADER:Ljava/lang/ClassLoader;

    invoke-direct {p0, v0}, Ljava/lang/ClassLoader;-><init>(Ljava/lang/ClassLoader;)V

    .line 338
    sget-object v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->APP_CLASSLOADER:Ljava/lang/ClassLoader;

    iput-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mPutativeLoader:Ljava/lang/ClassLoader;

    .line 339
    return-void
.end method

.method static synthetic access$100()Ljava/lang/ClassLoader;
    .locals 1

    .prologue
    .line 122
    sget-object v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->sInstalledClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static clearFancyLoaderFailure()V
    .locals 1

    .prologue
    .line 371
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->sFancyLoaderFailure:Ljava/lang/Throwable;

    .line 372
    return-void
.end method

.method private static createMultiDexClassLoader(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/facebook/common/coldstartexperiments/experiments/MultiDexClassLoaderV2Experiment;ZZ)Ljava/lang/ClassLoader;
    .locals 7
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
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/common/coldstartexperiments/experiments/MultiDexClassLoaderV2Experiment;",
            "ZZ)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .prologue
    const/4 v3, 0x2

    const/4 v5, 0x1

    .line 660
    if-eqz p5, :cond_0

    .line 663
    sget-object v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->APP_CLASSLOADER:Ljava/lang/ClassLoader;

    invoke-static {v0, p3, p6}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->teachAppClassLoader(Ljava/lang/ClassLoader;Ljava/util/ArrayList;Z)V

    .line 664
    sget-object v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->APP_CLASSLOADER:Ljava/lang/ClassLoader;

    .line 706
    :goto_0
    return-object v0

    .line 671
    :cond_0
    const-string v0, "true"

    const-string v1, "com.facebook.force_mdclj"

    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 672
    new-instance v0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 677
    :cond_1
    const-string v0, "Amazon"

    sget-object v1, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 678
    new-instance v0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 682
    :cond_2
    :try_start_0
    sget-boolean v0, Lcom/facebook/common/isart/IsArt;->yes:Z

    if-eqz v0, :cond_6

    .line 683
    invoke-static {}, Lcom/facebook/common/process/ProcessName;->current()Lcom/facebook/common/process/ProcessName;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/common/process/ProcessName;->isDefaultProcess()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 684
    const-string v0, "true"

    const-string v1, "com.facebook.force_mdclan"

    .line 685
    invoke-static {v1}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    .line 686
    invoke-interface {p4}, Lcom/facebook/common/coldstartexperiments/experiments/MultiDexClassLoaderV2Experiment;->mdclSelector()I

    move-result v0

    if-eq v0, v5, :cond_3

    .line 687
    invoke-interface {p4}, Lcom/facebook/common/coldstartexperiments/experiments/MultiDexClassLoaderV2Experiment;->mdclSelector()I

    move-result v0

    if-eq v0, v3, :cond_3

    if-eqz v6, :cond_4

    .line 689
    :cond_3
    new-instance v0, Lcom/facebook/common/dextricks/MultiDexClassLoaderArtNative;

    sget-object v2, Lcom/facebook/common/dextricks/MultiDexClassLoader;->SYSTEM_CLASSLOADER:Ljava/lang/ClassLoader;

    .line 694
    invoke-interface {p4}, Lcom/facebook/common/coldstartexperiments/experiments/MultiDexClassLoaderV2Experiment;->mdclSelector()I

    move-result v1

    if-ne v1, v3, :cond_5

    :goto_1
    move-object v1, p0

    move-object v3, p1

    move-object v4, p2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/common/dextricks/MultiDexClassLoaderArtNative;-><init>(Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/util/ArrayList;Ljava/util/ArrayList;ZZ)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 701
    :catch_0
    move-exception v0

    .line 702
    :goto_2
    const-string v1, "MultiDexClassLoader"

    const-string v2, "unable to use native MDCL: falling back to Java impl"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 703
    sput-object v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->sFancyLoaderFailure:Ljava/lang/Throwable;

    .line 706
    :cond_4
    new-instance v0, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/common/dextricks/MultiDexClassLoaderJava;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    goto :goto_0

    .line 694
    :cond_5
    const/4 v5, 0x0

    goto :goto_1

    .line 699
    :cond_6
    :try_start_1
    new-instance v0, Lcom/facebook/common/dextricks/MultiDexClassLoaderDalvikNative;

    invoke-direct {v0, p0, p1, p2}, Lcom/facebook/common/dextricks/MultiDexClassLoaderDalvikNative;-><init>(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 701
    :catch_1
    move-exception v0

    goto :goto_2
.end method

.method static forceLoadProfiloIfPresent()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 710
    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/String;

    const-string v2, "com.facebook.profilo.logger.api.ProfiloLogger"

    aput-object v2, v1, v0

    const/4 v2, 0x1

    const-string v3, "com.facebook.profilo.core.TraceEvents"

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const-string v3, "com.facebook.profilo.entries.EntryType"

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const-string v3, "com.facebook.profilo.logger.ClassLoadLogger"

    aput-object v3, v1, v2

    const/4 v2, 0x4

    const-string v3, "com.facebook.profilo.logger.Logger"

    aput-object v3, v1, v2

    const/4 v2, 0x5

    const-string v3, "com.facebook.profilo.core.ProvidersRegistry"

    aput-object v3, v1, v2

    .line 718
    array-length v2, v1

    :goto_0
    if-ge v0, v2, :cond_0

    aget-object v3, v1, v0

    .line 720
    :try_start_0
    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 718
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 721
    :catch_0
    move-exception v3

    goto :goto_1

    .line 725
    :cond_0
    return-void
.end method

.method public static get()Ljava/lang/ClassLoader;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 362
    sget-object v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->sInstalledClassLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static getConfiguration()Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 747
    sget-object v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->sInstalledClassLoader:Ljava/lang/ClassLoader;

    .line 748
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;

    if-nez v1, :cond_1

    .line 749
    :cond_0
    const/4 v0, 0x0

    .line 752
    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;

    invoke-virtual {v0}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->getConfig()Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;

    move-result-object v0

    goto :goto_0
.end method

.method public static getConfiguredDexFiles()[Ldalvik/system/DexFile;
    .locals 2

    .prologue
    .line 737
    sget-object v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->sInstalledClassLoader:Ljava/lang/ClassLoader;

    .line 738
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;

    if-nez v1, :cond_1

    .line 739
    :cond_0
    const/4 v0, 0x0

    new-array v0, v0, [Ldalvik/system/DexFile;

    .line 742
    :goto_0
    return-object v0

    :cond_1
    check-cast v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;

    invoke-virtual {v0}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->doGetConfiguredDexFiles()[Ldalvik/system/DexFile;

    move-result-object v0

    goto :goto_0
.end method

.method public static getFancyLoaderFailure()Ljava/lang/Throwable;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 367
    sget-object v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->sFancyLoaderFailure:Ljava/lang/Throwable;

    return-object v0
.end method

.method public static install(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/facebook/common/coldstartexperiments/experiments/MultiDexClassLoaderV2Experiment;ZZ)Ljava/lang/ClassLoader;
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
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/common/coldstartexperiments/experiments/MultiDexClassLoaderV2Experiment;",
            "ZZ)",
            "Ljava/lang/ClassLoader;"
        }
    .end annotation

    .prologue
    .line 390
    sget-object v1, Lcom/facebook/common/dextricks/MultiDexClassLoader;->sInstalledClassLoader:Ljava/lang/ClassLoader;

    .line 391
    if-nez v1, :cond_3

    .line 392
    sget-object v3, Lcom/facebook/common/dextricks/MultiDexClassLoader;->INSTALL_LOCK:Ljava/lang/Object;

    monitor-enter v3

    .line 393
    :try_start_0
    const-string v1, "MultiDexClassLoader"

    const-string v2, "installing MultiDexClassLoader before application classloader"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    sget-object v1, Lcom/facebook/common/dextricks/MultiDexClassLoader;->sInstalledClassLoader:Ljava/lang/ClassLoader;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 395
    if-nez v1, :cond_1

    .line 398
    :try_start_1
    const-string v1, "com.facebook.common.dextricks.FatalDexError"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 399
    const-string v1, "com.facebook.common.dextricks.DexFileLoadOld"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 400
    const-string v1, "com.facebook.common.dextricks.DexFileLoadNew"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 401
    const-string v1, "com.facebook.common.dextricks.stats.ClassLoadingStats"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 402
    const-string v1, "com.facebook.common.dextricks.stats.ClassLoadingStats$SnapshotStats"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 403
    const-string v1, "com.facebook.common.dextricks.classtracing.logger.ClassTracingLogger"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 404
    const-string v1, "com.facebook.common.dextricks.coverage.logger.ClassCoverageLogger"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 405
    const-string v1, "com.facebook.common.dextricks.benchmarkhelper.ClassloadNameCollector"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 406
    const-string v1, "com.facebook.common.dextricks.classid.ClassId"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 414
    :try_start_2
    invoke-static {}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->forceLoadProfiloIfPresent()V

    .line 417
    invoke-static {}, Lcom/facebook/acra/ErrorReporter;->getInstance()Lcom/facebook/acra/ErrorReporter;

    move-result-object v1

    const-string v2, "recentClassLoadFailures"

    new-instance v4, Lcom/facebook/common/dextricks/MultiDexClassLoader$1;

    invoke-direct {v4}, Lcom/facebook/common/dextricks/MultiDexClassLoader$1;-><init>()V

    .line 418
    invoke-virtual {v1, v2, v4}, Lcom/facebook/acra/ErrorReporter;->putLazyCustomData(Ljava/lang/String;Lcom/facebook/acra/CustomReportDataSupplier;)V

    .line 432
    invoke-static {}, Lcom/facebook/acra/ErrorReporter;->getInstance()Lcom/facebook/acra/ErrorReporter;

    move-result-object v1

    const-string v2, "multiDexClassLoader"

    new-instance v4, Lcom/facebook/common/dextricks/MultiDexClassLoader$2;

    invoke-direct {v4}, Lcom/facebook/common/dextricks/MultiDexClassLoader$2;-><init>()V

    .line 433
    invoke-virtual {v1, v2, v4}, Lcom/facebook/acra/ErrorReporter;->putLazyCustomData(Ljava/lang/String;Lcom/facebook/acra/CustomReportDataSupplier;)V

    .line 443
    invoke-static/range {p0 .. p6}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->createMultiDexClassLoader(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/facebook/common/coldstartexperiments/experiments/MultiDexClassLoaderV2Experiment;ZZ)Ljava/lang/ClassLoader;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v2

    .line 453
    :try_start_3
    instance-of v1, v2, Lcom/facebook/common/dextricks/MultiDexClassLoader;

    if-eqz v1, :cond_0

    .line 454
    sget-object v4, Lcom/facebook/common/dextricks/MultiDexClassLoader;->CLASSLOADER_PARENT_FIELD:Ljava/lang/reflect/Field;

    move-object v0, v2

    check-cast v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;

    move-object v1, v0

    iget-object v1, v1, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mPutativeLoader:Ljava/lang/ClassLoader;

    invoke-virtual {v4, v1, v2}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 456
    :cond_0
    sput-object v2, Lcom/facebook/common/dextricks/MultiDexClassLoader;->sInstalledClassLoader:Ljava/lang/ClassLoader;
    :try_end_3
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v1, v2

    .line 462
    :cond_1
    :try_start_4
    monitor-exit v3

    .line 469
    :cond_2
    :goto_0
    return-object v1

    .line 407
    :catch_0
    move-exception v1

    .line 408
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 462
    :catchall_0
    move-exception v1

    monitor-exit v3
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v1

    .line 458
    :catch_1
    move-exception v1

    .line 459
    :try_start_5
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 463
    :cond_3
    sget-boolean v2, Lcom/facebook/common/dextricks/DexStore;->OREO_OR_NEWER:Z

    if-eqz v2, :cond_2

    if-eqz p5, :cond_2

    .line 466
    sget-object v2, Lcom/facebook/common/dextricks/MultiDexClassLoader;->APP_CLASSLOADER:Ljava/lang/ClassLoader;

    invoke-static {v2, p3, p6}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->teachAppClassLoader(Ljava/lang/ClassLoader;Ljava/util/ArrayList;Z)V

    goto :goto_0
.end method

.method private static isArt()Z
    .locals 2

    .prologue
    .line 838
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static notifyCurrentClassLoaderThatColdstartDone()V
    .locals 2

    .prologue
    .line 756
    sget-object v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->sInstalledClassLoader:Ljava/lang/ClassLoader;

    .line 757
    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;

    if-nez v1, :cond_1

    .line 762
    :cond_0
    :goto_0
    return-void

    .line 761
    :cond_1
    check-cast v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;

    invoke-virtual {v0}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->notifyColdstartDone()V

    goto :goto_0
.end method

.method public static setFallbackDexLoader(Lcom/facebook/common/dextricks/MultiDexClassLoader$FallbackDexLoader;)V
    .locals 0

    .prologue
    .line 473
    sput-object p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->sFallbackDexLoader:Lcom/facebook/common/dextricks/MultiDexClassLoader$FallbackDexLoader;

    .line 474
    return-void
.end method

.method private static teachAppClassLoader(Ljava/lang/ClassLoader;Ljava/util/ArrayList;Z)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/ClassLoader;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 540
    instance-of v0, p0, Ldalvik/system/BaseDexClassLoader;

    if-eqz v0, :cond_6

    .line 545
    if-eqz p2, :cond_0

    .line 549
    invoke-static {}, Lcom/facebook/common/envflags/InternalEnvFlags;->forceAssumeVerified()Z

    move-result v0

    invoke-static {v0}, Lcom/facebook/common/dextricks/DalvikInternals;->toggleFastDex2Oat(Z)Z

    move-result v0

    if-nez v0, :cond_0

    .line 550
    const-string v0, "FBDex101"

    const-string v1, "Failed to enable weightless fork"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/facebook/common/dextricks/DexTricksErrorReporter;->reportSampledSoftError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 556
    :cond_0
    new-instance v2, Ldalvik/system/PathClassLoader;

    const-string v0, ":"

    .line 557
    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/ClassLoader;->getParent()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/ClassLoader;)V

    .line 558
    if-eqz p2, :cond_1

    .line 560
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/facebook/common/dextricks/DalvikInternals;->toggleFastDex2Oat(Z)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 561
    const-string v0, "FBDex101"

    const-string v1, "Fork still weightless"

    const/4 v3, 0x0

    invoke-static {v0, v1, v3}, Lcom/facebook/common/dextricks/DexTricksErrorReporter;->reportSampledSoftError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 564
    :cond_1
    const-class v5, Ldalvik/system/BaseDexClassLoader;

    .line 572
    :try_start_0
    const-string v0, "dalvik.system.DexPathList"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 573
    const-string v1, "dalvik.system.DexPathList$Element"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 575
    const-string v1, "pathList"

    invoke-virtual {v5, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 576
    const-string v1, "dexElements"

    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v6

    .line 577
    const-string v1, "dexElementsSuppressedExceptions"

    .line 578
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v7

    .line 579
    const/4 v0, 0x1

    invoke-virtual {v3, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 580
    const/4 v0, 0x1

    invoke-virtual {v6, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 581
    const/4 v0, 0x1

    invoke-virtual {v7, v0}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 583
    invoke-virtual {v3, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 584
    invoke-virtual {v6, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 585
    invoke-virtual {v7, v8}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Object;

    check-cast v1, [Ljava/lang/Object;

    .line 587
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 588
    invoke-virtual {v6, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Ljava/lang/Object;

    check-cast v2, [Ljava/lang/Object;

    .line 589
    invoke-virtual {v7, v3}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [Ljava/lang/Object;

    check-cast v3, [Ljava/lang/Object;

    .line 591
    if-eqz v2, :cond_2

    array-length v9, v2

    if-lez v9, :cond_2

    .line 593
    if-eqz v0, :cond_4

    .line 594
    array-length v9, v2

    array-length v10, v0

    add-int/2addr v9, v10

    .line 596
    invoke-static {v4, v9}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [Ljava/lang/Object;

    check-cast v4, [Ljava/lang/Object;

    .line 598
    const/4 v9, 0x0

    const/4 v10, 0x0

    array-length v11, v0

    invoke-static {v0, v9, v4, v10, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 599
    const/4 v9, 0x0

    array-length v0, v0

    array-length v10, v2

    invoke-static {v2, v9, v4, v0, v10}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 603
    :goto_0
    invoke-virtual {v6, v8, v4}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 606
    :cond_2
    if-eqz v3, :cond_3

    array-length v0, v3

    if-lez v0, :cond_3

    .line 608
    if-eqz v1, :cond_5

    .line 609
    const-class v0, Ljava/io/IOException;

    array-length v2, v3

    array-length v4, v1

    add-int/2addr v2, v4

    .line 611
    invoke-static {v0, v2}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    .line 613
    const/4 v2, 0x0

    const/4 v4, 0x0

    array-length v6, v1

    invoke-static {v1, v2, v0, v4, v6}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 614
    const/4 v2, 0x0

    array-length v1, v1

    array-length v4, v3

    invoke-static {v3, v2, v0, v1, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 619
    :goto_1
    invoke-virtual {v7, v8, v0}, Ljava/lang/reflect/Field;->set(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_7

    .line 647
    :cond_3
    :goto_2
    return-void

    :cond_4
    move-object v4, v2

    .line 601
    goto :goto_0

    :cond_5
    move-object v0, v3

    .line 617
    goto :goto_1

    .line 621
    :catch_0
    move-exception v0

    .line 625
    :goto_3
    const-string v1, "FBDex101"

    const-string v2, "Failed to merge dex elements"

    invoke-static {v1, v2, v0}, Lcom/facebook/common/dextricks/DexTricksErrorReporter;->reportSampledSoftError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 631
    :try_start_1
    const-string v0, "addDexPath"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    const-class v3, Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {v5, v0, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 632
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-string v3, ":"

    invoke-static {v3, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_2

    .line 633
    :catch_1
    move-exception v0

    .line 637
    :goto_4
    const-string v1, "[FBDex101] Failed to call BaseDexClassLoader.addDexPath, app bound to crash with NoClassDef! %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/facebook/common/dextricks/Mlog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 640
    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    .line 644
    :cond_6
    const-string v0, "FBDex101"

    const-string v1, "Unknown Application ClassLoader: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    sget-object v4, Lcom/facebook/common/dextricks/MultiDexClassLoader;->APP_CLASSLOADER:Ljava/lang/ClassLoader;

    aput-object v4, v2, v3

    .line 645
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    .line 644
    invoke-static {v0, v1, v2}, Lcom/facebook/common/dextricks/DexTricksErrorReporter;->reportSampledSoftError(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    .line 633
    :catch_2
    move-exception v0

    goto :goto_4

    :catch_3
    move-exception v0

    goto :goto_4

    :catch_4
    move-exception v0

    goto :goto_4

    .line 621
    :catch_5
    move-exception v0

    goto :goto_3

    :catch_6
    move-exception v0

    goto :goto_3

    :catch_7
    move-exception v0

    goto :goto_3
.end method


# virtual methods
.method public configure(Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;)V
    .locals 0

    .prologue
    .line 357
    iput-object p1, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mConfig:Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;

    .line 358
    return-void
.end method

.method protected configureArtHacks(Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;)V
    .locals 4

    .prologue
    .line 792
    invoke-static {}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->isArt()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 793
    const/4 v0, 0x0

    .line 794
    iget-boolean v1, p1, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->disableVerifier:Z

    if-eqz v1, :cond_0

    .line 795
    const/4 v0, 0x4

    .line 798
    :cond_0
    if-eqz v0, :cond_1

    .line 799
    const-string v1, "MultiDexClassLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Install Art Hacks: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 800
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v0, v1}, Lcom/facebook/common/dextricks/DalvikInternals;->installArtHacks(II)I

    .line 803
    :cond_1
    return-void
.end method

.method public configureTurboLoader(Ljava/util/List;Ljava/util/List;Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;Ljava/io/File;)Lcom/facebook/common/dextricks/MultiDexClassLoader;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ldalvik/system/DexFile;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ldalvik/system/DexFile;",
            ">;",
            "Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;",
            "Ljava/io/File;",
            ")",
            "Lcom/facebook/common/dextricks/MultiDexClassLoader;"
        }
    .end annotation

    .prologue
    .line 343
    new-instance v0, Lcom/facebook/common/dextricks/turboloader/TurboLoader;

    invoke-direct {v0, p1, p2, p4}, Lcom/facebook/common/dextricks/turboloader/TurboLoader;-><init>(Ljava/util/List;Ljava/util/List;Ljava/io/File;)V

    iput-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mTurboLoader:Lcom/facebook/common/dextricks/turboloader/TurboLoader;

    .line 346
    invoke-static {p3}, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->access$000(Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;)I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 347
    :goto_0
    iget-object v1, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mTurboLoader:Lcom/facebook/common/dextricks/turboloader/TurboLoader;

    iget-object v2, p3, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->mDexFiles:Ljava/util/ArrayList;

    invoke-virtual {v1, v2, v0}, Lcom/facebook/common/dextricks/turboloader/TurboLoader;->install(Ljava/util/List;Z)V

    .line 348
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mTurboLoader:Lcom/facebook/common/dextricks/turboloader/TurboLoader;

    invoke-virtual {v0}, Lcom/facebook/common/dextricks/turboloader/TurboLoader;->isTurboLoaderMapPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 349
    invoke-static {}, Lcom/facebook/common/dextricks/stats/ClassLoadingStatsJava;->getInstance()Lcom/facebook/common/dextricks/stats/ClassLoadingStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->incrementTurboLoaderMapGenerationSuccesses()V

    .line 353
    :goto_1
    return-object p0

    .line 346
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 351
    :cond_1
    invoke-static {}, Lcom/facebook/common/dextricks/stats/ClassLoadingStatsJava;->getInstance()Lcom/facebook/common/dextricks/stats/ClassLoadingStats;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/common/dextricks/stats/ClassLoadingStats;->incrementTurboLoaderMapGenerationFailures()V

    goto :goto_1
.end method

.method protected abstract doGetConfiguredDexFiles()[Ldalvik/system/DexFile;
.end method

.method public getConfig()Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;
    .locals 1

    .prologue
    .line 770
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->mConfig:Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;

    return-object v0
.end method

.method public getRecentFailedClasses()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 788
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    return-object v0
.end method

.method final maybeFallbackLoadClass(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/lang/Class;
    .locals 3
    .param p2    # Ljava/lang/Throwable;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Throwable;",
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
    .line 810
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->maybeFallbackLoadDexes(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 813
    invoke-virtual {p0, p1}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->findClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 814
    if-eqz v0, :cond_0

    .line 815
    return-object v0

    .line 817
    :cond_0
    const-string v0, "MultiDexClassLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "findClass failed without throwing for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    :cond_1
    instance-of v0, p2, Ljava/lang/ClassNotFoundException;

    if-eqz v0, :cond_2

    check-cast p2, Ljava/lang/ClassNotFoundException;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    :goto_0
    throw p2

    .line 819
    :cond_2
    :try_start_1
    new-instance v0, Ljava/lang/ClassNotFoundException;

    invoke-direct {v0, p1, p2}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    move-object p2, v0

    goto :goto_0

    .line 823
    :catch_0
    move-exception v0

    .line 824
    new-instance p2, Ljava/lang/ClassNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Fallback class load failed for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1, v0}, Ljava/lang/ClassNotFoundException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method final maybeFallbackLoadDexes(Ljava/lang/String;Ljava/lang/Throwable;)Z
    .locals 1

    .prologue
    .line 830
    sget-object v0, Lcom/facebook/common/dextricks/MultiDexClassLoader;->sFallbackDexLoader:Lcom/facebook/common/dextricks/MultiDexClassLoader$FallbackDexLoader;

    .line 831
    if-nez v0, :cond_0

    .line 832
    const/4 v0, 0x0

    .line 834
    :goto_0
    return v0

    :cond_0
    invoke-interface {v0, p1, p2}, Lcom/facebook/common/dextricks/MultiDexClassLoader$FallbackDexLoader;->onClassNotFound(Ljava/lang/String;Ljava/lang/Throwable;)Z

    move-result v0

    goto :goto_0
.end method

.method public notifyColdstartDone()V
    .locals 2

    .prologue
    .line 775
    const-string v0, "MultiDexClassLoader"

    const-string v1, "notifyColdstartDone"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 776
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->onColdstartDone()V

    .line 777
    return-void
.end method

.method protected abstract onColdstartDone()V
.end method
