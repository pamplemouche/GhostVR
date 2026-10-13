.class public Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;
.super Ljava/lang/Object;
.source "PingUnreceivedAlarm.java"


# annotations
.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field public static final ACTION_ALARM:Ljava/lang/String;


# instance fields
.field public final mAlarmAction:Ljava/lang/String;

.field private final mAlarmIntent:Landroid/app/PendingIntent;

.field private final mAlarmManager:Landroid/app/AlarmManager;

.field private final mBuildVersion:I

.field private final mContext:Landroid/content/Context;

.field private final mDelayS:I

.field private final mElapsedRealtimeClock:Lcom/facebook/rti/common/time/MonotonicClock;

.field private final mHandler:Landroid/os/Handler;

.field private final mKeepaliveParms:Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;

.field private mListening:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mPingUnreceivedReceiver:Landroid/content/BroadcastReceiver;

.field private volatile mPingUnreceivedRunnable:Ljava/lang/Runnable;

.field private mReceiverRegistered:Z

.field private final mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 29
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;

    .line 30
    invoke-virtual {v1}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ACTION_ALARM."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->ACTION_ALARM:Ljava/lang/String;

    .line 29
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/rti/common/util/SystemServiceManager;Ljava/lang/String;Lcom/facebook/rti/common/time/MonotonicClock;Landroid/os/Handler;Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;)V
    .locals 4

    .prologue
    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mContext:Landroid/content/Context;

    .line 62
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->ACTION_ALARM:Ljava/lang/String;

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 63
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 64
    invoke-static {v1}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 65
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 67
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mAlarmAction:Ljava/lang/String;

    .line 68
    const-string v0, "alarm"

    const-class v1, Landroid/app/AlarmManager;

    .line 69
    invoke-virtual {p2, v0, v1}, Lcom/facebook/rti/common/util/SystemServiceManager;->ensureService(Ljava/lang/String;Ljava/lang/Class;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v0

    .line 70
    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mAlarmManager:Landroid/app/AlarmManager;

    .line 75
    iput-object p4, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mElapsedRealtimeClock:Lcom/facebook/rti/common/time/MonotonicClock;

    .line 76
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mBuildVersion:I

    .line 77
    iput-object p5, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mHandler:Landroid/os/Handler;

    .line 78
    iput-object p6, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mKeepaliveParms:Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;

    .line 79
    iput-object p7, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    .line 80
    invoke-interface {p6}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;->getPingDelayS()I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mDelayS:I

    .line 82
    new-instance v0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm$1;

    invoke-direct {v0, p0}, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm$1;-><init>(Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;)V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mPingUnreceivedReceiver:Landroid/content/BroadcastReceiver;

    .line 97
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mAlarmAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 98
    iget-object v1, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 99
    iget-object v1, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mContext:Landroid/content/Context;

    const/4 v2, 0x0

    const/high16 v3, 0x8000000

    .line 100
    invoke-static {v1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mAlarmIntent:Landroid/app/PendingIntent;

    .line 101
    return-void

    .line 73
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot acquire Alarm service"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000(Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mPingUnreceivedRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method private declared-synchronized ensureRegisteredReceiver()V
    .locals 6

    .prologue
    .line 117
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mReceiverRegistered:Z

    if-nez v0, :cond_0

    .line 118
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mPingUnreceivedReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    iget-object v4, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mAlarmAction:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mHandler:Landroid/os/Handler;

    .line 119
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mReceiverRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_0
    monitor-exit p0

    return-void

    .line 117
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private startAlarm(J)V
    .locals 13
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    const-wide/16 v10, 0x3e8

    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 155
    iput-boolean v8, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mListening:Z

    .line 157
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mElapsedRealtimeClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v0

    .line 160
    add-long v4, v0, p1

    .line 164
    :try_start_0
    iget v0, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mBuildVersion:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v3, 0x2

    iget-object v6, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->api19_setExact(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    .line 170
    :goto_0
    const-string v0, "PingUnreceivedAlarm"

    const-string/jumbo v1, "start; intervalSec=%s"

    const-wide/16 v2, 0x3e8

    div-long v2, p1, v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 175
    :goto_1
    return-void

    .line 168
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v1, 0x2

    iget-object v2, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v4, v5, v2}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 171
    :catch_0
    move-exception v0

    .line 172
    iput-boolean v7, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mListening:Z

    .line 173
    const-string v1, "PingUnreceivedAlarm"

    const-string v2, "alarm_failed; intervalSec=%s"

    new-array v3, v8, [Ljava/lang/Object;

    div-long v4, p1, v10

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v3, v7

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1
.end method


# virtual methods
.method public declared-synchronized cancelAlarm()V
    .locals 3

    .prologue
    .line 179
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mListening:Z

    if-eqz v0, :cond_0

    .line 180
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mListening:Z

    .line 182
    const-string v0, "PingUnreceivedAlarm"

    const-string/jumbo v1, "stop"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 183
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->cancelAlarm(Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 185
    :cond_0
    monitor-exit p0

    return-void

    .line 179
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized destroy()V
    .locals 3

    .prologue
    .line 125
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->cancelAlarm()V

    .line 126
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mReceiverRegistered:Z

    if-eqz v0, :cond_0

    .line 127
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mPingUnreceivedReceiver:Landroid/content/BroadcastReceiver;

    .line 128
    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mReceiverRegistered:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 130
    :cond_0
    monitor-exit p0

    return-void

    .line 128
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ensureScheduled()V
    .locals 1

    .prologue
    .line 134
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mListening:Z

    if-nez v0, :cond_0

    .line 135
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->startAlarm()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    :cond_0
    monitor-exit p0

    return-void

    .line 134
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerCallback(Ljava/lang/Runnable;)V
    .locals 1

    .prologue
    .line 110
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mPingUnreceivedRunnable:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 114
    :goto_0
    monitor-exit p0

    return-void

    .line 113
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mPingUnreceivedRunnable:Ljava/lang/Runnable;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 110
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startAlarm()V
    .locals 2

    .prologue
    .line 141
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->ensureRegisteredReceiver()V

    .line 142
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mListening:Z

    if-nez v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mKeepaliveParms:Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;

    invoke-interface {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveParms;->getForegroundKeepaliveS()I

    move-result v0

    iget v1, p0, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->mDelayS:I

    add-int/2addr v0, v1

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    invoke-direct {p0, v0, v1}, Lcom/facebook/rti/mqtt/keepalive/PingUnreceivedAlarm;->startAlarm(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 145
    :cond_0
    monitor-exit p0

    return-void

    .line 141
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
