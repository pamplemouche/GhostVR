.class public Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;
.super Ljava/lang/Object;
.source "DefaultAnalyticsLogger.java"

# interfaces
.implements Lcom/facebook/rti/common/analytics/AnalyticsLogger;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$UploadRunnable;,
        Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$StoreBatchRunnable;,
        Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$EventRunnable;,
        Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$AnalyticsBackgroundWorker;
    }
.end annotation


# static fields
.field private static final mExecutorService:Lcom/facebook/rti/common/concurrent/SerialExecutor;


# instance fields
.field private final mAnalyticsBackgroundWorker:Ljava/lang/Runnable;

.field private final mAnalyticsWorkerScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private final mAppId:Ljava/lang/String;

.field private final mAppVersion:Ljava/lang/String;

.field private final mBuildNumber:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mDeviceIdProvider:Lcom/facebook/rti/common/util/NonInjectProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field private final mPendingEventRunnables:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private final mSamplePolicy:Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSamplePolicy;

.field private final mServiceName:Ljava/lang/String;

.field private mSession:Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;

.field private final mStorage:Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsStorage;

.field private final mUploader:Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsUploader;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "MQTT_Analytics"

    .line 40
    invoke-static {v0}, Lcom/facebook/rti/common/concurrent/SerialExecutor;->newInstanceWithSharedPool(Ljava/lang/String;)Lcom/facebook/rti/common/concurrent/SerialExecutor;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->mExecutorService:Lcom/facebook/rti/common/concurrent/SerialExecutor;

    .line 39
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSamplePolicy;Landroid/content/SharedPreferences;Lcom/facebook/rti/common/util/NonInjectProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSamplePolicy;",
            "Landroid/content/SharedPreferences;",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 109
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 74
    new-instance v1, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v1}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v1, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->mPendingEventRunnables:Ljava/util/Queue;

    .line 76
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v1, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->mAnalyticsWorkerScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 110
    iput-object p1, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->mContext:Landroid/content/Context;

    .line 111
    iput-object p2, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->mServiceName:Ljava/lang/String;

    .line 112
    iput-object p5, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 113
    iput-object p6, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->mDeviceIdProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    .line 114
    move-object/from16 v0, p9

    iput-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->mBuildNumber:Ljava/lang/String;

    .line 115
    move-object/from16 v0, p8

    iput-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->mAppVersion:Ljava/lang/String;

    .line 116
    move-object/from16 v0, p12

    iput-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->mAppId:Ljava/lang/String;

    .line 118
    new-instance v1, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$1;

    .line 119
    invoke-virtual {p1}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$1;-><init>(Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->mHandler:Landroid/os/Handler;

    .line 129
    new-instance v1, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$AnalyticsBackgroundWorker;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$AnalyticsBackgroundWorker;-><init>(Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$1;)V

    iput-object v1, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->mAnalyticsBackgroundWorker:Ljava/lang/Runnable;

    .line 130
    new-instance v1, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsStorage;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->mServiceName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsStorage;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->mStorage:Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsStorage;

    .line 131
    new-instance v1, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsUploader;

    .line 133
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->mServiceName:Ljava/lang/String;

    move-object v4, p3

    move-object v5, p7

    move-object/from16 v6, p10

    move-object/from16 v7, p11

    invoke-direct/range {v1 .. v7}, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsUploader;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/rti/common/util/NonInjectProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->mUploader:Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsUploader;

    .line 139
    iput-object p4, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->mSamplePolicy:Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSamplePolicy;

    .line 140
    invoke-direct {p0}, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->startNewSession()V

    .line 141
    return-void
.end method

.method static synthetic access$100(Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->queueEventRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->maybeStoreCurrentBatch()V

    return-void
.end method

.method static synthetic access$1100(Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;)Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsUploader;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->mUploader:Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsUploader;

    return-object v0
.end method

.method static synthetic access$500(Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->mAnalyticsWorkerScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method static synthetic access$600(Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;)Ljava/util/Queue;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->mPendingEventRunnables:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$700(Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;Lcom/facebook/rti/common/analytics/AnalyticsEvent;)V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0, p1}, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->preProcessEvent(Lcom/facebook/rti/common/analytics/AnalyticsEvent;)V

    return-void
.end method

.method static synthetic access$800(Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;)Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->mSession:Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;

    return-object v0
.end method

.method static synthetic access$900(Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method private createSession()Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;
    .locals 2

    .prologue
    .line 161
    new-instance v0, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;

    invoke-direct {v0}, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;-><init>()V

    .line 162
    iget-object v1, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;->setAppVersion(Ljava/lang/String;)V

    .line 163
    iget-object v1, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->mBuildNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;->setBuildNumber(Ljava/lang/String;)V

    .line 164
    invoke-direct {p0}, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->getFacebookUserId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;->setFacebookUserId(Ljava/lang/String;)V

    .line 165
    iget-object v1, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;->setAppId(Ljava/lang/String;)V

    .line 166
    iget-object v1, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->mDeviceIdProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;->setDeviceIdProvider(Lcom/facebook/rti/common/util/NonInjectProvider;)V

    .line 168
    return-object v0
.end method

.method private getFacebookUserId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 144
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string v1, "fb_uid"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->normalizeUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getUserId()Ljava/lang/String;
    .locals 3

    .prologue
    .line 148
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->mSharedPreferences:Landroid/content/SharedPreferences;

    const-string/jumbo v1, "user_id"

    const-string v2, ""

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->normalizeUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private maybeScheduleBackgroundWorker()V
    .locals 3

    .prologue
    .line 202
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->mAnalyticsWorkerScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 203
    sget-object v0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->mExecutorService:Lcom/facebook/rti/common/concurrent/SerialExecutor;

    iget-object v1, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->mAnalyticsBackgroundWorker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/common/concurrent/SerialExecutor;->execute(Ljava/lang/Runnable;)V

    .line 205
    :cond_0
    return-void
.end method

.method private maybeStoreCurrentBatch()V
    .locals 2

    .prologue
    .line 173
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->mSession:Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;

    invoke-virtual {v0}, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;->getCurrentBatch()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->mStorage:Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsStorage;

    iget-object v1, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->mSession:Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsStorage;->store(Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;)V

    .line 175
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->mSession:Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;

    invoke-virtual {v0}, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;->startNewBatch()V

    .line 177
    :cond_0
    return-void
.end method

.method public static newDefaultAnalyticsLogger(Landroid/content/Context;Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSamplePolicy;Landroid/content/SharedPreferences;Ljava/lang/String;Lcom/facebook/rti/common/util/NonInjectProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;
    .locals 14
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSamplePolicy;",
            "Landroid/content/SharedPreferences;",
            "Ljava/lang/String;",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;"
        }
    .end annotation

    .prologue
    .line 283
    invoke-static {p0}, Lcom/facebook/rti/common/util/RtiBuildInfoUtil;->getInstance(Landroid/content/Context;)Lcom/facebook/rti/common/util/RtiBuildInfoUtil;

    move-result-object v2

    .line 285
    new-instance v3, Lcom/facebook/rti/common/util/UserAgent;

    move-object/from16 v0, p7

    invoke-direct {v3, p0, v2, v0}, Lcom/facebook/rti/common/util/UserAgent;-><init>(Landroid/content/Context;Lcom/facebook/rti/common/util/RtiBuildInfoUtil;Ljava/lang/String;)V

    .line 287
    new-instance v7, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$2;

    move-object/from16 v0, p5

    invoke-direct {v7, v0}, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$2;-><init>(Ljava/lang/String;)V

    .line 295
    new-instance v1, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;

    .line 302
    invoke-virtual {v3}, Lcom/facebook/rti/common/util/UserAgent;->getUserAgentString()Ljava/lang/String;

    move-result-object v8

    .line 303
    invoke-virtual {v2}, Lcom/facebook/rti/common/util/RtiBuildInfoUtil;->getVersionName()Ljava/lang/String;

    move-result-object v9

    .line 304
    invoke-virtual {v2}, Lcom/facebook/rti/common/util/RtiBuildInfoUtil;->getBuildNumber()Ljava/lang/String;

    move-result-object v10

    const-string v11, "725056107548211"

    const-string v12, "0e20c3123a90c76c02c901b7415ff67f"

    move-object v2, p0

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object v5, p1

    move-object/from16 v6, p2

    move-object/from16 v13, p6

    invoke-direct/range {v1 .. v13}, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/rti/common/util/NonInjectProvider;Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSamplePolicy;Landroid/content/SharedPreferences;Lcom/facebook/rti/common/util/NonInjectProvider;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    return-object v1
.end method

.method private static normalizeUserId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 85
    invoke-static {p0}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "0"

    :cond_0
    return-object p0
.end method

.method private preProcessEvent(Lcom/facebook/rti/common/analytics/AnalyticsEvent;)V
    .locals 1

    .prologue
    .line 210
    invoke-direct {p0}, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->getUserId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/facebook/rti/common/analytics/AnalyticsEvent;->setUserId(Ljava/lang/String;)Lcom/facebook/rti/common/analytics/AnalyticsEvent;

    .line 211
    return-void
.end method

.method private queueEventRunnable(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 197
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->mPendingEventRunnables:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 198
    invoke-direct {p0}, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->maybeScheduleBackgroundWorker()V

    .line 199
    return-void
.end method

.method private startNewSession()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->mSession:Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;

    if-eqz v0, :cond_0

    .line 154
    invoke-direct {p0}, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->maybeStoreCurrentBatch()V

    .line 157
    :cond_0
    invoke-direct {p0}, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->createSession()Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->mSession:Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSession;

    .line 158
    return-void
.end method


# virtual methods
.method public reportEvent(Lcom/facebook/rti/common/analytics/AnalyticsEvent;)V
    .locals 2

    .prologue
    .line 181
    invoke-static {}, Lcom/facebook/rti/common/util/FbnsRestrictedMode;->isRestricted()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->mSamplePolicy:Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSamplePolicy;

    invoke-virtual {p1}, Lcom/facebook/rti/common/analytics/AnalyticsEvent;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/facebook/rti/common/analytics/defaultlogger/AnalyticsSamplePolicy;->shouldBeSampled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 182
    new-instance v0, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$EventRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$EventRunnable;-><init>(Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;Lcom/facebook/rti/common/analytics/AnalyticsEvent;Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger$1;)V

    invoke-direct {p0, v0}, Lcom/facebook/rti/common/analytics/defaultlogger/DefaultAnalyticsLogger;->queueEventRunnable(Ljava/lang/Runnable;)V

    .line 184
    :cond_0
    return-void
.end method
