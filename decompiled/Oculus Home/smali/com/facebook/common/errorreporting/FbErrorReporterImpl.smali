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
.field static volatile DISABLE_OVERRIDE:Z = false

.field private static final FILE_NAME:Ljava/lang/String; = "soft_errors_pref"

.field private static final TAG:Ljava/lang/String;

.field private static final UPLOAD_INTERVAL_IN_SECS:I = 0x78

.field private static final UPLOAD_TRIGGER_THRESHOLD:I = 0x64

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
    .param p3, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p4, "monotonicClock"    # Lcom/facebook/common/time/MonotonicClock;
    .param p5, "random"    # Ljava/util/Random;
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
    .local p1, "isMeUserFbEmployeeProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/facebook/common/util/TriState;>;"
    .local p2, "isInternalBuildProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Ljava/lang/Boolean;>;"
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

.method constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljava/util/concurrent/ExecutorService;Lcom/facebook/common/time/MonotonicClock;Ljava/util/Random;Landroid/content/Context;Lcom/facebook/common/errorreporting/ErrorReportingGkReader;)V
    .locals 10
    .param p3, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p4, "monotonicClock"    # Lcom/facebook/common/time/MonotonicClock;
    .param p5, "random"    # Ljava/util/Random;
    .param p6, "context"    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "gkReader"    # Lcom/facebook/common/errorreporting/ErrorReportingGkReader;
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
            ")V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "isMeUserFbEmployeeProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/facebook/common/util/TriState;>;"
    .local p2, "isInternalBuildProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Ljava/lang/Boolean;>;"
    sget-object v8, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->sErrorReporterProvider:Ljavax/inject/Provider;

    const/4 v9, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    invoke-direct/range {v0 .. v9}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;-><init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljava/util/concurrent/ExecutorService;Lcom/facebook/common/time/MonotonicClock;Ljava/util/Random;Landroid/content/Context;Lcom/facebook/common/errorreporting/ErrorReportingGkReader;Ljavax/inject/Provider;Z)V

    .line 127
    return-void
.end method

.method constructor <init>(Ljavax/inject/Provider;Ljavax/inject/Provider;Ljava/util/concurrent/ExecutorService;Lcom/facebook/common/time/MonotonicClock;Ljava/util/Random;Landroid/content/Context;Lcom/facebook/common/errorreporting/ErrorReportingGkReader;Ljavax/inject/Provider;Z)V
    .locals 2
    .param p3, "executorService"    # Ljava/util/concurrent/ExecutorService;
    .param p4, "monotonicClock"    # Lcom/facebook/common/time/MonotonicClock;
    .param p5, "random"    # Ljava/util/Random;
    .param p6, "context"    # Landroid/content/Context;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p7, "gkReader"    # Lcom/facebook/common/errorreporting/ErrorReportingGkReader;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p9, "testingMode"    # Z
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
    .local p1, "isMeUserFbEmployeeProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/facebook/common/util/TriState;>;"
    .local p2, "isInternalBuildProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Ljava/lang/Boolean;>;"
    .local p8, "errorReporterProvider":Ljavax/inject/Provider;, "Ljavax/inject/Provider<Lcom/facebook/acra/ErrorReporter;>;"
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
    .param p0, "x0"    # Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mErrorReporterProvider:Ljavax/inject/Provider;

    return-object v0
.end method

.method static synthetic access$200(Lcom/facebook/common/errorreporting/FbErrorReporterImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/facebook/common/errorreporting/FbErrorReporterImpl;

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mTestingMode:Z

    return v0
.end method

.method static synthetic access$300(Lcom/facebook/common/errorreporting/FbErrorReporterImpl;Ljava/lang/String;IZ)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/facebook/common/errorreporting/FbErrorReporterImpl;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # I
    .param p3, "x3"    # Z

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->samplingFrequencyCategoryModifier(Ljava/lang/String;IZ)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private countIfShouldUploadSoftError(Lcom/facebook/common/errorreporting/SoftError;)Ljava/lang/Integer;
    .locals 20
    .param p1, "softError"    # Lcom/facebook/common/errorreporting/SoftError;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 373
    const/4 v9, 0x0

    .local v9, "timeIndex":I
    const/4 v4, 0x1

    .line 374
    .local v4, "countIndex":I
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mClock:Lcom/facebook/common/time/MonotonicClock;

    invoke-interface {v12}, Lcom/facebook/common/time/MonotonicClock;->now()J

    move-result-wide v12

    const-wide/16 v14, 0x3e8

    div-long v6, v12, v14

    .line 375
    .local v6, "nowInSecs":J
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/common/errorreporting/SoftError;->getCategory()Ljava/lang/String;

    move-result-object v2

    .line 376
    .local v2, "category":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mObservedSoftErrorsMap:Ljava/util/Map;

    monitor-enter v13

    .line 378
    :try_start_0
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mObservedSoftErrorsMap:Ljava/util/Map;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/common/errorreporting/SoftError;->getCategory()Ljava/lang/String;

    move-result-object v14

    invoke-interface {v12, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 379
    .local v5, "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    if-eqz v5, :cond_1

    .line 380
    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->intValue()I

    move-result v8

    .line 381
    .local v8, "previousCount":I
    invoke-interface {v5, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/Long;

    invoke-virtual {v12}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    sub-long v10, v6, v14

    .line 382
    .local v10, "timeElapsed":J
    const-wide/16 v14, 0x78

    cmp-long v12, v10, v14

    if-gez v12, :cond_0

    const/16 v12, 0x64

    if-ge v8, v12, :cond_0

    .line 383
    int-to-long v14, v8

    const-wide/16 v16, 0x1

    add-long v14, v14, v16

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v12

    invoke-interface {v5, v4, v12}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 384
    sget-object v12, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->TAG:Ljava/lang/String;

    const-string v14, "Soft error: category \'%s\' message \'%s\' fired, but not uploading"

    .line 388
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/common/errorreporting/SoftError;->getMessage()Ljava/lang/String;

    move-result-object v15

    .line 384
    invoke-static {v12, v14, v2, v15}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 389
    const/4 v12, 0x0

    monitor-exit v13

    .line 398
    .end local v8    # "previousCount":I
    .end local v10    # "timeElapsed":J
    :goto_0
    return-object v12

    .line 391
    .restart local v8    # "previousCount":I
    .restart local v10    # "timeElapsed":J
    :cond_0
    add-int/lit8 v3, v8, 0x1

    .line 397
    .end local v8    # "previousCount":I
    .end local v10    # "timeElapsed":J
    .local v3, "count":I
    :goto_1
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mObservedSoftErrorsMap:Ljava/util/Map;

    new-instance v14, Ljava/util/ArrayList;

    const/4 v15, 0x2

    new-array v15, v15, [Ljava/lang/Long;

    const/16 v16, 0x0

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    const/16 v16, 0x1

    const-wide/16 v18, 0x0

    invoke-static/range {v18 .. v19}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v17

    aput-object v17, v15, v16

    invoke-static {v15}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v15

    invoke-direct {v14, v15}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-interface {v12, v2, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    monitor-exit v13

    goto :goto_0

    .line 399
    .end local v3    # "count":I
    .end local v5    # "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :catchall_0
    move-exception v12

    monitor-exit v13
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v12

    .line 394
    .restart local v5    # "data":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Long;>;"
    :cond_1
    const/4 v3, 0x1

    .restart local v3    # "count":I
    goto :goto_1
.end method

.method private failHarder(Lcom/facebook/common/errorreporting/SoftError;)V
    .locals 7
    .param p1, "softError"    # Lcom/facebook/common/errorreporting/SoftError;

    .prologue
    .line 362
    iget-object v2, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mErrorReporterProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/acra/ErrorReporter;

    .line 363
    .local v1, "reporter":Lcom/facebook/acra/ErrorReporter;
    const-string v2, "soft_error_message"

    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 364
    sget-object v2, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->TAG:Ljava/lang/String;

    const-string v3, "category: %s message: %s"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getCategory()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    const/4 v5, 0x1

    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getMessage()Ljava/lang/String;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-static {v2, v3, v4}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 365
    new-instance v0, Ljava/lang/RuntimeException;

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

    invoke-direct {v0, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 369
    .local v0, "failedHarderEx":Ljava/lang/Throwable;
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lcom/facebook/acra/ErrorReporter;->reportErrorAndTerminate(Ljava/lang/Thread;Ljava/lang/Throwable;)V

    .line 370
    return-void
.end method

.method private initIsNonEmployeeModeEnabled()V
    .locals 5
    .annotation build Lcom/facebook/infer/annotation/ThreadSafe;
        enableChecks = false
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 599
    iget-object v3, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mIsNonEmployeeModeEnabled:Ljava/lang/Boolean;

    if-eqz v3, :cond_1

    .line 622
    :cond_0
    :goto_0
    return-void

    .line 603
    :cond_1
    iget-object v3, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mContext:Landroid/content/Context;

    if-nez v3, :cond_2

    .line 604
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mIsNonEmployeeModeEnabled:Ljava/lang/Boolean;

    goto :goto_0

    .line 608
    :cond_2
    const/4 v0, 0x0

    .line 610
    .local v0, "inputStream":Ljava/io/FileInputStream;
    :try_start_0
    iget-object v3, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mContext:Landroid/content/Context;

    const-string v4, "soft_errors_pref"

    invoke-virtual {v3, v4}, Landroid/content/Context;->openFileInput(Ljava/lang/String;)Ljava/io/FileInputStream;

    move-result-object v0

    .line 611
    invoke-virtual {v0}, Ljava/io/FileInputStream;->read()I

    move-result v3

    if-ne v3, v1, :cond_3

    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mIsNonEmployeeModeEnabled:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    if-eqz v0, :cond_0

    .line 616
    :try_start_1
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 617
    :catch_0
    move-exception v1

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
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    goto :goto_0

    .line 617
    :catch_2
    move-exception v1

    goto :goto_0

    .line 614
    :catchall_0
    move-exception v1

    if-eqz v0, :cond_4

    .line 616
    :try_start_3
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 619
    :cond_4
    :goto_2
    throw v1

    .line 617
    :catch_3
    move-exception v2

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
    .param p1, "softError"    # Lcom/facebook/common/errorreporting/SoftError;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const-wide/16 v6, 0x100

    const/4 v3, 0x0

    .line 321
    sget-boolean v2, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->DISABLE_OVERRIDE:Z

    if-eqz v2, :cond_1

    move-object v1, v3

    .line 353
    :cond_0
    :goto_0
    return-object v1

    .line 324
    :cond_1
    iget-object v2, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mIsMeUserFbEmployeeProvider:Ljavax/inject/Provider;

    .line 325
    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    sget-object v4, Lcom/facebook/common/util/TriState;->YES:Lcom/facebook/common/util/TriState;

    if-eq v2, v4, :cond_2

    iget-object v2, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mIsInternalBuildProvider:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_4

    :cond_2
    const/4 v0, 0x1

    .line 326
    .local v0, "always":Z
    :goto_1
    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->shouldFailHarder()Z

    move-result v2

    if-eqz v2, :cond_3

    if-eqz v0, :cond_3

    .line 327
    invoke-direct {p0}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->isFailHarderFatalDisabled()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 328
    iget-object v2, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mContext:Landroid/content/Context;

    if-eqz v2, :cond_3

    .line 329
    new-instance v2, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v4

    invoke-direct {v2, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    new-instance v4, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$ShowToast;

    iget-object v5, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mContext:Landroid/content/Context;

    invoke-direct {v4, p1, v5}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$ShowToast;-><init>(Lcom/facebook/common/errorreporting/SoftError;Landroid/content/Context;)V

    invoke-virtual {v2, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 337
    :cond_3
    invoke-direct {p0, p1}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->countIfShouldUploadSoftError(Lcom/facebook/common/errorreporting/SoftError;)Ljava/lang/Integer;

    move-result-object v1

    .line 338
    .local v1, "occurrenceCount":Ljava/lang/Integer;
    if-eqz v0, :cond_6

    if-nez v1, :cond_6

    move-object v1, v3

    .line 339
    goto :goto_0

    .line 325
    .end local v0    # "always":Z
    .end local v1    # "occurrenceCount":Ljava/lang/Integer;
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 332
    .restart local v0    # "always":Z
    :cond_5
    invoke-direct {p0, p1}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->failHarder(Lcom/facebook/common/errorreporting/SoftError;)V

    move-object v1, v3

    .line 333
    goto :goto_0

    .line 342
    .restart local v1    # "occurrenceCount":Ljava/lang/Integer;
    :cond_6
    if-nez v0, :cond_7

    .line 343
    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getSamplingFrequency()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 346
    :cond_7
    invoke-static {v6, v7}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 347
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "softReport category: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 349
    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getCategory()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " message: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v3, Lcom/facebook/systrace/Systrace$EventScope;->THREAD:Lcom/facebook/systrace/Systrace$EventScope;

    .line 347
    invoke-static {v6, v7, v2, v3}, Lcom/facebook/systrace/Systrace;->traceInstant(JLjava/lang/String;Lcom/facebook/systrace/Systrace$EventScope;)V

    goto/16 :goto_0
.end method

.method private reportRNException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 535
    iget-object v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$7;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$7;-><init>(Lcom/facebook/common/errorreporting/FbErrorReporterImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 556
    return-void
.end method

.method private samplingFrequencyCategoryModifier(Lcom/facebook/common/errorreporting/SoftError;)Ljava/lang/String;
    .locals 3
    .param p1, "softError"    # Lcom/facebook/common/errorreporting/SoftError;

    .prologue
    .line 564
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
    .locals 5
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "samplingFrequency"    # I
    .param p3, "onlyIfEmployeeBuild"    # Z
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 572
    iget-object v1, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mIsInternalBuildProvider:Ljavax/inject/Provider;

    .line 573
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mIsMeUserFbEmployeeProvider:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    sget-object v4, Lcom/facebook/common/util/TriState;->YES:Lcom/facebook/common/util/TriState;

    if-ne v1, v4, :cond_3

    :cond_0
    move v0, v3

    .line 575
    .local v0, "isEmployeeOrBetaBuild":Z
    :goto_0
    if-eqz v0, :cond_1

    iget-object v1, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mIsNonEmployeeModeEnabled:Ljava/lang/Boolean;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mIsNonEmployeeModeEnabled:Ljava/lang/Boolean;

    .line 576
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 577
    :cond_1
    if-eqz p3, :cond_4

    move-object p1, v2

    .line 589
    .end local p1    # "category":Ljava/lang/String;
    :cond_2
    :goto_1
    return-object p1

    .line 573
    .end local v0    # "isEmployeeOrBetaBuild":Z
    .restart local p1    # "category":Ljava/lang/String;
    :cond_3
    const/4 v0, 0x0

    goto :goto_0

    .line 580
    .restart local v0    # "isEmployeeOrBetaBuild":Z
    :cond_4
    iget-object v1, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mRandom:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextInt()I

    move-result v1

    rem-int/2addr v1, p2

    if-eqz v1, :cond_5

    move-object p1, v2

    .line 582
    goto :goto_1

    .line 584
    :cond_5
    if-eq p2, v3, :cond_2

    .line 585
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " [freq="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_1
.end method

.method public static setDisableOverride(Z)V
    .locals 0
    .param p0, "value"    # Z

    .prologue
    .line 163
    sput-boolean p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->DISABLE_OVERRIDE:Z

    .line 164
    return-void
.end method


# virtual methods
.method public putCurrentUserId(Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;

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

.method public putCustomData(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 486
    iget-object v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mErrorReporterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/acra/ErrorReporter;

    invoke-static {p1, p2}, Lcom/facebook/acra/ErrorReporter;->putCustomData(Ljava/lang/String;Ljava/lang/String;)V

    .line 487
    return-void
.end method

.method public putLazyCustomData(Ljava/lang/String;Lcom/facebook/common/errorreporting/FbCustomReportDataSupplier;)V
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "valueSupplier"    # Lcom/facebook/common/errorreporting/FbCustomReportDataSupplier;

    .prologue
    .line 496
    iget-object v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mErrorReporterProvider:Ljavax/inject/Provider;

    .line 497
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/acra/ErrorReporter;

    new-instance v1, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$6;

    invoke-direct {v1, p0, p2}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$6;-><init>(Lcom/facebook/common/errorreporting/FbErrorReporterImpl;Lcom/facebook/common/errorreporting/FbCustomReportDataSupplier;)V

    .line 498
    invoke-virtual {v0, p1, v1}, Lcom/facebook/acra/ErrorReporter;->putLazyCustomData(Ljava/lang/String;Lcom/facebook/acra/CustomReportDataSupplier;)V

    .line 506
    return-void
.end method

.method public removeCustomData(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 491
    iget-object v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mErrorReporterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/acra/ErrorReporter;

    invoke-static {p1}, Lcom/facebook/acra/ErrorReporter;->removeCustomData(Ljava/lang/String;)V

    .line 492
    return-void
.end method

.method public removeLazyCustomData(Ljava/lang/String;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 510
    iget-object v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mErrorReporterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/acra/ErrorReporter;

    invoke-virtual {v0, p1}, Lcom/facebook/acra/ErrorReporter;->removeLazyCustomData(Ljava/lang/String;)Lcom/facebook/acra/CustomReportDataSupplier;

    .line 511
    return-void
.end method

.method public reportANRs()V
    .locals 2

    .prologue
    .line 520
    iget-object v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mErrorReporterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/acra/ErrorReporter;

    const/16 v1, 0xa

    invoke-virtual {v0, v1}, Lcom/facebook/acra/ErrorReporter;->prepareCachedANRReports(I)I

    .line 521
    return-void
.end method

.method public reportJavascriptException(Ljava/lang/Throwable;)V
    .locals 2
    .param p1, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 466
    iget-object v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$5;

    invoke-direct {v1, p0, p1}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$5;-><init>(Lcom/facebook/common/errorreporting/FbErrorReporterImpl;Ljava/lang/Throwable;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 477
    return-void
.end method

.method public reportLastActivity(Ljava/lang/String;)V
    .locals 1
    .param p1, "activityName"    # Ljava/lang/String;

    .prologue
    .line 515
    iget-object v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mErrorReporterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/acra/ErrorReporter;

    invoke-virtual {v0, p1}, Lcom/facebook/acra/ErrorReporter;->registerActivity(Ljava/lang/String;)V

    .line 516
    return-void
.end method

.method public reportRNException(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;

    .prologue
    .line 525
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->reportRNException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 526
    return-void
.end method

.method public reportRNException(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 1
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "cause"    # Ljava/lang/Throwable;

    .prologue
    .line 530
    invoke-virtual {p2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0, p2}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->reportRNException(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 531
    return-void
.end method

.method public reportStall(J)V
    .locals 3
    .param p1, "duration"    # J

    .prologue
    .line 446
    iget-object v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$4;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$4;-><init>(Lcom/facebook/common/errorreporting/FbErrorReporterImpl;J)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    .line 462
    return-void
.end method

.method public setQplBridge(Lcom/facebook/common/errorreporting/ErrorReporterQplBridge;)V
    .locals 0
    .param p1, "qplBridge"    # Lcom/facebook/common/errorreporting/ErrorReporterQplBridge;

    .prologue
    .line 159
    iput-object p1, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mQplBridge:Lcom/facebook/common/errorreporting/ErrorReporterQplBridge;

    .line 160
    return-void
.end method

.method public setSoftErrorCategoryBlacklist(Lcom/facebook/common/mobilesofterror/intf/SoftErrorCategoryBlacklist;)V
    .locals 0
    .param p1, "blacklist"    # Lcom/facebook/common/mobilesofterror/intf/SoftErrorCategoryBlacklist;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mSoftErrorCategoryBlacklist:Lcom/facebook/common/mobilesofterror/intf/SoftErrorCategoryBlacklist;

    .line 156
    return-void
.end method

.method public setSoftErrorsPref(Z)Z
    .locals 7
    .param p1, "isEnabled"    # Z

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 167
    iget-object v4, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mContext:Landroid/content/Context;

    if-nez v4, :cond_1

    .line 183
    :cond_0
    :goto_0
    return v2

    .line 170
    :cond_1
    const/4 v1, 0x0

    .line 172
    .local v1, "outputStream":Ljava/io/FileOutputStream;
    :try_start_0
    iget-object v4, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mContext:Landroid/content/Context;

    const-string v5, "soft_errors_pref"

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v1

    .line 173
    if-eqz p1, :cond_3

    move v4, v3

    :goto_1
    invoke-virtual {v1, v4}, Ljava/io/FileOutputStream;->write(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 178
    if-eqz v1, :cond_2

    .line 180
    :try_start_1
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2

    :cond_2
    :goto_2
    move v2, v3

    .line 183
    goto :goto_0

    :cond_3
    move v4, v2

    .line 173
    goto :goto_1

    .line 175
    :catch_0
    move-exception v0

    .line 178
    .local v0, "e":Ljava/io/IOException;
    if-eqz v1, :cond_0

    .line 180
    :try_start_2
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 181
    :catch_1
    move-exception v3

    goto :goto_0

    .line 178
    .end local v0    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v2

    if-eqz v1, :cond_4

    .line 180
    :try_start_3
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 183
    :cond_4
    :goto_3
    throw v2

    .line 181
    :catch_2
    move-exception v2

    goto :goto_2

    :catch_3
    move-exception v3

    goto :goto_3
.end method

.method public softReport(Lcom/facebook/common/errorreporting/SoftError;)V
    .locals 1
    .param p1, "softError"    # Lcom/facebook/common/errorreporting/SoftError;

    .prologue
    .line 190
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->softReport(Lcom/facebook/common/errorreporting/SoftError;Lcom/facebook/acra/info/ExternalProcessInfo;)V

    .line 191
    return-void
.end method

.method public softReport(Lcom/facebook/common/errorreporting/SoftError;Lcom/facebook/acra/info/ExternalProcessInfo;)V
    .locals 8
    .param p1, "softError"    # Lcom/facebook/common/errorreporting/SoftError;
    .param p2, "external"    # Lcom/facebook/acra/info/ExternalProcessInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 195
    iget-object v1, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mErrorReportingGkReader:Lcom/facebook/common/errorreporting/ErrorReportingGkReader;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mErrorReportingGkReader:Lcom/facebook/common/errorreporting/ErrorReportingGkReader;

    .line 196
    invoke-interface {v1}, Lcom/facebook/common/errorreporting/ErrorReportingGkReader;->isSoftErrorReportingDisabled()Lcom/facebook/common/util/TriState;

    move-result-object v1

    sget-object v5, Lcom/facebook/common/util/TriState;->YES:Lcom/facebook/common/util/TriState;

    if-ne v1, v5, :cond_1

    .line 197
    sget-object v1, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->TAG:Ljava/lang/String;

    const-string v5, "Soft Error reporting disabled, hence not logging"

    invoke-static {v1, v5}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 277
    :cond_0
    :goto_0
    return-void

    .line 200
    :cond_1
    invoke-direct {p0}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->initIsNonEmployeeModeEnabled()V

    .line 201
    iget-object v1, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mSoftErrorCategoryBlacklist:Lcom/facebook/common/mobilesofterror/intf/SoftErrorCategoryBlacklist;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mSoftErrorCategoryBlacklist:Lcom/facebook/common/mobilesofterror/intf/SoftErrorCategoryBlacklist;

    .line 202
    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getCategory()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v1, v5}, Lcom/facebook/common/mobilesofterror/intf/SoftErrorCategoryBlacklist;->isCategoryBlacklisted(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 203
    sget-object v1, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->TAG:Ljava/lang/String;

    const-string v5, "Not logging because Soft Error category %s is blacklisted"

    .line 206
    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getCategory()Ljava/lang/String;

    move-result-object v7

    .line 203
    invoke-static {v1, v5, v7}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 210
    :cond_2
    iget-object v1, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mQplBridge:Lcom/facebook/common/errorreporting/ErrorReporterQplBridge;

    if-eqz v1, :cond_3

    .line 211
    iget-object v1, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mQplBridge:Lcom/facebook/common/errorreporting/ErrorReporterQplBridge;

    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getCategory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v1, v5, v7}, Lcom/facebook/common/errorreporting/ErrorReporterQplBridge;->logSoftError(Ljava/lang/String;Ljava/lang/String;)V

    .line 214
    :cond_3
    invoke-direct {p0, p1}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->prepSoftReport(Lcom/facebook/common/errorreporting/SoftError;)Ljava/lang/Integer;

    move-result-object v4

    .line 215
    .local v4, "occurrenceCount":Ljava/lang/Integer;
    if-eqz v4, :cond_0

    .line 218
    invoke-direct {p0, p1}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->samplingFrequencyCategoryModifier(Lcom/facebook/common/errorreporting/SoftError;)Ljava/lang/String;

    move-result-object v2

    .line 219
    .local v2, "reportedCategory":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 223
    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getMessage()Ljava/lang/String;

    move-result-object v3

    .line 224
    .local v3, "message":Ljava/lang/String;
    new-instance v6, Lcom/facebook/common/errorreporting/SoftErrorException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 225
    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getCategory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v5, " | "

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getCause()Ljava/lang/Throwable;

    move-result-object v5

    invoke-direct {v6, v1, v5}, Lcom/facebook/common/errorreporting/SoftErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 226
    .local v6, "throwable":Ljava/lang/Throwable;
    new-instance v0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$1;

    move-object v1, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v6}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$1;-><init>(Lcom/facebook/common/errorreporting/FbErrorReporterImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Integer;Lcom/facebook/acra/info/ExternalProcessInfo;Ljava/lang/Throwable;)V

    .line 272
    .local v0, "callErrorHandler":Ljava/lang/Runnable;
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

.method public softReportDelayed(Lcom/facebook/common/errorreporting/SoftError;)V
    .locals 7
    .param p1, "softError"    # Lcom/facebook/common/errorreporting/SoftError;

    .prologue
    .line 281
    invoke-direct {p0}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->initIsNonEmployeeModeEnabled()V

    .line 282
    iget-object v4, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mSoftErrorCategoryBlacklist:Lcom/facebook/common/mobilesofterror/intf/SoftErrorCategoryBlacklist;

    if-eqz v4, :cond_1

    iget-object v4, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mSoftErrorCategoryBlacklist:Lcom/facebook/common/mobilesofterror/intf/SoftErrorCategoryBlacklist;

    .line 283
    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getCategory()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v4, v5}, Lcom/facebook/common/mobilesofterror/intf/SoftErrorCategoryBlacklist;->isCategoryBlacklisted(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 284
    sget-object v4, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->TAG:Ljava/lang/String;

    const-string v5, "Not logging because Soft Error category %s is blacklisted"

    .line 287
    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getCategory()Ljava/lang/String;

    move-result-object v6

    .line 284
    invoke-static {v4, v5, v6}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 318
    :cond_0
    :goto_0
    return-void

    .line 291
    :cond_1
    iget-object v4, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mQplBridge:Lcom/facebook/common/errorreporting/ErrorReporterQplBridge;

    if-eqz v4, :cond_2

    .line 292
    iget-object v4, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mQplBridge:Lcom/facebook/common/errorreporting/ErrorReporterQplBridge;

    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getCategory()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getMessage()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Lcom/facebook/common/errorreporting/ErrorReporterQplBridge;->logSoftError(Ljava/lang/String;Ljava/lang/String;)V

    .line 295
    :cond_2
    invoke-direct {p0, p1}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->prepSoftReport(Lcom/facebook/common/errorreporting/SoftError;)Ljava/lang/Integer;

    move-result-object v1

    .line 296
    .local v1, "occurrenceCount":Ljava/lang/Integer;
    if-eqz v1, :cond_0

    .line 299
    invoke-direct {p0, p1}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->samplingFrequencyCategoryModifier(Lcom/facebook/common/errorreporting/SoftError;)Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, "reportedCategory":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 304
    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getMessage()Ljava/lang/String;

    move-result-object v0

    .line 305
    .local v0, "message":Ljava/lang/String;
    new-instance v3, Lcom/facebook/common/errorreporting/SoftErrorException;

    invoke-virtual {p1}, Lcom/facebook/common/errorreporting/SoftError;->getCause()Ljava/lang/Throwable;

    move-result-object v4

    invoke-direct {v3, v0, v4}, Lcom/facebook/common/errorreporting/SoftErrorException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 306
    .local v3, "throwable":Ljava/lang/Throwable;
    iget-object v4, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v5, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$2;

    invoke-direct {v5, p0, v2, v0, v3}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$2;-><init>(Lcom/facebook/common/errorreporting/FbErrorReporterImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    invoke-interface {v4, v5}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public strictModeReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "category"    # Ljava/lang/String;
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "stackTrace"    # Ljava/lang/String;

    .prologue
    const-wide/16 v2, 0x100

    .line 405
    sget-boolean v0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->DISABLE_OVERRIDE:Z

    if-eqz v0, :cond_0

    .line 442
    :goto_0
    return-void

    .line 410
    :cond_0
    invoke-static {v2, v3}, Lcom/facebook/systrace/Systrace;->isTracing(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 411
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StrictModeReport category: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " message: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/facebook/systrace/Systrace$EventScope;->THREAD:Lcom/facebook/systrace/Systrace$EventScope;

    invoke-static {v2, v3, v0, v1}, Lcom/facebook/systrace/Systrace;->traceInstant(JLjava/lang/String;Lcom/facebook/systrace/Systrace$EventScope;)V

    .line 417
    :cond_1
    iget-object v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mExecutorService:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$3;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/facebook/common/errorreporting/FbErrorReporterImpl$3;-><init>(Lcom/facebook/common/errorreporting/FbErrorReporterImpl;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public updateCrashReportProxy(Ljava/net/Proxy;)V
    .locals 1
    .param p1, "proxy"    # Ljava/net/Proxy;

    .prologue
    .line 481
    iget-object v0, p0, Lcom/facebook/common/errorreporting/FbErrorReporterImpl;->mErrorReporterProvider:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/acra/ErrorReporter;

    invoke-virtual {v0, p1}, Lcom/facebook/acra/ErrorReporter;->setReportProxy(Ljava/net/Proxy;)V

    .line 482
    return-void
.end method
