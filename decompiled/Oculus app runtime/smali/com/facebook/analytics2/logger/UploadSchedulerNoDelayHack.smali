.class Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;
.super Ljava/lang/Object;
.source "UploadSchedulerNoDelayHack.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack$WakeLockReleaseHandler;
    }
.end annotation


# static fields
.field private static final CLIENT_WAKELOCK_EXPIRY_MS:J

.field private static final REQUEST_CODE:I = 0x1

.field private static final TAG:Ljava/lang/String; = "JobSchedulerHack"

.field private static sInstance:Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5a

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->CLIENT_WAKELOCK_EXPIRY_MS:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;
    .locals 1

    monitor-enter p0

    .line 59
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    const-string v0, "alarm"

    .line 60
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/AlarmManager;

    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->mAlarmManager:Landroid/app/AlarmManager;

    .line 62
    :cond_0
    iget-object p1, p0, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->mAlarmManager:Landroid/app/AlarmManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 0

    .line 146
    invoke-static {p1}, Lcom/facebook/analytics2/logger/UploadScheduler;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadScheduler;

    move-result-object p1

    .line 147
    invoke-virtual {p1}, Lcom/facebook/analytics2/logger/UploadScheduler;->getTargetService()Landroid/content/ComponentName;

    move-result-object p1

    return-object p1
.end method

.method public static getInstance()Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;
    .locals 2

    .line 35
    const-class v0, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;

    monitor-enter v0

    .line 36
    :try_start_0
    sget-object v1, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->sInstance:Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;

    if-nez v1, :cond_0

    .line 37
    new-instance v1, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;

    invoke-direct {v1}, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;-><init>()V

    sput-object v1, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->sInstance:Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;

    .line 39
    :cond_0
    sget-object v1, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->sInstance:Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 40
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private getPowerManager(Landroid/content/Context;)Landroid/os/PowerManager;
    .locals 2

    .line 49
    const-class v0, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;

    monitor-enter v0

    .line 50
    :try_start_0
    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->mPowerManager:Landroid/os/PowerManager;

    if-nez v1, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/os/PowerManager;

    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->mPowerManager:Landroid/os/PowerManager;

    .line 54
    :cond_0
    iget-object p1, p0, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->mPowerManager:Landroid/os/PowerManager;

    monitor-exit v0

    return-object p1

    :catchall_0
    move-exception p1

    .line 55
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method


# virtual methods
.method public cancelAlarm(Landroid/content/Context;)V
    .locals 3

    .line 151
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 153
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.facebook.analytics2.logger.UPLOAD_NOW"

    .line 154
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x1

    const/high16 v2, 0x20000000

    .line 158
    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object p1

    invoke-virtual {p1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    :cond_0
    return-void
.end method

.method public runJobNow(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;Landroid/os/Bundle;ILcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;)V
    .locals 9
    .param p6    # Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    if-eqz p6, :cond_1

    .line 88
    iget-wide v0, p6, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;->minDelayMs:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    iget-wide v0, p6, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;->maxDelayMs:J

    cmp-long v4, v0, v2

    if-ltz v4, :cond_0

    goto :goto_0

    .line 90
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "fallback delay ms must be >= 0"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 92
    :cond_1
    :goto_0
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v0

    .line 94
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->getPowerManager(Landroid/content/Context;)Landroid/os/PowerManager;

    move-result-object v1

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "JobSchedulerHack-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 99
    invoke-virtual {v0}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-client"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 102
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 95
    invoke-virtual {v1, v2, v3}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    const/4 v2, 0x0

    .line 103
    invoke-virtual {v1, v2}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 104
    new-instance v3, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack$WakeLockReleaseHandler;

    invoke-direct {v3, v1}, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack$WakeLockReleaseHandler;-><init>(Landroid/os/PowerManager$WakeLock;)V

    move-object v4, p4

    move-object v5, p2

    move-object v6, p3

    move v7, p5

    move-object v8, p6

    .line 107
    invoke-static/range {v3 .. v8}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->paramsForClient(Lcom/facebook/analytics2/logger/UploadServiceLogic$ServiceCallback;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;ILcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;)Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;

    move-result-object p3

    .line 110
    new-instance p4, Landroid/content/Intent;

    invoke-direct {p4}, Landroid/content/Intent;-><init>()V

    .line 111
    invoke-virtual {p4, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p4

    invoke-virtual {p4, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p2

    invoke-virtual {p3}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->asBundle()Landroid/os/Bundle;

    move-result-object p3

    invoke-virtual {p2, p3}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p2

    .line 113
    sget-wide p3, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->CLIENT_WAKELOCK_EXPIRY_MS:J

    invoke-virtual {v1, p3, p4}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 115
    invoke-virtual {p1, p2}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    return-void
.end method

.method public scheduleAlarm(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;I)V
    .locals 7

    .line 119
    new-instance v6, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0xf

    .line 121
    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v1

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v3, 0x1e

    invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    move-object v0, v6

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;-><init>(JJLjava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x0

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, v6

    .line 123
    invoke-static/range {v0 .. v5}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->paramsForClient(Lcom/facebook/analytics2/logger/UploadServiceLogic$ServiceCallback;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;ILcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;)Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;

    move-result-object p2

    .line 125
    new-instance p3, Landroid/content/Intent;

    invoke-direct {p3}, Landroid/content/Intent;-><init>()V

    .line 127
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object p4

    invoke-virtual {p3, p4}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object p3

    const-string p4, "com.facebook.analytics2.logger.UPLOAD_NOW"

    .line 128
    invoke-virtual {p3, p4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p3

    .line 129
    invoke-virtual {p2}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->asBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-virtual {p3, p2}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p2

    const/4 p3, 0x1

    const/high16 p4, 0x8000000

    .line 132
    invoke-static {p1, p3, p2, p4}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p2

    .line 138
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object p1

    .line 141
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p3

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v1, 0x5

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    add-long/2addr p3, v0

    const/4 v0, 0x2

    .line 139
    invoke-virtual {p1, v0, p3, p4, p2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void
.end method
