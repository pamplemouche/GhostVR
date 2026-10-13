.class public Lcom/facebook/analytics2/logger/AlarmBasedUploadService;
.super Landroid/app/Service;
.source "AlarmBasedUploadService.java"


# static fields
.field private static final MAX_VALUE_FOR_RESCHEDULE_MIN_DELAY_MS:J

.field private static final MIN_VALUE_FOR_RESCHEDULE_MIN_DELAY_MS:J

.field private static sAlarmManager:Landroid/app/AlarmManager;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "AlarmBasedUploadService.class"
    .end annotation
.end field


# instance fields
.field private mUploadServiceLogic:Lcom/facebook/analytics2/logger/UploadServiceLogic;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 21
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/analytics2/logger/AlarmBasedUploadService;->MIN_VALUE_FOR_RESCHEDULE_MIN_DELAY_MS:J

    .line 22
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x6

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/analytics2/logger/AlarmBasedUploadService;->MAX_VALUE_FOR_RESCHEDULE_MIN_DELAY_MS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static cancelJob(Landroid/content/Context;I)V
    .locals 3

    .prologue
    .line 92
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/facebook/analytics2/logger/AlarmBasedUploadService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 94
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 95
    invoke-static {p1}, Lcom/facebook/analytics2/logger/AlarmBasedUploadService;->createUploadAction(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 98
    const/4 v1, 0x0

    const/high16 v2, 0x20000000

    .line 99
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 101
    if-eqz v0, :cond_0

    .line 102
    invoke-static {p0}, Lcom/facebook/analytics2/logger/AlarmBasedUploadService;->getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 104
    :cond_0
    return-void
.end method

.method private static createUploadAction(I)Ljava/lang/String;
    .locals 2

    .prologue
    .line 124
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.facebook.analytics2.logger.UPLOAD_NOW-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static declared-synchronized getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;
    .locals 2

    .prologue
    .line 33
    const-class v1, Lcom/facebook/analytics2/logger/AlarmBasedUploadService;

    monitor-enter v1

    :try_start_0
    sget-object v0, Lcom/facebook/analytics2/logger/AlarmBasedUploadService;->sAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    .line 34
    const-string v0, "alarm"

    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    sput-object v0, Lcom/facebook/analytics2/logger/AlarmBasedUploadService;->sAlarmManager:Landroid/app/AlarmManager;

    .line 37
    :cond_0
    sget-object v0, Lcom/facebook/analytics2/logger/AlarmBasedUploadService;->sAlarmManager:Landroid/app/AlarmManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    return-object v0

    .line 33
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public static scheduleJob(Landroid/content/Context;ILjava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;JJ)V
    .locals 10
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 53
    cmp-long v0, p6, p4

    if-gez v0, :cond_0

    .line 55
    const-string v0, "AlarmUpload-MaxDelay"

    const-string v1, "MaxDelayms(%d) < MinDelayms(%d)"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide/from16 p6, p4

    .line 58
    :cond_0
    sget-wide v0, Lcom/facebook/analytics2/logger/AlarmBasedUploadService;->MIN_VALUE_FOR_RESCHEDULE_MIN_DELAY_MS:J

    cmp-long v0, p4, v0

    if-gez v0, :cond_1

    .line 59
    sget-wide v2, Lcom/facebook/analytics2/logger/AlarmBasedUploadService;->MIN_VALUE_FOR_RESCHEDULE_MIN_DELAY_MS:J

    .line 63
    :goto_0
    sub-long v0, p6, p4

    add-long v4, v2, v0

    .line 65
    const/4 v0, 0x0

    const/4 v7, 0x0

    new-instance v1, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;-><init>(JJLjava/lang/String;)V

    move-object v2, v0

    move-object v3, v7

    move-object v4, p2

    move-object v5, p3

    move v6, p1

    move-object v7, v1

    move-object v8, p0

    .line 66
    invoke-static/range {v2 .. v8}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->paramsForClient(Lcom/facebook/analytics2/logger/UploadServiceLogic$ServiceCallback;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;ILcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;

    move-result-object v0

    .line 76
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/analytics2/logger/AlarmBasedUploadService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 78
    invoke-static {p1}, Lcom/facebook/analytics2/logger/AlarmBasedUploadService;->createUploadAction(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 79
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->asBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 81
    const/4 v1, 0x0

    const/high16 v2, 0x8000000

    .line 82
    invoke-static {p0, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 84
    invoke-static {p0}, Lcom/facebook/analytics2/logger/AlarmBasedUploadService;->getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object v1

    const/4 v2, 0x2

    .line 87
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    add-long/2addr v4, p4

    .line 85
    invoke-virtual {v1, v2, v4, v5, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 89
    return-void

    .line 61
    :cond_1
    sget-wide v0, Lcom/facebook/analytics2/logger/AlarmBasedUploadService;->MAX_VALUE_FOR_RESCHEDULE_MIN_DELAY_MS:J

    const-wide/16 v2, 0x2

    mul-long/2addr v2, p4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v2

    goto :goto_0
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()V
    .locals 1

    .prologue
    .line 42
    invoke-static {p0}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadServiceLogic;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/AlarmBasedUploadService;->mUploadServiceLogic:Lcom/facebook/analytics2/logger/UploadServiceLogic;

    .line 43
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .prologue
    .line 113
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.facebook.analytics2.logger.UPLOAD_NOW"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 114
    const-string v0, "com.facebook.analytics2.logger.UPLOAD_NOW"

    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/AlarmBasedUploadService;->mUploadServiceLogic:Lcom/facebook/analytics2/logger/UploadServiceLogic;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/UploadServiceLogic;

    new-instance v1, Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceCallback;

    invoke-direct {v1, p0, p3}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceCallback;-><init>(Landroid/app/Service;I)V

    const/4 v2, 0x2

    .line 117
    invoke-virtual {v0, p1, v1, v2}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->runJobFromService(Landroid/content/Intent;Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceCallback;I)I

    move-result v0

    return v0
.end method
