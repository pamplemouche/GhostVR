.class public Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;
.super Ljava/lang/Object;
.source "KeepaliveManager.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0xf
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final ACTION_BACKUP_ALARM:Ljava/lang/String;

.field private static final ACTION_EXACT_ALARM:Ljava/lang/String;

.field public static final ACTION_INEXACT_ALARM:Ljava/lang/String;
    .annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
    .end annotation
.end field

.field private static final ALLOWED_INEXACT_INTERVAL_DELAYS:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mAlarmManager:Landroid/app/AlarmManager;

.field final mBackupAlarmAction:Ljava/lang/String;
    .annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mBackupAlarmIntent:Landroid/app/PendingIntent;

.field private final mBackupKeepaliveReceiver:Landroid/content/BroadcastReceiver;

.field private final mBuildVersion:I

.field private final mContext:Landroid/content/Context;

.field private mCurrentIntervalTimeMs:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mElapsedRealtimeClock:Lcom/facebook/rti/common/time/MonotonicClock;

.field final mExactAlarmAction:Ljava/lang/String;
    .annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mExactAlarmIntent:Landroid/app/PendingIntent;

.field private final mExactKeepaliveReceiver:Landroid/content/BroadcastReceiver;

.field private mExpectedNextAlarmTimeMs:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mHandler:Landroid/os/Handler;

.field final mInexactAlarmAction:Ljava/lang/String;
    .annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
    .end annotation
.end field

.field private final mInexactAlarmIntent:Landroid/app/PendingIntent;

.field private mInexactIntervalTimeMs:J
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mInexactKeepaliveReceiver:Landroid/content/BroadcastReceiver;

.field private final mIsPreloaded:Z

.field private final mKeepaliveInterval:Ljava/util/concurrent/atomic/AtomicInteger;

.field private volatile mKeepaliveRunnable:Ljava/lang/Runnable;

.field private mListening:Z
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

.field private final mServiceName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 43
    const-class v0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->TAG:Ljava/lang/String;

    .line 49
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ACTION_INEXACT_ALARM."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->ACTION_INEXACT_ALARM:Ljava/lang/String;

    .line 56
    new-instance v0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$1;

    invoke-direct {v0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$1;-><init>()V

    .line 57
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->ALLOWED_INEXACT_INTERVAL_DELAYS:Ljava/util/List;

    .line 68
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ACTION_EXACT_ALARM."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->ACTION_EXACT_ALARM:Ljava/lang/String;

    .line 69
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".ACTION_BACKUP_ALARM."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->ACTION_BACKUP_ALARM:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/rti/common/util/SystemServiceManager;Ljava/lang/String;Ljava/util/concurrent/atomic/AtomicInteger;Lcom/facebook/rti/common/time/MonotonicClock;Landroid/os/Handler;Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;)V
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-android.app.PendingIntent.getBroadcast"
        }
    .end annotation

    .prologue
    const/high16 v3, 0x8000000

    const/4 v2, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mInexactIntervalTimeMs:J

    .line 119
    iput-object p1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mContext:Landroid/content/Context;

    .line 120
    iput-object p3, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mServiceName:Ljava/lang/String;

    .line 121
    invoke-static {p1}, Lcom/facebook/rti/mqtt/common/util/ServiceLeaderElectionUtil;->isServicePreLoadedPackage(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mIsPreloaded:Z

    .line 122
    iput-object p4, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mKeepaliveInterval:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 123
    const-string v0, "alarm"

    const-class v1, Landroid/app/AlarmManager;

    .line 124
    invoke-virtual {p2, v0, v1}, Lcom/facebook/rti/common/util/SystemServiceManager;->ensureService(Ljava/lang/String;Ljava/lang/Class;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v0

    .line 125
    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 126
    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iput-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mAlarmManager:Landroid/app/AlarmManager;

    .line 130
    iput-object p5, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mElapsedRealtimeClock:Lcom/facebook/rti/common/time/MonotonicClock;

    .line 131
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iput v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mBuildVersion:I

    .line 132
    iput-object p6, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mHandler:Landroid/os/Handler;

    .line 133
    iput-object p7, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    .line 138
    new-instance v0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;

    invoke-direct {v0, p0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$2;-><init>(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mExactKeepaliveReceiver:Landroid/content/BroadcastReceiver;

    .line 180
    sget-object v0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->ACTION_EXACT_ALARM:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->getAlarmAction(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mExactAlarmAction:Ljava/lang/String;

    .line 181
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mExactAlarmAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 184
    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mExactAlarmIntent:Landroid/app/PendingIntent;

    .line 190
    new-instance v0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$3;

    invoke-direct {v0, p0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$3;-><init>(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mInexactKeepaliveReceiver:Landroid/content/BroadcastReceiver;

    .line 231
    sget-object v0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->ACTION_INEXACT_ALARM:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->getAlarmAction(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mInexactAlarmAction:Ljava/lang/String;

    .line 232
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mInexactAlarmAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 233
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 235
    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mInexactAlarmIntent:Landroid/app/PendingIntent;

    .line 239
    new-instance v0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$4;

    invoke-direct {v0, p0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager$4;-><init>(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mBackupKeepaliveReceiver:Landroid/content/BroadcastReceiver;

    .line 273
    sget-object v0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->ACTION_BACKUP_ALARM:Ljava/lang/String;

    invoke-direct {p0, v0, p1}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->getAlarmAction(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mBackupAlarmAction:Ljava/lang/String;

    .line 274
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mBackupAlarmAction:Ljava/lang/String;

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 275
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 277
    invoke-static {p1, v2, v0, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mBackupAlarmIntent:Landroid/app/PendingIntent;

    .line 278
    return-void

    .line 128
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Cannot acquire Alarm service"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 41
    sget-object v0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)Lcom/facebook/rti/common/time/MonotonicClock;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mElapsedRealtimeClock:Lcom/facebook/rti/common/time/MonotonicClock;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mKeepaliveRunnable:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mBackupAlarmIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mInexactIntervalTimeMs:J

    return-wide v0
.end method

.method static synthetic access$1300(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mInexactAlarmIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$1400(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;J)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->setBackup(J)V

    return-void
.end method

.method static synthetic access$1500(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;JJ)V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->setInexactRepeating(JJ)V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mExpectedNextAlarmTimeMs:J

    return-wide v0
.end method

.method static synthetic access$202(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;J)J
    .locals 1

    .prologue
    .line 41
    iput-wide p1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mExpectedNextAlarmTimeMs:J

    return-wide p1
.end method

.method static synthetic access$300(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)J
    .locals 2

    .prologue
    .line 41
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mCurrentIntervalTimeMs:J

    return-wide v0
.end method

.method static synthetic access$400(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mListening:Z

    return v0
.end method

.method static synthetic access$500(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)I
    .locals 1

    .prologue
    .line 41
    iget v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mBuildVersion:I

    return v0
.end method

.method static synthetic access$600(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)Z
    .locals 1

    .prologue
    .line 41
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mIsPreloaded:Z

    return v0
.end method

.method static synthetic access$700(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)Landroid/app/AlarmManager;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mAlarmManager:Landroid/app/AlarmManager;

    return-object v0
.end method

.method static synthetic access$800(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)Landroid/app/PendingIntent;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mExactAlarmIntent:Landroid/app/PendingIntent;

    return-object v0
.end method

.method static synthetic access$900(Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;)Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    return-object v0
.end method

.method private getAlarmAction(Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 410
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 411
    invoke-virtual {p2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    .line 412
    invoke-static {v1}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 413
    const/16 v2, 0x2e

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 415
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getMaximumInexactDelay(J)J
    .locals 6

    .prologue
    const-wide/32 v2, 0xdbba0

    .line 400
    cmp-long v0, p0, v2

    if-ltz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkArgument(Z)V

    .line 401
    sget-object v0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->ALLOWED_INEXACT_INTERVAL_DELAYS:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 402
    cmp-long v5, p0, v0

    if-ltz v5, :cond_0

    .line 406
    :goto_1
    return-wide v0

    .line 400
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    move-wide v0, v2

    .line 406
    goto :goto_1
.end method

.method private setBackup(J)V
    .locals 7
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 465
    iget v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mBuildVersion:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mIsPreloaded:Z

    if-eqz v0, :cond_0

    .line 466
    iget-object v1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v6, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mBackupAlarmIntent:Landroid/app/PendingIntent;

    move-wide v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->api23_setExactAndAllowWhileIdle(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    .line 474
    :goto_0
    return-void

    .line 468
    :cond_0
    iget v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mBuildVersion:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 469
    iget-object v1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v6, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mBackupAlarmIntent:Landroid/app/PendingIntent;

    move-wide v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->api19_setExact(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 472
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mBackupAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v3, p1, p2, v1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private setExactRepeating(JJ)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "SetRepeatingUse",
            "BadMethodUse-android.app.AlarmManager.setRepeating"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 421
    iget v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mBuildVersion:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mIsPreloaded:Z

    if-eqz v0, :cond_0

    .line 423
    iget-object v1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v6, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mExactAlarmIntent:Landroid/app/PendingIntent;

    move-wide v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->api23_setExactAndAllowWhileIdle(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    .line 432
    :goto_0
    return-void

    .line 425
    :cond_0
    iget v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mBuildVersion:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_1

    .line 426
    iget-object v1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v6, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mExactAlarmIntent:Landroid/app/PendingIntent;

    move-wide v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->api19_setExact(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    goto :goto_0

    .line 429
    :cond_1
    iget-object v2, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v8, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mExactAlarmIntent:Landroid/app/PendingIntent;

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method

.method private setInexactRepeating(JJ)V
    .locals 9
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "BadMethodUse-android.app.AlarmManager.setInexactRepeating",
            "SetInexactRepeatingArgs"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation

    .prologue
    const/4 v3, 0x2

    .line 454
    iget v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mBuildVersion:I

    const/16 v1, 0x17

    if-lt v0, v1, :cond_0

    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mIsPreloaded:Z

    if-eqz v0, :cond_0

    .line 455
    iget-object v1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v6, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mInexactAlarmIntent:Landroid/app/PendingIntent;

    move-wide v4, p1

    invoke-virtual/range {v1 .. v6}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->api23_setAndAllowWhileIdle(Landroid/app/AlarmManager;IJLandroid/app/PendingIntent;)V

    .line 461
    :goto_0
    return-void

    .line 458
    :cond_0
    iget-object v2, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v8, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mInexactAlarmIntent:Landroid/app/PendingIntent;

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v2 .. v8}, Landroid/app/AlarmManager;->setInexactRepeating(IJJLandroid/app/PendingIntent;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized cancelRepeating()V
    .locals 3

    .prologue
    .line 385
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mListening:Z

    if-eqz v0, :cond_1

    .line 386
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mListening:Z

    .line 387
    sget-object v0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->TAG:Ljava/lang/String;

    const-string v1, "keepalive/stop"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 388
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mInexactAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->cancelAlarm(Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V

    .line 389
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mIsPreloaded:Z

    if-nez v0, :cond_0

    .line 390
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mBackupAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->cancelAlarm(Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V

    .line 392
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mExactAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->cancelAlarm(Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V

    .line 394
    :cond_1
    const-wide/32 v0, 0xdbba0

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mCurrentIntervalTimeMs:J

    .line 395
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mInexactIntervalTimeMs:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 396
    monitor-exit p0

    return-void

    .line 385
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized destroy()V
    .locals 3

    .prologue
    .line 295
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->cancelRepeating()V

    .line 296
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mKeepaliveRunnable:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 297
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mExactKeepaliveReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 298
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mInexactKeepaliveReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z

    .line 299
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mBackupKeepaliveReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->unregisterReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 301
    :cond_0
    monitor-exit p0

    return-void

    .line 295
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized ensureScheduled()V
    .locals 6

    .prologue
    .line 305
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mListening:Z

    if-nez v0, :cond_0

    .line 306
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->startRepeating()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 313
    :goto_0
    monitor-exit p0

    return-void

    .line 308
    :cond_0
    :try_start_1
    sget-object v0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->TAG:Ljava/lang/String;

    const-string v1, "keepalive/no_op; nextWakeupSec=%d"

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mExpectedNextAlarmTimeMs:J

    iget-object v4, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mElapsedRealtimeClock:Lcom/facebook/rti/common/time/MonotonicClock;

    .line 311
    invoke-interface {v4}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    .line 308
    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 305
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized registerCallback(Ljava/lang/Runnable;)V
    .locals 6

    .prologue
    .line 282
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mKeepaliveRunnable:Ljava/lang/Runnable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    .line 292
    :goto_0
    monitor-exit p0

    return-void

    .line 285
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mKeepaliveRunnable:Ljava/lang/Runnable;

    .line 286
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mExactKeepaliveReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    iget-object v4, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mExactAlarmAction:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Z

    .line 288
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mInexactKeepaliveReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    iget-object v4, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mInexactAlarmAction:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Z

    .line 290
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mBackupKeepaliveReceiver:Landroid/content/BroadcastReceiver;

    new-instance v3, Landroid/content/IntentFilter;

    iget-object v4, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mBackupAlarmAction:Ljava/lang/String;

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mHandler:Landroid/os/Handler;

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->registerReceiver(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized startRepeating()V
    .locals 10

    .prologue
    const-wide/32 v4, 0xdbba0

    .line 328
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mKeepaliveInterval:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v0, v0

    .line 329
    cmp-long v2, v0, v4

    if-lez v2, :cond_0

    .line 331
    invoke-static {v0, v1}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->getMaximumInexactDelay(J)J

    move-result-wide v0

    .line 334
    :cond_0
    iput-wide v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mCurrentIntervalTimeMs:J

    .line 335
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mElapsedRealtimeClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v0

    .line 336
    iget-wide v2, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mCurrentIntervalTimeMs:J

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mExpectedNextAlarmTimeMs:J

    .line 338
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mListening:Z

    if-eqz v0, :cond_3

    .line 340
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mExactAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->cancelAlarm(Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V

    .line 341
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mIsPreloaded:Z

    if-nez v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mBackupAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->cancelAlarm(Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 351
    :cond_1
    :goto_0
    :try_start_1
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mCurrentIntervalTimeMs:J

    cmp-long v0, v0, v4

    if-gez v0, :cond_4

    .line 353
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mExpectedNextAlarmTimeMs:J

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mCurrentIntervalTimeMs:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->setExactRepeating(JJ)V

    .line 371
    :cond_2
    :goto_1
    sget-object v0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->TAG:Ljava/lang/String;

    const-string v1, "keepalive/start; intervalSec=%s"

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mCurrentIntervalTimeMs:J

    const-wide/16 v4, 0x3e8

    div-long/2addr v2, v4

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 381
    :goto_2
    monitor-exit p0

    return-void

    .line 346
    :cond_3
    const/4 v0, 0x1

    :try_start_2
    iput-boolean v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mListening:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    .line 328
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 356
    :cond_4
    :try_start_3
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mInexactIntervalTimeMs:J

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mCurrentIntervalTimeMs:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 360
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mCurrentIntervalTimeMs:J

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mInexactIntervalTimeMs:J

    .line 361
    iget-object v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mRtiGracefulSystemMethodHelper:Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mAlarmManager:Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mInexactAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/common/util/RtiGracefulSystemMethodHelper;->cancelAlarm(Landroid/app/AlarmManager;Landroid/app/PendingIntent;)V

    .line 364
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mExpectedNextAlarmTimeMs:J

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mCurrentIntervalTimeMs:J

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->setInexactRepeating(JJ)V

    .line 367
    :cond_5
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mIsPreloaded:Z

    if-nez v0, :cond_2

    .line 368
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mExpectedNextAlarmTimeMs:J

    const-wide/16 v2, 0x4e20

    add-long/2addr v0, v2

    invoke-direct {p0, v0, v1}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->setBackup(J)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 372
    :catch_0
    move-exception v0

    .line 374
    :try_start_4
    sget-object v1, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->TAG:Ljava/lang/String;

    const-string v2, "keepalive/alarm_failed; intervalSec=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p0, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->mCurrentIntervalTimeMs:J

    const-wide/16 v8, 0x3e8

    div-long/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v1, v0, v2, v3}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 376
    :try_start_5
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/keepalive/KeepaliveManager;->cancelRepeating()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_2

    .line 377
    :catch_1
    move-exception v0

    goto :goto_2
.end method
