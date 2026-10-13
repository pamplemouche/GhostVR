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

.field private static sInstance:Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;


# instance fields
.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 30
    sget-object v0, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x5a

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    sput-wide v0, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->CLIENT_WAKELOCK_EXPIRY_MS:J

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private declared-synchronized getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;
    .locals 1

    .prologue
    .line 59
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->mAlarmManager:Landroid/app/AlarmManager;

    if-nez v0, :cond_0

    .line 60
    const-string v0, "alarm"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->mAlarmManager:Landroid/app/AlarmManager;

    .line 62
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->mAlarmManager:Landroid/app/AlarmManager;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 59
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;
    .locals 1

    .prologue
    .line 152
    invoke-static {p1}, Lcom/facebook/analytics2/logger/UploadScheduler;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadScheduler;

    move-result-object v0

    .line 153
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/UploadScheduler;->getTargetService()Landroid/content/ComponentName;

    move-result-object v0

    return-object v0
.end method

.method public static getInstance()Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;
    .locals 2

    .prologue
    .line 35
    const-class v1, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;

    monitor-enter v1

    .line 36
    :try_start_0
    sget-object v0, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->sInstance:Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;

    if-nez v0, :cond_0

    .line 37
    new-instance v0, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;

    invoke-direct {v0}, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;-><init>()V

    sput-object v0, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->sInstance:Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;

    .line 39
    :cond_0
    sget-object v0, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->sInstance:Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;

    monitor-exit v1

    return-object v0

    .line 40
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private getPowerManager(Landroid/content/Context;)Landroid/os/PowerManager;
    .locals 3

    .prologue
    .line 49
    const-class v1, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;

    monitor-enter v1

    .line 50
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->mPowerManager:Landroid/os/PowerManager;

    if-nez v0, :cond_0

    .line 52
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v2, "power"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->mPowerManager:Landroid/os/PowerManager;

    .line 54
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->mPowerManager:Landroid/os/PowerManager;

    monitor-exit v1

    return-object v0

    .line 55
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method


# virtual methods
.method public cancelAlarm(Landroid/content/Context;)V
    .locals 3

    .prologue
    .line 157
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 159
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "com.facebook.analytics2.logger.UPLOAD_NOW"

    .line 160
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 163
    const/4 v1, 0x1

    const/high16 v2, 0x20000000

    .line 164
    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 166
    if-eqz v0, :cond_0

    .line 167
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 169
    :cond_0
    return-void
.end method

.method public runJobNow(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;Landroid/os/Bundle;ILcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;)V
    .locals 9
    .param p4    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const-wide/16 v2, 0x0

    .line 88
    if-eqz p6, :cond_1

    iget-wide v0, p6, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;->minDelayMs:J

    cmp-long v0, v0, v2

    if-ltz v0, :cond_0

    iget-wide v0, p6, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;->maxDelayMs:J

    cmp-long v0, v0, v2

    if-gez v0, :cond_1

    .line 90
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "fallback delay ms must be >= 0"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_1
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v7

    .line 94
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->getPowerManager(Landroid/content/Context;)Landroid/os/PowerManager;

    move-result-object v0

    const/4 v1, 0x1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "JobSchedulerHack-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 99
    invoke-virtual {v7}, Landroid/content/ComponentName;->getShortClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-client"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 102
    invoke-static {p5}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 95
    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v8

    .line 103
    const/4 v0, 0x0

    invoke-virtual {v8, v0}, Landroid/os/PowerManager$WakeLock;->setReferenceCounted(Z)V

    .line 104
    new-instance v0, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack$WakeLockReleaseHandler;

    invoke-direct {v0, v8}, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack$WakeLockReleaseHandler;-><init>(Landroid/os/PowerManager$WakeLock;)V

    move-object v1, p4

    move-object v2, p2

    move-object v3, p3

    move v4, p5

    move-object v5, p6

    move-object v6, p1

    .line 107
    invoke-static/range {v0 .. v6}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->paramsForClient(Lcom/facebook/analytics2/logger/UploadServiceLogic$ServiceCallback;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;ILcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;

    move-result-object v0

    .line 110
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 111
    invoke-virtual {v1, v7}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1, p2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->asBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 113
    sget-wide v2, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->CLIENT_WAKELOCK_EXPIRY_MS:J

    invoke-virtual {v8, v2, v3}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 115
    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    .line 116
    return-void
.end method

.method public scheduleAlarm(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;I)V
    .locals 9

    .prologue
    const/4 v7, 0x0

    .line 119
    new-instance v1, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0xf

    .line 121
    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v2

    sget-object v0, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v4, 0x1e

    invoke-virtual {v0, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v4

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;-><init>(JJLjava/lang/String;)V

    move-object v2, v7

    move-object v3, v7

    move-object v4, p2

    move-object v5, p3

    move v6, p4

    move-object v7, v1

    move-object v8, p1

    .line 123
    invoke-static/range {v2 .. v8}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->paramsForClient(Lcom/facebook/analytics2/logger/UploadServiceLogic$ServiceCallback;Landroid/os/Bundle;Ljava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;ILcom/facebook/analytics2/logger/UploadServiceLogic$FallbackConfig;Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;

    move-result-object v0

    .line 131
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 133
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->getComponentName(Landroid/content/Context;)Landroid/content/ComponentName;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "com.facebook.analytics2.logger.UPLOAD_NOW"

    .line 134
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 135
    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StartServiceParams;->asBundle()Landroid/os/Bundle;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0

    .line 137
    const/4 v1, 0x1

    const/high16 v2, 0x8000000

    .line 138
    invoke-static {p1, v1, v0, v2}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 144
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/UploadSchedulerNoDelayHack;->getAlarmManager(Landroid/content/Context;)Landroid/app/AlarmManager;

    move-result-object v1

    const/4 v2, 0x2

    .line 147
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v4

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v6, 0x5

    invoke-virtual {v3, v6, v7}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v6

    add-long/2addr v4, v6

    .line 145
    invoke-virtual {v1, v2, v4, v5, v0}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 149
    return-void
.end method
