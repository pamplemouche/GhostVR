.class public Lcom/facebook/analytics2/logger/AlarmBasedUploadService;
.super Landroid/app/Service;
.source "AlarmBasedUploadService.java"


# static fields
.field private static final MAX_VALUE_FOR_RESCHEDULE_MIN_DELAY_MS:J

.field private static final MIN_VALUE_FOR_RESCHEDULE_MIN_DELAY_MS:J

.field protected static final REQUEST_CODE:I

.field private static sAlarmManager:Landroid/app/AlarmManager;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "AlarmBasedUploadService.class"
    .end annotation
.end field


# instance fields
.field private mUploadServiceLogic:Lcom/facebook/analytics2/logger/UploadServiceLogic;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 21
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/analytics2/logger/AlarmBasedUploadService;->MIN_VALUE_FOR_RESCHEDULE_MIN_DELAY_MS:J

    .line 22
    sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x6

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/analytics2/logger/AlarmBasedUploadService;->MAX_VALUE_FOR_RESCHEDULE_MIN_DELAY_MS:J

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 20
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    return-void
.end method

.method public static cancelJob(Landroid/content/Context;I)V
    .locals 3

    .line 91
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    new-instance v1, Landroid/content/ComponentName;

    const-class v2, Lcom/facebook/analytics2/logger/AlarmBasedUploadService;

    invoke-direct {v1, p0, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 93
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 94
    invoke-static {p1}, Lcom/facebook/analytics2/logger/AlarmBasedUploadService;->createUploadAction(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p1

    const/4 v0, 0x0

    const/high16 v1, 0x20000000

    .line 98
    invoke-static {p0, v0, p1, v1}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 101
    invoke-static {p0}, Lcom/facebook/analytics2/logger/AlarmBasedUploadService;->getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method private static createUploadAction(I)Ljava/lang/String;
    .locals 2

    .line 123
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.facebook.analytics2.logger.UPLOAD_NOW-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private static declared-synchronized getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;
    .locals 2

    const-class v0, Lcom/facebook/analytics2/logger/AlarmBasedUploadService;

    monitor-enter v0

    .line 33
    :try_start_0
    sget-object v1, Lcom/facebook/analytics2/logger/AlarmBasedUploadService;->sAlarmManager:Landroid/app/AlarmManager;

    if-nez v1, :cond_0

    const-string v1, "alarm"

    .line 34
    invoke-virtual {p0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/app/AlarmManager;

    sput-object p0, Lcom/facebook/analytics2/logger/AlarmBasedUploadService;->sAlarmManager:Landroid/app/AlarmManager;

    .line 37
    :cond_0
    sget-object p0, Lcom/facebook/analytics2/logger/AlarmBasedUploadService;->sAlarmManager:Landroid/app/AlarmManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static scheduleJob(Landroid/content/Context;ILjava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;JJ)V
    .locals 18
    .param p2    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    move-object/from16 v0, p0

    const/4 v1, 0x0

    const/4 v2, 0x2

    cmp-long v3, p6, p4

    if-gez v3, :cond_0

    .line 55
    new-array v3, v2, [Ljava/lang/Object;

    invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v1

    const/4 v4, 0x1

    invoke-static/range {p4 .. p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    const-string v4, "AlarmUpload-MaxDelay"

    const-string v5, "MaxDelayms(%d) < MinDelayms(%d)"

    invoke-static {v4, v5, v3}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    move-wide/from16 v3, p4

    goto :goto_0

    :cond_0
    move-wide/from16 v3, p6

    .line 58
    :goto_0
    sget-wide v5, Lcom/facebook/analytics2/logger/AlarmBasedUploadService;->MIN_VALUE_FOR_RESCHEDULE_MIN_DELAY_MS:J

    cmp-long v7, p4, v5

    if-gez v7, :cond_1

    goto :goto_1

    .line 61
    :cond_1
    sget-wide v5, Lcom/facebook/analytics2/logger/AlarmBasedUploadService;->MAX_VALUE_FOR_RESCHEDULE_MIN_DELAY_MS:J

    const-wide/16 v7, 0x2

    mul-long v7, v7, p4

    invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    :goto_1
    move-wide v8, v5

    sub-long v3, v3, p4

    add-long v10, v8, v3

    const/4 v3, 0x0

    const/4 v13, 0x0

    .line 65
    new-instance v17, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;

    move-object/from16 v7, v17

    move-object/from16 v12, p2

    invoke-direct/range {v7 .. v12}, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;-><init>(JJLjava/lang/String;)V

    move-object v12, v3

    move-object/from16 v14, p2

    move-object/from16 v15, p3

    move/from16 v16, p1

    .line 66
    invoke-static/range {v12 .. v17}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->paramsForClient(Lcom/facebook/analytics2/logger/UploadServiceLogic$ServiceCallback;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;ILcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;)Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;

    move-result-object v3

    .line 75
    new-instance v4, Landroid/content/Intent;

    const-class v5, Lcom/facebook/analytics2/logger/AlarmBasedUploadService;

    invoke-direct {v4, v0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 77
    invoke-static/range {p1 .. p1}, Lcom/facebook/analytics2/logger/AlarmBasedUploadService;->createUploadAction(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 78
    invoke-virtual {v3}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->asBundle()Landroid/os/Bundle;

    move-result-object v3

    invoke-virtual {v4, v3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v3

    const/high16 v4, 0x8000000

    .line 81
    invoke-static {v0, v1, v3, v4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v1

    .line 83
    invoke-static/range {p0 .. p0}, Lcom/facebook/analytics2/logger/AlarmBasedUploadService;->getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object v0

    .line 86
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v3

    add-long v3, v3, p4

    .line 84
    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method


# virtual methods
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public onCreate()V
    .locals 1

    .line 42
    invoke-static {p0}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadServiceLogic;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/AlarmBasedUploadService;->mUploadServiceLogic:Lcom/facebook/analytics2/logger/UploadServiceLogic;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    if-eqz p1, :cond_0

    .line 112
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p2

    const-string v0, "com.facebook.analytics2.logger.UPLOAD_NOW"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 113
    invoke-virtual {p1, v0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    :cond_0
    iget-object p2, p0, Lcom/facebook/analytics2/logger/AlarmBasedUploadService;->mUploadServiceLogic:Lcom/facebook/analytics2/logger/UploadServiceLogic;

    invoke-static {p2}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/analytics2/logger/UploadServiceLogic;

    new-instance v0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceCallback;

    invoke-direct {v0, p0, p3}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceCallback;-><init>(Landroid/app/Service;I)V

    const/4 p3, 0x2

    .line 116
    invoke-virtual {p2, p1, v0, p3}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->runJobFromService(Landroid/content/Intent;Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceCallback;I)I

    move-result p1

    return p1
.end method
