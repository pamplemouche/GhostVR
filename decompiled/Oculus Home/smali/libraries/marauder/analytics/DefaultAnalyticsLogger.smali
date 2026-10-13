.class public Llibraries/marauder/analytics/DefaultAnalyticsLogger;
.super Ljava/lang/Object;
.source "DefaultAnalyticsLogger.java"

# interfaces
.implements Llibraries/marauder/analytics/AnalyticsLogger;
.implements Llibraries/marauder/analytics/utils/lifecycle/BackgroundDetectorListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Llibraries/marauder/analytics/DefaultAnalyticsLogger$UploadRunnable;,
        Llibraries/marauder/analytics/DefaultAnalyticsLogger$StoreBatchRunnable;,
        Llibraries/marauder/analytics/DefaultAnalyticsLogger$NewSessionEventRunnable;,
        Llibraries/marauder/analytics/DefaultAnalyticsLogger$FacebookEventRunnable;,
        Llibraries/marauder/analytics/DefaultAnalyticsLogger$LoginEventRunnable;,
        Llibraries/marauder/analytics/DefaultAnalyticsLogger$LowLatencyEventRunnable;,
        Llibraries/marauder/analytics/DefaultAnalyticsLogger$EventRunnable;,
        Llibraries/marauder/analytics/DefaultAnalyticsLogger$AnalyticsBackgroundWorker;
    }
.end annotation


# static fields
.field private static final EMPTY_ID:Ljava/lang/String; = "0"

.field private static final LOW_LATENCY_DELAY_MS:J = 0x1388L

.field private static final MSG_SCHEDULE_BACKGROUND_WORKER:I = 0x1

.field private static final MSG_STORE_CURRENT_BATCH:I = 0x2

.field private static final STORE_BATCH_DELAY_MS:J = 0x3a98L

.field private static final TAG:Ljava/lang/String; = "DefaultAnalyticsLogger"

.field private static final UPLOAD_RETRY_DELAY_MS:J = 0x6ddd00L


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mAnalyticsBackgroundWorker:Ljava/lang/Runnable;

.field private final mAnalyticsWorkerScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

.field protected final mAppId:Ljava/lang/String;

.field protected final mAppVersion:Ljava/lang/String;

.field protected final mBuildNumber:Ljava/lang/String;

.field protected final mContext:Landroid/content/Context;

.field protected final mDeviceId:Ljava/lang/String;

.field private final mExecutorService:Llibraries/marauder/analytics/utils/concurrent/SerialExecutor;

.field protected mFacebookUserId:Ljava/lang/String;

.field private mFirstForegroundEventSeen:Z

.field private final mHandler:Landroid/os/Handler;

.field private mLowLatencySession:Llibraries/marauder/analytics/AnalyticsSession;

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

.field private mSession:Llibraries/marauder/analytics/AnalyticsSession;

.field private final mStorage:Llibraries/marauder/analytics/AnalyticsStorage;

.field private final mUploader:Llibraries/marauder/analytics/AnalyticsUploader;

.field protected mUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Llibraries/marauder/analytics/AnalyticsUploader;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "deviceId"    # Ljava/lang/String;
    .param p3, "appVersion"    # Ljava/lang/String;
    .param p4, "buildNumber"    # Ljava/lang/String;
    .param p5, "appId"    # Ljava/lang/String;
    .param p6, "uploader"    # Llibraries/marauder/analytics/AnalyticsUploader;
    .param p7, "userId"    # Ljava/lang/String;
    .param p8, "facebookUserId"    # Ljava/lang/String;

    .prologue
    .line 149
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 76
    new-instance v0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$1;

    invoke-direct {v0, p0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger$1;-><init>(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)V

    iput-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mHandler:Landroid/os/Handler;

    .line 106
    new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V

    iput-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mPendingEventRunnables:Ljava/util/Queue;

    .line 113
    invoke-static {}, Llibraries/marauder/analytics/utils/concurrent/SerialExecutor$Builder;->getInstance()Llibraries/marauder/analytics/utils/concurrent/SerialExecutor$Builder;

    move-result-object v0

    invoke-virtual {v0}, Llibraries/marauder/analytics/utils/concurrent/SerialExecutor$Builder;->build()Llibraries/marauder/analytics/utils/concurrent/SerialExecutor;

    move-result-object v0

    iput-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mExecutorService:Llibraries/marauder/analytics/utils/concurrent/SerialExecutor;

    .line 114
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mAnalyticsWorkerScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 150
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mContext:Landroid/content/Context;

    .line 151
    iget-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mContext:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mAlarmManager:Landroid/app/AlarmManager;

    .line 152
    iput-object p2, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mDeviceId:Ljava/lang/String;

    .line 153
    iput-object p4, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mBuildNumber:Ljava/lang/String;

    .line 154
    iput-object p3, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mAppVersion:Ljava/lang/String;

    .line 155
    iput-object p5, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mAppId:Ljava/lang/String;

    .line 156
    invoke-direct {p0, p7}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->setUserId(Ljava/lang/String;)V

    .line 157
    invoke-direct {p0, p8}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->setFacebookUserId(Ljava/lang/String;)V

    .line 159
    new-instance v0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$AnalyticsBackgroundWorker;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Llibraries/marauder/analytics/DefaultAnalyticsLogger$AnalyticsBackgroundWorker;-><init>(Llibraries/marauder/analytics/DefaultAnalyticsLogger;Llibraries/marauder/analytics/DefaultAnalyticsLogger$1;)V

    iput-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mAnalyticsBackgroundWorker:Ljava/lang/Runnable;

    .line 160
    new-instance v0, Llibraries/marauder/analytics/AnalyticsStorage;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Llibraries/marauder/analytics/AnalyticsStorage;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mStorage:Llibraries/marauder/analytics/AnalyticsStorage;

    .line 161
    iput-object p6, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mUploader:Llibraries/marauder/analytics/AnalyticsUploader;

    .line 163
    invoke-static {}, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;->getInstance()Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;

    move-result-object v0

    invoke-virtual {v0, p0}, Llibraries/marauder/analytics/utils/lifecycle/DelayedBackgroundDetector;->addListener(Llibraries/marauder/analytics/utils/lifecycle/BackgroundDetectorListener;)V

    .line 165
    invoke-direct {p0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->startNewSession()V

    .line 166
    return-void
.end method

.method static synthetic access$000(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)V
    .locals 0
    .param p0, "x0"    # Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    .prologue
    .line 26
    invoke-direct {p0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->maybeScheduleBackgroundWorker()V

    return-void
.end method

.method static synthetic access$1000(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)Ljava/util/Queue;
    .locals 1
    .param p0, "x0"    # Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    .prologue
    .line 26
    iget-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mPendingEventRunnables:Ljava/util/Queue;

    return-object v0
.end method

.method static synthetic access$1100(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)Llibraries/marauder/analytics/AnalyticsSession;
    .locals 1
    .param p0, "x0"    # Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    .prologue
    .line 26
    iget-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mLowLatencySession:Llibraries/marauder/analytics/AnalyticsSession;

    return-object v0
.end method

.method static synthetic access$1102(Llibraries/marauder/analytics/DefaultAnalyticsLogger;Llibraries/marauder/analytics/AnalyticsSession;)Llibraries/marauder/analytics/AnalyticsSession;
    .locals 0
    .param p0, "x0"    # Llibraries/marauder/analytics/DefaultAnalyticsLogger;
    .param p1, "x1"    # Llibraries/marauder/analytics/AnalyticsSession;

    .prologue
    .line 26
    iput-object p1, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mLowLatencySession:Llibraries/marauder/analytics/AnalyticsSession;

    return-object p1
.end method

.method static synthetic access$1200(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)Llibraries/marauder/analytics/AnalyticsStorage;
    .locals 1
    .param p0, "x0"    # Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    .prologue
    .line 26
    iget-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mStorage:Llibraries/marauder/analytics/AnalyticsStorage;

    return-object v0
.end method

.method static synthetic access$1300(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)Llibraries/marauder/analytics/AnalyticsUploader;
    .locals 1
    .param p0, "x0"    # Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    .prologue
    .line 26
    iget-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mUploader:Llibraries/marauder/analytics/AnalyticsUploader;

    return-object v0
.end method

.method static synthetic access$1400(Llibraries/marauder/analytics/DefaultAnalyticsLogger;Llibraries/marauder/analytics/IAnalyticsEvent;)V
    .locals 0
    .param p0, "x0"    # Llibraries/marauder/analytics/DefaultAnalyticsLogger;
    .param p1, "x1"    # Llibraries/marauder/analytics/IAnalyticsEvent;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->preProcessEvent(Llibraries/marauder/analytics/IAnalyticsEvent;)V

    return-void
.end method

.method static synthetic access$1500(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)Llibraries/marauder/analytics/AnalyticsSession;
    .locals 1
    .param p0, "x0"    # Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    .prologue
    .line 26
    iget-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mSession:Llibraries/marauder/analytics/AnalyticsSession;

    return-object v0
.end method

.method static synthetic access$1600(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)Landroid/os/Handler;
    .locals 1
    .param p0, "x0"    # Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    .prologue
    .line 26
    iget-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic access$1700(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)Llibraries/marauder/analytics/AnalyticsSession;
    .locals 1
    .param p0, "x0"    # Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    .prologue
    .line 26
    invoke-direct {p0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->createSession()Llibraries/marauder/analytics/AnalyticsSession;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1800(Llibraries/marauder/analytics/DefaultAnalyticsLogger;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Llibraries/marauder/analytics/DefaultAnalyticsLogger;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->setUserId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1900(Llibraries/marauder/analytics/DefaultAnalyticsLogger;Ljava/lang/String;)V
    .locals 0
    .param p0, "x0"    # Llibraries/marauder/analytics/DefaultAnalyticsLogger;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->setFacebookUserId(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Llibraries/marauder/analytics/DefaultAnalyticsLogger;Ljava/lang/Runnable;)V
    .locals 0
    .param p0, "x0"    # Llibraries/marauder/analytics/DefaultAnalyticsLogger;
    .param p1, "x1"    # Ljava/lang/Runnable;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->queueEventRunnable(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$2000(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)V
    .locals 0
    .param p0, "x0"    # Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    .prologue
    .line 26
    invoke-direct {p0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->startNewSession()V

    return-void
.end method

.method static synthetic access$2100(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)V
    .locals 0
    .param p0, "x0"    # Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    .prologue
    .line 26
    invoke-direct {p0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->cancelUploadAlarm()V

    return-void
.end method

.method static synthetic access$900(Llibraries/marauder/analytics/DefaultAnalyticsLogger;)Ljava/util/concurrent/atomic/AtomicBoolean;
    .locals 1
    .param p0, "x0"    # Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    .prologue
    .line 26
    iget-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mAnalyticsWorkerScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    return-object v0
.end method

.method private cancelUploadAlarm()V
    .locals 2

    .prologue
    .line 268
    invoke-direct {p0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->getPendingUploadIntent()Landroid/app/PendingIntent;

    move-result-object v0

    .line 269
    .local v0, "pendingUploadIntent":Landroid/app/PendingIntent;
    if-eqz v0, :cond_0

    .line 270
    iget-object v1, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mAlarmManager:Landroid/app/AlarmManager;

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 272
    :cond_0
    return-void
.end method

.method private createSession()Llibraries/marauder/analytics/AnalyticsSession;
    .locals 2

    .prologue
    .line 190
    new-instance v0, Llibraries/marauder/analytics/AnalyticsSession;

    invoke-direct {v0}, Llibraries/marauder/analytics/AnalyticsSession;-><init>()V

    .line 191
    .local v0, "session":Llibraries/marauder/analytics/AnalyticsSession;
    iget-object v1, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mAppVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Llibraries/marauder/analytics/AnalyticsSession;->setAppVersion(Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mBuildNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Llibraries/marauder/analytics/AnalyticsSession;->setBuildNumber(Ljava/lang/String;)V

    .line 193
    iget-object v1, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mFacebookUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Llibraries/marauder/analytics/AnalyticsSession;->setFacebookUserId(Ljava/lang/String;)V

    .line 194
    iget-object v1, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mUserId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Llibraries/marauder/analytics/AnalyticsSession;->setCustomUserId(Ljava/lang/String;)V

    .line 195
    iget-object v1, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mAppId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Llibraries/marauder/analytics/AnalyticsSession;->setAppId(Ljava/lang/String;)V

    .line 196
    iget-object v1, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mDeviceId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Llibraries/marauder/analytics/AnalyticsSession;->setDeviceId(Ljava/lang/String;)V

    .line 198
    return-object v0
.end method

.method private getPendingUploadIntent()Landroid/app/PendingIntent;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 253
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mContext:Landroid/content/Context;

    const-class v2, Llibraries/marauder/analytics/AnalyticsUploadAlarmReceiver;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 254
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mContext:Landroid/content/Context;

    invoke-static {v1, v3, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    return-object v1
.end method

.method private maybeScheduleBackgroundWorker()V
    .locals 3

    .prologue
    .line 337
    iget-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mAnalyticsWorkerScheduled:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mExecutorService:Llibraries/marauder/analytics/utils/concurrent/SerialExecutor;

    iget-object v1, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mAnalyticsBackgroundWorker:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Llibraries/marauder/analytics/utils/concurrent/SerialExecutor;->execute(Ljava/lang/Runnable;)V

    .line 340
    :cond_0
    return-void
.end method

.method protected static normalizeUserId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "userId"    # Ljava/lang/String;

    .prologue
    .line 124
    invoke-static {p0}, Llibraries/marauder/analytics/utils/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p0, "0"

    .end local p0    # "userId":Ljava/lang/String;
    :cond_0
    return-object p0
.end method

.method private preProcessEvent(Llibraries/marauder/analytics/IAnalyticsEvent;)V
    .locals 1
    .param p1, "event"    # Llibraries/marauder/analytics/IAnalyticsEvent;

    .prologue
    .line 348
    iget-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mUserId:Ljava/lang/String;

    invoke-interface {p1, v0}, Llibraries/marauder/analytics/IAnalyticsEvent;->setUserId(Ljava/lang/String;)Llibraries/marauder/analytics/IAnalyticsEvent;

    .line 349
    return-void
.end method

.method private queueEventRunnable(Ljava/lang/Runnable;)V
    .locals 1
    .param p1, "runnable"    # Ljava/lang/Runnable;

    .prologue
    .line 332
    iget-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mPendingEventRunnables:Ljava/util/Queue;

    invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 333
    invoke-direct {p0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->maybeScheduleBackgroundWorker()V

    .line 334
    return-void
.end method

.method private queueNewSession()V
    .locals 2

    .prologue
    .line 302
    new-instance v0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$NewSessionEventRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Llibraries/marauder/analytics/DefaultAnalyticsLogger$NewSessionEventRunnable;-><init>(Llibraries/marauder/analytics/DefaultAnalyticsLogger;Llibraries/marauder/analytics/DefaultAnalyticsLogger$1;)V

    invoke-direct {p0, v0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->queueEventRunnable(Ljava/lang/Runnable;)V

    .line 303
    return-void
.end method

.method private scheduleUploadAlarm()V
    .locals 6

    .prologue
    .line 262
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v2

    const-wide/32 v4, 0x6ddd00

    add-long v0, v2, v4

    .line 263
    .local v0, "time":J
    iget-object v2, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    invoke-direct {p0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->getPendingUploadIntent()Landroid/app/PendingIntent;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v1, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 264
    const-class v2, Llibraries/marauder/analytics/DefaultAnalyticsLogger;

    const-string v3, "scheduleUploadAlarm()"

    invoke-static {v2, v3}, Llibraries/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 265
    return-void
.end method

.method private setFacebookUserId(Ljava/lang/String;)V
    .locals 1
    .param p1, "facebookUserId"    # Ljava/lang/String;

    .prologue
    .line 169
    invoke-static {p1}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->normalizeUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mFacebookUserId:Ljava/lang/String;

    .line 170
    return-void
.end method

.method private setUserId(Ljava/lang/String;)V
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 173
    invoke-static {p1}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->normalizeUserId(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mUserId:Ljava/lang/String;

    .line 174
    return-void
.end method

.method private startNewSession()V
    .locals 2

    .prologue
    .line 181
    iget-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mSession:Llibraries/marauder/analytics/AnalyticsSession;

    if-eqz v0, :cond_0

    .line 182
    invoke-virtual {p0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->maybeStoreCurrentBatch()V

    .line 185
    :cond_0
    const-string v0, "DefaultAnalyticsLogger"

    const-string v1, "Starting new session"

    invoke-static {v0, v1}, Llibraries/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;)V

    .line 186
    invoke-direct {p0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->createSession()Llibraries/marauder/analytics/AnalyticsSession;

    move-result-object v0

    iput-object v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mSession:Llibraries/marauder/analytics/AnalyticsSession;

    .line 187
    return-void
.end method


# virtual methods
.method protected afterUpload(Z)V
    .locals 0
    .param p1, "success"    # Z

    .prologue
    .line 290
    if-nez p1, :cond_0

    .line 292
    invoke-direct {p0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->scheduleUploadAlarm()V

    .line 294
    :cond_0
    return-void
.end method

.method protected beforeUpload()V
    .locals 0

    .prologue
    .line 280
    return-void
.end method

.method public flush()V
    .locals 2

    .prologue
    .line 307
    new-instance v0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$StoreBatchRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Llibraries/marauder/analytics/DefaultAnalyticsLogger$StoreBatchRunnable;-><init>(Llibraries/marauder/analytics/DefaultAnalyticsLogger;Llibraries/marauder/analytics/DefaultAnalyticsLogger$1;)V

    invoke-direct {p0, v0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->queueEventRunnable(Ljava/lang/Runnable;)V

    .line 308
    return-void
.end method

.method protected isUploadAllowed()Z
    .locals 1

    .prologue
    .line 533
    const/4 v0, 0x1

    return v0
.end method

.method protected maybeStoreCurrentBatch()V
    .locals 4

    .prologue
    .line 206
    iget-object v1, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mSession:Llibraries/marauder/analytics/AnalyticsSession;

    invoke-virtual {v1}, Llibraries/marauder/analytics/AnalyticsSession;->getCurrentBatch()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 208
    :try_start_0
    const-string v1, "DefaultAnalyticsLogger"

    const-string v2, "Storing batch %s"

    iget-object v3, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mSession:Llibraries/marauder/analytics/AnalyticsSession;

    invoke-static {v1, v2, v3}, Llibraries/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 209
    iget-object v1, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mStorage:Llibraries/marauder/analytics/AnalyticsStorage;

    iget-object v2, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mSession:Llibraries/marauder/analytics/AnalyticsSession;

    invoke-virtual {v1, v2}, Llibraries/marauder/analytics/AnalyticsStorage;->store(Llibraries/marauder/analytics/AnalyticsSession;)Ljava/io/File;

    .line 210
    iget-object v1, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mSession:Llibraries/marauder/analytics/AnalyticsSession;

    invoke-virtual {v1}, Llibraries/marauder/analytics/AnalyticsSession;->startNewBatch()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    :cond_0
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    .local v0, "e":Ljava/io/IOException;
    const-string v1, "DefaultAnalyticsLogger"

    const-string v2, "Unable to store batch"

    invoke-static {v1, v2, v0}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public onAppBackgrounded()V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->queueNewSession()V

    .line 315
    invoke-virtual {p0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->queueUpload()V

    .line 316
    return-void
.end method

.method public onAppForegrounded()V
    .locals 1

    .prologue
    .line 320
    iget-boolean v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mFirstForegroundEventSeen:Z

    if-nez v0, :cond_0

    .line 323
    const/4 v0, 0x1

    iput-boolean v0, p0, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->mFirstForegroundEventSeen:Z

    .line 328
    :goto_0
    return-void

    .line 327
    :cond_0
    invoke-direct {p0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->queueNewSession()V

    goto :goto_0
.end method

.method public queueUpload()V
    .locals 2

    .prologue
    .line 298
    new-instance v0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$UploadRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Llibraries/marauder/analytics/DefaultAnalyticsLogger$UploadRunnable;-><init>(Llibraries/marauder/analytics/DefaultAnalyticsLogger;Llibraries/marauder/analytics/DefaultAnalyticsLogger$1;)V

    invoke-direct {p0, v0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->queueEventRunnable(Ljava/lang/Runnable;)V

    .line 299
    return-void
.end method

.method public registerTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 245
    return-void
.end method

.method public reportEvent(Llibraries/marauder/analytics/IAnalyticsEvent;)V
    .locals 2
    .param p1, "event"    # Llibraries/marauder/analytics/IAnalyticsEvent;

    .prologue
    .line 219
    new-instance v0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$EventRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Llibraries/marauder/analytics/DefaultAnalyticsLogger$EventRunnable;-><init>(Llibraries/marauder/analytics/DefaultAnalyticsLogger;Llibraries/marauder/analytics/IAnalyticsEvent;Llibraries/marauder/analytics/DefaultAnalyticsLogger$1;)V

    invoke-direct {p0, v0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->queueEventRunnable(Ljava/lang/Runnable;)V

    .line 220
    return-void
.end method

.method public reportLogin(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .param p1, "userId"    # Ljava/lang/String;
    .param p2, "facebookUserId"    # Ljava/lang/String;

    .prologue
    .line 229
    new-instance v0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$LoginEventRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, p2, v1}, Llibraries/marauder/analytics/DefaultAnalyticsLogger$LoginEventRunnable;-><init>(Llibraries/marauder/analytics/DefaultAnalyticsLogger;Ljava/lang/String;Ljava/lang/String;Llibraries/marauder/analytics/DefaultAnalyticsLogger$1;)V

    invoke-direct {p0, v0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->queueEventRunnable(Ljava/lang/Runnable;)V

    .line 230
    return-void
.end method

.method public reportLogout()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 234
    new-instance v0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$LoginEventRunnable;

    invoke-direct {v0, p0, v1, v1, v1}, Llibraries/marauder/analytics/DefaultAnalyticsLogger$LoginEventRunnable;-><init>(Llibraries/marauder/analytics/DefaultAnalyticsLogger;Ljava/lang/String;Ljava/lang/String;Llibraries/marauder/analytics/DefaultAnalyticsLogger$1;)V

    invoke-direct {p0, v0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->queueEventRunnable(Ljava/lang/Runnable;)V

    .line 235
    return-void
.end method

.method public reportStarredEvent(Llibraries/marauder/analytics/IAnalyticsEvent;)V
    .locals 2
    .param p1, "event"    # Llibraries/marauder/analytics/IAnalyticsEvent;

    .prologue
    .line 224
    new-instance v0, Llibraries/marauder/analytics/DefaultAnalyticsLogger$LowLatencyEventRunnable;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Llibraries/marauder/analytics/DefaultAnalyticsLogger$LowLatencyEventRunnable;-><init>(Llibraries/marauder/analytics/DefaultAnalyticsLogger;Llibraries/marauder/analytics/IAnalyticsEvent;Llibraries/marauder/analytics/DefaultAnalyticsLogger$1;)V

    invoke-direct {p0, v0}, Llibraries/marauder/analytics/DefaultAnalyticsLogger;->queueEventRunnable(Ljava/lang/Runnable;)V

    .line 225
    return-void
.end method

.method public reportTouchEvent(Landroid/view/MotionEvent;)V
    .locals 0
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    .line 240
    return-void
.end method

.method public unregisterTextView(Landroid/widget/TextView;)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TextView;

    .prologue
    .line 250
    return-void
.end method
