.class public Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;
.super Ljava/lang/Object;
.source "MqttNetworkManager.java"


# instance fields
.field private final mBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field private final mClock:Lcom/facebook/rti/common/time/MonotonicClock;

.field private final mConnectivityManagerOptional:Lcom/facebook/rti/common/guavalite/base/Optional;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Landroid/net/ConnectivityManager;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mDetectMaintenanceWindow:Z

.field private mLastSessionDisconnectedTime:J

.field private mLifetimeConnectedDuration:J

.field private final mListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mMqttHandler:Landroid/os/Handler;

.field private final mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

.field private final mServiceManager:Lcom/facebook/rti/common/util/SystemServiceManager;

.field private mSessionConnectedTime:J

.field private mTimeSinceDisconnect:J


# direct methods
.method public constructor <init>(Lcom/facebook/rti/common/util/SystemServiceManager;Landroid/content/Context;Lcom/facebook/rti/common/time/MonotonicClock;Landroid/os/Handler;Ljava/util/concurrent/ScheduledExecutorService;Z)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 45
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mListeners:Ljava/util/Set;

    .line 57
    iput-wide v2, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mLastSessionDisconnectedTime:J

    .line 59
    iput-wide v2, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mTimeSinceDisconnect:J

    .line 64
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mLifetimeConnectedDuration:J

    .line 73
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mServiceManager:Lcom/facebook/rti/common/util/SystemServiceManager;

    .line 74
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mServiceManager:Lcom/facebook/rti/common/util/SystemServiceManager;

    const-string v1, "connectivity"

    const-class v2, Landroid/net/ConnectivityManager;

    .line 75
    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/common/util/SystemServiceManager;->ensureService(Ljava/lang/String;Ljava/lang/Class;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mConnectivityManagerOptional:Lcom/facebook/rti/common/guavalite/base/Optional;

    .line 76
    iput-object p2, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mContext:Landroid/content/Context;

    .line 77
    iput-object p3, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mClock:Lcom/facebook/rti/common/time/MonotonicClock;

    .line 78
    iput-object p4, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mMqttHandler:Landroid/os/Handler;

    .line 79
    iput-object p5, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    .line 80
    iput-boolean p6, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mDetectMaintenanceWindow:Z

    .line 81
    new-instance v0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager$1;

    invoke-direct {v0, p0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager$1;-><init>(Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;)V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    .line 101
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->init()V

    .line 102
    return-void
.end method

.method static synthetic access$000(Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;Landroid/net/NetworkInfo;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->updateNetworkSessionId(Landroid/net/NetworkInfo;)V

    return-void
.end method

.method static synthetic access$100(Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->notifyListenersOnNetworkChanged()V

    return-void
.end method

.method static synthetic access$200(Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;)V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->idleModeChanged()V

    return-void
.end method

.method static synthetic access$300(Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;)Lcom/facebook/rti/common/time/MonotonicClock;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mClock:Lcom/facebook/rti/common/time/MonotonicClock;

    return-object v0
.end method

.method private idleModeChanged()V
    .locals 6

    .prologue
    .line 350
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->isInIdleMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 368
    :goto_0
    return-void

    .line 353
    :cond_0
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 354
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->notifyListenersOnNetworkChanged()V

    goto :goto_0

    .line 356
    :cond_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v0

    .line 357
    new-instance v2, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager$2;

    invoke-direct {v2, p0, v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager$2;-><init>(Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;J)V

    .line 366
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mScheduledExecutorService:Ljava/util/concurrent/ScheduledExecutorService;

    const-wide/16 v4, 0x2

    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-interface {v0, v2, v4, v5, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    goto :goto_0
.end method

.method private declared-synchronized notifyListenersOnNetworkChanged()V
    .locals 6

    .prologue
    .line 144
    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->getNetworkType()I

    move-result v0

    .line 145
    const-string v1, "MqttNetworkManager"

    const-string v2, "Connectivity changed: networkType=%d, networkCategory=%s"

    .line 148
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 149
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->getNetworkCategory()Lcom/facebook/rti/common/util/NetworkCategory$Type;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/rti/common/util/NetworkCategory$Type;->toString()Ljava/lang/String;

    move-result-object v4

    .line 145
    invoke-static {v1, v2, v3, v4}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 150
    new-instance v1, Landroid/content/Intent;

    const-string v2, "com.facebook.orca.ACTION_NETWORK_CONNECTIVITY_CHANGED"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 151
    const-string v2, "com.facebook.mqtt.EXTRA_NETWORK_TYPE"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 152
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkChangeListener;

    .line 153
    const-string v3, "MqttNetworkManager"

    const-string v4, "notify %s"

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v4, v5}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 154
    invoke-interface {v0, v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkChangeListener;->onNetworkChanged(Landroid/content/Intent;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 144
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 156
    :cond_0
    monitor-exit p0

    return-void
.end method

.method private declared-synchronized updateNetworkSessionId(Landroid/net/NetworkInfo;)V
    .locals 6

    .prologue
    const-wide/16 v4, -0x1

    const-wide/16 v2, 0x0

    .line 255
    monitor-enter p0

    if-eqz p1, :cond_1

    :try_start_0
    invoke-virtual {p1}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 257
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mSessionConnectedTime:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mSessionConnectedTime:J

    .line 260
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mLastSessionDisconnectedTime:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_0

    .line 261
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mSessionConnectedTime:J

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mLastSessionDisconnectedTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mTimeSinceDisconnect:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :cond_0
    :goto_0
    monitor-exit p0

    return-void

    .line 266
    :cond_1
    :try_start_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mLastSessionDisconnectedTime:J

    .line 268
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mSessionConnectedTime:J

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 269
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mLifetimeConnectedDuration:J

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mLastSessionDisconnectedTime:J

    iget-wide v4, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mSessionConnectedTime:J

    sub-long/2addr v2, v4

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mLifetimeConnectedDuration:J

    .line 271
    :cond_2
    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mTimeSinceDisconnect:J

    .line 272
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mSessionConnectedTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 255
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method


# virtual methods
.method public declared-synchronized addListener(Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkChangeListener;)V
    .locals 1

    .prologue
    .line 136
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 137
    monitor-exit p0

    return-void

    .line 136
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
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 129
    :goto_0
    monitor-exit p0

    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    :try_start_1
    const-string v1, "MqttNetworkManager"

    const-string v2, "Failed to unregister broadcast receiver"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 125
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getActiveNetworkInfoSafe()Landroid/net/NetworkInfo;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 318
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mConnectivityManagerOptional:Lcom/facebook/rti/common/guavalite/base/Optional;

    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mConnectivityManagerOptional:Lcom/facebook/rti/common/guavalite/base/Optional;

    .line 319
    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 325
    :goto_0
    return-object v0

    :cond_0
    move-object v0, v1

    .line 319
    goto :goto_0

    .line 321
    :catch_0
    move-exception v0

    .line 324
    const-string v2, "MqttNetworkManager"

    const-string v3, "getActiveNetworkInfoSafe caught Exception"

    invoke-static {v2, v3, v0}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move-object v0, v1

    .line 325
    goto :goto_0
.end method

.method public getConnectionNetworkInfo()Landroid/net/NetworkInfo;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 203
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->getActiveNetworkInfoSafe()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 204
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 205
    :cond_0
    const/4 v0, 0x0

    .line 207
    :cond_1
    return-object v0
.end method

.method public getConnectionNetworkSubtypeName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 222
    const-string v0, "none"

    .line 223
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->getConnectionNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 224
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 225
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v0

    .line 227
    :cond_0
    return-object v0
.end method

.method public getConnectionNetworkTypeName()Ljava/lang/String;
    .locals 3

    .prologue
    .line 212
    const-string v0, "none"

    .line 213
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->getConnectionNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v1

    .line 214
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 215
    invoke-virtual {v1}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v0

    .line 217
    :cond_0
    return-object v0
.end method

.method public declared-synchronized getCurrentConnectedDuration()J
    .locals 4

    .prologue
    const-wide/16 v0, 0x0

    .line 289
    monitor-enter p0

    :try_start_0
    iget-wide v2, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mSessionConnectedTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    cmp-long v2, v2, v0

    if-nez v2, :cond_0

    :goto_0
    monitor-exit p0

    return-wide v0

    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mSessionConnectedTime:J
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    sub-long/2addr v0, v2

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getLifetimeConnectedDuration()J
    .locals 4

    .prologue
    .line 294
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mLifetimeConnectedDuration:J

    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->getCurrentConnectedDuration()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v2

    add-long/2addr v0, v2

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNetworkCategory()Lcom/facebook/rti/common/util/NetworkCategory$Type;
    .locals 2

    .prologue
    .line 167
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->getActiveNetworkInfoSafe()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 168
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 169
    :cond_0
    sget-object v0, Lcom/facebook/rti/common/util/NetworkCategory$Type;->NoNetwork:Lcom/facebook/rti/common/util/NetworkCategory$Type;

    .line 171
    :goto_0
    return-object v0

    :cond_1
    invoke-static {v0}, Lcom/facebook/rti/common/util/NetworkCategory;->categorize(Landroid/net/NetworkInfo;)Lcom/facebook/rti/common/util/NetworkCategory$Type;

    move-result-object v0

    goto :goto_0
.end method

.method public getNetworkInfoHash()J
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 231
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->getConnectionNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v4

    .line 235
    sget-object v0, Landroid/net/NetworkInfo$State;->DISCONNECTED:Landroid/net/NetworkInfo$State;

    .line 237
    if-eqz v4, :cond_0

    .line 238
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getType()I

    move-result v3

    .line 239
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getSubtype()I

    move-result v1

    .line 240
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    .line 241
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v5

    .line 242
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v6

    .line 243
    const-string v7, "MqttNetworkManager"

    const-string/jumbo v8, "typeName=%s, subtypeName=%s, networkInfo State=%s."

    .line 248
    invoke-virtual {v4}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v4

    .line 243
    invoke-static {v7, v8, v5, v6, v4}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 251
    :goto_0
    const/4 v4, 0x3

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    const/4 v1, 0x2

    aput-object v0, v4, v1

    invoke-static {v4}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    int-to-long v0, v0

    return-wide v0

    :cond_0
    move v1, v2

    move v3, v2

    goto :goto_0
.end method

.method public declared-synchronized getNetworkSessionId()J
    .locals 2

    .prologue
    .line 277
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mSessionConnectedTime:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getNetworkType()I
    .locals 2

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->getActiveNetworkInfoSafe()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 160
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I

    move-result v0

    .line 163
    :goto_0
    return v0

    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public declared-synchronized getTimeSinceDisconnect()J
    .locals 2

    .prologue
    .line 281
    monitor-enter p0

    :try_start_0
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mTimeSinceDisconnect:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-wide v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public init()V
    .locals 5

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->getActiveNetworkInfoSafe()Landroid/net/NetworkInfo;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->updateNetworkSessionId(Landroid/net/NetworkInfo;)V

    .line 115
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 116
    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 117
    iget-boolean v1, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mDetectMaintenanceWindow:Z

    if-eqz v1, :cond_0

    .line 118
    const-string v1, "android.os.action.DEVICE_IDLE_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 120
    :cond_0
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mMqttHandler:Landroid/os/Handler;

    invoke-virtual {v1, v2, v0, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 121
    return-void
.end method

.method public isConnected()Z
    .locals 1

    .prologue
    .line 185
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->getActiveNetworkInfoSafe()Landroid/net/NetworkInfo;

    move-result-object v0

    .line 186
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isInIdleMode()Z
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 331
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mServiceManager:Lcom/facebook/rti/common/util/SystemServiceManager;

    const-string v2, "power"

    const-class v3, Landroid/os/PowerManager;

    .line 332
    invoke-virtual {v0, v2, v3}, Lcom/facebook/rti/common/util/SystemServiceManager;->ensureService(Ljava/lang/String;Ljava/lang/Class;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v0

    .line 333
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x17

    if-lt v2, v3, :cond_0

    .line 334
    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    invoke-virtual {v0}, Landroid/os/PowerManager;->isDeviceIdleMode()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    if-eqz v0, :cond_0

    .line 335
    const/4 v0, 0x1

    .line 340
    :goto_0
    return v0

    :cond_0
    move v0, v1

    .line 337
    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    const-string v0, "MqttNetworkManager"

    const-string v2, "Exception in getting DeviceIdleMode"

    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    move v0, v1

    .line 340
    goto :goto_0
.end method

.method public declared-synchronized removeListener(Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkChangeListener;)V
    .locals 1

    .prologue
    .line 140
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->mListeners:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 141
    monitor-exit p0

    return-void

    .line 140
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
