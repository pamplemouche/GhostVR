.class public Lcom/facebook/common/errorreporting/FbErrorReporterImpl;
.super Lcom/facebook/common/errorreporting/AbstractFbErrorReporter;
.source "FbErrorReporterImpl.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "NonLiteralLogTagArgument"
    }
.end annotation

.annotation build Lcom/facebook/infer/annotation/ThreadSafe;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/common/errorreporting/FbErrorReporterImpl$ShowToast;,
        Lcom/facebook/common/errorreporting/FbErrorReporterImpl$ErrorReporterProvider;
    }
.end annotation


# static fields
.field static volatile DISABLE_OVERRIDE:Z

.field private static final TAG:Ljava/lang/String;

.field public static final sErrorReporterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/acra/ErrorReporter;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mClock:Lcom/facebook/common/time/MonotonicClock;

.field private final mContext:Landroid/content/Context;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mErrorReporterProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/acra/ErrorReporter;",
            ">;"
        }
    .end annotation
.end field

.field private final mErrorReportingGkReader:Lcom/facebook/common/errorreporting/ErrorReportingGkReader;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mExecutorService:Ljava/util/concurrent/ExecutorService;

.field private final mIsInternalBuildProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsMeUserFbEmployeeProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/common/util/TriState;",
            ">;"
        }
    .end annotation
.end field

.field private mIsNonEmployeeModeEnabled:Ljava/lang/Boolean;

.field private final mObservedSoftErrorsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private volatile mQplBridge:Lcom/facebook/common/errorreporting/ErrorReporterQplBridge;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mRandom:Ljava/util/Random;

.field private volatile mSoftErrorCategoryBlacklist:Lcom/facebook/common/mobilesofterror/intf/SoftErrorCategoryBlacklist;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mTestingMode:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-class v0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->TAG:Ljava/lang/String;

    .line 65
    new-instance v0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$ErrorReporterProvider;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$ErrorReporterProvider;-><init>(Lcom/facebook/common/errorreporting/FbErrorReporterImpl$1;)V

    sput-object v0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->sErrorReporterProvider:Ljavax/inject/Provider;

    .line 84
    invoke-static {}, Lcom/facebook/testenv/TestEnvironment;->isTest()Z

    move-result v0

    sput-boolean v0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->DISABLE_OVERRIDE:Z

    return-void
.end method

.method public constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljava/util/concurrent/ExecutorService;Lcom/facebook/common/time/MonotonicClock;Ljava/util/Random;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/common/util/TriState;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/facebook/common/time/MonotonicClock;",
            "Ljava/util/Random;",
            ")V"
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 97
    sget-object v8, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->sErrorReporterProvider:Ljavax/inject/Provider;

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v7, v6

    invoke-direct/range {v0 .. v9}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljava/util/concurrent/ExecutorService;Lcom/facebook/common/time/MonotonicClock;Ljava/util/Random;Landroid/content/Context;Lcom/facebook/common/errorreporting/ErrorReportingGkReader;Ljavax/inject/Provider;Z)V

    .line 107
    return-void
.end method

.method constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljava/util/concurrent/ExecutorService;Lcom/facebook/common/time/MonotonicClock;Ljava/util/Random;Landroid/content/Context;Lcom/facebook/common/errorreporting/ErrorReportingGkReader;Ljavax/inject/Provider;Z)V
    .locals 2
    .param p6    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7    # Lcom/facebook/common/errorreporting/ErrorReportingGkReader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/common/util/TriState;",
            ">;",
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/util/concurrent/ExecutorService;",
            "Lcom/facebook/common/time/MonotonicClock;",
            "Ljava/util/Random;",
            "Landroid/content/Context;",
            "Lcom/facebook/common/errorreporting/ErrorReportingGkReader;",
            "Ljavax/inject/Provider",
            "<",
            "Lcom/facebook/acra/ErrorReporter;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 138
    invoke-direct {p0}, Lcom/facebook/common/errorreporting/AbstractFbErrorReporter;-><init>()V

    .line 79
    iput-object v1, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mIsNonEmployeeModeEnabled:Ljava/lang/Boolean;

    .line 139
    iput-object p1, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mIsMeUserFbEmployeeProvider:Ljavax/inject/Provider;

    .line 140
    iput-object p2, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mIsInternalBuildProvider:Ljavax/inject/Provider;

    .line 141
    iput-object p3, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    .line 142
    iput-object p4, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mClock:Lcom/facebook/common/time/MonotonicClock;

    .line 143
    iput-object p5, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mRandom:Ljava/util/Random;

    .line 144
    iput-object p6, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mContext:Landroid/content/Context;

    .line 145
    iput-object p8, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mErrorReporterProvider:Ljavax/inject/Provider;

    .line 146
    iput-object p7, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mErrorReportingGkReader:Lcom/facebook/common/errorreporting/ErrorReportingGkReader;

    .line 147
    iput-boolean p9, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mTestingMode:Z

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mObservedSoftErrorsMap:Ljava/util/Map;

    .line 149
    iput-object v1, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mSoftErrorCategoryBlacklist:Lcom/facebook/common/mobilesofterror/intf/SoftErrorCategoryBlacklist;

    .line 150
    return-void
.end method

.method static synthetic access$100(Lcom/facebook/common/errorreporting/FbErrorReporterImpl;)Ljavax/inject/Provider;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mErrorReporterProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/common/errorreporting/FbErrorReporterImpl;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mTestingMode:Z

    return v0
.end method

.method private countIfShouldUploadSoftError(Lcom/facebook/common/errorreporting/SoftError;)Ljava/lang/Integer;
    .locals 14
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 373
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 374
    iget-object v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v4

    const-wide/16 v6, 0x3e8

    div-long/2addr v4, v6

    .line 375
    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getCategory()Ljava/lang/String;

    move-result-object v6

    .line 376
    iget-object v7, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mObservedSoftErrorsMap:Ljava/util/Map;

    monitor-enter v7

    .line 378
    :try_start_0
    iget-object v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mObservedSoftErrorsMap:Ljava/util/Map;

    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getCategory()Ljava/lang/String;

    move-result-object v8

    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 379
    if-eqz v0, :cond_1

    .line 380
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->intValue()I

    move-result v8

    .line 381
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    sub-long v10, v4, v10

    .line 382
    const-wide/16 v12, 0x78

    cmp-long v1, v10, v12

    if-gez v1, :cond_0

    const/16 v1, 0x64

    if-ge v8, v1, :cond_0

    .line 383
    int-to-long v4, v8

    const-wide/16 v8, 0x1

    add-long/2addr v4, v8

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v3, v1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->TAG:Ljava/lang/String;

    const-string v1, "Soft error: category \'%s\' message \'%s\' fired, but not uploading"

    .line 388
    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getMessage()Ljava/lang/String;

    move-result-object v2

    .line 384
    invoke-static {v0, v1, v6, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 389
    const/4 v0, 0x0

    monitor-exit v7

    .line 398
    :goto_0
    return-object v0

    .line 391
    :cond_0
    add-int/lit8 v0, v8, 0x1

    .line 397
    :goto_1
    iget-object v1, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mObservedSoftErrorsMap:Ljava/util/Map;

    new-instance v2, Ljava/util/ArrayList;

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Long;

    const/4 v8, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v8

    const/4 v4, 0x1

    const-wide/16 v8, 0x0

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v1, v6, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    monitor-exit v7

    goto :goto_0

    .line 399
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    :cond_1
    move v0, v1

    .line 394
    goto :goto_1
.end method

.method private failHarder(Lcom/facebook/common/errorreporting/SoftError;)V
    .locals 6

    .prologue
    .line 362
    iget-object v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mErrorReporterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/acra/ErrorReporter;

    .line 363
    const-string/jumbo v1, "soft_error_message"

    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    sget-object v1, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->TAG:Ljava/lang/String;

    const-string v2, "category: %s message: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getCategory()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getMessage()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Soft error FAILING HARDER: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 367
    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 368
    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getCause()Ljava/lang/Throwable;

    move-result-object v3

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 369
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Lcom/facebook/acra/ErrorReporter;->reportErrorAndTerminate(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 370
    return-void
.end method

.method private initIsNonEmployeeModeEnabled()V
    .locals 6
    .annotation build Lcom/facebook/infer/annotation/ThreadSafe;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 599
    iget-object v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mIsNonEmployeeModeEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_1

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 603
    :cond_1
    iget-object v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 604
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mIsNonEmployeeModeEnabled:Ljava/lang/Boolean;

    goto :goto_0

    .line 608
    :cond_2
    const/4 v0, 0x0

    .line 610
    :try_start_0
    iget-object v3, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v4, "soft_errors_pref"

    invoke-virtual {v3, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v0

    .line 611
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->read()I

    move-result v3

    if-ne v3, v1, :cond_3

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mIsNonEmployeeModeEnabled:Ljava/lang/Boolean;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 614
    if-eqz v0, :cond_0

    .line 616
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 617
    :catch_0
    move-exception v0

    goto :goto_0

    :cond_3
    move v1, v2

    .line 611
    goto :goto_1

    .line 612
    :catch_1
    move-exception v1

    .line 614
    if-eqz v0, :cond_0

    .line 616
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_0

    .line 617
    :catch_2
    move-exception v0

    goto :goto_0

    .line 614
    :catchall_0
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    :goto_2
    if-eqz v1, :cond_4

    .line 616
    :try_start_4
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 619
    :cond_4
    :goto_3
    throw v0

    .line 617
    :catch_3
    move-exception v1

    goto :goto_3

    .line 614
    :catchall_1
    move-exception v1

    move-object v5, v1

    move-object v1, v0

    move-object v0, v5

    goto :goto_2
.end method

.method private isFailHarderFatalDisabled()Z
    .locals 2

    .prologue
    .line 357
    iget-object v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mErrorReportingGkReader:Lcom/facebook/common/errorreporting/ErrorReportingGkReader;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mErrorReportingGkReader:Lcom/facebook/common/errorreporting/ErrorReportingGkReader;

    .line 358
    invoke-interface {v0}, Lcom/facebook/common/errorreporting/ErrorReportingGkReader;->isFailHarderFatalDisabled()Lcom/facebook/common/util/TriState;

    move-result-object v0

    sget-object v1, Lcom/facebook/common/util/TriState;->YES:Lcom/facebook/common/util/TriState;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private prepSoftReport(Lcom/facebook/common/errorreporting/SoftError;)Ljava/lang/Integer;
    .locals 8
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const-wide/16 v6, 0x100

    const/4 v2, 0x0

    .line 321
    sget-boolean v0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->DISABLE_OVERRIDE:Z

    if-eqz v0, :cond_1

    move-object v0, v2

    .line 353
    :cond_0
    :goto_0
    return-object v0

    .line 324
    :cond_1
    iget-object v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mIsMeUserFbEmployeeProvider:Ljavax/inject/Provider;

    .line 325
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v1, Lcom/facebook/common/util/TriState;->YES:Lcom/facebook/common/util/TriState;

    if-eq v0, v1, :cond_2

    iget-object v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mIsInternalBuildProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 326
    :goto_1
    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->shouldFailHarder()Z

    move-result v1

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    .line 327
    invoke-direct {p0}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->isFailHarderFatalDisabled()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 328
    iget-object v1, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mContext:Landroid/content/Context;

    if-eqz v1, :cond_3

    .line 329
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v3, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$ShowToast;

    iget-object v4, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, p1, v4}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$ShowToast;-><init>(Lcom/facebook/common/errorreporting/SoftError;Landroid/content/Context;)V

    invoke-virtual {v1, v3}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 337
    :cond_3
    invoke-direct {p0, p1}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->countIfShouldUploadSoftError(Lcom/facebook/common/errorreporting/SoftError;)Ljava/lang/Integer;

    move-result-object v1

    .line 338
    if-eqz v0, :cond_6

    if-nez v1, :cond_6

    move-object v0, v2

    .line 339
    goto :goto_0

    .line 325
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 332
    :cond_5
    invoke-direct {p0, p1}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->failHarder(Lcom/facebook/common/errorreporting/SoftError;)V

    move-object v0, v2

    .line 333
    goto :goto_0

    .line 342
    :cond_6
    if-nez v0, :cond_7

    .line 343
    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getSamplingFrequency()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    .line 346
    :goto_2
    invoke-static {v6, v7}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 347
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "softReport category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 349
    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getCategory()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " message: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/facebook/systrace/Systrace$EventScope;->THREAD:Lcom/facebook/systrace/Systrace$EventScope;

    .line 347
    invoke-static {v6, v7, v1, v2}, Lcom/facebook/systrace/Systrace;->traceInstant(JLjava/lang/String;Lcom/facebook/systrace/Systrace$EventScope;)V

    goto/16 :goto_0

    :cond_7
    move-object v0, v1

    goto :goto_2
.end method

.method private samplingFrequencyCategoryModifier(Lcom/facebook/common/errorreporting/SoftError;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 565
    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getCategory()Ljava/lang/String;

    move-result-object v0

    .line 566
    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getSamplingFrequency()I

    move-result v1

    .line 567
    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getOnlyIfEmployeeOrBetaBuild()Z

    move-result v2

    .line 564
    invoke-direct {p0, v0, v1, v2}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->samplingFrequencyCategoryModifier(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private samplingFrequencyCategoryModifier(Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 572
    iget-object v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mIsInternalBuildProvider:Ljavax/inject/Provider;

    .line 573
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mIsMeUserFbEmployeeProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    sget-object v3, Lcom/facebook/common/util/TriState;->YES:Lcom/facebook/common/util/TriState;

    if-ne v0, v3, :cond_3

    :cond_0
    move v0, v2

    .line 575
    :goto_0
    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mIsNonEmployeeModeEnabled:Ljava/lang/Boolean;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mIsNonEmployeeModeEnabled:Ljava/lang/Boolean;

    .line 576
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 577
    :cond_1
    if-eqz p3, :cond_4

    move-object p1, v1

    .line 589
    :cond_2
    :goto_1
    return-object p1

    .line 573
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 580
    :cond_4
    iget-object v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mRandom:Ljava/util/Random;

    invoke-virtual {v0}, Ljava/util/Random;->nextInt()I

    move-result v0

    rem-int/2addr v0, p2

    if-eqz v0, :cond_5

    move-object p1, v1

    .line 582
    goto :goto_1

    .line 584
    :cond_5
    if-eq p2, v2, :cond_2

    .line 585
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " [freq="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method


# virtual methods
.method public putCurrentUserId(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 560
    iget-object v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mErrorReporterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/acra/ErrorReporter;

    invoke-virtual {v0, p1}, Lcom/facebook/acra/ErrorReporter;->setUserId(Ljava/lang/String;)V

    .line 561
    return-void
.end method

.method public softReport(Lcom/facebook/common/errorreporting/SoftError;)V
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->softReport(Lcom/facebook/common/errorreporting/SoftError;Lcom/facebook/acra/info/ExternalProcessInfo;)V

    .line 191
    return-void
.end method

.method public softReport(Lcom/facebook/common/errorreporting/SoftError;Lcom/facebook/acra/info/ExternalProcessInfo;)V
    .locals 7
    .param p2    # Lcom/facebook/acra/info/ExternalProcessInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 195
    iget-object v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mErrorReportingGkReader:Lcom/facebook/common/errorreporting/ErrorReportingGkReader;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mErrorReportingGkReader:Lcom/facebook/common/errorreporting/ErrorReportingGkReader;

    .line 196
    invoke-interface {v0}, Lcom/facebook/common/errorreporting/ErrorReportingGkReader;->isSoftErrorReportingDisabled()Lcom/facebook/common/util/TriState;

    move-result-object v0

    sget-object v1, Lcom/facebook/common/util/TriState;->YES:Lcom/facebook/common/util/TriState;

    if-ne v0, v1, :cond_1

    .line 197
    sget-object v0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->TAG:Ljava/lang/String;

    const-string v1, "Soft Error reporting disabled, hence not logging"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-direct {p0}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->initIsNonEmployeeModeEnabled()V

    .line 201
    iget-object v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mSoftErrorCategoryBlacklist:Lcom/facebook/common/mobilesofterror/intf/SoftErrorCategoryBlacklist;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mSoftErrorCategoryBlacklist:Lcom/facebook/common/mobilesofterror/intf/SoftErrorCategoryBlacklist;

    .line 202
    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/common/mobilesofterror/intf/SoftErrorCategoryBlacklist;->isCategoryBlacklisted(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 203
    sget-object v0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->TAG:Ljava/lang/String;

    const-string v1, "Not logging because Soft Error category %s is blacklisted"

    .line 206
    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getCategory()Ljava/lang/String;

    move-result-object v2

    .line 203
    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 210
    :cond_2
    iget-object v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mQplBridge:Lcom/facebook/common/errorreporting/ErrorReporterQplBridge;

    if-eqz v0, :cond_3

    .line 211
    iget-object v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mQplBridge:Lcom/facebook/common/errorreporting/ErrorReporterQplBridge;

    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/facebook/common/errorreporting/ErrorReporterQplBridge;->logSoftError(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_3
    invoke-direct {p0, p1}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->prepSoftReport(Lcom/facebook/common/errorreporting/SoftError;)Ljava/lang/Integer;

    move-result-object v4

    .line 215
    if-eqz v4, :cond_0

    .line 218
    invoke-direct {p0, p1}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->samplingFrequencyCategoryModifier(Lcom/facebook/common/errorreporting/SoftError;)Ljava/lang/String;

    move-result-object v2

    .line 219
    if-eqz v2, :cond_0

    .line 223
    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 224
    new-instance v6, Lcom/facebook/common/errorreporting/SoftErrorException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getCategory()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " | "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getCause()Ljava/lang/Throwable;

    move-result-object v1

    invoke-direct {v6, v0, v1}, Lcom/facebook/common/errorreporting/SoftErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    new-instance v0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$1;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$1;-><init>(Lcom/facebook/common/errorreporting/FbErrorReporterImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/facebook/acra/info/ExternalProcessInfo;Ljava/lang/Throwable;)V

    .line 272
    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getSyncCallToErrorHandler()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 273
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 275
    :cond_4
    iget-object v1, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method
