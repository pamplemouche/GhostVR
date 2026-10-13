.class public final Lcom/facebook/common/dextricks/DexStore;
.super Ljava/lang/Object;
.source "DexStore.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/dextricks/DexStore$OptimizationLog;,
        Lcom/facebook/common/dextricks/DexStore$RecoverableDexException;,
        Lcom/facebook/common/dextricks/DexStore$OptimizationSession;,
        Lcom/facebook/common/dextricks/DexStore$Config;,
        Lcom/facebook/common/dextricks/DexStore$OptimizationCanceledException;,
        Lcom/facebook/common/dextricks/DexStore$FinishRegenerationThread;,
        Lcom/facebook/common/dextricks/DexStore$TmpDir;,
        Lcom/facebook/common/dextricks/DexStore$ExternalProcessProgressListener;,
        Lcom/facebook/common/dextricks/DexStore$ProgressListener;
    }
.end annotation


# static fields
.field private static final CONFIG_FILENAME:Ljava/lang/String; = "config"

.field private static final CONFIG_TMP_FILENAME:Ljava/lang/String; = "config.tmp"

.field static final CS_DEX0OPT:J = 0x10L

.field static final CS_STATE_MASK:J = 0xfL

.field static final CS_STATE_SHIFT:B = 0x4t

.field public static final DEFAULT_PGO_COMPILER_FILTER:B = 0x0t

.field private static final DEPS_FILENAME:Ljava/lang/String; = "deps"

.field public static final DS_ASYNC:I = 0x4

.field public static final DS_DO_NOT_OPTIMIZE:I = 0x1

.field public static final DS_FORCE_SYNC:I = 0x8

.field public static final DS_HENOSIS:I = 0x20

.field public static final DS_LOAD_SECONDARY:I = 0x10

.field public static final DS_NO_RETRY:I = 0x2

.field private static final LA_LOAD_EXISTING:I = 0x0

.field private static final LA_REGEN_ALL:I = 0x2

.field private static final LA_REGEN_MISSING:I = 0x1

.field public static final LOAD_RESULT_CREATED_BY_OATMEAL:I = 0x80

.field public static final LOAD_RESULT_DEX2OAT_CLASSPATH_SET:I = 0x4000

.field public static final LOAD_RESULT_DEX2OAT_QUICKENED:I = 0x200

.field public static final LOAD_RESULT_DEX2OAT_QUICKEN_ATTEMPTED:I = 0x1000

.field public static final LOAD_RESULT_MIXED_MODE:I = 0x400

.field public static final LOAD_RESULT_MIXED_MODE_ATTEMPTED:I = 0x2000

.field public static final LOAD_RESULT_NEED_OPTIMIZATION:I = 0x2

.field public static final LOAD_RESULT_NOT_OPTIMIZED:I = 0x8

.field public static final LOAD_RESULT_OATMEAL_QUICKENED:I = 0x100

.field public static final LOAD_RESULT_OATMEAL_QUICKEN_ATTEMPTED:I = 0x800

.field public static final LOAD_RESULT_OPTIMIZATION_IS_CRAZY_EXPENSIVE:I = 0x4

.field public static final LOAD_RESULT_PGO:I = 0x8000

.field public static final LOAD_RESULT_PGO_ATTEMPTED:I = 0x10000

.field public static final LOAD_RESULT_RECOVERED_FROM_BAD_GEN:I = 0x40

.field public static final LOAD_RESULT_RECOVERED_FROM_CORRUPTION:I = 0x10

.field public static final LOAD_RESULT_REGENERATED:I = 0x1

.field public static final LOAD_RESULT_REGEN_FORCED:I = 0x20

.field static final MAIN_DEX_STORE_ID:Ljava/lang/String; = "dex"

.field private static final MDEX_DIRECTORY:Ljava/lang/String; = "mdex"

.field private static final MDEX_LOCK_FILENAME:Ljava/lang/String; = "mdex_lock"

.field private static final MDEX_STATUS_FILENAME:Ljava/lang/String; = "mdex_status2"

.field private static final MDEX_STATUS_XOR:J = -0x5314ff805314ff9L

.field private static final MS_IN_NS:I = 0xf4240

.field private static final ODEX_LOCK_FILENAME:Ljava/lang/String; = "odex_lock"

.field private static final OPTIMIZATION_LOG_FILENAME:Ljava/lang/String; = "optimization_log"

.field public static final OREO_OR_NEWER:Z

.field public static final PGO_COMPILER_FILTER_EVERYTHING_PROFILE:B = 0x2t

.field public static final PGO_COMPILER_FILTER_SPACE_PROFILE:B = 0x1t

.field public static final PGO_COMPILER_FILTER_SPEED_PROFILE:B = 0x0t

.field public static final PGO_COMPILER_FILTER_VERIFY_PROFILE:B = 0x3t

.field private static final REGEN_STAMP_FILENAME:Ljava/lang/String; = "regen_stamp"

.field public static final SECONDARY_DEX_MANIFEST:Ljava/lang/String; = "metadata.txt"

.field private static final SECONDARY_XZS_FILENAME:Ljava/lang/String; = "secondary.dex.jar.xzs"

.field private static final STATE_ART_TURBO:B = 0x7t

.field private static final STATE_ART_XDEX:B = 0x8t

.field private static final STATE_BAD_GEN:B = 0x5t

.field private static final STATE_FALLBACK:B = 0x2t

.field private static final STATE_INVALID:B = 0x0t

.field private static final STATE_NOOP:B = 0x9t

.field private static final STATE_REGEN_FORCED:B = 0x6t

.field private static final STATE_RESERVED1:B = 0xat

.field private static final STATE_TURBO:B = 0x4t

.field private static final STATE_TX_FAILED:B = 0x1t

.field private static final STATE_XDEX:B = 0x3t

.field private static final TMPDIR_LOCK_SUFFIX:Ljava/lang/String; = ".tmpdir_lock"

.field private static final TMPDIR_SUFFIX:Ljava/lang/String; = ".tmpdir"

.field private static final XZS_EXTENSION:Ljava/lang/String; = ".dex.jar.xzs"

.field public static logDexAddPageFaults:Z

.field public static majPageFaultsDelta:J

.field public static pageInBytesDelta:J

.field private static sAttemptedCrossDexHookInstallation:Z

.field private static sCrossDexHookInstallationError:Ljava/lang/Throwable;

.field private static sListHead:Lcom/facebook/common/dextricks/DexStore;

.field private static sLoadedViaHenosis:Z

.field private static sMergedDexConfig:Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;


# instance fields
.field private final auxiliaryDexes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ldalvik/system/DexFile;",
            ">;"
        }
    .end annotation
.end field

.field private id:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mApk:Ljava/io/File;

.field private final mChildStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/common/dextricks/DexStore;",
            ">;"
        }
    .end annotation
.end field

.field private mLastDeri:Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

.field private mLoadedManifest:Lcom/facebook/common/dextricks/DexManifest;

.field private final mLockFile:Lcom/facebook/common/dextricks/ReentrantLockFile;

.field private mManifest:Lcom/facebook/common/dextricks/DexManifest;

.field private final mParentStores:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/common/dextricks/DexStore;",
            ">;"
        }
    .end annotation
.end field

.field mResProvider:Lcom/facebook/common/dextricks/ResProvider;

.field public final next:Lcom/facebook/common/dextricks/DexStore;

.field private final primaryDexes:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ldalvik/system/DexFile;",
            ">;"
        }
    .end annotation
.end field

.field public final root:Ljava/io/File;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 300
    sput-boolean v1, Lcom/facebook/common/dextricks/DexStore;->sLoadedViaHenosis:Z

    .line 316
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1a

    if-lt v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Lcom/facebook/common/dextricks/DexStore;->OREO_OR_NEWER:Z

    .line 320
    sput-boolean v1, Lcom/facebook/common/dextricks/DexStore;->logDexAddPageFaults:Z

    return-void

    :cond_0
    move v0, v1

    .line 316
    goto :goto_0
.end method

.method private constructor <init>(Ljava/io/File;Ljava/io/File;Lcom/facebook/common/dextricks/ResProvider;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Lcom/facebook/common/dextricks/ResProvider;",
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

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 345
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mParentStores:Ljava/util/List;

    .line 312
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mChildStores:Ljava/util/List;

    .line 346
    sget-object v0, Lcom/facebook/common/dextricks/DexStore;->sListHead:Lcom/facebook/common/dextricks/DexStore;

    iput-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->next:Lcom/facebook/common/dextricks/DexStore;

    .line 347
    iput-object p2, p0, Lcom/facebook/common/dextricks/DexStore;->mApk:Ljava/io/File;

    .line 348
    iput-object p1, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    .line 349
    invoke-static {p1}, Lcom/facebook/common/dextricks/Fs;->mkdirOrThrow(Ljava/io/File;)V

    .line 350
    new-instance v0, Ljava/io/File;

    const-string v1, "mdex_lock"

    invoke-direct {v0, p1, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/common/dextricks/ReentrantLockFile;->open(Ljava/io/File;)Lcom/facebook/common/dextricks/ReentrantLockFile;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mLockFile:Lcom/facebook/common/dextricks/ReentrantLockFile;

    .line 351
    iput-object p3, p0, Lcom/facebook/common/dextricks/DexStore;->mResProvider:Lcom/facebook/common/dextricks/ResProvider;

    .line 352
    iput-object p4, p0, Lcom/facebook/common/dextricks/DexStore;->primaryDexes:Ljava/util/ArrayList;

    .line 353
    iput-object p5, p0, Lcom/facebook/common/dextricks/DexStore;->auxiliaryDexes:Ljava/util/ArrayList;

    .line 354
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/common/dextricks/DexStore;)Lcom/facebook/common/dextricks/ReentrantLockFile;
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mLockFile:Lcom/facebook/common/dextricks/ReentrantLockFile;

    return-object v0
.end method

.method static synthetic access$300(Lcom/facebook/common/dextricks/DexStore;)J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-direct {p0}, Lcom/facebook/common/dextricks/DexStore;->readStatusLocked()J

    move-result-wide v0

    return-wide v0
.end method

.method static synthetic access$400(Lcom/facebook/common/dextricks/DexStore;J)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 164
    invoke-direct {p0, p1, p2}, Lcom/facebook/common/dextricks/DexStore;->writeTxFailedStatusLocked(J)V

    return-void
.end method

.method private adjustDesiredStateForConfig(BLcom/facebook/common/dextricks/DexStore$Config;)B
    .locals 5

    .prologue
    const/4 v1, 0x3

    const/4 v0, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 1260
    iget-byte v2, p2, Lcom/facebook/common/dextricks/DexStore$Config;->mode:B

    if-nez v2, :cond_0

    .line 1316
    :goto_0
    return p1

    .line 1262
    :cond_0
    iget-byte v2, p2, Lcom/facebook/common/dextricks/DexStore$Config;->mode:B

    if-ne v2, v4, :cond_1

    .line 1263
    const-string v1, "using fallback mode due to request in config file"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move p1, v0

    .line 1264
    goto :goto_0

    .line 1265
    :cond_1
    iget-byte v2, p2, Lcom/facebook/common/dextricks/DexStore$Config;->mode:B

    if-ne v2, v0, :cond_2

    .line 1266
    packed-switch p1, :pswitch_data_0

    .line 1286
    :pswitch_0
    const-string v0, "ignoring configured turbo mode: state not whitelisted: %s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1268
    :pswitch_1
    const-string v0, "ignoring configured turbo mode: no dex loading to do"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1271
    :pswitch_2
    const-string v0, "ignoring configured turbo mode: already forced to fallback mode"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1275
    :pswitch_3
    const-string v0, "config file wants turbo mode: already using it"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1278
    :pswitch_4
    const-string v0, "using ART turbo as requested in config file"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1279
    const/4 p1, 0x7

    .line 1280
    goto :goto_0

    .line 1282
    :pswitch_5
    const-string v0, "using Dalvik turbo as requested in config file"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1283
    const/4 p1, 0x4

    .line 1284
    goto :goto_0

    .line 1289
    :cond_2
    iget-byte v0, p2, Lcom/facebook/common/dextricks/DexStore$Config;->mode:B

    if-ne v0, v1, :cond_3

    .line 1290
    packed-switch p1, :pswitch_data_1

    .line 1310
    :pswitch_6
    const-string v0, "ignoring configured xdex mode: state not whitelisted: %s"

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1292
    :pswitch_7
    const-string v0, "ignoring configured xdex mode: no dex loading to do"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1295
    :pswitch_8
    const-string v0, "ignoring configured xdex mode: already forced to fallback"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1299
    :pswitch_9
    const-string v0, "config file wants xdex mode: already using it"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1302
    :pswitch_a
    const-string v0, "using ART xdex as requested in config file"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1303
    const/16 p1, 0x8

    .line 1304
    goto/16 :goto_0

    .line 1306
    :pswitch_b
    const-string v0, "using Dalvik xdex as requested in config"

    new-array v2, v3, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move p1, v1

    .line 1308
    goto/16 :goto_0

    .line 1314
    :cond_3
    const-string v0, "ignoring unknown configured dex mode %s"

    new-array v1, v4, [Ljava/lang/Object;

    iget-byte v2, p2, Lcom/facebook/common/dextricks/DexStore$Config;->mode:B

    invoke-static {v2}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v2

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 1266
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_5
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_1
    .end packed-switch

    .line 1290
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_8
        :pswitch_9
        :pswitch_b
        :pswitch_6
        :pswitch_6
        :pswitch_a
        :pswitch_9
        :pswitch_7
    .end packed-switch
.end method

.method private assertLockHeld()V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 2334
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mLockFile:Lcom/facebook/common/dextricks/ReentrantLockFile;

    invoke-virtual {v0}, Lcom/facebook/common/dextricks/ReentrantLockFile;->getExclusiveOwner()Ljava/lang/Thread;

    move-result-object v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    if-ne v0, v2, :cond_0

    const/4 v0, 0x1

    :goto_0
    const-string v2, "lock req"

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v1}, Lcom/facebook/common/dextricks/Mlog;->assertThat(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 2336
    return-void

    :cond_0
    move v0, v1

    .line 2334
    goto :goto_0
.end method

.method private static checkAndClearGk(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1321
    :try_start_0
    invoke-static {p0, p1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->checkIfGkEnabled(Landroid/content/Context;Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    .line 1323
    invoke-static {p0, p1, v1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->updateGKFlagFile(Landroid/content/Context;Ljava/lang/String;Z)V

    return v0

    :catchall_0
    move-exception v0

    invoke-static {p0, p1, v1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->updateGKFlagFile(Landroid/content/Context;Ljava/lang/String;Z)V

    throw v0
.end method

.method private checkAnyOptimizerRunningCurrently()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 1213
    new-instance v1, Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    const-string v3, "odex_lock"

    invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1216
    :try_start_0
    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1217
    invoke-static {v1}, Lcom/facebook/common/dextricks/ReentrantLockFile;->open(Ljava/io/File;)Lcom/facebook/common/dextricks/ReentrantLockFile;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    const/4 v2, 0x0

    .line 1218
    const/4 v1, 0x0

    :try_start_1
    invoke-virtual {v3, v1}, Lcom/facebook/common/dextricks/ReentrantLockFile;->tryAcquire(I)Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v1

    .line 1219
    if-nez v1, :cond_1

    .line 1220
    const/4 v0, 0x1

    .line 1224
    :goto_0
    if-eqz v3, :cond_0

    if-eqz v2, :cond_3

    :try_start_2
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/ReentrantLockFile;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    .line 1229
    :cond_0
    :goto_1
    return v0

    .line 1222
    :cond_1
    :try_start_3
    invoke-static {v1}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_0

    .line 1217
    :catch_0
    move-exception v1

    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1224
    :catchall_0
    move-exception v2

    move-object v4, v2

    move-object v2, v1

    move-object v1, v4

    :goto_2
    if-eqz v3, :cond_2

    if-eqz v2, :cond_4

    :try_start_5
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/ReentrantLockFile;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1

    :cond_2
    :goto_3
    :try_start_6
    throw v1

    .line 1226
    :catch_1
    move-exception v1

    goto :goto_1

    .line 1224
    :catch_2
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/ReentrantLockFile;->close()V

    goto :goto_1

    :catch_3
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_4
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/ReentrantLockFile;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_3

    :catchall_1
    move-exception v1

    goto :goto_2
.end method

.method private checkDeps()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1819
    invoke-direct {p0}, Lcom/facebook/common/dextricks/DexStore;->readCurrentDepBlock()[B

    move-result-object v0

    .line 1820
    invoke-direct {p0}, Lcom/facebook/common/dextricks/DexStore;->readSavedDepBlock()[B

    move-result-object v1

    .line 1821
    if-eqz v1, :cond_0

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private checkDirty(Lcom/facebook/common/dextricks/OdexScheme;[Ljava/lang/String;)I
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x2

    const/4 v6, 0x1

    const/4 v3, 0x0

    .line 1673
    iget-object v7, p1, Lcom/facebook/common/dextricks/OdexScheme;->expectedFiles:[Ljava/lang/String;

    .line 1674
    iget v0, p1, Lcom/facebook/common/dextricks/OdexScheme;->flags:I

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_7

    move v1, v2

    .line 1678
    :goto_0
    invoke-virtual {p2}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1679
    invoke-direct {p0, v0, v7}, Lcom/facebook/common/dextricks/DexStore;->setDifference([Ljava/lang/String;[Ljava/lang/String;)V

    move v4, v3

    move v5, v3

    .line 1682
    :goto_1
    array-length v8, v0

    if-ge v4, v8, :cond_1

    .line 1683
    aget-object v8, v0, v4

    if-eqz v8, :cond_0

    .line 1684
    const-string v5, "deleting unknown file %s in dex store %s with schema %s"

    const/4 v8, 0x3

    new-array v8, v8, [Ljava/lang/Object;

    aget-object v9, v0, v4

    aput-object v9, v8, v3

    iget-object v9, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    aput-object v9, v8, v6

    .line 1686
    invoke-virtual {p1}, Lcom/facebook/common/dextricks/OdexScheme;->toString()Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v2

    .line 1684
    invoke-static {v5, v8}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1687
    new-instance v5, Ljava/io/File;

    iget-object v8, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    aget-object v9, v0, v4

    invoke-direct {v5, v8, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/facebook/common/dextricks/Fs;->deleteRecursive(Ljava/io/File;)V

    move v5, v6

    .line 1682
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1692
    :cond_1
    if-eqz v5, :cond_2

    iget v0, p1, Lcom/facebook/common/dextricks/OdexScheme;->flags:I

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_2

    .line 1693
    const-string v0, "dex store %s had excess files and is non-incremental: regenerating"

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 1697
    :cond_2
    invoke-direct {p0}, Lcom/facebook/common/dextricks/DexStore;->checkDeps()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1698
    const-string v0, "dex store %s dependencies have changed: regenerating all"

    new-array v1, v6, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    aput-object v4, v1, v3

    invoke-static {v0, v1}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move v1, v2

    .line 1702
    :cond_3
    if-ge v1, v6, :cond_5

    .line 1703
    invoke-virtual {v7}, [Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 1704
    invoke-direct {p0, v0, p2}, Lcom/facebook/common/dextricks/DexStore;->setDifference([Ljava/lang/String;[Ljava/lang/String;)V

    move v4, v1

    move v1, v3

    .line 1705
    :goto_2
    array-length v5, v0

    if-ge v1, v5, :cond_6

    .line 1706
    aget-object v5, v0, v1

    if-eqz v5, :cond_4

    .line 1707
    const-string v4, "missing file %s in dex store %s"

    new-array v5, v2, [Ljava/lang/Object;

    aget-object v7, v0, v1

    aput-object v7, v5, v3

    iget-object v7, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move v4, v6

    .line 1705
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_5
    move v4, v1

    .line 1713
    :cond_6
    return v4

    :cond_7
    move v1, v3

    goto/16 :goto_0
.end method

.method private static checkGk(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 1328
    invoke-static {p0, p1}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->checkIfGkEnabled(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private deleteFiles([Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 1660
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_1

    .line 1661
    aget-object v2, p1, v0

    if-eqz v2, :cond_0

    .line 1663
    const-string v2, "deleting existing file %s/%s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    aput-object v4, v3, v1

    const/4 v4, 0x1

    aget-object v5, p1, v0

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1665
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    aget-object v4, p1, v0

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/facebook/common/dextricks/Fs;->deleteRecursive(Ljava/io/File;)V

    .line 1660
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1668
    :cond_1
    return-void
.end method

.method private determineDesiredState(BLcom/facebook/common/dextricks/DexManifest;)B
    .locals 5

    .prologue
    const/16 v0, 0x9

    const/4 v1, 0x2

    const/4 v4, 0x0

    .line 1579
    iget-object v2, p2, Lcom/facebook/common/dextricks/DexManifest;->dexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;

    array-length v2, v2

    if-nez v2, :cond_1

    .line 1580
    const-string v1, "no secondary dexes listed: using noop configuration"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v1, v2}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1605
    :cond_0
    :goto_0
    return v0

    .line 1584
    :cond_1
    const/4 v2, 0x5

    if-ne p1, v2, :cond_2

    .line 1585
    const-string v0, "recovering from bad class gen: using fallback"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 1586
    goto :goto_0

    .line 1589
    :cond_2
    const-string v2, "Amazon"

    sget-object v3, Landroid/os/Build;->BRAND:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    sget-boolean v2, Lcom/facebook/common/isart/IsArt;->yes:Z

    if-nez v2, :cond_3

    .line 1590
    const-string v0, "avoiding optimizations on non-standard VM"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 1591
    goto :goto_0

    .line 1594
    :cond_3
    sget-boolean v2, Lcom/facebook/common/isart/IsArt;->yes:Z

    if-eqz v2, :cond_5

    .line 1595
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-ge v2, v3, :cond_4

    .line 1596
    const-string v0, "avoiding optimizations on pre-L VM"

    new-array v2, v4, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 1597
    goto :goto_0

    .line 1599
    :cond_4
    invoke-static {p2}, Lcom/facebook/common/dextricks/DexStore;->usingNativeMultiDex(Lcom/facebook/common/dextricks/DexManifest;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1602
    const/16 v0, 0x8

    goto :goto_0

    .line 1605
    :cond_5
    const/4 v0, 0x3

    goto :goto_0
.end method

.method private static determineOdexCacheName(Ljava/io/File;)Ljava/io/File;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 1844
    sget-boolean v0, Lcom/facebook/common/isart/IsArt;->yes:Z

    if-eqz v0, :cond_1

    .line 1845
    const/4 v0, 0x0

    .line 1857
    :cond_0
    :goto_0
    return-object v0

    .line 1847
    :cond_1
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v1

    .line 1848
    const-string v0, ".apk"

    invoke-virtual {v1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1851
    new-instance v0, Ljava/io/File;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v3, 0x0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x4

    invoke-virtual {v1, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ".odex"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1852
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1857
    :cond_2
    invoke-static {}, Lcom/facebook/common/dextricks/Fs;->findSystemDalvikCache()Ljava/io/File;

    move-result-object v0

    const-string v1, "classes.dex"

    invoke-static {v0, p0, v1}, Lcom/facebook/common/dextricks/Fs;->dexOptGenerateCacheFileName(Ljava/io/File;Ljava/io/File;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_0
.end method

.method public static declared-synchronized dexStoreListHead()Lcom/facebook/common/dextricks/DexStore;
    .locals 2

    .prologue
    .line 402
    const-class v0, Lcom/facebook/common/dextricks/DexStore;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/facebook/common/dextricks/DexStore;->sListHead:Lcom/facebook/common/dextricks/DexStore;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private findInArray([Ljava/lang/String;Ljava/lang/String;)I
    .locals 2

    .prologue
    .line 1965
    const/4 v0, 0x0

    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 1966
    aget-object v1, p1, v0

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1970
    :goto_1
    return v0

    .line 1965
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1970
    :cond_1
    const/4 v0, -0x1

    goto :goto_1
.end method

.method public static declared-synchronized findOpened(Ljava/io/File;)Lcom/facebook/common/dextricks/DexStore;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 387
    const-class v1, Lcom/facebook/common/dextricks/DexStore;

    monitor-enter v1

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v2

    .line 388
    invoke-static {}, Lcom/facebook/common/dextricks/DexStore;->dexStoreListHead()Lcom/facebook/common/dextricks/DexStore;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 389
    iget-object v3, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    invoke-virtual {v3, v2}, Ljava/io/File;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v3

    if-eqz v3, :cond_0

    .line 393
    :goto_1
    monitor-exit v1

    return-object v0

    .line 388
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/facebook/common/dextricks/DexStore;->next:Lcom/facebook/common/dextricks/DexStore;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 393
    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    .line 387
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static getNonSecondaryDexHashes(Landroid/content/Context;)Ljava/lang/String;
    .locals 9

    .prologue
    .line 1495
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1496
    const-string v1, "secondary.dex01.Canary"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1497
    const-string v1, "secondary.dex02.Canary"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1499
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 1502
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const-string v3, "secondary-program-dex-jars/metadata.txt"

    invoke-virtual {v1, v3}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 1504
    :try_start_1
    new-instance v4, Ljava/io/BufferedReader;

    new-instance v1, Ljava/io/InputStreamReader;

    const-string v5, "UTF-8"

    invoke-direct {v1, v3, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-direct {v4, v1}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/4 v1, 0x0

    .line 1507
    :cond_0
    :goto_0
    :try_start_2
    invoke-virtual {v4}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_3

    .line 1508
    const-string v6, "."

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1512
    const-string v6, " "

    invoke-virtual {v5, v6}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 1513
    array-length v6, v5

    const/4 v7, 0x3

    if-ne v6, v7, :cond_0

    .line 1518
    const/4 v6, 0x2

    aget-object v6, v5, v6

    .line 1519
    const/4 v7, 0x1

    aget-object v5, v5, v7

    .line 1521
    invoke-interface {v0, v6}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 1522
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v6

    if-eqz v6, :cond_1

    .line 1523
    const-string v6, ","

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1525
    :cond_1
    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".dex"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    goto :goto_0

    .line 1504
    :catch_0
    move-exception v0

    :try_start_3
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1530
    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_1
    if-eqz v4, :cond_2

    if-eqz v1, :cond_6

    :try_start_4
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_3
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    :cond_2
    :goto_2
    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 1531
    :catchall_1
    move-exception v0

    :try_start_6
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V

    throw v0
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1

    .line 1534
    :catch_1
    move-exception v0

    .line 1535
    const-string v0, ""

    :goto_3
    return-object v0

    .line 1529
    :cond_3
    :try_start_7
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    move-result-object v0

    .line 1530
    if-eqz v4, :cond_4

    if-eqz v1, :cond_5

    :try_start_8
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_2
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 1531
    :cond_4
    :goto_4
    :try_start_9
    invoke-virtual {v3}, Ljava/io/InputStream;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_1

    goto :goto_3

    .line 1530
    :catch_2
    move-exception v2

    :try_start_a
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_5
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V

    goto :goto_4

    :catch_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v4}, Ljava/io/BufferedReader;->close()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_1
.end method

.method private getParents()[Lcom/facebook/common/dextricks/DexStore;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 406
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/DexStore;->loadManifest()Lcom/facebook/common/dextricks/DexManifest;

    .line 408
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mParentStores:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "dex"

    iget-object v2, p0, Lcom/facebook/common/dextricks/DexStore;->mManifest:Lcom/facebook/common/dextricks/DexManifest;

    iget-object v2, v2, Lcom/facebook/common/dextricks/DexManifest;->id:Ljava/lang/String;

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 409
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mManifest:Lcom/facebook/common/dextricks/DexManifest;

    iget-object v3, v0, Lcom/facebook/common/dextricks/DexManifest;->requires:[Ljava/lang/String;

    array-length v4, v3

    move v2, v1

    :goto_0
    if-ge v2, v4, :cond_3

    aget-object v5, v3, v2

    .line 410
    const-string v0, "dex"

    invoke-virtual {v5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 409
    :cond_0
    :goto_1
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 414
    :cond_1
    invoke-static {}, Lcom/facebook/common/dextricks/DexStore;->dexStoreListHead()Lcom/facebook/common/dextricks/DexStore;

    move-result-object v0

    :goto_2
    if-eqz v0, :cond_4

    .line 415
    iget-object v6, v0, Lcom/facebook/common/dextricks/DexStore;->id:Ljava/lang/String;

    if-eqz v6, :cond_2

    iget-object v6, v0, Lcom/facebook/common/dextricks/DexStore;->id:Ljava/lang/String;

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 416
    iget-object v6, p0, Lcom/facebook/common/dextricks/DexStore;->mParentStores:Ljava/util/List;

    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 417
    invoke-virtual {v0, p0}, Lcom/facebook/common/dextricks/DexStore;->addChild(Lcom/facebook/common/dextricks/DexStore;)V

    .line 418
    const/4 v0, 0x1

    .line 422
    :goto_3
    if-nez v0, :cond_0

    .line 425
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unable to find required store "

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, " of store "

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v5, p0, Lcom/facebook/common/dextricks/DexStore;->mManifest:Lcom/facebook/common/dextricks/DexManifest;

    iget-object v5, v5, Lcom/facebook/common/dextricks/DexManifest;->id:Ljava/lang/String;

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v0, v5}, Lcom/facebook/common/dextricks/Mlog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1

    .line 414
    :cond_2
    iget-object v0, v0, Lcom/facebook/common/dextricks/DexStore;->next:Lcom/facebook/common/dextricks/DexStore;

    goto :goto_2

    .line 430
    :cond_3
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mParentStores:Ljava/util/List;

    iget-object v1, p0, Lcom/facebook/common/dextricks/DexStore;->mParentStores:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lcom/facebook/common/dextricks/DexStore;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/facebook/common/dextricks/DexStore;

    return-object v0

    :cond_4
    move v0, v1

    goto :goto_3
.end method

.method static getStatusDescription(J)Ljava/lang/String;
    .locals 4

    .prologue
    .line 2138
    const-wide/16 v0, 0xf

    and-long/2addr v0, p0

    long-to-int v0, v0

    .line 2139
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 2140
    packed-switch v0, :pswitch_data_0

    .line 2172
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "BAD STATE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 2175
    :goto_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 2142
    :pswitch_0
    const-string v0, "STATE_INVALID"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2145
    :pswitch_1
    const-string v0, "STATE_TX_FAILED"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2148
    :pswitch_2
    const-string v0, "STATE_FALLBACK"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2151
    :pswitch_3
    const-string v0, "STATE_XDEX"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2154
    :pswitch_4
    const-string v0, "STATE_TURBO"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2157
    :pswitch_5
    const-string v0, "STATE_BAD_GEN"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2160
    :pswitch_6
    const-string v0, "STATE_REGEN_FORCED"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2163
    :pswitch_7
    const-string v0, "STATE_ART_TURBO"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2166
    :pswitch_8
    const-string v0, "STATE_ART_XDEX"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2169
    :pswitch_9
    const-string v0, "STATE_NOOP"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 2140
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private static declared-synchronized installCrossDexHooks()V
    .locals 3

    .prologue
    .line 2263
    const-class v1, Lcom/facebook/common/dextricks/DexStore;

    monitor-enter v1

    :try_start_0
    sget-boolean v0, Lcom/facebook/common/dextricks/DexStore;->sAttemptedCrossDexHookInstallation:Z

    if-eqz v0, :cond_0

    .line 2264
    sget-object v0, Lcom/facebook/common/dextricks/DexStore;->sCrossDexHookInstallationError:Ljava/lang/Throwable;

    if-eqz v0, :cond_1

    .line 2265
    sget-object v0, Lcom/facebook/common/dextricks/DexStore;->sCrossDexHookInstallationError:Ljava/lang/Throwable;

    invoke-static {v0}, Lcom/facebook/common/dextricks/Fs;->runtimeExFrom(Ljava/lang/Throwable;)Ljava/lang/RuntimeException;

    move-result-object v0

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2263
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 2268
    :cond_0
    const/4 v0, 0x1

    :try_start_1
    sput-boolean v0, Lcom/facebook/common/dextricks/DexStore;->sAttemptedCrossDexHookInstallation:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2270
    :try_start_2
    invoke-static {}, Lcom/facebook/common/dextricks/DalvikInternals;->fixDvmForCrossDexHack()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2275
    :try_start_3
    const-string v0, "cross-dex hook installation succeeded"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/facebook/common/dextricks/Mlog;->d(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 2277
    :cond_1
    monitor-exit v1

    return-void

    .line 2271
    :catch_0
    move-exception v0

    .line 2272
    :try_start_4
    sput-object v0, Lcom/facebook/common/dextricks/DexStore;->sCrossDexHookInstallationError:Ljava/lang/Throwable;

    .line 2273
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
.end method

.method private listAndPruneRootFiles()[Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 595
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v1

    .line 596
    if-nez v1, :cond_0

    .line 597
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to list directory "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 601
    :cond_0
    const/4 v0, 0x0

    :goto_0
    array-length v2, v1

    if-ge v0, v2, :cond_4

    .line 602
    aget-object v2, v1, v0

    .line 603
    const-string v3, "mdex_lock"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "mdex_status2"

    .line 604
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "odex_lock"

    .line 605
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "deps"

    .line 606
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "regen_stamp"

    .line 607
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "optimization_log"

    .line 608
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "config"

    .line 609
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "classmap.bin"

    .line 610
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "classmap.bin.hf"

    .line 611
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 612
    :cond_1
    aput-object v5, v1, v0

    .line 615
    :cond_2
    const-string v3, "config.tmp"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 616
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    invoke-direct {v3, v4, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v3}, Lcom/facebook/common/dextricks/Fs;->deleteRecursive(Ljava/io/File;)V

    .line 617
    aput-object v5, v1, v0

    .line 601
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 620
    :cond_4
    invoke-direct {p0, v1}, Lcom/facebook/common/dextricks/DexStore;->pruneTemporaryDirectoriesLocked([Ljava/lang/String;)V

    .line 621
    return-object v1
.end method

.method private loadAllImpl(ILcom/facebook/base/lwperf/LightweightPerfEventsTracer;Landroid/content/Context;)Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;
    .locals 23
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/facebook/common/dextricks/DexStore$RecoverableDexException;
        }
    .end annotation

    .prologue
    .line 627
    new-instance v5, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

    invoke-direct {v5}, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;-><init>()V

    .line 629
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/common/dextricks/DexStore;->isLoaded()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 630
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/common/dextricks/DexStore;->mLastDeri:Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

    if-nez v4, :cond_0

    .line 631
    const-string v4, "dex store %s has already been loaded, but did not save recovery info"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    aput-object v8, v6, v7

    invoke-static {v4, v6}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 632
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/facebook/common/dextricks/DexStore;->mLastDeri:Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

    .line 634
    :cond_0
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/common/dextricks/DexStore;->mLastDeri:Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

    .line 1009
    :cond_1
    :goto_0
    return-object v5

    .line 638
    :cond_2
    const-string v4, "DLL2_manifest_load"

    const v6, 0x880004

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v6}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->start(Ljava/lang/String;I)Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;

    move-result-object v8

    const/4 v7, 0x0

    .line 639
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/common/dextricks/DexStore;->loadManifest()Lcom/facebook/common/dextricks/DexManifest;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_d

    move-result-object v6

    .line 640
    if-eqz v8, :cond_3

    if-eqz v7, :cond_5

    :try_start_1
    invoke-virtual {v8}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 642
    :cond_3
    :goto_1
    invoke-direct/range {p0 .. p0}, Lcom/facebook/common/dextricks/DexStore;->getParents()[Lcom/facebook/common/dextricks/DexStore;

    move-result-object v7

    array-length v8, v7

    const/4 v4, 0x0

    :goto_2
    if-ge v4, v8, :cond_8

    aget-object v9, v7, v4

    .line 643
    invoke-virtual {v9}, Lcom/facebook/common/dextricks/DexStore;->isLoaded()Z

    move-result v10

    if-nez v10, :cond_4

    .line 644
    move/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    invoke-virtual {v9, v0, v1, v2}, Lcom/facebook/common/dextricks/DexStore;->loadAll(ILcom/facebook/base/lwperf/LightweightPerfEventsTracer;Landroid/content/Context;)Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

    move-result-object v10

    .line 646
    const-string v11, "parent dex store %s loaded with result: %x"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v9, v9, Lcom/facebook/common/dextricks/DexStore;->id:Ljava/lang/String;

    aput-object v9, v12, v13

    const/4 v9, 0x1

    iget v10, v10, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;->loadResult:I

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v12, v9

    invoke-static {v11, v12}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 642
    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 640
    :catch_0
    move-exception v4

    invoke-virtual {v7, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v8}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V

    goto :goto_1

    .line 638
    :catch_1
    move-exception v5

    :try_start_2
    throw v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 640
    :catchall_0
    move-exception v4

    :goto_3
    if-eqz v8, :cond_6

    if-eqz v5, :cond_7

    :try_start_3
    invoke-virtual {v8}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_6
    :goto_4
    throw v4

    :catch_2
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_7
    invoke-virtual {v8}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V

    goto :goto_4

    .line 651
    :cond_8
    const/16 v20, 0x0

    .line 653
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/common/dextricks/DexStore;->mLockFile:Lcom/facebook/common/dextricks/ReentrantLockFile;

    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Lcom/facebook/common/dextricks/ReentrantLockFile;->acquire(I)Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;

    move-result-object v17

    .line 657
    :try_start_4
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/common/dextricks/DexStore;->next:Lcom/facebook/common/dextricks/DexStore;

    if-nez v4, :cond_a

    .line 658
    invoke-static {v6}, Lcom/facebook/common/dextricks/DexStore;->usingNativeMultiDex(Lcom/facebook/common/dextricks/DexManifest;)Z

    move-result v4

    if-nez v4, :cond_9

    const/4 v4, 0x1

    .line 659
    :goto_5
    sget-boolean v7, Lcom/facebook/common/dextricks/DexStore;->OREO_OR_NEWER:Z

    if-eqz v7, :cond_b

    .line 660
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->isHenosisAllowed()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 661
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->isInternalBuild()Z

    move-result v7

    if-nez v7, :cond_b

    .line 662
    invoke-virtual/range {p3 .. p3}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v7

    iget v7, v7, Landroid/content/pm/ApplicationInfo;->flags:I

    and-int/lit16 v7, v7, 0x4000

    if-nez v7, :cond_b

    if-eqz v4, :cond_b

    .line 667
    const/4 v4, 0x1

    sput-boolean v4, Lcom/facebook/common/dextricks/DexStore;->sLoadedViaHenosis:Z

    .line 668
    const-string v4, "Loading %s via henosis"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object/from16 v4, p0

    move/from16 v7, p1

    move-object/from16 v8, p2

    move-object/from16 v9, p3

    .line 669
    invoke-direct/range {v4 .. v9}, Lcom/facebook/common/dextricks/DexStore;->loadAllOreoImpl(Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;Lcom/facebook/common/dextricks/DexManifest;ILcom/facebook/base/lwperf/LightweightPerfEventsTracer;Landroid/content/Context;)Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-result-object v5

    .line 1008
    if-eqz v17, :cond_1

    .line 1009
    invoke-virtual/range {v17 .. v17}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V

    goto/16 :goto_0

    .line 658
    :cond_9
    const/4 v4, 0x0

    goto :goto_5

    :cond_a
    :try_start_5
    sget-boolean v4, Lcom/facebook/common/dextricks/DexStore;->sLoadedViaHenosis:Z

    goto :goto_5

    .line 675
    :cond_b
    invoke-direct/range {p0 .. p0}, Lcom/facebook/common/dextricks/DexStore;->readStatusLocked()J

    move-result-wide v18

    .line 676
    const-wide/16 v8, 0xf

    and-long v8, v8, v18

    long-to-int v4, v8

    int-to-byte v11, v4

    .line 678
    const/16 v4, 0xa

    if-lt v11, v4, :cond_c

    .line 679
    const-string v4, "found invalid state %s: nuking dex store %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    invoke-static {v11}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    aput-object v9, v7, v8

    invoke-static {v4, v7}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 682
    :cond_c
    const/4 v4, 0x1

    if-ne v11, v4, :cond_d

    .line 683
    const-string v4, "found abandoned transaction (prev stateno %s status %x) on dex store %s: nuking store"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/4 v9, 0x4

    shr-long v12, v18, v9

    const-wide/16 v14, 0xf

    and-long/2addr v12, v14

    .line 686
    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const/4 v9, 0x4

    shr-long v12, v18, v9

    invoke-static {v12, v13}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v9

    aput-object v9, v7, v8

    const/4 v8, 0x2

    move-object/from16 v0, p0

    iget-object v9, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    aput-object v9, v7, v8

    .line 683
    invoke-static {v4, v7}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 687
    const/16 v20, 0x10

    .line 690
    :cond_d
    const/4 v4, 0x5

    if-ne v11, v4, :cond_e

    .line 691
    const-string v4, "crashed last time while loading generated files; trying fallback"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v7}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 692
    or-int/lit8 v20, v20, 0x40

    .line 695
    :cond_e
    const/4 v4, 0x6

    if-ne v11, v4, :cond_f

    .line 696
    const-string v4, "force dex regeneration requested"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v7}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 697
    or-int/lit8 v20, v20, 0x20

    .line 700
    :cond_f
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-wide/from16 v2, v18

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/facebook/common/dextricks/DexStore;->schemeForState(Landroid/content/Context;Lcom/facebook/common/dextricks/DexManifest;J)Lcom/facebook/common/dextricks/OdexScheme;

    move-result-object v4

    .line 709
    const-string v7, "DLL2_check_dirty"

    const v8, 0x880005

    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v8}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->start(Ljava/lang/String;I)Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    move-result-object v8

    const/4 v7, 0x0

    .line 710
    :try_start_6
    invoke-direct/range {p0 .. p0}, Lcom/facebook/common/dextricks/DexStore;->listAndPruneRootFiles()[Ljava/lang/String;

    move-result-object v10

    .line 711
    move-object/from16 v0, p0

    invoke-direct {v0, v4, v10}, Lcom/facebook/common/dextricks/DexStore;->checkDirty(Lcom/facebook/common/dextricks/OdexScheme;[Ljava/lang/String;)I
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_c

    move-result v9

    .line 712
    if-eqz v8, :cond_10

    if-eqz v7, :cond_1a

    :try_start_7
    invoke-virtual {v8}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 719
    :cond_10
    :goto_6
    if-nez v9, :cond_1d

    .line 720
    :try_start_8
    const-string v7, "LA_LOAD_EXISTING"

    .line 727
    :goto_7
    const-string v8, "current scheme: %s next step: %s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v4, v12, v13

    const/4 v13, 0x1

    aput-object v7, v12, v13

    invoke-static {v8, v12}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 729
    const/4 v7, 0x1

    if-ne v9, v7, :cond_11

    iget v7, v4, Lcom/facebook/common/dextricks/OdexScheme;->flags:I

    and-int/lit8 v7, v7, 0x1

    if-eqz v7, :cond_11

    .line 730
    const-string v7, "scheme %s is non-incremental: regenerating everything"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v4, v8, v9

    invoke-static {v7, v8}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 731
    const/4 v9, 0x2

    .line 734
    :cond_11
    if-nez v9, :cond_12

    const/4 v7, 0x3

    if-ne v11, v7, :cond_12

    .line 736
    :try_start_9
    invoke-static {}, Lcom/facebook/common/dextricks/DexStore;->installCrossDexHooks()V
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_6
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    .line 743
    :cond_12
    :goto_8
    const/4 v8, 0x0

    .line 744
    if-lez v9, :cond_41

    .line 747
    const/16 v7, 0x3a

    .line 748
    :try_start_a
    iget-object v8, v6, Lcom/facebook/common/dextricks/DexManifest;->dexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;

    array-length v8, v8

    if-le v8, v7, :cond_40

    .line 749
    const-string v8, "too many dexes, forcing turbo mode: have %s but maximum per dex store is %s"

    const/4 v12, 0x2

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    iget-object v14, v6, Lcom/facebook/common/dextricks/DexManifest;->dexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;

    array-length v14, v14

    .line 751
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    aput-object v14, v12, v13

    const/4 v13, 0x1

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v12, v13

    .line 749
    invoke-static {v8, v12}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 752
    or-int/lit8 v13, p1, 0x1

    .line 763
    :goto_9
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-direct {v0, v1, v2}, Lcom/facebook/common/dextricks/DexStore;->writeTxFailedStatusLocked(J)V

    .line 766
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    const-string v12, "regen_stamp"

    invoke-direct {v7, v8, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 767
    invoke-static {v7}, Lcom/facebook/common/dextricks/Fs;->deleteRecursive(Ljava/io/File;)V

    .line 768
    new-instance v8, Ljava/io/FileOutputStream;

    invoke-direct {v8, v7}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v8}, Ljava/io/FileOutputStream;->close()V

    .line 769
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    const-string v12, "odex_lock"

    invoke-direct {v7, v8, v12}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 770
    invoke-virtual {v7}, Ljava/io/File;->exists()Z

    move-result v8

    if-eqz v8, :cond_13

    .line 771
    invoke-static {v7}, Lcom/facebook/common/dextricks/ReentrantLockFile;->open(Ljava/io/File;)Lcom/facebook/common/dextricks/ReentrantLockFile;
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    move-result-object v8

    const/4 v7, 0x0

    .line 772
    const/4 v12, 0x0

    :try_start_b
    invoke-virtual {v8, v12}, Lcom/facebook/common/dextricks/ReentrantLockFile;->acquire(I)Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;

    move-result-object v12

    invoke-virtual {v12}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_8
    .catchall {:try_start_b .. :try_end_b} :catchall_b

    .line 773
    if-eqz v8, :cond_13

    if-eqz v7, :cond_1f

    :try_start_c
    invoke-virtual {v8}, Lcom/facebook/common/dextricks/ReentrantLockFile;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_7
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 775
    :cond_13
    :goto_a
    const/4 v8, 0x1

    .line 778
    :goto_b
    if-nez v9, :cond_14

    :try_start_d
    invoke-direct/range {p0 .. p0}, Lcom/facebook/common/dextricks/DexStore;->checkAnyOptimizerRunningCurrently()Z

    move-result v7

    if-eqz v7, :cond_14

    .line 780
    const/4 v7, 0x1

    iput-boolean v7, v5, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;->dexoptDuringColdStart:Z

    .line 783
    :cond_14
    const/4 v7, 0x1

    if-ne v9, v7, :cond_15

    .line 784
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "DLL2_regen_missing_"

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const v9, 0x880006

    .line 785
    move-object/from16 v0, p2

    invoke-virtual {v0, v7, v9}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->start(Ljava/lang/String;I)Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_1

    move-result-object v12

    .line 784
    const/4 v7, 0x0

    .line 787
    const/4 v9, 0x1

    :try_start_e
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v6, v4, v9, v1}, Lcom/facebook/common/dextricks/DexStore;->runCompiler(Lcom/facebook/common/dextricks/DexManifest;Lcom/facebook/common/dextricks/OdexScheme;ILcom/facebook/base/lwperf/LightweightPerfEventsTracer;)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_a
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_c
    .catchall {:try_start_e .. :try_end_e} :catchall_a

    .line 788
    const/4 v9, 0x0

    .line 793
    :goto_c
    if-eqz v12, :cond_15

    if-eqz v7, :cond_22

    :try_start_f
    invoke-virtual {v12}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_b
    .catchall {:try_start_f .. :try_end_f} :catchall_1

    .line 796
    :cond_15
    :goto_d
    if-eqz v9, :cond_3f

    .line 797
    :try_start_10
    invoke-direct/range {p0 .. p0}, Lcom/facebook/common/dextricks/DexStore;->saveDeps()V

    .line 799
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v6}, Lcom/facebook/common/dextricks/DexStore;->determineDesiredState(BLcom/facebook/common/dextricks/DexManifest;)B

    move-result v7

    .line 800
    and-int/lit8 v11, v13, 0x1

    if-eqz v11, :cond_16

    .line 801
    sparse-switch v7, :sswitch_data_0

    :cond_16
    move v11, v7

    .line 813
    :goto_e
    new-instance v12, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    const-string v14, "config"

    invoke-direct {v12, v7, v14}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_1

    .line 816
    :try_start_11
    invoke-static {v12}, Lcom/facebook/common/dextricks/DexStore$Config;->read(Ljava/io/File;)Lcom/facebook/common/dextricks/DexStore$Config;

    move-result-object v7

    .line 817
    const-string v14, "loaded config file %s"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    aput-object v12, v15, v16

    invoke-static {v14, v15}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_11
    .catch Ljava/io/FileNotFoundException; {:try_start_11 .. :try_end_11} :catch_e
    .catchall {:try_start_11 .. :try_end_11} :catchall_1

    .line 823
    :goto_f
    :try_start_12
    iget-byte v12, v7, Lcom/facebook/common/dextricks/DexStore$Config;->sync:B

    packed-switch v12, :pswitch_data_0

    .line 837
    const-string v12, "config file has unknown sync control mode %s: ignoring"

    const/4 v14, 0x1

    new-array v14, v14, [Ljava/lang/Object;

    const/4 v15, 0x0

    iget-byte v0, v7, Lcom/facebook/common/dextricks/DexStore$Config;->sync:B

    move/from16 v16, v0

    invoke-static/range {v16 .. v16}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v16

    aput-object v16, v14, v15

    invoke-static {v12, v14}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 841
    :goto_10
    :pswitch_0
    move-object/from16 v0, p0

    invoke-direct {v0, v11, v7}, Lcom/facebook/common/dextricks/DexStore;->adjustDesiredStateForConfig(BLcom/facebook/common/dextricks/DexStore$Config;)B
    :try_end_12
    .catchall {:try_start_12 .. :try_end_12} :catchall_1

    move-result v7

    .line 843
    const/4 v11, 0x3

    if-ne v7, v11, :cond_17

    .line 845
    :try_start_13
    invoke-static {}, Lcom/facebook/common/dextricks/DexStore;->installCrossDexHooks()V
    :try_end_13
    .catch Ljava/lang/Exception; {:try_start_13 .. :try_end_13} :catch_f
    .catchall {:try_start_13 .. :try_end_13} :catchall_1

    .line 853
    :cond_17
    :goto_11
    :try_start_14
    const-string v11, "desiredStateNo:%s"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v14, 0x0

    invoke-static {v7}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v15

    aput-object v15, v12, v14

    invoke-static {v11, v12}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    move-object v11, v10

    move v10, v7

    .line 854
    :goto_12
    if-eqz v9, :cond_2b

    .line 856
    const/4 v4, 0x2

    if-lt v9, v4, :cond_25

    const/4 v4, 0x1

    :goto_13
    const-string v7, "incremental regen already handled"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v4, v7, v12}, Lcom/facebook/common/dextricks/Mlog;->assertThat(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 859
    int-to-long v14, v10

    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1, v6, v14, v15}, Lcom/facebook/common/dextricks/DexStore;->schemeForState(Landroid/content/Context;Lcom/facebook/common/dextricks/DexManifest;J)Lcom/facebook/common/dextricks/OdexScheme;
    :try_end_14
    .catchall {:try_start_14 .. :try_end_14} :catchall_1

    move-result-object v12

    .line 860
    :try_start_15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "DLL2_regen_all_"

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const v7, 0x880007

    move-object/from16 v0, p2

    invoke-virtual {v0, v4, v7}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->start(Ljava/lang/String;I)Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;
    :try_end_15
    .catch Ljava/lang/Exception; {:try_start_15 .. :try_end_15} :catch_11
    .catchall {:try_start_15 .. :try_end_15} :catchall_1

    move-result-object v14

    const/4 v7, 0x0

    .line 861
    :try_start_16
    move-object/from16 v0, p0

    invoke-direct {v0, v11}, Lcom/facebook/common/dextricks/DexStore;->deleteFiles([Ljava/lang/String;)V

    .line 865
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    const-string v16, "optimization_log"

    move-object/from16 v0, v16

    invoke-direct {v4, v15, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 866
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 868
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    const-string v16, "classmap.bin"

    move-object/from16 v0, v16

    invoke-direct {v4, v15, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 869
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 871
    new-instance v4, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    const-string v16, "classmap.bin.hf"

    move-object/from16 v0, v16

    invoke-direct {v4, v15, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 872
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 876
    iget v4, v12, Lcom/facebook/common/dextricks/OdexScheme;->flags:I

    and-int/lit8 v4, v4, 0x10

    if-eqz v4, :cond_26

    .line 877
    const-string v4, "not running dex compiler: scheme says there is nothing to do"

    const/4 v15, 0x0

    new-array v15, v15, [Ljava/lang/Object;

    invoke-static {v4, v15}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_10
    .catchall {:try_start_16 .. :try_end_16} :catchall_9

    .line 881
    :goto_14
    const/4 v9, 0x0

    .line 882
    if-eqz v14, :cond_18

    if-eqz v7, :cond_28

    :try_start_17
    invoke-virtual {v14}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_12
    .catch Ljava/lang/Exception; {:try_start_17 .. :try_end_17} :catch_11
    .catchall {:try_start_17 .. :try_end_17} :catchall_1

    :cond_18
    :goto_15
    move-object v4, v12

    .line 891
    goto :goto_12

    .line 712
    :catch_3
    move-exception v8

    :try_start_18
    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_18
    .catchall {:try_start_18 .. :try_end_18} :catchall_1

    goto/16 :goto_6

    .line 1008
    :catchall_1
    move-exception v4

    if-eqz v17, :cond_19

    .line 1009
    invoke-virtual/range {v17 .. v17}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V

    :cond_19
    throw v4

    .line 712
    :cond_1a
    :try_start_19
    invoke-virtual {v8}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V
    :try_end_19
    .catchall {:try_start_19 .. :try_end_19} :catchall_1

    goto/16 :goto_6

    .line 709
    :catch_4
    move-exception v4

    :try_start_1a
    throw v4
    :try_end_1a
    .catchall {:try_start_1a .. :try_end_1a} :catchall_2

    .line 712
    :catchall_2
    move-exception v5

    move-object/from16 v22, v5

    move-object v5, v4

    move-object/from16 v4, v22

    :goto_16
    if-eqz v8, :cond_1b

    if-eqz v5, :cond_1c

    :try_start_1b
    invoke-virtual {v8}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_5
    .catchall {:try_start_1b .. :try_end_1b} :catchall_1

    :cond_1b
    :goto_17
    :try_start_1c
    throw v4

    :catch_5
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_17

    :cond_1c
    invoke-virtual {v8}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V

    goto :goto_17

    .line 721
    :cond_1d
    const/4 v7, 0x1

    if-ne v9, v7, :cond_1e

    .line 722
    const-string v7, "LA_REGEN_MISSING"

    goto/16 :goto_7

    .line 724
    :cond_1e
    const-string v7, "LA_REGEN_ALL"

    goto/16 :goto_7

    .line 737
    :catch_6
    move-exception v7

    .line 738
    const-string v8, "dex store %s needs xdex hooks, but we can\'t do it: regenerating"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v12, 0x0

    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    aput-object v13, v9, v12

    invoke-static {v7, v8, v9}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 739
    const/4 v9, 0x2

    goto/16 :goto_8

    .line 773
    :catch_7
    move-exception v8

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_a

    :cond_1f
    invoke-virtual {v8}, Lcom/facebook/common/dextricks/ReentrantLockFile;->close()V
    :try_end_1c
    .catchall {:try_start_1c .. :try_end_1c} :catchall_1

    goto/16 :goto_a

    .line 771
    :catch_8
    move-exception v4

    :try_start_1d
    throw v4
    :try_end_1d
    .catchall {:try_start_1d .. :try_end_1d} :catchall_3

    .line 773
    :catchall_3
    move-exception v5

    move-object/from16 v22, v5

    move-object v5, v4

    move-object/from16 v4, v22

    :goto_18
    if-eqz v8, :cond_20

    if-eqz v5, :cond_21

    :try_start_1e
    invoke-virtual {v8}, Lcom/facebook/common/dextricks/ReentrantLockFile;->close()V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_9
    .catchall {:try_start_1e .. :try_end_1e} :catchall_1

    :cond_20
    :goto_19
    :try_start_1f
    throw v4

    :catch_9
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_19

    :cond_21
    invoke-virtual {v8}, Lcom/facebook/common/dextricks/ReentrantLockFile;->close()V
    :try_end_1f
    .catchall {:try_start_1f .. :try_end_1f} :catchall_1

    goto :goto_19

    .line 789
    :catch_a
    move-exception v9

    .line 790
    :try_start_20
    const-string v14, "incremental regeneration error in dex store %s: regenerating"

    const/4 v15, 0x1

    new-array v15, v15, [Ljava/lang/Object;

    const/16 v16, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    move-object/from16 v21, v0

    aput-object v21, v15, v16

    invoke-static {v9, v14, v15}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_c
    .catchall {:try_start_20 .. :try_end_20} :catchall_a

    .line 791
    const/4 v9, 0x2

    goto/16 :goto_c

    .line 793
    :catch_b
    move-exception v12

    :try_start_21
    invoke-virtual {v7, v12}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_d

    :cond_22
    invoke-virtual {v12}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V
    :try_end_21
    .catchall {:try_start_21 .. :try_end_21} :catchall_1

    goto/16 :goto_d

    .line 784
    :catch_c
    move-exception v4

    :try_start_22
    throw v4
    :try_end_22
    .catchall {:try_start_22 .. :try_end_22} :catchall_4

    .line 793
    :catchall_4
    move-exception v5

    move-object/from16 v22, v5

    move-object v5, v4

    move-object/from16 v4, v22

    :goto_1a
    if-eqz v12, :cond_23

    if-eqz v5, :cond_24

    :try_start_23
    invoke-virtual {v12}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_d
    .catchall {:try_start_23 .. :try_end_23} :catchall_1

    :cond_23
    :goto_1b
    :try_start_24
    throw v4

    :catch_d
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1b

    :cond_24
    invoke-virtual {v12}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V

    goto :goto_1b

    .line 803
    :sswitch_0
    const-string v7, "using ART turbo instead of ART xdex: DS_DO_NOT_OPTIMIZE"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v7, v11}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 804
    const/4 v7, 0x7

    move v11, v7

    .line 805
    goto/16 :goto_e

    .line 807
    :sswitch_1
    const-string v7, "using Dalvik turbo instead of xdex: DS_DO_NOT_OPTIMIZE"

    const/4 v11, 0x0

    new-array v11, v11, [Ljava/lang/Object;

    invoke-static {v7, v11}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 808
    const/4 v7, 0x4

    move v11, v7

    goto/16 :goto_e

    .line 818
    :catch_e
    move-exception v7

    .line 819
    const-string v7, "no config file for repository %s found: using all-default configuration"

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    aput-object v15, v12, v14

    invoke-static {v7, v12}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 820
    new-instance v7, Lcom/facebook/common/dextricks/DexStore$Config$Builder;

    invoke-direct {v7}, Lcom/facebook/common/dextricks/DexStore$Config$Builder;-><init>()V

    invoke-virtual {v7}, Lcom/facebook/common/dextricks/DexStore$Config$Builder;->build()Lcom/facebook/common/dextricks/DexStore$Config;

    move-result-object v7

    goto/16 :goto_f

    .line 828
    :pswitch_1
    const-string v12, "forcing async optimization mode from config file: dangerous!"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v12, v14}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 829
    or-int/lit8 v13, v13, 0x4

    .line 830
    goto/16 :goto_10

    .line 832
    :pswitch_2
    const-string v12, "forcing synchronous optimization from config file"

    const/4 v14, 0x0

    new-array v14, v14, [Ljava/lang/Object;

    invoke-static {v12, v14}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 833
    and-int/lit8 v12, v13, -0x5

    .line 834
    or-int/lit8 v13, v12, 0x8

    .line 835
    goto/16 :goto_10

    .line 846
    :catch_f
    move-exception v7

    .line 847
    const-string v11, "disabling cross-dex optimization: cannot install hooks"

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/Object;

    invoke-static {v7, v11, v12}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 848
    iput-object v7, v5, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;->xdexFailureCause:Ljava/lang/Throwable;
    :try_end_24
    .catchall {:try_start_24 .. :try_end_24} :catchall_1

    .line 849
    const/4 v7, 0x4

    goto/16 :goto_11

    .line 856
    :cond_25
    const/4 v4, 0x0

    goto/16 :goto_13

    .line 879
    :cond_26
    const/4 v4, 0x0

    :try_start_25
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-direct {v0, v6, v12, v4, v1}, Lcom/facebook/common/dextricks/DexStore;->runCompiler(Lcom/facebook/common/dextricks/DexManifest;Lcom/facebook/common/dextricks/OdexScheme;ILcom/facebook/base/lwperf/LightweightPerfEventsTracer;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_10
    .catchall {:try_start_25 .. :try_end_25} :catchall_9

    goto/16 :goto_14

    .line 860
    :catch_10
    move-exception v4

    :try_start_26
    throw v4
    :try_end_26
    .catchall {:try_start_26 .. :try_end_26} :catchall_5

    .line 882
    :catchall_5
    move-exception v7

    move-object/from16 v22, v7

    move-object v7, v4

    move-object/from16 v4, v22

    :goto_1c
    if-eqz v14, :cond_27

    if-eqz v7, :cond_29

    :try_start_27
    invoke-virtual {v14}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_13
    .catch Ljava/lang/Exception; {:try_start_27 .. :try_end_27} :catch_11
    .catchall {:try_start_27 .. :try_end_27} :catchall_1

    :cond_27
    :goto_1d
    :try_start_28
    throw v4
    :try_end_28
    .catch Ljava/lang/Exception; {:try_start_28 .. :try_end_28} :catch_11
    .catchall {:try_start_28 .. :try_end_28} :catchall_1

    :catch_11
    move-exception v4

    move v7, v9

    .line 883
    const/4 v9, 0x2

    if-ne v10, v9, :cond_2a

    .line 884
    :try_start_29
    throw v4
    :try_end_29
    .catchall {:try_start_29 .. :try_end_29} :catchall_1

    .line 882
    :catch_12
    move-exception v4

    :try_start_2a
    invoke-virtual {v7, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_15

    :cond_28
    invoke-virtual {v14}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V

    goto/16 :goto_15

    :catch_13
    move-exception v11

    invoke-virtual {v7, v11}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1d

    :cond_29
    invoke-virtual {v14}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V
    :try_end_2a
    .catch Ljava/lang/Exception; {:try_start_2a .. :try_end_2a} :catch_11
    .catchall {:try_start_2a .. :try_end_2a} :catchall_1

    goto :goto_1d

    .line 887
    :cond_2a
    :try_start_2b
    const-string v9, "dex store %s: failed turbodex: using fallback"

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    aput-object v14, v10, v11

    invoke-static {v4, v9, v10}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 888
    iput-object v4, v5, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;->fallbackCause:Ljava/lang/Throwable;

    .line 889
    invoke-direct/range {p0 .. p0}, Lcom/facebook/common/dextricks/DexStore;->listAndPruneRootFiles()[Ljava/lang/String;

    move-result-object v9

    .line 890
    const/4 v4, 0x2

    move v10, v4

    move-object v11, v9

    move v9, v7

    move-object v4, v12

    .line 891
    goto/16 :goto_12

    .line 894
    :cond_2b
    int-to-long v0, v10

    move-wide/from16 v18, v0

    move/from16 v22, v9

    move-object v9, v4

    move/from16 v4, v22

    .line 898
    :goto_1e
    if-nez v4, :cond_35

    const/4 v4, 0x1

    :goto_1f
    const-string v7, "next step should be LA_LOAD_EXISTING"

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v7, v10}, Lcom/facebook/common/dextricks/Mlog;->assertThat(ZLjava/lang/String;[Ljava/lang/Object;)V

    .line 910
    and-int/lit8 v4, v13, 0x4

    if-eqz v4, :cond_36

    const/4 v4, 0x1

    move/from16 v21, v4

    .line 912
    :goto_20
    if-eqz v21, :cond_2c

    move-object/from16 v7, p0

    move-object v10, v6

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    .line 913
    invoke-direct/range {v7 .. v13}, Lcom/facebook/common/dextricks/DexStore;->loadDexFiles(ZLcom/facebook/common/dextricks/OdexScheme;Lcom/facebook/common/dextricks/DexManifest;Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;Landroid/content/Context;I)V

    .line 916
    :cond_2c
    if-eqz v8, :cond_2e

    .line 917
    if-eqz v21, :cond_38

    .line 919
    const-string v4, "about to start syncer thread"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v7}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 922
    new-instance v14, Lcom/facebook/common/dextricks/DexStore$FinishRegenerationThread;

    move-object/from16 v15, p0

    move-object/from16 v16, v9

    invoke-direct/range {v14 .. v19}, Lcom/facebook/common/dextricks/DexStore$FinishRegenerationThread;-><init>(Lcom/facebook/common/dextricks/DexStore;Lcom/facebook/common/dextricks/OdexScheme;Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;J)V

    .line 924
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/common/dextricks/DexStore;->mLockFile:Lcom/facebook/common/dextricks/ReentrantLockFile;

    invoke-virtual {v4, v14}, Lcom/facebook/common/dextricks/ReentrantLockFile;->donateLock(Ljava/lang/Thread;)V
    :try_end_2b
    .catchall {:try_start_2b .. :try_end_2b} :catchall_1

    .line 926
    :try_start_2c
    invoke-virtual {v14}, Lcom/facebook/common/dextricks/DexStore$FinishRegenerationThread;->start()V
    :try_end_2c
    .catchall {:try_start_2c .. :try_end_2c} :catchall_6

    .line 927
    const/16 v17, 0x0

    .line 928
    const/4 v4, 0x0

    .line 930
    if-eqz v4, :cond_2d

    .line 931
    :try_start_2d
    const-string v4, "failed to start syncer thread"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v7}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 932
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/common/dextricks/DexStore;->mLockFile:Lcom/facebook/common/dextricks/ReentrantLockFile;

    invoke-virtual {v4}, Lcom/facebook/common/dextricks/ReentrantLockFile;->stealLock()V

    .line 935
    :cond_2d
    const-string v4, "started syncer thread"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v7}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 967
    :cond_2e
    :goto_21
    if-nez v21, :cond_2f

    move-object/from16 v7, p0

    move-object v10, v6

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    .line 968
    invoke-direct/range {v7 .. v13}, Lcom/facebook/common/dextricks/DexStore;->loadDexFiles(ZLcom/facebook/common/dextricks/OdexScheme;Lcom/facebook/common/dextricks/DexManifest;Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;Landroid/content/Context;I)V
    :try_end_2d
    .catchall {:try_start_2d .. :try_end_2d} :catchall_1

    .line 971
    :cond_2f
    :try_start_2e
    const-string v4, "dexopt"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/facebook/common/dextricks/DexStore;->makeTemporaryDirectory(Ljava/lang/String;)Lcom/facebook/common/dextricks/DexStore$TmpDir;
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_17
    .catchall {:try_start_2e .. :try_end_2e} :catchall_1

    move-result-object v10

    const/4 v6, 0x0

    .line 972
    :try_start_2f
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    move-wide/from16 v0, v18

    invoke-virtual {v9, v4, v0, v1}, Lcom/facebook/common/dextricks/OdexScheme;->loadInformationalStatus(Ljava/io/File;J)I
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_16
    .catchall {:try_start_2f .. :try_end_2f} :catchall_8

    move-result v4

    or-int v7, v20, v4

    .line 973
    if-eqz v10, :cond_30

    if-eqz v6, :cond_3b

    :try_start_30
    invoke-virtual {v10}, Lcom/facebook/common/dextricks/DexStore$TmpDir;->close()V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_14
    .catchall {:try_start_30 .. :try_end_30} :catchall_1

    :cond_30
    :goto_22
    move v4, v7

    .line 979
    :goto_23
    :try_start_31
    invoke-virtual {v9}, Lcom/facebook/common/dextricks/OdexScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v6

    iput-object v6, v5, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;->odexSchemeName:Ljava/lang/String;

    .line 980
    if-eqz v8, :cond_31

    .line 981
    or-int/lit8 v4, v4, 0x1

    .line 984
    :cond_31
    iget v6, v9, Lcom/facebook/common/dextricks/OdexScheme;->flags:I

    and-int/lit8 v6, v6, 0x8

    if-eqz v6, :cond_32

    .line 985
    or-int/lit8 v4, v4, 0x8

    .line 986
    invoke-static {v9}, Lcom/facebook/common/dextricks/DexStore;->logNonOptimalScheme(Lcom/facebook/common/dextricks/OdexScheme;)V

    .line 989
    :cond_32
    move-wide/from16 v0, v18

    invoke-virtual {v9, v0, v1}, Lcom/facebook/common/dextricks/OdexScheme;->needOptimization(J)Z

    move-result v6

    if-eqz v6, :cond_3e

    .line 990
    or-int/lit8 v4, v4, 0x2

    .line 991
    move-wide/from16 v0, v18

    invoke-virtual {v9, v0, v1}, Lcom/facebook/common/dextricks/OdexScheme;->loadNotOptimized(J)Z

    move-result v6

    if-eqz v6, :cond_33

    .line 992
    or-int/lit8 v4, v4, 0x8

    .line 993
    move-wide/from16 v0, v18

    invoke-static {v9, v0, v1}, Lcom/facebook/common/dextricks/DexStore;->logSchemeNeedsOptimization(Lcom/facebook/common/dextricks/OdexScheme;J)V

    .line 995
    :cond_33
    const-string v6, "optimization needed: yes"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 996
    iget v6, v9, Lcom/facebook/common/dextricks/OdexScheme;->flags:I

    and-int/lit8 v6, v6, 0x4

    if-eqz v6, :cond_34

    .line 997
    const-string v6, "... but optimization is very expensive"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 998
    or-int/lit8 v4, v4, 0x4

    .line 1004
    :cond_34
    :goto_24
    iput v4, v5, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;->loadResult:I

    .line 1005
    move-object/from16 v0, p0

    iput-object v5, v0, Lcom/facebook/common/dextricks/DexStore;->mLastDeri:Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;
    :try_end_31
    .catchall {:try_start_31 .. :try_end_31} :catchall_1

    .line 1008
    if-eqz v17, :cond_1

    .line 1009
    invoke-virtual/range {v17 .. v17}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V

    goto/16 :goto_0

    .line 898
    :cond_35
    const/4 v4, 0x0

    goto/16 :goto_1f

    .line 910
    :cond_36
    const/4 v4, 0x0

    move/from16 v21, v4

    goto/16 :goto_20

    .line 930
    :catchall_6
    move-exception v4

    if-eqz v14, :cond_37

    .line 931
    :try_start_32
    const-string v5, "failed to start syncer thread"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 932
    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/common/dextricks/DexStore;->mLockFile:Lcom/facebook/common/dextricks/ReentrantLockFile;

    invoke-virtual {v5}, Lcom/facebook/common/dextricks/ReentrantLockFile;->stealLock()V

    :cond_37
    throw v4

    .line 937
    :cond_38
    const-string v4, "fsyncing just-regenerated dex store %s in foreground as requested"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    aput-object v11, v7, v10

    invoke-static {v4, v7}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 938
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    invoke-static {}, Lcom/facebook/common/dextricks/Prio;->unchanged()Lcom/facebook/common/dextricks/Prio;

    move-result-object v7

    invoke-static {v4, v7}, Lcom/facebook/common/dextricks/Fs;->fsyncRecursive(Ljava/io/File;Lcom/facebook/common/dextricks/Prio;)V

    .line 939
    move-object/from16 v0, p0

    move-wide/from16 v1, v18

    invoke-virtual {v0, v1, v2}, Lcom/facebook/common/dextricks/DexStore;->writeStatusLocked(J)V

    .line 940
    const-string v4, "dex store sync completed"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v7}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 943
    iget v4, v9, Lcom/facebook/common/dextricks/OdexScheme;->flags:I

    and-int/lit8 v4, v4, 0x4

    if-nez v4, :cond_39

    .line 944
    const-string v4, "optimizing in foreground"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v7}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 945
    const/4 v4, 0x1

    .line 954
    :goto_25
    if-eqz v4, :cond_2e

    .line 958
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-wide/from16 v2, v18

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/facebook/common/dextricks/DexStore;->optimizeInForegroundLocked(Landroid/content/Context;Lcom/facebook/common/dextricks/DexManifest;J)V

    .line 960
    invoke-direct/range {p0 .. p0}, Lcom/facebook/common/dextricks/DexStore;->readStatusLocked()J

    move-result-wide v18

    .line 961
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    move-wide/from16 v2, v18

    invoke-direct {v0, v1, v6, v2, v3}, Lcom/facebook/common/dextricks/DexStore;->schemeForState(Landroid/content/Context;Lcom/facebook/common/dextricks/DexManifest;J)Lcom/facebook/common/dextricks/OdexScheme;

    move-result-object v9

    .line 962
    const-string v4, "done optimizing in foreground: new status %x scheme %s"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v7, v10

    const/4 v10, 0x1

    aput-object v9, v7, v10

    invoke-static {v4, v7}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto/16 :goto_21

    .line 946
    :cond_39
    and-int/lit8 v4, v13, 0x8

    if-eqz v4, :cond_3a

    .line 947
    const-string v4, "optimizing in foreground despite expense: forced"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v7}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 948
    const/4 v4, 0x1

    goto :goto_25

    .line 950
    :cond_3a
    const-string v4, "not optimizing in foreground: would be too expensive"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v4, v7}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_32
    .catchall {:try_start_32 .. :try_end_32} :catchall_1

    .line 951
    const/4 v4, 0x0

    goto :goto_25

    .line 973
    :catch_14
    move-exception v4

    :try_start_33
    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_15
    .catchall {:try_start_33 .. :try_end_33} :catchall_1

    goto/16 :goto_22

    :catch_15
    move-exception v4

    move v6, v7

    .line 976
    :goto_26
    :try_start_34
    const-string v7, "Failure while checking oat file provenance."

    const/4 v10, 0x0

    new-array v10, v10, [Ljava/lang/Object;

    invoke-static {v4, v7, v10}, Lcom/facebook/common/dextricks/Mlog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_34
    .catchall {:try_start_34 .. :try_end_34} :catchall_1

    move v4, v6

    goto/16 :goto_23

    .line 973
    :cond_3b
    :try_start_35
    invoke-virtual {v10}, Lcom/facebook/common/dextricks/DexStore$TmpDir;->close()V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_15
    .catchall {:try_start_35 .. :try_end_35} :catchall_1

    goto/16 :goto_22

    .line 971
    :catch_16
    move-exception v4

    :try_start_36
    throw v4
    :try_end_36
    .catchall {:try_start_36 .. :try_end_36} :catchall_7

    .line 973
    :catchall_7
    move-exception v6

    move-object/from16 v22, v6

    move-object v6, v4

    move-object/from16 v4, v22

    :goto_27
    if-eqz v10, :cond_3c

    if-eqz v6, :cond_3d

    :try_start_37
    invoke-virtual {v10}, Lcom/facebook/common/dextricks/DexStore$TmpDir;->close()V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_18
    .catchall {:try_start_37 .. :try_end_37} :catchall_1

    :cond_3c
    :goto_28
    :try_start_38
    throw v4

    :catch_17
    move-exception v4

    move/from16 v6, v20

    goto :goto_26

    :catch_18
    move-exception v7

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_28

    :cond_3d
    invoke-virtual {v10}, Lcom/facebook/common/dextricks/DexStore$TmpDir;->close()V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_17
    .catchall {:try_start_38 .. :try_end_38} :catchall_1

    goto :goto_28

    .line 1001
    :cond_3e
    :try_start_39
    const-string v6, "optimization needed: no"

    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-static {v6, v7}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_39
    .catchall {:try_start_39 .. :try_end_39} :catchall_1

    goto/16 :goto_24

    .line 973
    :catchall_8
    move-exception v4

    goto :goto_27

    .line 882
    :catchall_9
    move-exception v4

    goto/16 :goto_1c

    .line 793
    :catchall_a
    move-exception v4

    move-object v5, v7

    goto/16 :goto_1a

    .line 773
    :catchall_b
    move-exception v4

    move-object v5, v7

    goto/16 :goto_18

    .line 712
    :catchall_c
    move-exception v4

    move-object v5, v7

    goto/16 :goto_16

    .line 640
    :catchall_d
    move-exception v4

    move-object v5, v7

    goto/16 :goto_3

    :cond_3f
    move/from16 v22, v9

    move-object v9, v4

    move/from16 v4, v22

    goto/16 :goto_1e

    :cond_40
    move/from16 v13, p1

    goto/16 :goto_9

    :cond_41
    move/from16 v13, p1

    goto/16 :goto_b

    .line 801
    nop

    :sswitch_data_0
    .sparse-switch
        0x3 -> :sswitch_1
        0x8 -> :sswitch_0
    .end sparse-switch

    .line 823
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private loadAllOreoImpl(Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;Lcom/facebook/common/dextricks/DexManifest;ILcom/facebook/base/lwperf/LightweightPerfEventsTracer;Landroid/content/Context;)Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;
    .locals 20
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/facebook/common/dextricks/DexStore$RecoverableDexException;
        }
    .end annotation

    .prologue
    .line 1064
    or-int/lit8 v4, p3, 0x20

    .line 1065
    and-int/lit8 v10, v4, -0x2

    .line 1069
    const/4 v5, 0x0

    .line 1070
    new-instance v12, Ljava/util/HashSet;

    invoke-direct {v12}, Ljava/util/HashSet;-><init>()V

    .line 1071
    move-object/from16 v0, p2

    iget-object v6, v0, Lcom/facebook/common/dextricks/DexManifest;->dexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;

    array-length v7, v6

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v7, :cond_0

    aget-object v8, v6, v4

    .line 1072
    invoke-static {v8}, Lcom/facebook/common/dextricks/OdexSchemeOreo;->makeProgName(Lcom/facebook/common/dextricks/DexManifest$Dex;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v12, v8}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1071
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1074
    :cond_0
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v6

    .line 1075
    if-nez v6, :cond_1

    .line 1076
    new-instance v4, Ljava/io/IOException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "unable to list directory "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1079
    :cond_1
    array-length v7, v6

    const/4 v4, 0x0

    :goto_1
    if-ge v4, v7, :cond_5

    aget-object v8, v6, v4

    .line 1083
    const-string v9, "oat"

    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "mdex_lock"

    .line 1084
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "config"

    .line 1085
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    const-string v9, "regen_stamp"

    .line 1086
    invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3

    .line 1079
    :cond_2
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1091
    :cond_3
    const-string v9, "prog-"

    invoke-virtual {v8, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_4

    .line 1092
    const-string v9, "\\."

    const/4 v11, 0x2

    invoke-virtual {v8, v9, v11}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v9

    .line 1093
    const/4 v11, 0x0

    aget-object v9, v9, v11

    .line 1094
    invoke-virtual {v12, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v9

    if-nez v9, :cond_2

    .line 1101
    const-string v9, "Found possibly stale dex file, blowing it up: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v11, v13

    invoke-static {v9, v11}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1107
    :goto_3
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    invoke-direct {v9, v11, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/facebook/common/dextricks/Fs;->deleteRecursiveNoThrow(Ljava/io/File;)V

    goto :goto_2

    .line 1105
    :cond_4
    const-string v9, "Found unknown file in dex store, so blowing it up: %s"

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v8, v11, v13

    invoke-static {v9, v11}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_3

    .line 1110
    :cond_5
    const/4 v4, 0x0

    .line 1112
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    const-string v7, "oat"

    invoke-direct {v9, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1113
    invoke-virtual {v9}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v8

    .line 1114
    if-eqz v8, :cond_9

    .line 1115
    array-length v11, v8

    const/4 v6, 0x0

    move v7, v6

    :goto_4
    if-ge v7, v11, :cond_9

    aget-object v6, v8, v7

    .line 1117
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v9, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1118
    invoke-virtual {v13}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v14

    .line 1119
    if-eqz v14, :cond_7

    .line 1120
    array-length v15, v14

    const/4 v6, 0x0

    :goto_5
    if-ge v6, v15, :cond_8

    aget-object v16, v14, v6

    .line 1121
    move-object/from16 v0, v16

    invoke-static {v13, v0, v12}, Lcom/facebook/common/dextricks/DexStore;->nukeIfUnexpected(Ljava/io/File;Ljava/lang/String;Ljava/util/HashSet;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 1122
    const/4 v4, 0x1

    .line 1120
    :cond_6
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 1127
    :cond_7
    const-string v13, "prof"

    invoke-virtual {v6, v13}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 1128
    invoke-static {v9, v6, v12}, Lcom/facebook/common/dextricks/DexStore;->nukeIfUnexpected(Ljava/io/File;Ljava/lang/String;Ljava/util/HashSet;)Z

    move-result v6

    if-eqz v6, :cond_8

    .line 1129
    const/4 v4, 0x1

    .line 1115
    :cond_8
    add-int/lit8 v6, v7, 0x1

    move v7, v6

    goto :goto_4

    :cond_9
    move v8, v4

    .line 1135
    if-eqz v8, :cond_19

    .line 1137
    const/4 v4, 0x1

    .line 1140
    :goto_6
    new-instance v6, Lcom/facebook/common/dextricks/OdexSchemeOreo;

    move-object/from16 v0, p2

    iget-object v5, v0, Lcom/facebook/common/dextricks/DexManifest;->dexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;

    invoke-direct {v6, v5}, Lcom/facebook/common/dextricks/OdexSchemeOreo;-><init>([Lcom/facebook/common/dextricks/DexManifest$Dex;)V

    .line 1143
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v5

    invoke-virtual {v5}, Ldalvik/system/VMRuntime;->vmInstructionSet()Ljava/lang/String;

    move-result-object v7

    .line 1144
    new-instance v11, Ljava/util/HashSet;

    invoke-direct {v11}, Ljava/util/HashSet;-><init>()V

    .line 1145
    new-instance v13, Ljava/io/File;

    invoke-direct {v13, v9, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1146
    invoke-virtual {v13}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v9

    .line 1147
    if-eqz v9, :cond_c

    .line 1148
    array-length v14, v9

    const/4 v5, 0x0

    :goto_7
    if-ge v5, v14, :cond_c

    aget-object v15, v9, v5

    .line 1149
    const-string v16, "prog-"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_b

    .line 1150
    const-string v16, ".vdex"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_a

    .line 1151
    const-string v16, "\\."

    const/16 v17, 0x2

    invoke-virtual/range {v15 .. v17}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v15

    .line 1152
    const/16 v16, 0x0

    aget-object v15, v15, v16

    .line 1153
    invoke-virtual {v11, v15}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 1148
    :cond_a
    :goto_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 1156
    :cond_b
    const-string v16, "Found unexpected file in \'oat/%s\': \'%s\'!"

    const/16 v17, 0x2

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-object v7, v17, v18

    const/16 v18, 0x1

    aput-object v15, v17, v18

    invoke-static/range {v16 .. v17}, Lcom/facebook/common/dextricks/Mlog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_8

    .line 1162
    :cond_c
    const/4 v5, 0x0

    .line 1163
    invoke-virtual {v12, v11}, Ljava/util/HashSet;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_18

    .line 1164
    or-int/lit8 v7, v4, 0x1

    .line 1165
    const/4 v5, 0x1

    .line 1166
    invoke-virtual {v13}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_d

    if-nez v8, :cond_d

    .line 1167
    const-string v4, "ART choked on our dexes, we need to unpack them again in order to give ART a chance to generate vdexes again: %s"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v11, v8, v9

    invoke-static {v4, v8}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1173
    :cond_d
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_9
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1174
    new-instance v9, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v13, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v13, ".dex"

    invoke-virtual {v4, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v9, v11, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v9}, Lcom/facebook/common/dextricks/Fs;->deleteRecursiveNoThrow(Ljava/io/File;)V

    goto :goto_9

    .line 1177
    :cond_e
    const/4 v4, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p4

    invoke-direct {v0, v1, v6, v4, v2}, Lcom/facebook/common/dextricks/DexStore;->runCompiler(Lcom/facebook/common/dextricks/DexManifest;Lcom/facebook/common/dextricks/OdexScheme;ILcom/facebook/base/lwperf/LightweightPerfEventsTracer;)V

    move v11, v7

    :goto_a
    move-object/from16 v4, p0

    move-object/from16 v7, p2

    move-object/from16 v8, p4

    move-object/from16 v9, p5

    .line 1181
    invoke-direct/range {v4 .. v10}, Lcom/facebook/common/dextricks/DexStore;->loadDexFiles(ZLcom/facebook/common/dextricks/OdexScheme;Lcom/facebook/common/dextricks/DexManifest;Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;Landroid/content/Context;I)V

    .line 1184
    if-eqz v5, :cond_17

    .line 1185
    invoke-virtual/range {p0 .. p0}, Lcom/facebook/common/dextricks/DexStore;->readConfig()Lcom/facebook/common/dextricks/DexStore$Config;

    move-result-object v4

    .line 1186
    iget v7, v4, Lcom/facebook/common/dextricks/DexStore$Config;->artTruncatedDexSize:I

    .line 1187
    if-lez v7, :cond_17

    .line 1188
    invoke-virtual {v12}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_f
    :goto_b
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_17

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1189
    new-instance v5, Ljava/io/File;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v9, ".dex"

    invoke-virtual {v4, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1190
    invoke-virtual {v5}, Ljava/io/File;->length()J

    move-result-wide v12

    int-to-long v14, v7

    cmp-long v4, v12, v14

    if-lez v4, :cond_f

    .line 1191
    new-instance v9, Ljava/io/FileOutputStream;

    invoke-direct {v9, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v6, 0x0

    .line 1192
    :try_start_0
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->getChannel()Ljava/nio/channels/FileChannel;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v10

    .line 1191
    const/4 v5, 0x0

    .line 1193
    int-to-long v12, v7

    :try_start_1
    invoke-virtual {v10, v12, v13}, Ljava/nio/channels/FileChannel;->truncate(J)Ljava/nio/channels/FileChannel;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1194
    if-eqz v10, :cond_10

    if-eqz v5, :cond_12

    :try_start_2
    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_10
    :goto_c
    if-eqz v9, :cond_f

    if-eqz v6, :cond_15

    :try_start_3
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_b

    :catch_0
    move-exception v4

    invoke-virtual {v6, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_b

    :catch_1
    move-exception v4

    :try_start_4
    invoke-virtual {v5, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_c

    .line 1191
    :catch_2
    move-exception v4

    :try_start_5
    throw v4
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1194
    :catchall_0
    move-exception v5

    move-object/from16 v19, v5

    move-object v5, v4

    move-object/from16 v4, v19

    :goto_d
    if-eqz v9, :cond_11

    if-eqz v5, :cond_16

    :try_start_6
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_5

    :cond_11
    :goto_e
    throw v4

    :cond_12
    :try_start_7
    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_c

    :catchall_1
    move-exception v4

    move-object v5, v6

    goto :goto_d

    .line 1191
    :catch_3
    move-exception v5

    :try_start_8
    throw v5
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 1194
    :catchall_2
    move-exception v4

    if-eqz v10, :cond_13

    if-eqz v5, :cond_14

    :try_start_9
    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_1

    :cond_13
    :goto_f
    :try_start_a
    throw v4

    :catch_4
    move-exception v7

    invoke-virtual {v5, v7}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_f

    :cond_14
    invoke-virtual {v10}, Ljava/nio/channels/FileChannel;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_2
    .catchall {:try_start_a .. :try_end_a} :catchall_1

    goto :goto_f

    :cond_15
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    goto/16 :goto_b

    :catch_5
    move-exception v6

    invoke-virtual {v5, v6}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_e

    :cond_16
    invoke-virtual {v9}, Ljava/io/FileOutputStream;->close()V

    goto :goto_e

    .line 1199
    :cond_17
    move-object/from16 v0, p1

    iput v11, v0, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;->loadResult:I

    .line 1200
    const-string v4, "OdexSchemeOreo"

    move-object/from16 v0, p1

    iput-object v4, v0, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;->odexSchemeName:Ljava/lang/String;

    .line 1201
    const/4 v4, 0x1

    move-object/from16 v0, p1

    iput-boolean v4, v0, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;->dexoptDuringColdStart:Z

    .line 1202
    move-object/from16 v0, p1

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/common/dextricks/DexStore;->mLastDeri:Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

    .line 1203
    return-object p1

    :cond_18
    move v11, v4

    goto/16 :goto_a

    :cond_19
    move v4, v5

    goto/16 :goto_6
.end method

.method private loadDexFiles(ZLcom/facebook/common/dextricks/OdexScheme;Lcom/facebook/common/dextricks/DexManifest;Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;Landroid/content/Context;I)V
    .locals 21
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/facebook/common/dextricks/DexStore$RecoverableDexException;
        }
    .end annotation

    .prologue
    .line 1339
    and-int/lit8 v2, p6, 0x20

    if-eqz v2, :cond_10

    const/4 v2, 0x1

    move v14, v2

    .line 1340
    :goto_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    if-eqz p1, :cond_11

    const-string v2, "DLL2_multidex_class_loader_first_"

    :goto_1
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 1341
    if-eqz p1, :cond_12

    const v2, 0x880009

    .line 1342
    :goto_2
    move-object/from16 v0, p4

    invoke-virtual {v0, v3, v2}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->start(Ljava/lang/String;I)Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;

    move-result-object v18

    const/4 v15, 0x0

    .line 1343
    const/4 v3, 0x0

    .line 1344
    :try_start_0
    move-object/from16 v0, p3

    iget-boolean v2, v0, Lcom/facebook/common/dextricks/DexManifest;->locators:Z

    if-eqz v2, :cond_0

    .line 1345
    const/4 v3, 0x1

    .line 1347
    :cond_0
    move-object/from16 v0, p3

    iget-boolean v2, v0, Lcom/facebook/common/dextricks/DexManifest;->name_based_locators:Z

    if-eqz v2, :cond_1

    .line 1348
    or-int/lit8 v3, v3, 0x2

    .line 1350
    :cond_1
    and-int/lit8 v2, p6, 0x10

    if-eqz v2, :cond_2

    .line 1352
    or-int/lit8 v3, v3, 0x4

    .line 1357
    :cond_2
    const-string v2, "disable_dex_verifier"

    move-object/from16 v0, p5

    invoke-static {v0, v2}, Lcom/facebook/common/dextricks/DexStore;->checkAndClearGk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v5

    .line 1358
    const-string v2, "disable_dex_collision_check"

    .line 1359
    move-object/from16 v0, p5

    invoke-static {v0, v2}, Lcom/facebook/common/dextricks/DexStore;->checkAndClearGk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    .line 1360
    const-string v2, "disable_dex_isuptodate_check"

    .line 1361
    move-object/from16 v0, p5

    invoke-static {v0, v2}, Lcom/facebook/common/dextricks/DexStore;->checkAndClearGk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v7

    .line 1362
    if-eqz v14, :cond_13

    const/4 v2, 0x0

    move/from16 v17, v2

    .line 1364
    :goto_3
    if-eqz v14, :cond_14

    const/4 v2, 0x0

    move/from16 v16, v2

    .line 1366
    :goto_4
    const-string v2, "fb4a_enable_io_logging_across_add_dexes"

    .line 1367
    move-object/from16 v0, p5

    invoke-static {v0, v2}, Lcom/facebook/common/dextricks/DexStore;->checkAndClearGk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    sput-boolean v2, Lcom/facebook/common/dextricks/DexStore;->logDexAddPageFaults:Z

    .line 1368
    const-string v2, "android_try_to_recover_from_adddex_io_exception"

    .line 1369
    move-object/from16 v0, p5

    invoke-static {v0, v2}, Lcom/facebook/common/dextricks/DexStore;->checkGk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v6

    .line 1370
    if-eqz v5, :cond_3

    .line 1371
    const/4 v2, 0x4

    sget v8, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2, v8}, Lcom/facebook/common/dextricks/DalvikInternals;->installArtHacks(II)I

    .line 1374
    :cond_3
    if-eqz v4, :cond_4

    .line 1375
    const/16 v2, 0x20

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2, v4}, Lcom/facebook/common/dextricks/DalvikInternals;->installArtHacks(II)I

    .line 1378
    :cond_4
    if-eqz v7, :cond_5

    .line 1379
    const/16 v2, 0x40

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2, v4}, Lcom/facebook/common/dextricks/DalvikInternals;->installArtHacks(II)I

    .line 1383
    :cond_5
    if-eqz v16, :cond_6

    .line 1384
    invoke-static/range {p5 .. p5}, Lcom/facebook/common/dextricks/DexStore;->getNonSecondaryDexHashes(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/common/dextricks/DalvikInternals;->hookMmap(Ljava/lang/String;)V

    .line 1387
    :cond_6
    const-string v2, "disable_monitor_visitlocks"

    const/4 v4, 0x0

    move-object/from16 v0, p5

    invoke-static {v0, v2, v4}, Lcom/facebook/gk/coldstartbootstrap/GkBootstrap;->checkIfGkEnabled(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 1388
    const/16 v2, 0x80

    sget v4, Landroid/os/Build$VERSION;->SDK_INT:I

    invoke-static {v2, v4}, Lcom/facebook/common/dextricks/DalvikInternals;->installArtHacks(II)I

    .line 1392
    :cond_7
    sget-boolean v2, Lcom/facebook/common/dextricks/DexStore;->logDexAddPageFaults:Z

    if-eqz v2, :cond_8

    .line 1394
    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/ProcVMStats;->readFromProc()Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;

    move-result-object v2

    .line 1395
    iget-wide v8, v2, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mPagesMajFault:J

    sput-wide v8, Lcom/facebook/common/dextricks/DexStore;->majPageFaultsDelta:J

    .line 1396
    iget-wide v8, v2, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mPagesIn:J

    sput-wide v8, Lcom/facebook/common/dextricks/DexStore;->pageInBytesDelta:J

    .line 1399
    :cond_8
    new-instance v2, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;

    sget v4, Lcom/facebook/common/dextricks/DalvikConstants;->FB_REDEX_COLD_START_SET_DEX_COUNT:I

    .line 1405
    invoke-static/range {p5 .. p5}, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperiments;->getExperiment(Landroid/content/Context;)Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperiment;

    move-result-object v7

    invoke-direct/range {v2 .. v7}, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;-><init>(IIZZLcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperiment;)V

    .line 1406
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->getNumberConfiguredDexFiles()I

    move-result v19

    .line 1408
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3, v2}, Lcom/facebook/common/dextricks/OdexScheme;->configureClassLoader(Ljava/io/File;Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;)V

    .line 1409
    iget-object v3, v2, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->mSecondaryDexFilePaths:Ljava/util/ArrayList;

    .line 1410
    invoke-virtual {v3}, Ljava/util/ArrayList;->clone()Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, Ljava/util/ArrayList;

    move-object v13, v0

    .line 1412
    sget-object v3, Lcom/facebook/common/dextricks/DexStore;->sMergedDexConfig:Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;

    if-nez v3, :cond_9

    .line 1413
    new-instance v7, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;

    const/4 v8, 0x0

    sget v9, Lcom/facebook/common/dextricks/DalvikConstants;->FB_REDEX_COLD_START_SET_DEX_COUNT:I

    .line 1419
    invoke-static/range {p5 .. p5}, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperiments;->getExperiment(Landroid/content/Context;)Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperiment;

    move-result-object v12

    move v10, v5

    move v11, v6

    invoke-direct/range {v7 .. v12}, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;-><init>(IIZZLcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperiment;)V

    sput-object v7, Lcom/facebook/common/dextricks/DexStore;->sMergedDexConfig:Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;

    .line 1422
    :cond_9
    move-object/from16 v0, p3

    invoke-static {v2, v0}, Lcom/facebook/common/dextricks/DexStore;->mergeConfiguration(Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;Lcom/facebook/common/dextricks/DexManifest;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1425
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/facebook/common/dextricks/DexStore;->primaryDexes:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/common/dextricks/DexStore;->auxiliaryDexes:Ljava/util/ArrayList;

    .line 1431
    invoke-static/range {p5 .. p5}, Lcom/facebook/common/coldstartexperiments/loader/FbColdStartExperiments;->getExperiment(Landroid/content/Context;)Lcom/facebook/common/coldstartexperiments/experiments/FbColdStartExperiment;

    move-result-object v6

    check-cast v6, Lcom/facebook/common/coldstartexperiments/experiments/MultiDexClassLoaderV2Experiment;

    move-object/from16 v2, p5

    move-object v5, v13

    move v7, v14

    move/from16 v8, p1

    .line 1426
    invoke-static/range {v2 .. v8}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->install(Landroid/content/Context;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Lcom/facebook/common/coldstartexperiments/experiments/MultiDexClassLoaderV2Experiment;ZZ)Ljava/lang/ClassLoader;

    move-result-object v3

    .line 1434
    if-eqz v17, :cond_a

    sget-boolean v2, Lcom/facebook/common/dextricks/turboloader/TurboLoader$Config;->IS_SUPPORT:Z

    if-eqz v2, :cond_a

    .line 1436
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-class v4, Lcom/facebook/common/dextricks/MultiDexClassLoaderArtNative;

    if-ne v2, v4, :cond_a

    .line 1437
    move-object v0, v3

    check-cast v0, Lcom/facebook/common/dextricks/MultiDexClassLoaderArtNative;

    move-object v2, v0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/facebook/common/dextricks/DexStore;->primaryDexes:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/facebook/common/dextricks/DexStore;->auxiliaryDexes:Ljava/util/ArrayList;

    sget-object v6, Lcom/facebook/common/dextricks/DexStore;->sMergedDexConfig:Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    .line 1438
    invoke-virtual {v2, v4, v5, v6, v7}, Lcom/facebook/common/dextricks/MultiDexClassLoaderArtNative;->configureTurboLoader(Ljava/util/List;Ljava/util/List;Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;Ljava/io/File;)Lcom/facebook/common/dextricks/MultiDexClassLoader;

    .line 1440
    :cond_a
    instance-of v2, v3, Lcom/facebook/common/dextricks/MultiDexClassLoader;

    if-eqz v2, :cond_b

    .line 1441
    check-cast v3, Lcom/facebook/common/dextricks/MultiDexClassLoader;

    sget-object v2, Lcom/facebook/common/dextricks/DexStore;->sMergedDexConfig:Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;

    invoke-virtual {v3, v2}, Lcom/facebook/common/dextricks/MultiDexClassLoader;->configure(Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;)V

    .line 1443
    :cond_b
    if-eqz p1, :cond_c

    .line 1444
    move-object/from16 v0, p0

    move-object/from16 v1, p3

    invoke-direct {v0, v1}, Lcom/facebook/common/dextricks/DexStore;->verifyCanaryClasses(Lcom/facebook/common/dextricks/DexManifest;)V

    .line 1446
    :cond_c
    move-object/from16 v0, p3

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/common/dextricks/DexStore;->mLoadedManifest:Lcom/facebook/common/dextricks/DexManifest;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 1481
    :try_start_2
    sget-boolean v2, Lcom/facebook/common/dextricks/DexStore;->logDexAddPageFaults:Z

    if-eqz v2, :cond_d

    .line 1483
    invoke-static {}, Lcom/facebook/base/lwperf/perfstats/ProcVMStats;->readFromProc()Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;

    move-result-object v2

    .line 1484
    iget-wide v4, v2, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mPagesMajFault:J

    sget-wide v6, Lcom/facebook/common/dextricks/DexStore;->majPageFaultsDelta:J

    sub-long/2addr v4, v6

    sput-wide v4, Lcom/facebook/common/dextricks/DexStore;->majPageFaultsDelta:J

    .line 1485
    iget-wide v2, v2, Lcom/facebook/base/lwperf/perfstats/ProcVMStats$VMStatsValues;->mPagesIn:J

    sget-wide v4, Lcom/facebook/common/dextricks/DexStore;->pageInBytesDelta:J

    sub-long/2addr v2, v4

    sput-wide v2, Lcom/facebook/common/dextricks/DexStore;->pageInBytesDelta:J

    .line 1488
    :cond_d
    if-eqz v16, :cond_e

    .line 1489
    invoke-static {}, Lcom/facebook/common/dextricks/DalvikInternals;->unhookMmap()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1491
    :cond_e
    if-eqz v18, :cond_f

    if-eqz v15, :cond_1c

    :try_start_3
    invoke-virtual/range {v18 .. v18}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    .line 1492
    :cond_f
    :goto_5
    return-void

    .line 1339
    :cond_10
    const/4 v2, 0x0

    move v14, v2

    goto/16 :goto_0

    .line 1340
    :cond_11
    const-string v2, "DLL2_multidex_class_loader_subsequent_"

    goto/16 :goto_1

    .line 1341
    :cond_12
    const v2, 0x880008

    goto/16 :goto_2

    .line 1362
    :cond_13
    :try_start_4
    const-string v2, "enable_turbo_loader"

    .line 1363
    move-object/from16 v0, p5

    invoke-static {v0, v2}, Lcom/facebook/common/dextricks/DexStore;->checkAndClearGk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    move/from16 v17, v2

    goto/16 :goto_3

    .line 1364
    :cond_14
    const-string v2, "madvise_rand_enabled"

    .line 1365
    move-object/from16 v0, p5

    invoke-static {v0, v2}, Lcom/facebook/common/dextricks/DexStore;->checkAndClearGk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v2

    move/from16 v16, v2

    goto/16 :goto_4

    .line 1447
    :catch_0
    move-exception v2

    .line 1452
    and-int/lit8 v3, p6, 0x2

    if-nez v3, :cond_15

    sget-object v3, Lcom/facebook/common/dextricks/DexStore;->sMergedDexConfig:Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;

    .line 1454
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->getNumberConfiguredDexFiles()I

    move-result v3

    move/from16 v0, v19

    if-eq v3, v0, :cond_18

    :cond_15
    const/4 v3, 0x1

    move v4, v3

    .line 1456
    :goto_6
    const-string v5, "%s error in store %s scheme %s regen %s"

    const/4 v3, 0x4

    new-array v6, v3, [Ljava/lang/Object;

    const/4 v7, 0x0

    if-eqz v4, :cond_19

    const-string v3, "fatal"

    :goto_7
    aput-object v3, v6, v7

    const/4 v3, 0x1

    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    aput-object v7, v6, v3

    const/4 v3, 0x2

    aput-object p2, v6, v3

    const/4 v3, 0x3

    .line 1462
    invoke-static/range {p1 .. p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    aput-object v7, v6, v3

    .line 1456
    invoke-static {v2, v5, v6}, Lcom/facebook/common/dextricks/Mlog;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1465
    if-eqz v14, :cond_16

    .line 1466
    if-eqz p1, :cond_1a

    .line 1467
    const-wide/16 v6, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/facebook/common/dextricks/DexStore;->writeStatusLocked(J)V

    .line 1473
    :cond_16
    :goto_8
    if-eqz v4, :cond_1b

    .line 1474
    new-instance v3, Lcom/facebook/common/dextricks/FatalDexError;

    invoke-direct {v3, v2}, Lcom/facebook/common/dextricks/FatalDexError;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 1342
    :catch_1
    move-exception v2

    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 1491
    :catchall_0
    move-exception v3

    move-object/from16 v20, v3

    move-object v3, v2

    move-object/from16 v2, v20

    :goto_9
    if-eqz v18, :cond_17

    if-eqz v3, :cond_1d

    :try_start_6
    invoke-virtual/range {v18 .. v18}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_3

    :cond_17
    :goto_a
    throw v2

    .line 1454
    :cond_18
    const/4 v3, 0x0

    move v4, v3

    goto :goto_6

    .line 1456
    :cond_19
    :try_start_7
    const-string v3, "recoverable"

    goto :goto_7

    .line 1469
    :cond_1a
    const-wide/16 v6, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lcom/facebook/common/dextricks/DexStore;->writeStatusLocked(J)V

    goto :goto_8

    .line 1491
    :catchall_1
    move-exception v2

    move-object v3, v15

    goto :goto_9

    .line 1477
    :cond_1b
    const-string v3, "retrying dex store load after reset"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1478
    new-instance v3, Lcom/facebook/common/dextricks/DexStore$RecoverableDexException;

    invoke-direct {v3, v2}, Lcom/facebook/common/dextricks/DexStore$RecoverableDexException;-><init>(Ljava/lang/Throwable;)V

    throw v3
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_1
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 1491
    :catch_2
    move-exception v2

    invoke-virtual {v15, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_5

    :cond_1c
    invoke-virtual/range {v18 .. v18}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V

    goto/16 :goto_5

    :catch_3
    move-exception v4

    invoke-virtual {v3, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_a

    :cond_1d
    invoke-virtual/range {v18 .. v18}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V

    goto :goto_a
.end method

.method private static logNonOptimalScheme(Lcom/facebook/common/dextricks/OdexScheme;)V
    .locals 4

    .prologue
    .line 1234
    invoke-static {}, Lcom/facebook/common/envflags/EnvFlags;->inCtScanOptMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1235
    const-string v0, "In ct-scan mode, scheme is not optimal: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-virtual {p0}, Lcom/facebook/common/dextricks/OdexScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1237
    :cond_0
    return-void
.end method

.method private static logSchemeNeedsOptimization(Lcom/facebook/common/dextricks/OdexScheme;J)V
    .locals 5

    .prologue
    .line 1241
    invoke-static {}, Lcom/facebook/common/envflags/EnvFlags;->inCtScanOptMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1242
    const-string v0, "In ct-scan mode, scheme %s requires further optimization. Status: 0x%s"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 1244
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/OdexScheme;->getSchemeName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-static {p1, p2}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 1242
    invoke-static {v0, v1}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1246
    :cond_0
    return-void
.end method

.method private static mergeConfiguration(Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;Lcom/facebook/common/dextricks/DexManifest;)V
    .locals 4

    .prologue
    .line 1542
    sget-object v0, Lcom/facebook/common/dextricks/DexStore;->sMergedDexConfig:Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;

    invoke-virtual {v0}, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->getNumberConfiguredDexFiles()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 1543
    sget-object v1, Lcom/facebook/common/dextricks/DexStore;->sMergedDexConfig:Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;

    sget-object v2, Lcom/facebook/common/dextricks/DexStore;->sMergedDexConfig:Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;

    invoke-virtual {v2}, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->getConfigFlags()I

    move-result v2

    invoke-virtual {p0}, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->getConfigFlags()I

    move-result v3

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->setConfigFlags(I)V

    .line 1544
    sget-object v1, Lcom/facebook/common/dextricks/DexStore;->sMergedDexConfig:Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;

    iget v2, p1, Lcom/facebook/common/dextricks/DexManifest;->locator_id:I

    invoke-virtual {v1, v2, v0}, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->addStoreId(II)V

    .line 1545
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->mDexFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ldalvik/system/DexFile;

    .line 1546
    sget-object v2, Lcom/facebook/common/dextricks/DexStore;->sMergedDexConfig:Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;

    invoke-virtual {v2, v0}, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->addDex(Ldalvik/system/DexFile;)V

    goto :goto_0

    .line 1548
    :cond_0
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->mSecondaryDexFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1549
    sget-object v2, Lcom/facebook/common/dextricks/DexStore;->sMergedDexConfig:Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;

    invoke-virtual {v2, v0}, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->addSecondaryDexPath(Ljava/lang/String;)V

    goto :goto_1

    .line 1551
    :cond_1
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->mSecondaryDexFilePaths:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1552
    iget-object v0, p0, Lcom/facebook/common/dextricks/MultiDexClassLoader$Configuration;->mDexFiles:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 1553
    return-void
.end method

.method private static nukeIfUnexpected(Ljava/io/File;Ljava/lang/String;Ljava/util/HashSet;)Z
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/lang/String;",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    const/4 v4, 0x2

    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 1015
    const-string v2, "prog-"

    invoke-virtual {p1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1016
    const-string v2, "\\."

    invoke-virtual {p1, v2, v4}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v2

    .line 1017
    aget-object v3, v2, v0

    .line 1018
    invoke-virtual {p2, v3}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1025
    :cond_0
    :goto_0
    return v0

    .line 1021
    :cond_1
    const-string v3, "Found possible stale %s file, blowing it up: %s"

    new-array v4, v4, [Ljava/lang/Object;

    aget-object v2, v2, v1

    aput-object v2, v4, v0

    aput-object p1, v4, v1

    invoke-static {v3, v4}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1022
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/facebook/common/dextricks/Fs;->deleteRecursiveNoThrow(Ljava/io/File;)V

    move v0, v1

    .line 1023
    goto :goto_0
.end method

.method public static open(Ljava/io/File;Ljava/io/File;Lcom/facebook/common/dextricks/ResProvider;)Lcom/facebook/common/dextricks/DexStore;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 382
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p0, p1, p2, v0, v1}, Lcom/facebook/common/dextricks/DexStore;->open(Ljava/io/File;Ljava/io/File;Lcom/facebook/common/dextricks/ResProvider;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/facebook/common/dextricks/DexStore;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized open(Ljava/io/File;Ljava/io/File;Lcom/facebook/common/dextricks/ResProvider;Ljava/util/ArrayList;Ljava/util/ArrayList;)Lcom/facebook/common/dextricks/DexStore;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            "Ljava/io/File;",
            "Lcom/facebook/common/dextricks/ResProvider;",
            "Ljava/util/ArrayList",
            "<",
            "Ldalvik/system/DexFile;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Ldalvik/system/DexFile;",
            ">;)",
            "Lcom/facebook/common/dextricks/DexStore;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 370
    const-class v6, Lcom/facebook/common/dextricks/DexStore;

    monitor-enter v6

    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->getAbsoluteFile()Ljava/io/File;

    move-result-object v1

    .line 371
    invoke-static {}, Lcom/facebook/common/dextricks/DexStore;->dexStoreListHead()Lcom/facebook/common/dextricks/DexStore;

    move-result-object v0

    :goto_0
    if-eqz v0, :cond_1

    .line 372
    iget-object v2, v0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    invoke-virtual {v2, v1}, Ljava/io/File;->equals(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    if-eqz v2, :cond_0

    .line 378
    :goto_1
    monitor-exit v6

    return-object v0

    .line 371
    :cond_0
    :try_start_1
    iget-object v0, v0, Lcom/facebook/common/dextricks/DexStore;->next:Lcom/facebook/common/dextricks/DexStore;

    goto :goto_0

    .line 376
    :cond_1
    new-instance v0, Lcom/facebook/common/dextricks/DexStore;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/common/dextricks/DexStore;-><init>(Ljava/io/File;Ljava/io/File;Lcom/facebook/common/dextricks/ResProvider;Ljava/util/ArrayList;Ljava/util/ArrayList;)V

    .line 377
    sput-object v0, Lcom/facebook/common/dextricks/DexStore;->sListHead:Lcom/facebook/common/dextricks/DexStore;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 370
    :catchall_0
    move-exception v0

    monitor-exit v6

    throw v0
.end method

.method private openDexIterator(Lcom/facebook/common/dextricks/DexManifest;Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;)Lcom/facebook/common/dextricks/InputDexIterator;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1924
    iget v0, p1, Lcom/facebook/common/dextricks/DexManifest;->superpack_files:I

    if-lez v0, :cond_1

    .line 1925
    invoke-direct {p0, p1, p2}, Lcom/facebook/common/dextricks/DexStore;->openSuperpackDexIterator(Lcom/facebook/common/dextricks/DexManifest;Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;)Lcom/facebook/common/dextricks/SuperpackInputDexIterator;

    move-result-object v0

    .line 1959
    :cond_0
    :goto_0
    return-object v0

    .line 1931
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->id:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->id:Ljava/lang/String;

    const-string v2, "dex"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1932
    :cond_2
    const-string v0, "secondary.dex.jar.xzs"
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1937
    :goto_1
    :try_start_1
    iget-object v2, p0, Lcom/facebook/common/dextricks/DexStore;->mResProvider:Lcom/facebook/common/dextricks/ResProvider;

    invoke-virtual {v2, v0}, Lcom/facebook/common/dextricks/ResProvider;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v2

    .line 1944
    :goto_2
    if-eqz v2, :cond_4

    .line 1946
    :try_start_2
    const-string v3, "using solid xz dex store at %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1948
    new-instance v0, Lcom/facebook/common/dextricks/SolidXzInputDexIterator;

    iget-object v3, p0, Lcom/facebook/common/dextricks/DexStore;->mResProvider:Lcom/facebook/common/dextricks/ResProvider;

    invoke-direct {v0, p1, v3, v2, p2}, Lcom/facebook/common/dextricks/SolidXzInputDexIterator;-><init>(Lcom/facebook/common/dextricks/DexManifest;Lcom/facebook/common/dextricks/ResProvider;Ljava/io/InputStream;Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 1958
    :goto_3
    if-eqz v1, :cond_0

    .line 1959
    invoke-static {v1}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1934
    :cond_3
    :try_start_3
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->id:Ljava/lang/String;

    const-string v2, ".dex.jar.xzs"

    invoke-virtual {v0, v2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v0

    goto :goto_1

    .line 1938
    :catch_0
    move-exception v2

    move-object v2, v1

    goto :goto_2

    .line 1952
    :cond_4
    :try_start_4
    const-string v1, "using discrete file inputs for store, no file at %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1954
    new-instance v0, Lcom/facebook/common/dextricks/DiscreteFileInputDexIterator;

    iget-object v1, p0, Lcom/facebook/common/dextricks/DexStore;->mResProvider:Lcom/facebook/common/dextricks/ResProvider;

    invoke-direct {v0, p1, v1}, Lcom/facebook/common/dextricks/DiscreteFileInputDexIterator;-><init>(Lcom/facebook/common/dextricks/DexManifest;Lcom/facebook/common/dextricks/ResProvider;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    move-object v1, v2

    goto :goto_3

    .line 1958
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_5

    .line 1959
    invoke-static {v2}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    :cond_5
    throw v0

    .line 1958
    :catchall_1
    move-exception v0

    goto :goto_4
.end method

.method private openSuperpackDexIterator(Lcom/facebook/common/dextricks/DexManifest;Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;)Lcom/facebook/common/dextricks/SuperpackInputDexIterator;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 1909
    invoke-static {p1}, Lcom/facebook/common/dextricks/SuperpackInputDexIterator;->builder(Lcom/facebook/common/dextricks/DexManifest;)Lcom/facebook/common/dextricks/SuperpackInputDexIterator$Builder;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/facebook/common/dextricks/SuperpackInputDexIterator$Builder;->setTracer(Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;)Lcom/facebook/common/dextricks/SuperpackInputDexIterator$Builder;

    move-result-object v2

    move v0, v1

    .line 1911
    :goto_0
    iget v3, p1, Lcom/facebook/common/dextricks/DexManifest;->superpack_files:I

    if-ge v0, v3, :cond_0

    .line 1912
    iget-object v3, p0, Lcom/facebook/common/dextricks/DexStore;->mResProvider:Lcom/facebook/common/dextricks/ResProvider;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "store-"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ".dex.spk.xz"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/facebook/common/dextricks/ResProvider;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/facebook/common/dextricks/SuperpackInputDexIterator$Builder;->addRawArchive(Ljava/io/InputStream;)Lcom/facebook/common/dextricks/SuperpackInputDexIterator$Builder;

    .line 1911
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1915
    :cond_0
    :goto_1
    iget-object v0, p1, Lcom/facebook/common/dextricks/DexManifest;->dexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;

    array-length v0, v0

    if-ge v1, v0, :cond_1

    .line 1916
    iget v0, p1, Lcom/facebook/common/dextricks/DexManifest;->superpack_files:I

    rem-int v0, v1, v0

    invoke-virtual {v2, v1, v0}, Lcom/facebook/common/dextricks/SuperpackInputDexIterator$Builder;->assignDexToArchive(II)Lcom/facebook/common/dextricks/SuperpackInputDexIterator$Builder;

    .line 1915
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1919
    :cond_1
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/SuperpackInputDexIterator$Builder;->build()Lcom/facebook/common/dextricks/SuperpackInputDexIterator;

    move-result-object v0

    return-object v0
.end method

.method private optimizeInForegroundLocked(Landroid/content/Context;Lcom/facebook/common/dextricks/DexManifest;J)V
    .locals 11

    .prologue
    const/4 v1, 0x0

    const/4 v8, 0x0

    .line 2340
    invoke-direct {p0}, Lcom/facebook/common/dextricks/DexStore;->assertLockHeld()V

    .line 2341
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/common/dextricks/DexStore;->schemeForState(Landroid/content/Context;Lcom/facebook/common/dextricks/DexManifest;J)Lcom/facebook/common/dextricks/OdexScheme;

    move-result-object v0

    .line 2342
    new-instance v2, Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;

    invoke-direct {v2}, Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;-><init>()V

    invoke-virtual {v2}, Lcom/facebook/common/dextricks/OptimizationConfiguration$Builder;->build()Lcom/facebook/common/dextricks/OptimizationConfiguration;

    move-result-object v2

    .line 2343
    new-instance v3, Lcom/facebook/common/dextricks/OptimizationConfiguration$Provider;

    invoke-direct {v3, v2}, Lcom/facebook/common/dextricks/OptimizationConfiguration$Provider;-><init>(Lcom/facebook/common/dextricks/OptimizationConfiguration;)V

    .line 2346
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-virtual {p0, v2}, Lcom/facebook/common/dextricks/DexStore;->getNextRecommendedOptimizationAttemptTime(Lcom/facebook/common/dextricks/OptimizationConfiguration;)J

    move-result-wide v6

    cmp-long v2, v4, v6

    if-gez v2, :cond_1

    .line 2347
    const-string v0, "... actually, not optimizing in foreground, since we failed optimization too recently"

    new-array v1, v8, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2367
    :cond_0
    :goto_0
    return-void

    .line 2353
    :cond_1
    :try_start_0
    new-instance v2, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;

    const/4 v4, 0x1

    const/4 v5, 0x0

    invoke-direct {v2, p0, v3, v4, v5}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;-><init>(Lcom/facebook/common/dextricks/DexStore;Lcom/facebook/common/dextricks/OptimizationConfiguration$Provider;ZLcom/facebook/common/dextricks/DexStore$1;)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4

    const/4 v3, 0x0

    .line 2356
    :try_start_1
    invoke-virtual {v0, p1, p0, v2}, Lcom/facebook/common/dextricks/OdexScheme;->optimize(Landroid/content/Context;Lcom/facebook/common/dextricks/DexStore;Lcom/facebook/common/dextricks/DexStore$OptimizationSession;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 2361
    :try_start_2
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->noteOptimizationSuccess()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2362
    if-eqz v2, :cond_0

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_0
    move-exception v0

    :try_start_4
    invoke-virtual {v3, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/InterruptedException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_4

    goto :goto_0

    :catch_1
    move-exception v0

    .line 2363
    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 2357
    :catch_2
    move-exception v0

    .line 2358
    :try_start_5
    invoke-virtual {v2, v0}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->copeWithOptimizationFailure(Ljava/lang/Throwable;)V

    .line 2359
    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 2353
    :catch_3
    move-exception v0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    .line 2362
    :catchall_0
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_1
    if-eqz v2, :cond_2

    if-eqz v1, :cond_4

    :try_start_7
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_5
    .catch Ljava/lang/InterruptedException; {:try_start_7 .. :try_end_7} :catch_1

    :cond_2
    :goto_2
    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/InterruptedException; {:try_start_8 .. :try_end_8} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_4

    .line 2364
    :catch_4
    move-exception v0

    .line 2365
    const-string v1, "foreground optimization failed; proceeding"

    new-array v2, v8, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2362
    :cond_3
    :try_start_9
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->close()V

    goto :goto_0

    :catch_5
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->close()V
    :try_end_9
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_4

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private pruneTemporaryDirectoriesLocked([Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v10, 0x1

    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 2024
    invoke-direct {p0}, Lcom/facebook/common/dextricks/DexStore;->assertLockHeld()V

    move v0, v1

    .line 2026
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_a

    .line 2027
    aget-object v4, p1, v0

    .line 2028
    if-nez v4, :cond_1

    .line 2026
    :cond_0
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2035
    :cond_1
    const-string v2, ".tmpdir_lock"

    invoke-virtual {v4, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 2037
    aput-object v3, p1, v0

    .line 2038
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/facebook/common/dextricks/Fs;->stripLastExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".tmpdir"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/facebook/common/dextricks/DexStore;->findInArray([Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 2039
    if-ltz v5, :cond_d

    .line 2040
    aget-object v2, p1, v5

    .line 2041
    aput-object v3, p1, v5

    .line 2053
    :goto_2
    if-eqz v4, :cond_8

    if-eqz v2, :cond_8

    .line 2054
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    invoke-direct {v5, v6, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2055
    invoke-static {v5}, Lcom/facebook/common/dextricks/ReentrantLockFile;->open(Ljava/io/File;)Lcom/facebook/common/dextricks/ReentrantLockFile;

    move-result-object v4

    .line 2056
    const/4 v6, 0x0

    :try_start_0
    invoke-virtual {v4, v6}, Lcom/facebook/common/dextricks/ReentrantLockFile;->tryAcquire(I)Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;

    move-result-object v6

    .line 2057
    if-nez v6, :cond_4

    .line 2058
    const-string v5, "tmpdir %s in use: not deleting"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-static {v5, v6}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 2068
    if-eqz v4, :cond_0

    if-eqz v3, :cond_3

    :try_start_1
    invoke-virtual {v4}, Lcom/facebook/common/dextricks/ReentrantLockFile;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    :catch_0
    move-exception v2

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    .line 2043
    :cond_2
    const-string v2, ".tmpdir"

    invoke-virtual {v4, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_c

    .line 2045
    aput-object v3, p1, v0

    .line 2046
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v4}, Lcom/facebook/common/dextricks/Fs;->stripLastExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v5, ".tmpdir_lock"

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2}, Lcom/facebook/common/dextricks/DexStore;->findInArray([Ljava/lang/String;Ljava/lang/String;)I

    move-result v5

    .line 2047
    if-ltz v5, :cond_b

    .line 2048
    aget-object v2, p1, v5

    .line 2049
    aput-object v3, p1, v5

    move-object v11, v4

    move-object v4, v2

    move-object v2, v11

    goto :goto_2

    .line 2068
    :cond_3
    invoke-virtual {v4}, Lcom/facebook/common/dextricks/ReentrantLockFile;->close()V

    goto/16 :goto_1

    .line 2062
    :cond_4
    :try_start_2
    const-string v7, "tmpdir %s (lockfile %s) is abandoned: deleting"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v5, v8, v9

    const/4 v9, 0x1

    aput-object v2, v8, v9

    invoke-static {v7, v8}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2063
    invoke-static {v5}, Lcom/facebook/common/dextricks/Fs;->deleteRecursive(Ljava/io/File;)V

    .line 2064
    new-instance v5, Ljava/io/File;

    iget-object v7, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    invoke-direct {v5, v7, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v5}, Lcom/facebook/common/dextricks/Fs;->deleteRecursive(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2066
    :try_start_3
    invoke-virtual {v6}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 2068
    if-eqz v4, :cond_0

    if-eqz v3, :cond_6

    :try_start_4
    invoke-virtual {v4}, Lcom/facebook/common/dextricks/ReentrantLockFile;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto/16 :goto_1

    :catch_1
    move-exception v2

    invoke-virtual {v3, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto/16 :goto_1

    .line 2066
    :catchall_0
    move-exception v0

    :try_start_5
    invoke-virtual {v6}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V

    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 2055
    :catch_2
    move-exception v0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2068
    :catchall_1
    move-exception v1

    move-object v3, v0

    move-object v0, v1

    :goto_3
    if-eqz v4, :cond_5

    if-eqz v3, :cond_7

    :try_start_7
    invoke-virtual {v4}, Lcom/facebook/common/dextricks/ReentrantLockFile;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    :cond_5
    :goto_4
    throw v0

    :cond_6
    invoke-virtual {v4}, Lcom/facebook/common/dextricks/ReentrantLockFile;->close()V

    goto/16 :goto_1

    :catch_3
    move-exception v1

    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_7
    invoke-virtual {v4}, Lcom/facebook/common/dextricks/ReentrantLockFile;->close()V

    goto :goto_4

    .line 2069
    :cond_8
    if-eqz v4, :cond_9

    .line 2070
    const-string v2, "tmpdir lockfile %s is orphaned: deleting"

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v4, v5, v1

    invoke-static {v2, v5}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2071
    new-instance v2, Ljava/io/File;

    iget-object v5, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    invoke-direct {v2, v5, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/facebook/common/dextricks/Fs;->deleteRecursive(Ljava/io/File;)V

    goto/16 :goto_1

    .line 2072
    :cond_9
    if-eqz v2, :cond_0

    .line 2073
    const-string v4, "tmpdir %s is orphaned without its lockfile: deleting"

    new-array v5, v10, [Ljava/lang/Object;

    aput-object v2, v5, v1

    invoke-static {v4, v5}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2074
    new-instance v4, Ljava/io/File;

    iget-object v5, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    invoke-direct {v4, v5, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v4}, Lcom/facebook/common/dextricks/Fs;->deleteRecursive(Ljava/io/File;)V

    goto/16 :goto_1

    .line 2077
    :cond_a
    return-void

    .line 2068
    :catchall_2
    move-exception v0

    goto :goto_3

    :cond_b
    move-object v2, v4

    move-object v4, v3

    goto/16 :goto_2

    :cond_c
    move-object v2, v3

    move-object v4, v3

    goto/16 :goto_2

    :cond_d
    move-object v2, v3

    goto/16 :goto_2
.end method

.method private readCurrentDepBlock()[B
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1725
    const/4 v0, 0x0

    .line 1727
    :try_start_0
    iget-object v1, p0, Lcom/facebook/common/dextricks/DexStore;->mApk:Ljava/io/File;

    invoke-static {v1}, Lcom/facebook/common/dextricks/DexStore;->determineOdexCacheName(Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 1732
    :goto_0
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 1735
    if-eqz v0, :cond_1

    :try_start_1
    invoke-virtual {v0}, Ljava/io/File;->exists()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-eqz v1, :cond_1

    .line 1739
    :try_start_2
    invoke-direct {p0}, Lcom/facebook/common/dextricks/DexStore;->getParents()[Lcom/facebook/common/dextricks/DexStore;

    move-result-object v5

    array-length v6, v5

    move v1, v3

    :goto_1
    if-ge v1, v6, :cond_0

    aget-object v7, v5, v1

    .line 1740
    invoke-direct {v7}, Lcom/facebook/common/dextricks/DexStore;->readCurrentDepBlock()[B

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1739
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 1728
    :catch_0
    move-exception v1

    .line 1729
    const-string v4, "error reading odex cache file %s"

    new-array v5, v2, [Ljava/lang/Object;

    aput-object v0, v5, v3

    invoke-static {v1, v4, v5}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1742
    :cond_0
    :try_start_3
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/common/dextricks/DalvikInternals;->readOdexDepBlock(Ljava/lang/String;)[B

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeByteArray([B)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move v0, v2

    .line 1749
    :goto_2
    if-nez v0, :cond_3

    .line 1750
    :try_start_4
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mApk:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J

    move-result-wide v0

    .line 1751
    const-wide/16 v2, 0x0

    cmp-long v2, v0, v2

    if-nez v2, :cond_2

    .line 1752
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "unable to get modtime of "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/common/dextricks/DexStore;->mApk:Ljava/io/File;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 1768
    :catchall_0
    move-exception v0

    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    throw v0

    .line 1745
    :catch_1
    move-exception v0

    .line 1746
    :try_start_5
    const-string v1, "could not read odex dep block: using modtime: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v2, v5

    invoke-static {v1, v2}, Lcom/facebook/common/dextricks/Mlog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    move v0, v3

    goto :goto_2

    .line 1754
    :cond_2
    iget-object v2, p0, Lcom/facebook/common/dextricks/DexStore;->mApk:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v4, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1755
    invoke-virtual {v4, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 1756
    sget-object v0, Landroid/os/Build;->FINGERPRINT:Ljava/lang/String;

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 1759
    :cond_3
    invoke-static {}, Lcom/facebook/common/envflags/EnvFlags;->isCtScan()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1760
    const/4 v0, 0x0

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeByte(B)V

    .line 1763
    :cond_4
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/DexStore;->readConfig()Lcom/facebook/common/dextricks/DexStore$Config;

    move-result-object v0

    .line 1764
    invoke-virtual {v0}, Lcom/facebook/common/dextricks/DexStore$Config;->readDepBlock()[B

    move-result-object v0

    invoke-virtual {v4, v0}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 1766
    invoke-virtual {v4}, Landroid/os/Parcel;->marshall()[B
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-result-object v0

    .line 1768
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    return-object v0
.end method

.method private readSavedDepBlock()[B
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 1775
    new-instance v2, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    const-string v3, "deps"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1776
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1808
    :goto_0
    return-object v0

    .line 1781
    :cond_0
    :try_start_0
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v1, "r"

    invoke-direct {v3, v2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1787
    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v4

    .line 1788
    const-wide/32 v6, 0x1000000

    cmp-long v1, v4, v6

    if-lez v1, :cond_1

    .line 1789
    const-string v1, "saved dep block file is way too big (%s bytes): considering invalid"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 1791
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v6

    .line 1789
    invoke-static {v1, v2}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1808
    invoke-static {v3}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1782
    :catch_0
    move-exception v1

    .line 1783
    const-string v3, "unable to open deps file %s"

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v5

    invoke-static {v1, v3, v4}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 1794
    :cond_1
    long-to-int v1, v4

    :try_start_2
    new-array v1, v1, [B

    .line 1795
    invoke-virtual {v3, v1}, Ljava/io/RandomAccessFile;->read([B)I

    move-result v6

    .line 1796
    int-to-long v8, v6

    cmp-long v7, v8, v4

    if-gez v7, :cond_2

    .line 1797
    const-string v1, "short read of dep block %s: wanted %s bytes; got %s: considering invalid"

    const/4 v7, 0x3

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    const/4 v2, 0x1

    .line 1799
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v7, v2

    const/4 v2, 0x2

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v7, v2

    .line 1797
    invoke-static {v1, v7}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1808
    invoke-static {v3}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    goto :goto_0

    .line 1804
    :cond_2
    :try_start_3
    const-string v0, "read saved dep file %s (%s bytes)"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    const/4 v2, 0x1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v6, v2

    invoke-static {v0, v6}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1808
    invoke-static {v3}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    move-object v0, v1

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v3}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    throw v0
.end method

.method private readStatusLocked()J
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v0, 0x0

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2185
    invoke-direct {p0}, Lcom/facebook/common/dextricks/DexStore;->assertLockHeld()V

    .line 2188
    new-instance v4, Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    const-string v3, "mdex_status2"

    invoke-direct {v4, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2190
    :try_start_0
    new-instance v5, Ljava/io/FileInputStream;

    invoke-direct {v5, v4}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2196
    const/16 v2, 0x10

    :try_start_1
    new-array v2, v2, [B

    .line 2197
    const/4 v3, 0x0

    array-length v6, v2

    invoke-virtual {v5, v2, v3, v6}, Ljava/io/FileInputStream;->read([BII)I

    move-result v3

    array-length v6, v2

    if-ge v3, v6, :cond_0

    .line 2198
    const-string v2, "status file %s too short: treating as zero"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/facebook/common/dextricks/Mlog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2199
    invoke-static {v4}, Lcom/facebook/common/dextricks/Fs;->deleteRecursiveNoThrow(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2222
    invoke-static {v5}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    :goto_0
    return-wide v0

    .line 2191
    :catch_0
    move-exception v2

    .line 2192
    const-string v2, "status file %s not found: treating as zero"

    new-array v3, v7, [Ljava/lang/Object;

    aput-object v4, v3, v6

    invoke-static {v2, v3}, Lcom/facebook/common/dextricks/Mlog;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2203
    :cond_0
    :try_start_2
    invoke-static {v2}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v6

    .line 2204
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v2

    .line 2205
    invoke-virtual {v6}, Ljava/nio/ByteBuffer;->getLong()J

    move-result-wide v6

    .line 2208
    const-string v8, "read status:%x check:%x str:%s"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x2

    invoke-static {v2, v3}, Lcom/facebook/common/dextricks/DexStore;->getStatusDescription(J)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2211
    const-wide v8, -0x5314ff805314ff9L

    xor-long/2addr v8, v2

    cmp-long v8, v8, v6

    if-eqz v8, :cond_1

    .line 2212
    const-string v8, "check mismatch: status:%x expected-check:%x actual-check:%x"

    const/4 v9, 0x3

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    .line 2214
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    const-wide v12, -0x5314ff805314ff9L

    xor-long/2addr v2, v12

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v9, v10

    const/4 v2, 0x2

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v9, v2

    .line 2212
    invoke-static {v8, v9}, Lcom/facebook/common/dextricks/Mlog;->e(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2215
    invoke-static {v4}, Lcom/facebook/common/dextricks/Fs;->deleteRecursiveNoThrow(Ljava/io/File;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2222
    invoke-static {v5}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    goto :goto_0

    :cond_1
    invoke-static {v5}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    move-wide v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-static {v5}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    throw v0
.end method

.method private runCompiler(Lcom/facebook/common/dextricks/DexManifest;Lcom/facebook/common/dextricks/OdexScheme;ILcom/facebook/base/lwperf/LightweightPerfEventsTracer;)V
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 582
    invoke-virtual {p2, p0, p3}, Lcom/facebook/common/dextricks/OdexScheme;->makeCompiler(Lcom/facebook/common/dextricks/DexStore;I)Lcom/facebook/common/dextricks/OdexScheme$Compiler;

    move-result-object v3

    .line 583
    :try_start_0
    invoke-direct {p0, p1, p4}, Lcom/facebook/common/dextricks/DexStore;->openDexIterator(Lcom/facebook/common/dextricks/DexManifest;Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;)Lcom/facebook/common/dextricks/InputDexIterator;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    move-result-object v4

    const/4 v0, 0x0

    .line 584
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v4}, Lcom/facebook/common/dextricks/InputDexIterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 585
    invoke-virtual {v4}, Lcom/facebook/common/dextricks/InputDexIterator;->next()Lcom/facebook/common/dextricks/InputDex;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v5

    const/4 v1, 0x0

    .line 586
    :try_start_2
    const-string v6, "compiling %s"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v5, v7, v8

    invoke-static {v6, v7}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 587
    invoke-virtual {v3, v5}, Lcom/facebook/common/dextricks/OdexScheme$Compiler;->compile(Lcom/facebook/common/dextricks/InputDex;)V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    .line 588
    if-eqz v5, :cond_0

    if-eqz v2, :cond_3

    :try_start_3
    invoke-virtual {v5}, Lcom/facebook/common/dextricks/InputDex;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    :catch_0
    move-exception v5

    :try_start_4
    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    .line 583
    :catch_1
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 590
    :catchall_0
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_1
    if-eqz v4, :cond_1

    if-eqz v1, :cond_a

    :try_start_6
    invoke-virtual {v4}, Lcom/facebook/common/dextricks/InputDexIterator;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    :cond_1
    :goto_2
    :try_start_7
    throw v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 582
    :catch_2
    move-exception v0

    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 591
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_3
    if-eqz v3, :cond_2

    if-eqz v2, :cond_c

    :try_start_9
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/OdexScheme$Compiler;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_8

    :cond_2
    :goto_4
    throw v0

    .line 588
    :cond_3
    :try_start_a
    invoke-virtual {v5}, Lcom/facebook/common/dextricks/InputDex;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    goto :goto_0

    .line 590
    :catchall_2
    move-exception v0

    move-object v1, v2

    goto :goto_1

    .line 585
    :catch_3
    move-exception v0

    :try_start_b
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_3

    .line 588
    :catchall_3
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_5
    if-eqz v5, :cond_4

    if-eqz v1, :cond_5

    :try_start_c
    invoke-virtual {v5}, Lcom/facebook/common/dextricks/InputDex;->close()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_4
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    :cond_4
    :goto_6
    :try_start_d
    throw v0

    :catch_4
    move-exception v5

    invoke-virtual {v1, v5}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_5
    invoke-virtual {v5}, Lcom/facebook/common/dextricks/InputDex;->close()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_1
    .catchall {:try_start_d .. :try_end_d} :catchall_2

    goto :goto_6

    .line 590
    :cond_6
    if-eqz v4, :cond_7

    if-eqz v2, :cond_9

    :try_start_e
    invoke-virtual {v4}, Lcom/facebook/common/dextricks/InputDexIterator;->close()V
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_e .. :try_end_e} :catch_5
    .catchall {:try_start_e .. :try_end_e} :catchall_4

    .line 591
    :cond_7
    :goto_7
    if-eqz v3, :cond_8

    if-eqz v2, :cond_b

    :try_start_f
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/OdexScheme$Compiler;->close()V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_7

    .line 592
    :cond_8
    :goto_8
    return-void

    .line 590
    :catch_5
    move-exception v1

    :try_start_10
    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_7

    .line 591
    :catchall_4
    move-exception v0

    goto :goto_3

    .line 590
    :cond_9
    invoke-virtual {v4}, Lcom/facebook/common/dextricks/InputDexIterator;->close()V

    goto :goto_7

    :catch_6
    move-exception v4

    invoke-virtual {v1, v4}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_a
    invoke-virtual {v4}, Lcom/facebook/common/dextricks/InputDexIterator;->close()V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_2
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    goto :goto_2

    .line 591
    :catch_7
    move-exception v0

    invoke-virtual {v2, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_8

    :cond_b
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/OdexScheme$Compiler;->close()V

    goto :goto_8

    :catch_8
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_c
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/OdexScheme$Compiler;->close()V

    goto :goto_4

    .line 588
    :catchall_5
    move-exception v0

    move-object v1, v2

    goto :goto_5
.end method

.method private saveDeps()V
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1825
    invoke-direct {p0}, Lcom/facebook/common/dextricks/DexStore;->readCurrentDepBlock()[B

    move-result-object v0

    .line 1826
    new-instance v2, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    const-string v3, "deps"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1827
    new-instance v3, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v3, v2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const/4 v1, 0x0

    .line 1828
    :try_start_0
    invoke-virtual {v3, v0}, Ljava/io/RandomAccessFile;->write([B)V

    .line 1829
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->getFilePointer()J

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljava/io/RandomAccessFile;->setLength(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 1830
    if-eqz v3, :cond_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 1832
    :cond_0
    :goto_0
    const-string v0, "saved deps file %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    invoke-static {v0, v1}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1834
    return-void

    .line 1830
    :catch_0
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_0

    .line 1827
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1830
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    if-eqz v3, :cond_2

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_2
    throw v0

    :catch_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v3}, Ljava/io/RandomAccessFile;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method private schemeForState(Landroid/content/Context;Lcom/facebook/common/dextricks/DexManifest;J)Lcom/facebook/common/dextricks/OdexScheme;
    .locals 7

    .prologue
    .line 1634
    iget-object v2, p2, Lcom/facebook/common/dextricks/DexManifest;->dexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;

    .line 1635
    const-wide/16 v0, 0xf

    and-long/2addr v0, p3

    long-to-int v0, v0

    int-to-byte v0, v0

    packed-switch v0, :pswitch_data_0

    .line 1649
    :pswitch_0
    new-instance v0, Lcom/facebook/common/dextricks/OdexSchemeInvalid;

    invoke-direct {v0, p3, p4}, Lcom/facebook/common/dextricks/OdexSchemeInvalid;-><init>(J)V

    :goto_0
    return-object v0

    .line 1637
    :pswitch_1
    new-instance v0, Lcom/facebook/common/dextricks/OdexSchemeBoring;

    invoke-direct {v0, v2}, Lcom/facebook/common/dextricks/OdexSchemeBoring;-><init>([Lcom/facebook/common/dextricks/DexManifest$Dex;)V

    goto :goto_0

    .line 1639
    :pswitch_2
    new-instance v0, Lcom/facebook/common/dextricks/OdexSchemeTurbo;

    invoke-direct {v0, v2}, Lcom/facebook/common/dextricks/OdexSchemeTurbo;-><init>([Lcom/facebook/common/dextricks/DexManifest$Dex;)V

    goto :goto_0

    .line 1641
    :pswitch_3
    new-instance v0, Lcom/facebook/common/dextricks/OdexSchemeXdex;

    invoke-direct {v0, v2}, Lcom/facebook/common/dextricks/OdexSchemeXdex;-><init>([Lcom/facebook/common/dextricks/DexManifest$Dex;)V

    goto :goto_0

    .line 1643
    :pswitch_4
    new-instance v0, Lcom/facebook/common/dextricks/OdexSchemeArtTurbo;

    invoke-direct {v0, v2}, Lcom/facebook/common/dextricks/OdexSchemeArtTurbo;-><init>([Lcom/facebook/common/dextricks/DexManifest$Dex;)V

    goto :goto_0

    .line 1645
    :pswitch_5
    new-instance v0, Lcom/facebook/common/dextricks/OdexSchemeArtXdex;

    iget-object v3, p0, Lcom/facebook/common/dextricks/DexStore;->mResProvider:Lcom/facebook/common/dextricks/ResProvider;

    move-object v1, p1

    move-wide v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/facebook/common/dextricks/OdexSchemeArtXdex;-><init>(Landroid/content/Context;[Lcom/facebook/common/dextricks/DexManifest$Dex;Lcom/facebook/common/dextricks/ResProvider;J)V

    goto :goto_0

    .line 1647
    :pswitch_6
    new-instance v0, Lcom/facebook/common/dextricks/OdexSchemeNoop;

    invoke-direct {v0}, Lcom/facebook/common/dextricks/OdexSchemeNoop;-><init>()V

    goto :goto_0

    .line 1635
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_3
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method private setDifference([Ljava/lang/String;[Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v1, 0x0

    move v0, v1

    .line 1865
    :goto_0
    array-length v2, p1

    if-ge v0, v2, :cond_2

    .line 1866
    aget-object v3, p1, v0

    .line 1867
    if-eqz v3, :cond_0

    move v2, v1

    .line 1868
    :goto_1
    array-length v4, p2

    if-ge v2, v4, :cond_0

    .line 1869
    aget-object v4, p2, v2

    .line 1870
    if-eqz v4, :cond_1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1871
    const/4 v2, 0x0

    aput-object v2, p1, v0

    .line 1865
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1868
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1877
    :cond_2
    return-void
.end method

.method private touchRegenStamp()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1556
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    const-string v2, "regen_stamp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1557
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    .line 1558
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/io/File;->setLastModified(J)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1559
    new-instance v1, Ljava/io/IOException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "could not set modtime of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1561
    :cond_0
    return-void
.end method

.method private static usingNativeMultiDex(Lcom/facebook/common/dextricks/DexManifest;)Z
    .locals 6

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 1564
    iget-object v2, p0, Lcom/facebook/common/dextricks/DexManifest;->dexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;

    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/facebook/common/dextricks/DexManifest$Dex;->canaryClass:Ljava/lang/String;

    .line 1567
    :try_start_0
    const-string v3, "attempting to detect built-in ART multidex by classloading %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 1569
    iget-object v3, p0, Lcom/facebook/common/dextricks/DexManifest;->dexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;

    const/4 v4, 0x0

    aget-object v3, v3, v4

    iget-object v3, v3, Lcom/facebook/common/dextricks/DexManifest$Dex;->canaryClass:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 1570
    const-string v3, "ART native multi-dex in use: found %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    invoke-static {v3, v4}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1574
    :goto_0
    return v0

    .line 1572
    :catch_0
    move-exception v3

    .line 1573
    const-string v3, "ART multi-dex not in use: cannot load %s"

    new-array v0, v0, [Ljava/lang/Object;

    aput-object v2, v0, v1

    invoke-static {v3, v0}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    move v0, v1

    .line 1574
    goto :goto_0
.end method

.method private verifyCanaryClasses(Lcom/facebook/common/dextricks/DexManifest;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .prologue
    .line 1654
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p1, Lcom/facebook/common/dextricks/DexManifest;->dexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;

    array-length v1, v1

    if-ge v0, v1, :cond_0

    .line 1655
    iget-object v1, p1, Lcom/facebook/common/dextricks/DexManifest;->dexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;

    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/facebook/common/dextricks/DexManifest$Dex;->canaryClass:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    .line 1654
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1657
    :cond_0
    return-void
.end method

.method private writeTxFailedStatusLocked(J)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2228
    const-wide/16 v0, 0x1

    const/4 v2, 0x4

    shl-long v2, p1, v2

    or-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/facebook/common/dextricks/DexStore;->writeStatusLocked(J)V

    .line 2229
    return-void
.end method


# virtual methods
.method public addChild(Lcom/facebook/common/dextricks/DexStore;)V
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mChildStores:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 440
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mChildStores:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 442
    :cond_0
    return-void
.end method

.method public atomicReplaceConfig(Lcom/facebook/common/dextricks/DexStore$Config;)Z
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2985
    iget-object v1, p0, Lcom/facebook/common/dextricks/DexStore;->mLockFile:Lcom/facebook/common/dextricks/ReentrantLockFile;

    invoke-virtual {v1, v0}, Lcom/facebook/common/dextricks/ReentrantLockFile;->acquire(I)Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;

    move-result-object v4

    const/4 v1, 0x0

    .line 2986
    :try_start_0
    new-instance v5, Ljava/io/File;

    iget-object v2, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    const-string v3, "config"

    invoke-direct {v5, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2987
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/DexStore;->readConfig()Lcom/facebook/common/dextricks/DexStore$Config;

    move-result-object v2

    .line 2989
    invoke-virtual {p1, v2}, Lcom/facebook/common/dextricks/DexStore$Config;->equals(Ljava/lang/Object;)Z

    move-result v3

    .line 2991
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/DexStore;->attemptedOptimizationSinceRegeneration()Z

    move-result v6

    if-eqz v6, :cond_6

    move v2, v3

    .line 2997
    :goto_0
    if-eqz v2, :cond_1

    if-nez v3, :cond_1

    .line 2998
    invoke-direct {p0}, Lcom/facebook/common/dextricks/DexStore;->checkDeps()Z

    move-result v6

    if-nez v6, :cond_0

    move v2, v0

    .line 3002
    :cond_0
    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/facebook/common/dextricks/DexStore;->attemptedOptimizationSinceRegeneration()Z

    move-result v6

    if-eqz v6, :cond_1

    move v2, v0

    .line 3007
    :cond_1
    invoke-virtual {p1}, Lcom/facebook/common/dextricks/DexStore$Config;->isDefault()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 3008
    invoke-static {v5}, Lcom/facebook/common/dextricks/Fs;->deleteRecursive(Ljava/io/File;)V

    .line 3015
    :goto_1
    if-nez v2, :cond_2

    .line 3016
    iget-object v5, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    const/4 v6, -0x1

    invoke-static {v5, v6}, Lcom/facebook/common/dextricks/DalvikInternals;->fsyncNamed(Ljava/lang/String;I)V

    .line 3017
    monitor-enter p0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    .line 3019
    :try_start_1
    new-instance v5, Ljava/io/File;

    iget-object v6, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    const-string v7, "regen_stamp"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 3022
    invoke-direct {p0}, Lcom/facebook/common/dextricks/DexStore;->touchRegenStamp()V

    .line 3023
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3026
    :cond_2
    if-eqz v2, :cond_3

    if-nez v3, :cond_3

    .line 3030
    :try_start_2
    invoke-direct {p0}, Lcom/facebook/common/dextricks/DexStore;->saveDeps()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 3033
    :cond_3
    if-nez v2, :cond_4

    const/4 v0, 0x1

    .line 3034
    :cond_4
    if-eqz v4, :cond_5

    if-eqz v1, :cond_9

    :try_start_3
    invoke-virtual {v4}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_5
    :goto_2
    return v0

    .line 2994
    :cond_6
    :try_start_4
    invoke-virtual {p1, v2}, Lcom/facebook/common/dextricks/DexStore$Config;->equalsForBootstrapPurposes(Lcom/facebook/common/dextricks/DexStore$Config;)Z

    move-result v2

    goto :goto_0

    .line 3010
    :cond_7
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    const-string v8, "config.tmp"

    invoke-direct {v6, v7, v8}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3011
    invoke-virtual {p1, v6}, Lcom/facebook/common/dextricks/DexStore$Config;->writeAndSync(Ljava/io/File;)V

    .line 3012
    invoke-static {v6, v5}, Lcom/facebook/common/dextricks/Fs;->renameOrThrow(Ljava/io/File;Ljava/io/File;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_1

    .line 2985
    :catch_0
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 3034
    :catchall_0
    move-exception v1

    move-object v9, v1

    move-object v1, v0

    move-object v0, v9

    :goto_3
    if-eqz v4, :cond_8

    if-eqz v1, :cond_a

    :try_start_6
    invoke-virtual {v4}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_2

    :cond_8
    :goto_4
    throw v0

    .line 3023
    :catchall_1
    move-exception v0

    :try_start_7
    monitor-exit p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    :try_start_8
    throw v0
    :try_end_8
    .catch Ljava/lang/Throwable; {:try_start_8 .. :try_end_8} :catch_0
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 3034
    :catchall_2
    move-exception v0

    goto :goto_3

    :catch_1
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_9
    invoke-virtual {v4}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V

    goto :goto_2

    :catch_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_4

    :cond_a
    invoke-virtual {v4}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V

    goto :goto_4
.end method

.method public attemptedOptimizationSinceRegeneration()Z
    .locals 3

    .prologue
    .line 3060
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    const-string v2, "optimization_log"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    return v0
.end method

.method public findDexHashForCanaryClass(Ljava/lang/String;)Ljava/lang/String;
    .locals 5

    .prologue
    .line 3610
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mLoadedManifest:Lcom/facebook/common/dextricks/DexManifest;

    iget-object v1, v0, Lcom/facebook/common/dextricks/DexManifest;->dexes:[Lcom/facebook/common/dextricks/DexManifest$Dex;

    array-length v2, v1

    const/4 v0, 0x0

    :goto_0
    if-ge v0, v2, :cond_1

    aget-object v3, v1, v0

    .line 3611
    iget-object v4, v3, Lcom/facebook/common/dextricks/DexManifest$Dex;->canaryClass:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3612
    iget-object v0, v3, Lcom/facebook/common/dextricks/DexManifest$Dex;->hash:Ljava/lang/String;

    .line 3615
    :goto_1
    return-object v0

    .line 3610
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3615
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public forceRegenerateOnNextLoad()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 570
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mLockFile:Lcom/facebook/common/dextricks/ReentrantLockFile;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/common/dextricks/ReentrantLockFile;->acquire(I)Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;

    move-result-object v2

    const/4 v1, 0x0

    .line 571
    const-wide/16 v4, 0x6

    :try_start_0
    invoke-virtual {p0, v4, v5}, Lcom/facebook/common/dextricks/DexStore;->writeStatusLocked(J)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 572
    if-eqz v2, :cond_0

    if-eqz v1, :cond_1

    :try_start_1
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 573
    :cond_0
    :goto_0
    return-void

    .line 572
    :catch_0
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V

    goto :goto_0

    .line 570
    :catch_1
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 572
    :catchall_0
    move-exception v0

    if-eqz v2, :cond_2

    if-eqz v1, :cond_3

    :try_start_3
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_2
    :goto_1
    throw v0

    :catch_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_3
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V

    goto :goto_1
.end method

.method public getAndClearCompletedOptimizationLog()Lcom/facebook/common/dextricks/DexStore$OptimizationLog;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 2461
    new-instance v2, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    const-string v3, "optimization_log"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2462
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 2475
    :cond_0
    :goto_0
    return-object v0

    .line 2466
    :cond_1
    iget-object v1, p0, Lcom/facebook/common/dextricks/DexStore;->mLockFile:Lcom/facebook/common/dextricks/ReentrantLockFile;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/facebook/common/dextricks/ReentrantLockFile;->acquire(I)Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;

    move-result-object v3

    .line 2467
    :try_start_0
    invoke-static {v2}, Lcom/facebook/common/dextricks/DexStore$OptimizationLog;->readOrMakeDefault(Ljava/io/File;)Lcom/facebook/common/dextricks/DexStore$OptimizationLog;

    move-result-object v1

    .line 2469
    iget v4, v1, Lcom/facebook/common/dextricks/DexStore$OptimizationLog;->flags:I
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    and-int/lit8 v4, v4, 0x1

    if-nez v4, :cond_3

    .line 2475
    if-eqz v3, :cond_0

    if-eqz v0, :cond_2

    :try_start_1
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    move-exception v1

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V

    goto :goto_0

    .line 2473
    :cond_3
    :try_start_2
    invoke-virtual {v2}, Ljava/io/File;->delete()Z
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 2475
    if-eqz v3, :cond_4

    if-eqz v0, :cond_5

    :try_start_3
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    :cond_4
    :goto_1
    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v2

    invoke-virtual {v0, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_5
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V

    goto :goto_1

    .line 2466
    :catch_2
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2475
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_2
    if-eqz v3, :cond_6

    if-eqz v1, :cond_7

    :try_start_5
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_3

    :cond_6
    :goto_3
    throw v0

    :catch_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_7
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V

    goto :goto_3

    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2
.end method

.method getDependencyOdexFiles()[Ljava/io/File;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3472
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3473
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mApk:Ljava/io/File;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3474
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mApk:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/common/dextricks/DexStore;->determineOdexCacheName(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3475
    invoke-direct {p0}, Lcom/facebook/common/dextricks/DexStore;->getParents()[Lcom/facebook/common/dextricks/DexStore;

    move-result-object v4

    array-length v5, v4

    move v2, v1

    :goto_0
    if-ge v2, v5, :cond_1

    aget-object v0, v4, v2

    .line 3476
    invoke-virtual {v0}, Lcom/facebook/common/dextricks/DexStore;->getDependencyOdexFiles()[Ljava/io/File;

    move-result-object v6

    array-length v7, v6

    move v0, v1

    :goto_1
    if-ge v0, v7, :cond_0

    aget-object v8, v6, v0

    .line 3477
    invoke-virtual {v3, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3476
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 3475
    :cond_0
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 3480
    :cond_1
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/io/File;

    .line 3481
    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 3482
    return-object v0
.end method

.method public getDiagnostics(Landroid/content/Context;)Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 3576
    new-instance v0, Ljava/util/TreeMap;

    invoke-direct {v0}, Ljava/util/TreeMap;-><init>()V

    .line 3577
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/DexStore;->reportStatus()J

    move-result-wide v2

    .line 3578
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/DexStore;->loadManifest()Lcom/facebook/common/dextricks/DexManifest;

    move-result-object v1

    .line 3579
    invoke-direct {p0, p1, v1, v2, v3}, Lcom/facebook/common/dextricks/DexStore;->schemeForState(Landroid/content/Context;Lcom/facebook/common/dextricks/DexManifest;J)Lcom/facebook/common/dextricks/OdexScheme;

    move-result-object v1

    .line 3580
    const-string v4, "loadNotOptimized"

    invoke-virtual {v1, v2, v3}, Lcom/facebook/common/dextricks/OdexScheme;->loadNotOptimized(J)Z

    move-result v5

    invoke-static {v5}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3581
    const-string v4, "needOptimization"

    invoke-virtual {v1, v2, v3}, Lcom/facebook/common/dextricks/OdexScheme;->needOptimization(J)Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3582
    const-string v1, "scheme"

    invoke-static {v2, v3}, Lcom/facebook/common/dextricks/DexStore;->getStatusDescription(J)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v1, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3583
    const-string v1, "status"

    invoke-static {v2, v3}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3585
    new-instance v2, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    const-string v3, "optimization_log"

    invoke-direct {v2, v1, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 3586
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3587
    iget-object v1, p0, Lcom/facebook/common/dextricks/DexStore;->mLockFile:Lcom/facebook/common/dextricks/ReentrantLockFile;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Lcom/facebook/common/dextricks/ReentrantLockFile;->acquire(I)Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;

    move-result-object v3

    const/4 v1, 0x0

    .line 3588
    :try_start_0
    invoke-static {v2}, Lcom/facebook/common/dextricks/DexStore$OptimizationLog;->read(Ljava/io/File;)Lcom/facebook/common/dextricks/DexStore$OptimizationLog;

    move-result-object v2

    .line 3589
    if-eqz v2, :cond_0

    .line 3591
    const-string v4, "optlog.flags"

    iget v5, v2, Lcom/facebook/common/dextricks/DexStore$OptimizationLog;->flags:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3592
    const-string v4, "optlog.nrOptimizationsAttempted"

    iget v5, v2, Lcom/facebook/common/dextricks/DexStore$OptimizationLog;->nrOptimizationsAttempted:I

    .line 3593
    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    .line 3592
    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3594
    const-string v4, "optlog.nrOptimizationsFailed"

    iget v5, v2, Lcom/facebook/common/dextricks/DexStore$OptimizationLog;->nrOptimizationsFailed:I

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3595
    const-string v4, "optlog.lastFailureExceptionJson"

    iget-object v2, v2, Lcom/facebook/common/dextricks/DexStore$OptimizationLog;->lastFailureExceptionJson:Ljava/lang/String;

    invoke-interface {v0, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3597
    :cond_0
    if-eqz v3, :cond_1

    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 3600
    :cond_1
    :goto_0
    return-object v0

    .line 3597
    :catch_0
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V

    goto :goto_0

    .line 3587
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 3597
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_1
    if-eqz v3, :cond_3

    if-eqz v1, :cond_4

    :try_start_3
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_2
    throw v0

    :catch_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method

.method declared-synchronized getLastRegenTime()J
    .locals 3

    .prologue
    .line 1619
    monitor-enter p0

    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    const-string v2, "regen_stamp"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->lastModified()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getLoadedManifest()Lcom/facebook/common/dextricks/DexManifest;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 1630
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mLoadedManifest:Lcom/facebook/common/dextricks/DexManifest;

    return-object v0
.end method

.method public getNextRecommendedOptimizationAttemptTime(Lcom/facebook/common/dextricks/OptimizationConfiguration;)J
    .locals 6

    .prologue
    const-wide/16 v0, 0x0

    .line 2371
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    const-string v4, "optimization_log"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2372
    invoke-virtual {v2}, Ljava/io/File;->lastModified()J

    move-result-wide v2

    .line 2373
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    cmp-long v4, v2, v4

    if-lez v4, :cond_0

    .line 2374
    const-string v2, "ignoring optimization log file from the future"

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide v2, v0

    .line 2377
    :cond_0
    cmp-long v4, v2, v0

    if-lez v4, :cond_1

    iget v0, p1, Lcom/facebook/common/dextricks/OptimizationConfiguration;->timeBetweenOptimizationAttemptsMs:I

    int-to-long v0, v0

    add-long/2addr v0, v2

    :cond_1
    return-wide v0
.end method

.method getOdexCachePath()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 3487
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mApk:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/common/dextricks/DexStore;->determineOdexCacheName(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3488
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mApk:Ljava/io/File;

    invoke-static {v0}, Lcom/facebook/common/dextricks/DexStore;->determineOdexCacheName(Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    .line 3490
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getParentNames()[Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 434
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/DexStore;->loadManifest()Lcom/facebook/common/dextricks/DexManifest;

    .line 435
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mManifest:Lcom/facebook/common/dextricks/DexManifest;

    iget-object v0, v0, Lcom/facebook/common/dextricks/DexManifest;->requires:[Ljava/lang/String;

    return-object v0
.end method

.method public hasChildren()Z
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mChildStores:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public declared-synchronized isLoaded()Z
    .locals 1

    .prologue
    .line 537
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mLoadedManifest:Lcom/facebook/common/dextricks/DexManifest;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit p0

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized loadAll(ILcom/facebook/base/lwperf/LightweightPerfEventsTracer;Landroid/content/Context;)Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 552
    monitor-enter p0

    :try_start_0
    const-string v0, "DLL2_dexstore_load_all"

    const v1, 0x880003

    invoke-virtual {p2, v0, v1}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer;->start(Ljava/lang/String;I)Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v2

    const/4 v1, 0x0

    .line 555
    :try_start_1
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/common/dextricks/DexStore;->loadAllImpl(ILcom/facebook/base/lwperf/LightweightPerfEventsTracer;Landroid/content/Context;)Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;
    :try_end_1
    .catch Lcom/facebook/common/dextricks/DexStore$RecoverableDexException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result-object v0

    .line 565
    :goto_0
    if-eqz v2, :cond_0

    if-eqz v1, :cond_2

    :try_start_2
    invoke-virtual {v2}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_0
    :goto_1
    monitor-exit p0

    return-object v0

    .line 556
    :catch_0
    move-exception v3

    .line 558
    or-int/lit8 v0, p1, 0x2

    :try_start_3
    invoke-direct {p0, v0, p2, p3}, Lcom/facebook/common/dextricks/DexStore;->loadAllImpl(ILcom/facebook/base/lwperf/LightweightPerfEventsTracer;Landroid/content/Context;)Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;

    move-result-object v0

    .line 559
    iput-object v3, v0, Lcom/facebook/common/dextricks/DexErrorRecoveryInfo;->regenRetryCause:Ljava/lang/Throwable;
    :try_end_3
    .catch Lcom/facebook/common/dextricks/DexStore$RecoverableDexException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    goto :goto_0

    .line 560
    :catch_1
    move-exception v0

    .line 561
    :try_start_4
    new-instance v3, Ljava/lang/AssertionError;

    invoke-direct {v3, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v3
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 552
    :catch_2
    move-exception v0

    :try_start_5
    throw v0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 565
    :catchall_0
    move-exception v1

    move-object v4, v1

    move-object v1, v0

    move-object v0, v4

    :goto_2
    if-eqz v2, :cond_1

    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v2}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :cond_1
    :goto_3
    :try_start_7
    throw v0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    .line 552
    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0

    .line 565
    :catch_3
    move-exception v2

    :try_start_8
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_2
    invoke-virtual {v2}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V

    goto :goto_1

    :catch_4
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/facebook/base/lwperf/LightweightPerfEventsTracer$LwpEvent;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    goto :goto_3

    :catchall_2
    move-exception v0

    goto :goto_2
.end method

.method public loadManifest()Lcom/facebook/common/dextricks/DexManifest;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 1886
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mManifest:Lcom/facebook/common/dextricks/DexManifest;

    if-nez v0, :cond_3

    .line 1887
    monitor-enter p0

    .line 1888
    :try_start_0
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mManifest:Lcom/facebook/common/dextricks/DexManifest;

    if-nez v0, :cond_2

    .line 1890
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mResProvider:Lcom/facebook/common/dextricks/ResProvider;

    const-string v1, "metadata.txt"

    invoke-virtual {v0, v1}, Lcom/facebook/common/dextricks/ResProvider;->open(Ljava/lang/String;)Ljava/io/InputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v2

    const/4 v1, 0x0

    .line 1891
    :try_start_1
    new-instance v0, Lcom/facebook/common/dextricks/DexManifest;

    invoke-direct {v0, v2}, Lcom/facebook/common/dextricks/DexManifest;-><init>(Ljava/io/InputStream;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 1892
    if-eqz v2, :cond_0

    if-eqz v1, :cond_4

    :try_start_2
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 1894
    :cond_0
    :goto_0
    :try_start_3
    iget-boolean v1, v0, Lcom/facebook/common/dextricks/DexManifest;->rootRelative:Z

    if-eqz v1, :cond_1

    .line 1895
    iget-object v1, p0, Lcom/facebook/common/dextricks/DexStore;->mResProvider:Lcom/facebook/common/dextricks/ResProvider;

    invoke-virtual {v1}, Lcom/facebook/common/dextricks/ResProvider;->markRootRelative()V

    .line 1898
    :cond_1
    iget-object v1, v0, Lcom/facebook/common/dextricks/DexManifest;->id:Ljava/lang/String;

    iput-object v1, p0, Lcom/facebook/common/dextricks/DexStore;->id:Ljava/lang/String;

    .line 1899
    iput-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mManifest:Lcom/facebook/common/dextricks/DexManifest;

    .line 1901
    :cond_2
    monitor-exit p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 1903
    :cond_3
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mManifest:Lcom/facebook/common/dextricks/DexManifest;

    return-object v0

    .line 1892
    :catch_0
    move-exception v2

    :try_start_4
    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    .line 1901
    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    throw v0

    .line 1892
    :cond_4
    :try_start_5
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_0

    .line 1890
    :catch_1
    move-exception v0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 1892
    :catchall_1
    move-exception v1

    move-object v3, v1

    move-object v1, v0

    move-object v0, v3

    :goto_1
    if-eqz v2, :cond_5

    if-eqz v1, :cond_6

    :try_start_7
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    :cond_5
    :goto_2
    :try_start_8
    throw v0

    :catch_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_1
.end method

.method makeTemporaryDirectory(Ljava/lang/String;)Lcom/facebook/common/dextricks/DexStore$TmpDir;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 1981
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mLockFile:Lcom/facebook/common/dextricks/ReentrantLockFile;

    invoke-virtual {v0, v1}, Lcom/facebook/common/dextricks/ReentrantLockFile;->acquire(I)Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;

    move-result-object v6

    .line 1987
    :try_start_0
    const-string v0, ".tmpdir_lock"

    iget-object v1, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    invoke-static {p1, v0, v1}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    move-result-object v5

    .line 1988
    :try_start_1
    new-instance v4, Ljava/io/File;

    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 1989
    invoke-virtual {v5}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/common/dextricks/Fs;->stripLastExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, ".tmpdir"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v4, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 1990
    invoke-static {v4}, Lcom/facebook/common/dextricks/Fs;->mkdirOrThrow(Ljava/io/File;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_4

    .line 1992
    :try_start_2
    invoke-static {v5}, Lcom/facebook/common/dextricks/ReentrantLockFile;->open(Ljava/io/File;)Lcom/facebook/common/dextricks/ReentrantLockFile;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_5

    move-result-object v3

    .line 1996
    const/4 v0, 0x1

    :try_start_3
    invoke-virtual {v3, v0}, Lcom/facebook/common/dextricks/ReentrantLockFile;->tryAcquire(I)Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_6

    move-result-object v1

    .line 1997
    if-nez v1, :cond_1

    .line 1998
    :try_start_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v7, "should have been able to acquire tmpdir lock"

    invoke-direct {v0, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 2014
    :catchall_0
    move-exception v0

    :goto_0
    :try_start_5
    invoke-static {v1}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    .line 2015
    invoke-static {v3}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    .line 2016
    invoke-static {v5}, Lcom/facebook/common/dextricks/Fs;->deleteRecursiveNoThrow(Ljava/io/File;)V

    .line 2017
    invoke-static {v4}, Lcom/facebook/common/dextricks/Fs;->deleteRecursiveNoThrow(Ljava/io/File;)V

    throw v0
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 1981
    :catch_0
    move-exception v0

    :try_start_6
    throw v0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 2019
    :catchall_1
    move-exception v1

    move-object v2, v0

    move-object v0, v1

    :goto_1
    if-eqz v6, :cond_0

    if-eqz v2, :cond_4

    :try_start_7
    invoke-virtual {v6}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2

    :cond_0
    :goto_2
    throw v0

    .line 2000
    :cond_1
    :try_start_8
    new-instance v0, Lcom/facebook/common/dextricks/DexStore$TmpDir;

    invoke-direct {v0, p0, v1, v4}, Lcom/facebook/common/dextricks/DexStore$TmpDir;-><init>(Lcom/facebook/common/dextricks/DexStore;Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;Ljava/io/File;)V

    .line 2002
    const-string v7, "created tmpdir %s (lock file %s)"

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    iget-object v10, v0, Lcom/facebook/common/dextricks/DexStore$TmpDir;->directory:Ljava/io/File;

    aput-object v10, v8, v9

    const/4 v9, 0x1

    iget-object v10, v3, Lcom/facebook/common/dextricks/ReentrantLockFile;->lockFileName:Ljava/io/File;

    aput-object v10, v8, v9

    invoke-static {v7, v8}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 2004
    const/4 v1, 0x0

    .line 2005
    const/4 v3, 0x0

    .line 2006
    const/4 v4, 0x0

    .line 2007
    const/4 v5, 0x0

    .line 2014
    :try_start_9
    invoke-static {v1}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    .line 2015
    invoke-static {v4}, Lcom/facebook/common/dextricks/Fs;->safeClose(Ljava/io/Closeable;)V

    .line 2016
    invoke-static {v3}, Lcom/facebook/common/dextricks/Fs;->deleteRecursiveNoThrow(Ljava/io/File;)V

    .line 2017
    invoke-static {v5}, Lcom/facebook/common/dextricks/Fs;->deleteRecursiveNoThrow(Ljava/io/File;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 2019
    if-eqz v6, :cond_2

    if-eqz v2, :cond_3

    :try_start_a
    invoke-virtual {v6}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_1

    :cond_2
    :goto_3
    return-object v0

    :catch_1
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v6}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V

    goto :goto_3

    :catch_2
    move-exception v1

    invoke-virtual {v2, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v6}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V

    goto :goto_2

    :catchall_2
    move-exception v0

    goto :goto_1

    .line 2014
    :catchall_3
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    goto :goto_0

    :catchall_4
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    move-object v4, v2

    goto :goto_0

    :catchall_5
    move-exception v0

    move-object v1, v2

    move-object v3, v2

    goto :goto_0

    :catchall_6
    move-exception v0

    move-object v1, v2

    goto :goto_0
.end method

.method public optimize(Landroid/content/Context;Lcom/facebook/common/dextricks/OptimizationConfiguration$Provider;)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InterruptedException;,
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x1

    const/4 v6, 0x0

    .line 2390
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mLoadedManifest:Lcom/facebook/common/dextricks/DexManifest;

    .line 2391
    if-nez v0, :cond_0

    .line 2392
    invoke-virtual {p0}, Lcom/facebook/common/dextricks/DexStore;->loadManifest()Lcom/facebook/common/dextricks/DexManifest;

    move-result-object v0

    .line 2396
    :cond_0
    const-string v2, "[opt] loaded manifets"

    new-array v3, v6, [Ljava/lang/Object;

    invoke-static {v2, v3}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2408
    iget-object v2, p0, Lcom/facebook/common/dextricks/DexStore;->mLockFile:Lcom/facebook/common/dextricks/ReentrantLockFile;

    invoke-virtual {v2, v6}, Lcom/facebook/common/dextricks/ReentrantLockFile;->acquireInterruptubly(I)Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;

    move-result-object v2

    .line 2411
    const-string v3, "[opt] locked dex store %s"

    new-array v4, v4, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    aput-object v5, v4, v6

    invoke-static {v3, v4}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2415
    :try_start_0
    invoke-direct {p0}, Lcom/facebook/common/dextricks/DexStore;->readStatusLocked()J

    move-result-wide v4

    .line 2416
    invoke-direct {p0, p1, v0, v4, v5}, Lcom/facebook/common/dextricks/DexStore;->schemeForState(Landroid/content/Context;Lcom/facebook/common/dextricks/DexManifest;J)Lcom/facebook/common/dextricks/OdexScheme;

    move-result-object v0

    .line 2418
    const-string v3, "[opt] found scheme %s"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v3, v4}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2421
    invoke-direct {p0}, Lcom/facebook/common/dextricks/DexStore;->checkDeps()Z

    move-result v3

    if-nez v3, :cond_2

    .line 2422
    new-instance v0, Lcom/facebook/common/dextricks/DexStore$OptimizationCanceledException;

    const-string v1, "attempt to optimize stale repository"

    invoke-direct {v0, v1}, Lcom/facebook/common/dextricks/DexStore$OptimizationCanceledException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2443
    :catch_0
    move-exception v0

    .line 2444
    :goto_0
    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2449
    :catchall_0
    move-exception v0

    :goto_1
    if-eqz v2, :cond_1

    .line 2450
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V

    :cond_1
    throw v0

    .line 2425
    :cond_2
    :try_start_2
    new-instance v3, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v3, p0, p2, v4, v5}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;-><init>(Lcom/facebook/common/dextricks/DexStore;Lcom/facebook/common/dextricks/OptimizationConfiguration$Provider;ZLcom/facebook/common/dextricks/DexStore$1;)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    const/4 v4, 0x0

    .line 2428
    :try_start_3
    const-string v5, "[opt] opened optimization session"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2430
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    .line 2433
    :try_start_4
    invoke-virtual {v0, p1, p0, v3}, Lcom/facebook/common/dextricks/OdexScheme;->optimize(Landroid/content/Context;Lcom/facebook/common/dextricks/DexStore;Lcom/facebook/common/dextricks/DexStore$OptimizationSession;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 2438
    :try_start_5
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->noteOptimizationSuccess()V

    .line 2440
    const-string v0, "[opt] finished optimization session"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2
    .catchall {:try_start_5 .. :try_end_5} :catchall_4

    .line 2442
    if-eqz v3, :cond_3

    if-eqz v1, :cond_6

    :try_start_6
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4
    .catch Ljava/lang/InterruptedException; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 2449
    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 2450
    invoke-virtual {v1}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V

    .line 2453
    :cond_4
    return-void

    .line 2434
    :catch_1
    move-exception v0

    .line 2435
    :try_start_7
    invoke-virtual {v3, v0}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->copeWithOptimizationFailure(Ljava/lang/Throwable;)V

    .line 2436
    throw v0
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_2
    .catchall {:try_start_7 .. :try_end_7} :catchall_4

    .line 2425
    :catch_2
    move-exception v0

    :goto_3
    :try_start_8
    throw v0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_1

    .line 2442
    :catchall_1
    move-exception v2

    move-object v7, v2

    move-object v2, v1

    move-object v1, v0

    move-object v0, v7

    :goto_4
    if-eqz v3, :cond_5

    if-eqz v1, :cond_7

    :try_start_9
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->close()V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_7
    .catch Ljava/lang/InterruptedException; {:try_start_9 .. :try_end_9} :catch_0
    .catchall {:try_start_9 .. :try_end_9} :catchall_0

    :cond_5
    :goto_5
    :try_start_a
    throw v0
    :try_end_a
    .catch Ljava/lang/InterruptedException; {:try_start_a .. :try_end_a} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_3
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 2445
    :catch_3
    move-exception v0

    .line 2446
    :goto_6
    :try_start_b
    const-string v1, "[opt] optimization failed!"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v3}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2447
    throw v0
    :try_end_b
    .catchall {:try_start_b .. :try_end_b} :catchall_0

    .line 2442
    :catch_4
    move-exception v0

    :try_start_c
    invoke-virtual {v4, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    .line 2443
    :catch_5
    move-exception v0

    move-object v2, v1

    goto :goto_0

    .line 2442
    :cond_6
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->close()V
    :try_end_c
    .catch Ljava/lang/InterruptedException; {:try_start_c .. :try_end_c} :catch_5
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_6
    .catchall {:try_start_c .. :try_end_c} :catchall_2

    goto :goto_2

    .line 2445
    :catch_6
    move-exception v0

    move-object v2, v1

    goto :goto_6

    .line 2442
    :catch_7
    move-exception v3

    :try_start_d
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_7
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/DexStore$OptimizationSession;->close()V
    :try_end_d
    .catch Ljava/lang/InterruptedException; {:try_start_d .. :try_end_d} :catch_0
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_3
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    goto :goto_5

    .line 2449
    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_1

    .line 2442
    :catchall_3
    move-exception v0

    goto :goto_4

    :catchall_4
    move-exception v0

    move-object v2, v1

    goto :goto_4

    .line 2425
    :catch_8
    move-exception v0

    move-object v1, v2

    goto :goto_3
.end method

.method pruneTemporaryDirectories()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 2085
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mLockFile:Lcom/facebook/common/dextricks/ReentrantLockFile;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/common/dextricks/ReentrantLockFile;->acquire(I)Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;

    move-result-object v2

    const/4 v1, 0x0

    .line 2086
    :try_start_0
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->list()[Ljava/lang/String;

    move-result-object v0

    .line 2087
    if-nez v0, :cond_1

    .line 2088
    new-instance v0, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "unable to list directory "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2085
    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 2091
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_0
    if-eqz v2, :cond_0

    if-eqz v1, :cond_4

    :try_start_2
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_1
    throw v0

    .line 2090
    :cond_1
    :try_start_3
    invoke-direct {p0, v0}, Lcom/facebook/common/dextricks/DexStore;->pruneTemporaryDirectoriesLocked([Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 2091
    if-eqz v2, :cond_2

    if-eqz v1, :cond_3

    :try_start_4
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    .line 2092
    :cond_2
    :goto_2
    return-void

    .line 2091
    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_3
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V

    goto :goto_2

    :catch_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_4
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V

    goto :goto_1

    :catchall_1
    move-exception v0

    goto :goto_0
.end method

.method public readConfig()Lcom/facebook/common/dextricks/DexStore$Config;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 3038
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mLockFile:Lcom/facebook/common/dextricks/ReentrantLockFile;

    invoke-virtual {v0, v1}, Lcom/facebook/common/dextricks/ReentrantLockFile;->acquire(I)Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;

    move-result-object v2

    const/4 v1, 0x0

    .line 3039
    :try_start_0
    new-instance v0, Ljava/io/File;

    iget-object v3, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    const-string v4, "config"

    invoke-direct {v0, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3042
    :try_start_1
    invoke-static {v0}, Lcom/facebook/common/dextricks/DexStore$Config;->read(Ljava/io/File;)Lcom/facebook/common/dextricks/DexStore$Config;
    :try_end_1
    .catch Ljava/io/FileNotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-object v0

    .line 3056
    :goto_0
    if-eqz v2, :cond_0

    if-eqz v1, :cond_1

    :try_start_2
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_3

    :cond_0
    :goto_1
    return-object v0

    .line 3043
    :catch_0
    move-exception v0

    .line 3044
    :try_start_3
    new-instance v0, Lcom/facebook/common/dextricks/DexStore$Config$Builder;

    invoke-direct {v0}, Lcom/facebook/common/dextricks/DexStore$Config$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/facebook/common/dextricks/DexStore$Config$Builder;->build()Lcom/facebook/common/dextricks/DexStore$Config;

    move-result-object v0

    goto :goto_0

    .line 3045
    :catch_1
    move-exception v3

    .line 3047
    const-string v3, "unsupported dex store config file %s: ignoring and deleting"

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3, v4}, Lcom/facebook/common/dextricks/Mlog;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3048
    invoke-static {v0}, Lcom/facebook/common/dextricks/Fs;->deleteRecursive(Ljava/io/File;)V

    .line 3049
    new-instance v0, Lcom/facebook/common/dextricks/DexStore$Config$Builder;

    invoke-direct {v0}, Lcom/facebook/common/dextricks/DexStore$Config$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/facebook/common/dextricks/DexStore$Config$Builder;->build()Lcom/facebook/common/dextricks/DexStore$Config;

    move-result-object v0

    goto :goto_0

    .line 3050
    :catch_2
    move-exception v3

    .line 3051
    const-string v4, "error reading dex store config file %s: deleting and proceeding"

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/facebook/common/dextricks/Mlog;->w(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 3052
    invoke-static {v0}, Lcom/facebook/common/dextricks/Fs;->deleteRecursive(Ljava/io/File;)V

    .line 3053
    new-instance v0, Lcom/facebook/common/dextricks/DexStore$Config$Builder;

    invoke-direct {v0}, Lcom/facebook/common/dextricks/DexStore$Config$Builder;-><init>()V

    invoke-virtual {v0}, Lcom/facebook/common/dextricks/DexStore$Config$Builder;->build()Lcom/facebook/common/dextricks/DexStore$Config;
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_4
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result-object v0

    goto :goto_0

    .line 3056
    :catch_3
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V

    goto :goto_1

    .line 3038
    :catch_4
    move-exception v0

    :try_start_4
    throw v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 3056
    :catchall_0
    move-exception v1

    move-object v6, v1

    move-object v1, v0

    move-object v0, v6

    :goto_2
    if-eqz v2, :cond_2

    if-eqz v1, :cond_3

    :try_start_5
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_5

    :cond_2
    :goto_3
    throw v0

    :catch_5
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v2}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V

    goto :goto_3

    :catchall_1
    move-exception v0

    goto :goto_2
.end method

.method public reportStatus()J
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 2126
    const-string v0, "DexStore::reportStatus()"

    new-array v1, v6, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2127
    const-wide/16 v4, 0x0

    .line 2128
    :try_start_0
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->mLockFile:Lcom/facebook/common/dextricks/ReentrantLockFile;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/common/dextricks/ReentrantLockFile;->acquire(I)Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_3

    move-result-object v3

    const/4 v2, 0x0

    .line 2129
    :try_start_1
    invoke-direct {p0}, Lcom/facebook/common/dextricks/DexStore;->readStatusLocked()J
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_2
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-result-wide v0

    .line 2130
    if-eqz v3, :cond_0

    if-eqz v2, :cond_1

    :try_start_2
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    .line 2133
    :cond_0
    :goto_0
    return-wide v0

    .line 2130
    :catch_0
    move-exception v3

    :try_start_3
    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_0

    :catch_1
    move-exception v2

    .line 2131
    :goto_1
    const-string v3, "DexStore::reportStatus caught Throwable "

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    aput-object v2, v4, v6

    invoke-static {v3, v4}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 2130
    :cond_1
    :try_start_4
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    .line 2128
    :catch_2
    move-exception v1

    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 2130
    :catchall_0
    move-exception v0

    :goto_2
    if-eqz v3, :cond_2

    if-eqz v1, :cond_3

    :try_start_6
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_4

    :cond_2
    :goto_3
    :try_start_7
    throw v0

    :catch_3
    move-exception v0

    move-object v2, v0

    move-wide v0, v4

    goto :goto_1

    :catch_4
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_3
    invoke-virtual {v3}, Lcom/facebook/common/dextricks/ReentrantLockFile$Lock;->close()V
    :try_end_7
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_3

    goto :goto_3

    :catchall_1
    move-exception v0

    move-object v1, v2

    goto :goto_2
.end method

.method writeStatusLocked(J)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 2233
    invoke-direct {p0}, Lcom/facebook/common/dextricks/DexStore;->assertLockHeld()V

    .line 2240
    const-wide/16 v0, 0xf

    and-long/2addr v0, p1

    long-to-int v0, v0

    int-to-byte v0, v0

    .line 2241
    if-eq v0, v7, :cond_0

    .line 2242
    iget-object v0, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, -0x1

    invoke-static {v0, v1}, Lcom/facebook/common/dextricks/DalvikInternals;->fsyncNamed(Ljava/lang/String;I)V

    .line 2245
    :cond_0
    new-instance v0, Ljava/io/File;

    iget-object v1, p0, Lcom/facebook/common/dextricks/DexStore;->root:Ljava/io/File;

    const-string v2, "mdex_status2"

    invoke-direct {v0, v1, v2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2246
    const-wide v2, -0x5314ff805314ff9L

    xor-long/2addr v2, p1

    .line 2248
    const-string v1, "writing status:%x check:%x str:%s"

    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v6

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v7

    const/4 v5, 0x2

    invoke-static {p1, p2}, Lcom/facebook/common/dextricks/DexStore;->getStatusDescription(J)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v1, v4}, Lcom/facebook/common/dextricks/Mlog;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 2251
    const/16 v1, 0x10

    new-array v4, v1, [B

    .line 2252
    invoke-static {v4}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v1

    .line 2253
    invoke-virtual {v1, p1, p2}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 2254
    invoke-virtual {v1, v2, v3}, Ljava/nio/ByteBuffer;->putLong(J)Ljava/nio/ByteBuffer;

    .line 2256
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    .line 2257
    const/4 v0, 0x0

    :try_start_0
    array-length v3, v4

    invoke-virtual {v2, v4, v0, v3}, Ljava/io/FileOutputStream;->write([BII)V

    .line 2258
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 2259
    if-eqz v2, :cond_1

    if-eqz v1, :cond_2

    :try_start_1
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    .line 2260
    :cond_1
    :goto_0
    return-void

    .line 2259
    :catch_0
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_0

    .line 2256
    :catch_1
    move-exception v0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 2259
    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_1
    if-eqz v2, :cond_3

    if-eqz v1, :cond_4

    :try_start_3
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2

    :cond_3
    :goto_2
    throw v0

    :catch_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_4
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method
