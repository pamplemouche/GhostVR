.class public Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences;
.super Ljava/lang/Object;
.source "NotificationDeliveryStoreSharedPreferences.java"

# interfaces
.implements Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStore;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences$NotificationItemSharedPreferences;
    }
.end annotation

.annotation build Ljavax/annotation/concurrent/ThreadSafe;
.end annotation


# static fields
.field private static final mSearialExecutor:Lcom/facebook/rti/common/concurrent/SerialExecutor;


# instance fields
.field private final mClock:Lcom/facebook/rti/common/time/Clock;

.field private final mCommitOnBackgroundThread:Z

.field protected mMinRetryInterval:Ljava/util/concurrent/atomic/AtomicLong;

.field private final mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 38
    const-string v0, "delivery_helper"

    .line 39
    invoke-static {v0}, Lcom/facebook/rti/common/concurrent/SerialExecutor;->newInstanceWithSharedPool(Ljava/lang/String;)Lcom/facebook/rti/common/concurrent/SerialExecutor;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences;->mSearialExecutor:Lcom/facebook/rti/common/concurrent/SerialExecutor;

    .line 38
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/rti/common/time/Clock;Z)V
    .locals 4

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/32 v2, 0x493e0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences;->mMinRetryInterval:Ljava/util/concurrent/atomic/AtomicLong;

    .line 46
    new-instance v0, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper$RtiSharedPref;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "rti.mqtt.fbns_notification_store_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper$RtiSharedPref;-><init>(Ljava/lang/String;)V

    .line 47
    invoke-static {p1, v0}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper;->getSharedPreferences(Landroid/content/Context;Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper$RtiSharedPref;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    .line 53
    iput-object p3, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences;->mClock:Lcom/facebook/rti/common/time/Clock;

    .line 54
    iput-boolean p4, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences;->mCommitOnBackgroundThread:Z

    .line 55
    return-void
.end method

.method private modifyPreference(Landroid/content/SharedPreferences$Editor;)V
    .locals 2

    .prologue
    .line 146
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences;->mCommitOnBackgroundThread:Z

    if-eqz v0, :cond_0

    .line 147
    sget-object v0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences;->mSearialExecutor:Lcom/facebook/rti/common/concurrent/SerialExecutor;

    new-instance v1, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences$1;

    invoke-direct {v1, p0, p1}, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences$1;-><init>(Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences;Landroid/content/SharedPreferences$Editor;)V

    invoke-virtual {v0, v1}, Lcom/facebook/rti/common/concurrent/SerialExecutor;->execute(Ljava/lang/Runnable;)V

    .line 157
    :goto_0
    return-void

    .line 155
    :cond_0
    invoke-static {p1}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper;->apply(Landroid/content/SharedPreferences$Editor;)V

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized add(Ljava/lang/String;Landroid/content/Intent;)V
    .locals 8

    .prologue
    .line 64
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 65
    const-string v0, "NotificationDeliveryStoreSharedPreferences"

    const-string v1, "ignore duplicated %s"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 75
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 68
    :cond_1
    :try_start_1
    const-string v0, "NotificationDeliveryStoreSharedPreferences"

    const-string v1, "add %s"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 69
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences;->mClock:Lcom/facebook/rti/common/time/Clock;

    invoke-interface {v0}, Lcom/facebook/rti/common/time/Clock;->now()J

    move-result-wide v4

    .line 70
    new-instance v1, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences$NotificationItemSharedPreferences;

    move-object v2, p2

    move-object v3, p1

    move-wide v6, v4

    invoke-direct/range {v1 .. v7}, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences$NotificationItemSharedPreferences;-><init>(Landroid/content/Intent;Ljava/lang/String;JJ)V

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences$NotificationItemSharedPreferences;->serialize()Ljava/lang/String;

    move-result-object v0

    .line 71
    invoke-static {v0}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 72
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p1, v0}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 73
    invoke-direct {p0, v0}, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences;->modifyPreference(Landroid/content/SharedPreferences$Editor;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 64
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized checkAndUpdateRetryList(Ljava/util/List;Ljava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/manager/NotificationItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/mqtt/manager/NotificationItem;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x1

    .line 101
    monitor-enter p0

    :try_start_0
    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 102
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 103
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 104
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v3

    .line 105
    const/4 v2, 0x0

    .line 106
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 108
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    invoke-static {v5}, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences$NotificationItemSharedPreferences;->deserialize(Ljava/lang/Object;)Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences$NotificationItemSharedPreferences;

    move-result-object v5

    .line 109
    if-eqz v5, :cond_0

    iget-wide v6, v5, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences$NotificationItemSharedPreferences;->timestampReceived:J

    const-wide/32 v8, 0x5265c00

    add-long/2addr v6, v8

    iget-object v8, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences;->mClock:Lcom/facebook/rti/common/time/Clock;

    .line 110
    invoke-interface {v8}, Lcom/facebook/rti/common/time/Clock;->now()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-ltz v6, :cond_0

    iget-wide v6, v5, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences$NotificationItemSharedPreferences;->timestampReceived:J

    iget-object v8, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences;->mClock:Lcom/facebook/rti/common/time/Clock;

    .line 111
    invoke-interface {v8}, Lcom/facebook/rti/common/time/Clock;->now()J

    move-result-wide v8

    cmp-long v6, v6, v8

    if-lez v6, :cond_2

    .line 113
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 114
    invoke-interface {v3, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 115
    if-eqz v5, :cond_1

    .line 116
    invoke-interface {p2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    move v0, v1

    :goto_1
    move v2, v0

    .line 134
    goto :goto_0

    .line 120
    :cond_2
    iget-wide v6, v5, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences$NotificationItemSharedPreferences;->timestampLastRetried:J

    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences;->mMinRetryInterval:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v8

    add-long/2addr v6, v8

    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences;->mClock:Lcom/facebook/rti/common/time/Clock;

    invoke-interface {v0}, Lcom/facebook/rti/common/time/Clock;->now()J

    move-result-wide v8

    cmp-long v0, v6, v8

    if-gez v0, :cond_5

    .line 122
    const-string v0, "NotificationDeliveryStoreSharedPreferences"

    const-string v2, "checkAndUpdateRetryList found %s %d %d"

    iget-object v6, v5, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences$NotificationItemSharedPreferences;->notifId:Ljava/lang/String;

    iget-wide v8, v5, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences$NotificationItemSharedPreferences;->timestampReceived:J

    .line 126
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    iget-wide v8, v5, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences$NotificationItemSharedPreferences;->timestampLastRetried:J

    .line 127
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v8

    .line 122
    invoke-static {v0, v2, v6, v7, v8}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 128
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences;->mClock:Lcom/facebook/rti/common/time/Clock;

    invoke-interface {v0}, Lcom/facebook/rti/common/time/Clock;->now()J

    move-result-wide v6

    iput-wide v6, v5, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences$NotificationItemSharedPreferences;->timestampLastRetried:J

    .line 129
    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    iget-object v0, v5, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences$NotificationItemSharedPreferences;->notifId:Ljava/lang/String;

    invoke-virtual {v5}, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences$NotificationItemSharedPreferences;->serialize()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move v0, v1

    .line 131
    goto :goto_1

    .line 135
    :cond_3
    if-eqz v2, :cond_4

    .line 136
    invoke-direct {p0, v3}, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences;->modifyPreference(Landroid/content/SharedPreferences$Editor;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 138
    :cond_4
    monitor-exit p0

    return-void

    .line 101
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_5
    move v0, v2

    goto :goto_1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    const-string v0, "S"

    return-object v0
.end method

.method public declared-synchronized remove(Ljava/lang/String;)J
    .locals 8

    .prologue
    const/4 v1, 0x0

    .line 79
    monitor-enter p0

    :try_start_0
    const-string v0, "NotificationDeliveryStoreSharedPreferences"

    const-string/jumbo v2, "remove %s"

    invoke-static {v0, v2, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 80
    const-wide/16 v2, -0x1

    .line 83
    :try_start_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    const/4 v4, 0x0

    invoke-interface {v0, p1, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 87
    :goto_0
    if-eqz v0, :cond_0

    .line 88
    :try_start_2
    invoke-static {v0}, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences$NotificationItemSharedPreferences;->deserialize(Ljava/lang/Object;)Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences$NotificationItemSharedPreferences;

    move-result-object v0

    .line 89
    if-eqz v0, :cond_0

    .line 90
    iget-wide v2, v0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences$NotificationItemSharedPreferences;->timestampLastRetried:J

    iget-wide v0, v0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences$NotificationItemSharedPreferences;->timestampReceived:J

    sub-long v0, v2, v0

    .line 93
    :goto_1
    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    invoke-interface {v2, p1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 94
    invoke-direct {p0, v2}, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences;->modifyPreference(Landroid/content/SharedPreferences$Editor;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 95
    monitor-exit p0

    return-wide v0

    .line 84
    :catch_0
    move-exception v0

    .line 85
    :try_start_3
    const-string v4, "NotificationDeliveryStoreSharedPreferences"

    const-string v5, "fail to read notifId %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    invoke-static {v4, v0, v5, v6}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-object v0, v1

    goto :goto_0

    .line 79
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_0
    move-wide v0, v2

    goto :goto_1
.end method

.method public setDeliveryRetryInterval(I)V
    .locals 6

    .prologue
    .line 142
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/NotificationDeliveryStoreSharedPreferences;->mMinRetryInterval:Ljava/util/concurrent/atomic/AtomicLong;

    int-to-long v2, p1

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 143
    return-void
.end method
