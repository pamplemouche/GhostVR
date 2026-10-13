.class public final Lcom/facebook/common/dextricks/DexLibLoader;
.super Ljava/lang/Object;
.source "DexLibLoader.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/dextricks/DexLibLoader$ExoPackageResProvider;,
        Lcom/facebook/common/dextricks/DexLibLoader$ApkResProvider;
    }
.end annotation


# static fields
.field public static final LOAD_ALL_ASYNC_OPTIMIZATION:I = 0x4

.field public static final LOAD_ALL_BETA_BUILD:I = 0x1

.field public static final LOAD_ALL_INSTRUMENTATION_TEST:I = 0x10

.field public static final LOAD_ALL_OPEN_ONLY:I = 0x2

.field public static final LOAD_SECONDARY:I = 0x8

.field public static deoptTaint:Z

.field private static mDeri:Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

.field private static sMainDexStore:Lcom/facebook/common/dextricks/DexStore;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ensureConfig(Landroid/content/Context;Lcom/facebook/common/dextricks/DexStore$Config;Z)V
    .locals 3
    .param p1    # Lcom/facebook/common/dextricks/DexStore$Config;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 360
    invoke-static {p0}, Lcom/facebook/common/dextricks/DexLibLoader;->getMainDexStoreLocation(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 361
    invoke-static {v0}, Lcom/facebook/common/dextricks/Fs;->mkdirOrThrow(Ljava/io/File;)V

    .line 362
    if-eqz p1, :cond_1

    .line 363
    new-instance v1, Ljava/io/File;

    const-string v2, "config"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 364
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    .line 365
    :cond_0
    invoke-virtual {p1, v1}, Lcom/facebook/common/dextricks/DexStore$Config;->writeAndSync(Ljava/io/File;)V

    .line 368
    :cond_1
    return-void
.end method

.method public static declared-synchronized getLastCompilationTime(Landroid/content/Context;)J
    .locals 4

    .prologue
    .line 289
    const-class v2, Lcom/facebook/common/dextricks/DexLibLoader;

    monitor-enter v2

    const-wide/16 v0, 0x0

    .line 290
    :try_start_0
    sget-object v3, Lcom/facebook/common/dextricks/DexLibLoader;->sMainDexStore:Lcom/facebook/common/dextricks/DexStore;

    if-eqz v3, :cond_0

    .line 291
    sget-object v0, Lcom/facebook/common/dextricks/DexLibLoader;->sMainDexStore:Lcom/facebook/common/dextricks/DexStore;

    invoke-virtual {v0}, Lcom/facebook/common/dextricks/DexStore;->getLastRegenTime()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 293
    :cond_0
    monitor-exit v2

    return-wide v0

    .line 289
    :catchall_0
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method public static declared-synchronized getMainDexStore()Lcom/facebook/common/dextricks/DexStore;
    .locals 3

    .prologue
    .line 253
    const-class v1, Lcom/facebook/common/dextricks/DexLibLoader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/common/dextricks/DexLibLoader;->sMainDexStore:Lcom/facebook/common/dextricks/DexStore;

    if-nez v0, :cond_0

    .line 254
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "main dex store not loaded"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 253
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 256
    :cond_0
    :try_start_1
    sget-object v0, Lcom/facebook/common/dextricks/DexLibLoader;->sMainDexStore:Lcom/facebook/common/dextricks/DexStore;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    monitor-exit v1

    return-object v0
.end method

.method public static getMainDexStoreLoadInformation()Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;
    .locals 2

    .prologue
    .line 246
    sget-object v0, Lcom/facebook/common/dextricks/DexLibLoader;->mDeri:Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

    if-nez v0, :cond_0

    .line 247
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "main dex store not yet loaded"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 249
    :cond_0
    sget-object v0, Lcom/facebook/common/dextricks/DexLibLoader;->mDeri:Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

    return-object v0
.end method

.method private static getMainDexStoreLocation(Landroid/content/Context;)Ljava/io/File;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 177
    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v1, v0, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    .line 178
    sget-boolean v0, Lcom/facebook/common/dextricks/DexStore;->OREO_OR_NEWER:Z

    if-eqz v0, :cond_1

    move-object v0, v1

    .line 182
    :goto_0
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/app_secondary_program_dex"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/facebook/common/dextricks/Fs;->deleteRecursiveNoThrow(Ljava/io/File;)V

    .line 183
    new-instance v2, Ljava/io/File;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/app_secondary_program_dex_opt"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v2}, Lcom/facebook/common/dextricks/Fs;->deleteRecursiveNoThrow(Ljava/io/File;)V

    .line 186
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 187
    const-string v2, "resolved non-canonical data directory %s to %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v1, v3, v4

    const/4 v1, 0x1

    aput-object v0, v3, v1

    invoke-static {v2, v3}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 190
    :cond_0
    new-instance v1, Ljava/io/File;

    const-string v2, "dex"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    .line 179
    :cond_1
    invoke-static {v1}, Lcom/facebook/common/dextricks/DalvikInternals;->realpath(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public static loadAll(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 236
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/facebook/common/dextricks/DexLibLoader;->loadAll(Landroid/content/Context;Z)V

    .line 237
    return-void
.end method

.method public static declared-synchronized loadAll(Landroid/content/Context;ILcom/facebook/base/lwperf/LightweightPerfEventsTracer;)V
    .locals 2
    .param p2    # Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 223
    const-class v0, Lcom/facebook/common/dextricks/DexLibLoader;

    monitor-enter v0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, p1, p2, v1}, Lcom/facebook/common/dextricks/DexLibLoader;->loadAll(Landroid/content/Context;ILcom/facebook/base/lwperf/LightweightPerfEventsTracer;Lcom/facebook/common/dextricks/DexStore$Config;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 224
    monitor-exit v0

    return-void

    .line 223
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static declared-synchronized loadAll(Landroid/content/Context;ILcom/facebook/base/lwperf/LightweightPerfEventsTracer;Lcom/facebook/common/dextricks/DexStore$Config;)V
    .locals 3
    .param p2    # Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Lcom/facebook/common/dextricks/DexStore$Config;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 206
    const-class v1, Lcom/facebook/common/dextricks/DexLibLoader;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/common/dextricks/DexLibLoader;->mDeri:Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

    if-eqz v0, :cond_0

    .line 207
    new-instance v0, Ljava/lang/AssertionError;

    const-string v2, "loadAll already loaded dex files"

    invoke-direct {v0, v2}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 206
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 210
    :cond_0
    if-nez p2, :cond_1

    .line 211
    :try_start_1
    new-instance p2, Lcom/facebook/base/lwperf/DummyLightweightPerfEventsTracer;

    invoke-direct {p2}, Lcom/facebook/base/lwperf/DummyLightweightPerfEventsTracer;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 215
    :cond_1
    :try_start_2
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/common/dextricks/DexLibLoader;->loadAllImpl(Landroid/content/Context;ILcom/facebook/base/lwperf/LightweightPerfEventsTracer;Lcom/facebook/common/dextricks/DexStore$Config;)Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

    move-result-object v0

    sput-object v0, Lcom/facebook/common/dextricks/DexLibLoader;->mDeri:Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 219
    monitor-exit v1

    return-void

    .line 216
    :catch_0
    move-exception v0

    .line 217
    :try_start_3
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
.end method

.method public static loadAll(Landroid/content/Context;Z)V
    .locals 1

    .prologue
    .line 232
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/facebook/common/dextricks/DexLibLoader;->loadAll(Landroid/content/Context;ZLcom/facebook/base/lwperf/LightweightPerfEventsTracer;)V

    .line 233
    return-void
.end method

.method public static loadAll(Landroid/content/Context;ZLcom/facebook/base/lwperf/LightweightPerfEventsTracer;)V
    .locals 1
    .param p2    # Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 228
    const/4 v0, 0x1

    invoke-static {p0, v0, p2}, Lcom/facebook/common/dextricks/DexLibLoader;->loadAll(Landroid/content/Context;ILcom/facebook/base/lwperf/LightweightPerfEventsTracer;)V

    .line 229
    return-void
.end method

.method private static loadAllImpl(Landroid/content/Context;ILcom/facebook/base/lwperf/LightweightPerfEventsTracer;Lcom/facebook/common/dextricks/DexStore$Config;)Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;
    .locals 12
    .param p3    # Lcom/facebook/common/dextricks/DexStore$Config;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 75
    and-int/lit8 v0, p1, 0x1

    if-eqz v0, :cond_3

    const/4 v0, 0x1

    .line 77
    :goto_0
    const-string v1, "DLL.loadAll betaBuild:%s flags:0x%08x"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 80
    and-int/lit8 v1, p1, 0x10

    if-eqz v1, :cond_4

    .line 81
    const-string v1, "DLL.loadAll instrumentation test mode"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 82
    invoke-static {p0, p3}, Lcom/facebook/common/dextricks/DexLibLoader;->setupMainDexStoreConfigForInstrumentationTests(Landroid/content/Context;Lcom/facebook/common/dextricks/DexStore$Config;)V

    .line 87
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 88
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 90
    :try_start_0
    const-class v1, Lcom/facebook/common/dextricks/DexLibLoader;

    .line 91
    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 90
    invoke-static {p0, v1, v3, v4}, Lcom/facebook/common/dextricks/utils/DexUtils;->findApplicationDexFiles(Landroid/content/Context;Ljava/lang/ClassLoader;Ljava/util/List;Ljava/util/List;)Z
    :try_end_0
    .catch Lcom/facebook/common/dextricks/utils/DexUtils$FindApplicationDexException; {:try_start_0 .. :try_end_0} :catch_0

    .line 98
    :goto_1
    const-string v1, "DLL2_load_main"

    const v2, 0x880001

    .line 99
    invoke-virtual {p2, v1, v2}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->start(Ljava/lang/String;I)Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;

    move-result-object v5

    .line 98
    const/4 v2, 0x0

    .line 101
    :try_start_1
    invoke-static {p0}, Lcom/facebook/common/dextricks/DexLibLoader;->getMainDexStoreLocation(Landroid/content/Context;)Ljava/io/File;

    move-result-object v6

    .line 103
    new-instance v7, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget-object v1, v1, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v7, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 104
    invoke-static {p2, p0, v0}, Lcom/facebook/common/dextricks/DexLibLoader;->obtainResProvider(Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;Landroid/content/Context;Z)Lcom/facebook/common/dextricks/ResProvider;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v8

    const/4 v1, 0x0

    .line 105
    if-nez v8, :cond_8

    .line 106
    :try_start_2
    const-string v0, "Nothing to do in DexLibLoader.loadAll: no resProvider"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 107
    new-instance v0, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

    invoke-direct {v0}, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;-><init>()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_4
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    .line 161
    if-eqz v8, :cond_1

    if-eqz v1, :cond_6

    :try_start_3
    invoke-virtual {v8}, Lcom/facebook/common/dextricks/ResProvider;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 162
    :cond_1
    :goto_2
    if-eqz v5, :cond_2

    if-eqz v2, :cond_7

    :try_start_4
    invoke-virtual {v5}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_3
    return-object v0

    .line 75
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 83
    :cond_4
    if-eqz p3, :cond_0

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Do not specify a config outside of test mode."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :catch_0
    move-exception v1

    .line 93
    const-string v2, "failure to locate primary/auxiliary dexes: perf loss"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v1, v2, v5}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V

    .line 95
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    goto :goto_1

    .line 161
    :catch_1
    move-exception v3

    :try_start_5
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_2

    .line 98
    :catch_2
    move-exception v0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 162
    :catchall_0
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_4
    if-eqz v5, :cond_5

    if-eqz v1, :cond_17

    :try_start_7
    invoke-virtual {v5}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_8

    :cond_5
    :goto_5
    throw v0

    .line 161
    :cond_6
    :try_start_8
    invoke-virtual {v8}, Lcom/facebook/common/dextricks/ResProvider;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_2

    .line 162
    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_4

    :catch_3
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v5}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V

    goto :goto_3

    .line 109
    :cond_8
    :try_start_9
    const-string v0, "opening dex store %s"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object v6, v9, v10

    invoke-static {v0, v9}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    invoke-static {v6, v7, v8, v3, v4}, Lcom/facebook/common/dextricks/DexStore;->open(Ljava/io/File;Ljava/io/File;Lcom/facebook/common/dextricks/ResProvider;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/facebook/common/dextricks/DexStore;

    move-result-object v3

    .line 112
    sput-object v3, Lcom/facebook/common/dextricks/DexLibLoader;->sMainDexStore:Lcom/facebook/common/dextricks/DexStore;

    .line 114
    and-int/lit8 v0, p1, 0x2

    if-nez v0, :cond_13

    .line 115
    const/4 v0, 0x0

    .line 116
    and-int/lit8 v4, p1, 0x1

    if-eqz v4, :cond_9

    .line 117
    const/4 v0, 0x1

    .line 120
    :cond_9
    and-int/lit8 v4, p1, 0x8

    if-eqz v4, :cond_a

    .line 121
    or-int/lit8 v0, v0, 0x10

    .line 124
    :cond_a
    and-int/lit8 v4, p1, 0x4

    if-eqz v4, :cond_b

    .line 125
    or-int/lit8 v0, v0, 0x4

    .line 128
    :cond_b
    invoke-static {}, Lcom/facebook/common/dextricks/DexLibLoader;->shouldSynchronouslyGenerateOatFiles()Z

    move-result v4

    if-eqz v4, :cond_d

    .line 133
    const-string v4, "disabling background optimization"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v4, v6}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    and-int/lit8 v0, v0, -0x5

    .line 135
    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v6, 0x1a

    if-lt v4, v6, :cond_c

    invoke-virtual {v3}, Lcom/facebook/common/dextricks/DexStore;->readConfig()Lcom/facebook/common/dextricks/DexStore$Config;

    move-result-object v4

    iget-boolean v4, v4, Lcom/facebook/common/dextricks/DexStore$Config;->enableOatmeal:Z

    if-eqz v4, :cond_f

    .line 136
    :cond_c
    and-int/lit8 v0, v0, -0x2

    .line 141
    :goto_6
    or-int/lit8 v0, v0, 0x8

    .line 144
    :cond_d
    invoke-virtual {v3, v0, p2, p0}, Lcom/facebook/common/dextricks/DexStore;->loadAll(ILcom/facebook/base/lwperf/LightweightPerfEventsTracer;Landroid/content/Context;)Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

    move-result-object v0

    .line 145
    iget v3, v0, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;->loadResult:I

    and-int/lit8 v3, v3, 0x8

    if-eqz v3, :cond_11

    .line 146
    invoke-static {}, Lcom/facebook/common/envflags/EnvFlags;->inCtScanOptMode()Z

    move-result v3

    if-eqz v3, :cond_10

    .line 147
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "In ct-scan mode, but not running optimized code. Out of disk space? Bad config? Load result: 0x"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget v0, v0, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;->loadResult:I

    .line 150
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    .line 104
    :catch_4
    move-exception v0

    :try_start_a
    throw v0
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    .line 161
    :catchall_2
    move-exception v1

    move-object v11, v1

    move-object v1, v0

    move-object v0, v11

    :goto_7
    if-eqz v8, :cond_e

    if-eqz v1, :cond_16

    :try_start_b
    invoke-virtual {v8}, Lcom/facebook/common/dextricks/ResProvider;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_7
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    :cond_e
    :goto_8
    :try_start_c
    throw v0
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 139
    :cond_f
    or-int/lit8 v0, v0, 0x1

    goto :goto_6

    .line 152
    :cond_10
    :try_start_d
    const-string v3, "running deoptimized code"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 153
    const/4 v3, 0x1

    sput-boolean v3, Lcom/facebook/common/dextricks/DexLibLoader;->deoptTaint:Z
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_4
    .catchall {:try_start_d .. :try_end_d} :catchall_3

    .line 161
    :cond_11
    :goto_9
    if-eqz v8, :cond_12

    if-eqz v1, :cond_14

    :try_start_e
    invoke-virtual {v8}, Lcom/facebook/common/dextricks/ResProvider;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_6
    .catchall {:try_start_e .. :try_end_e} :catchall_1

    .line 162
    :cond_12
    :goto_a
    if-eqz v5, :cond_2

    if-eqz v2, :cond_15

    :try_start_f
    invoke-virtual {v5}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_5

    goto/16 :goto_3

    :catch_5
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_3

    .line 156
    :cond_13
    :try_start_10
    const-string v0, "skipping actual loadAll as requested"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_4
    .catchall {:try_start_10 .. :try_end_10} :catchall_3

    .line 157
    const/4 v0, 0x0

    goto :goto_9

    .line 161
    :catch_6
    move-exception v3

    :try_start_11
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_14
    invoke-virtual {v8}, Lcom/facebook/common/dextricks/ResProvider;->close()V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_2
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    goto :goto_a

    .line 162
    :cond_15
    invoke-virtual {v5}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V

    goto/16 :goto_3

    .line 161
    :catch_7
    move-exception v3

    :try_start_12
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_16
    invoke-virtual {v8}, Lcom/facebook/common/dextricks/ResProvider;->close()V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_2
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    goto :goto_8

    .line 162
    :catch_8
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :cond_17
    invoke-virtual {v5}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V

    goto/16 :goto_5

    .line 161
    :catchall_3
    move-exception v0

    goto :goto_7
.end method

.method static obtainResProvider(Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;Landroid/content/Context;Z)Lcom/facebook/common/dextricks/ResProvider;
    .locals 5

    .prologue
    .line 306
    const-string v0, "DLL2_obtain_res_provider"

    const v1, 0x880002

    .line 307
    invoke-virtual {p0, v0, v1}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->start(Ljava/lang/String;I)Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;

    move-result-object v2

    .line 306
    const/4 v1, 0x0

    .line 310
    :try_start_0
    invoke-static {p1, p2}, Lcom/facebook/common/dextricks/DexLibLoader;->obtainResProviderInternal(Landroid/content/Context;Z)Lcom/facebook/common/dextricks/ResProvider;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v0

    .line 314
    if-eqz v2, :cond_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v2}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    :cond_0
    :goto_0
    return-object v0

    :catch_0
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V

    goto :goto_0

    .line 311
    :catch_1
    move-exception v0

    .line 312
    :try_start_2
    new-instance v3, Ljava/lang/RuntimeException;

    invoke-direct {v3, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 306
    :catch_2
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 314
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v2}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3

    :cond_2
    :goto_2
    throw v0

    :catch_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private static obtainResProviderInternal(Landroid/content/Context;Z)Lcom/facebook/common/dextricks/ResProvider;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x0

    .line 332
    new-instance v0, Lcom/facebook/common/dextricks/DexLibLoader$ApkResProvider;

    invoke-direct {v0, p0, v1}, Lcom/facebook/common/dextricks/DexLibLoader$ApkResProvider;-><init>(Landroid/content/Context;Lcom/facebook/common/dextricks/DexLibLoader$1;)V

    .line 334
    :try_start_0
    const-string v2, "metadata.txt"

    invoke-virtual {v0, v2}, Lcom/facebook/common/dextricks/ResProvider;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 354
    :goto_0
    return-object v0

    .line 338
    :catch_0
    move-exception v0

    .line 342
    :goto_1
    if-eqz p1, :cond_0

    .line 343
    new-instance v0, Lcom/facebook/common/dextricks/DexLibLoader$ExoPackageResProvider;

    invoke-direct {v0, p0}, Lcom/facebook/common/dextricks/DexLibLoader$ExoPackageResProvider;-><init>(Landroid/content/Context;)V

    .line 345
    :try_start_1
    const-string v2, "metadata.txt"

    invoke-virtual {v0, v2}, Lcom/facebook/common/dextricks/ResProvider;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 346
    const-string v2, "using exopackage"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 348
    :catch_1
    move-exception v0

    .line 349
    const-string v2, "using exo res provider failed"

    new-array v3, v4, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_0
    move-object v0, v1

    .line 354
    goto :goto_0

    .line 336
    :catch_2
    move-exception v0

    goto :goto_1
.end method

.method private static setupMainDexStoreConfigForInstrumentationTests(Landroid/content/Context;Lcom/facebook/common/dextricks/DexStore$Config;)V
    .locals 3
    .param p1    # Lcom/facebook/common/dextricks/DexStore$Config;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 376
    invoke-static {p0}, Lcom/facebook/common/dextricks/DexLibLoader;->getMainDexStoreLocation(Landroid/content/Context;)Ljava/io/File;

    move-result-object v0

    .line 377
    invoke-static {v0}, Lcom/facebook/common/dextricks/Fs;->deleteRecursive(Ljava/io/File;)V

    .line 378
    invoke-static {v0}, Lcom/facebook/common/dextricks/Fs;->mkdirOrThrow(Ljava/io/File;)V

    .line 379
    if-eqz p1, :cond_0

    .line 380
    new-instance v1, Ljava/io/File;

    const-string v2, "config"

    invoke-direct {v1, v0, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/facebook/common/dextricks/DexStore$Config;->writeAndSync(Ljava/io/File;)V

    .line 382
    :cond_0
    return-void
.end method

.method private static shouldSynchronouslyGenerateOatFiles()Z
    .locals 2

    .prologue
    .line 194
    invoke-static {}, Lcom/facebook/common/envflags/EnvFlags;->inCtScanOptMode()Z

    move-result v0

    if-nez v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-ge v0, v1, :cond_0

    .line 197
    invoke-static {}, Lcom/facebook/common/envflags/EnvFlags;->forceGenerateOmniOat()Z

    move-result v0

    if-nez v0, :cond_0

    sget-boolean v0, Lcom/facebook/common/dextricks/DalvikConstants;->FB_REDEX_VERIFY_NONE_ENABLED:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static verifyCanaryClasses()Ljava/lang/RuntimeException;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 266
    :try_start_0
    invoke-static {}, Lcom/facebook/common/dextricks/DexStore;->dexStoreListHead()Lcom/facebook/common/dextricks/DexStore;

    move-result-object v0

    move-object v1, v0

    .line 267
    :goto_0
    if-eqz v1, :cond_1

    .line 269
    invoke-virtual {v1}, Lcom/facebook/common/dextricks/DexStore;->getLoadedManifest()Lcom/facebook/common/dextricks/DexManifest;

    move-result-object v2

    .line 270
    if-eqz v2, :cond_0

    .line 271
    const/4 v0, 0x0

    :goto_1
    iget-object v3, v2, Lcom/facebook/common/dextricks/DexManifest;->dexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 272
    iget-object v3, v2, Lcom/facebook/common/dextricks/DexManifest;->dexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/facebook/common/dextricks/DexManifest$Dex;->canaryClass:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 271
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 268
    :cond_0
    iget-object v0, v1, Lcom/facebook/common/dextricks/DexStore;->next:Lcom/facebook/common/dextricks/DexStore;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_0

    .line 276
    :cond_1
    const/4 v0, 0x0

    .line 278
    :goto_2
    return-object v0

    .line 277
    :catch_0
    move-exception v0

    .line 278
    invoke-static {v0}, Lcom/facebook/common/dextricks/Fs;->runtimeExFrom(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    goto :goto_2
.end method
