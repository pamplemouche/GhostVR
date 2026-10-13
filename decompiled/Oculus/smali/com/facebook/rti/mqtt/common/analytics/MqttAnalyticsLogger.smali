.class public Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;
.super Ljava/lang/Object;
.source "MqttAnalyticsLogger.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x3
.end annotation


# static fields
.field private static final NEXT_LOGGER_OBJECT_ID:Ljava/util/concurrent/atomic/AtomicLong;


# instance fields
.field private final mAnalyticsLogger:Lcom/facebook/rti/common/analytics/AnalyticsLogger;

.field private final mContext:Landroid/content/Context;

.field private final mCustomEventNameSuffix:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mLoggerObjectId:J

.field private final mMqttBatteryStateManager:Lcom/facebook/rti/mqtt/common/hardware/MqttBatteryStateManager;

.field private final mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

.field private final mPackageName:Ljava/lang/String;

.field private final mProcessId:J

.field private final mRtiFlytrapLogger:Lcom/facebook/rti/common/logging/RtiFlytrapLogger;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mServiceName:Ljava/lang/String;

.field private final mServiceSessionId:J


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 182
    new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;

    const-wide/16 v2, 0x0

    invoke-direct {v0, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->NEXT_LOGGER_OBJECT_ID:Ljava/util/concurrent/atomic/AtomicLong;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;Lcom/facebook/rti/mqtt/common/hardware/MqttBatteryStateManager;Lcom/facebook/rti/common/analytics/AnalyticsLogger;Lcom/facebook/rti/common/time/MonotonicClock;Lcom/facebook/rti/common/logging/RtiFlytrapLogger;)V
    .locals 2
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p8    # Lcom/facebook/rti/common/logging/RtiFlytrapLogger;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 212
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 213
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->mContext:Landroid/content/Context;

    .line 214
    iput-object p2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->mServiceName:Ljava/lang/String;

    .line 215
    iput-object p4, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    .line 216
    iput-object p5, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->mMqttBatteryStateManager:Lcom/facebook/rti/mqtt/common/hardware/MqttBatteryStateManager;

    .line 217
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->mPackageName:Ljava/lang/String;

    .line 218
    iput-object p3, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->mCustomEventNameSuffix:Ljava/lang/String;

    .line 219
    iput-object p6, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->mAnalyticsLogger:Lcom/facebook/rti/common/analytics/AnalyticsLogger;

    .line 220
    invoke-interface {p7}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->mServiceSessionId:J

    .line 221
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v0

    int-to-long v0, v0

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->mProcessId:J

    .line 222
    sget-object v0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->NEXT_LOGGER_OBJECT_ID:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->mLoggerObjectId:J

    .line 223
    iput-object p8, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->mRtiFlytrapLogger:Lcom/facebook/rti/common/logging/RtiFlytrapLogger;

    .line 224
    return-void
.end method

.method private addBatteryStatus(Ljava/util/Map;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 754
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->mMqttBatteryStateManager:Lcom/facebook/rti/mqtt/common/hardware/MqttBatteryStateManager;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/hardware/MqttBatteryStateManager;->getBatteryState()Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v1

    .line 756
    invoke-virtual {v1}, Lcom/facebook/rti/common/guavalite/base/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_1

    .line 763
    :cond_0
    :goto_0
    return-void

    .line 758
    :cond_1
    invoke-virtual {v1}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/hardware/BatteryState;

    iget-boolean v0, v0, Lcom/facebook/rti/mqtt/common/hardware/BatteryState;->isCharging:Z

    if-nez v0, :cond_2

    invoke-virtual {v1}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/hardware/BatteryState;

    iget-boolean v0, v0, Lcom/facebook/rti/mqtt/common/hardware/BatteryState;->isFull:Z

    if-eqz v0, :cond_3

    .line 759
    :cond_2
    const-string v0, "bat"

    const-string v1, "crg"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 760
    :cond_3
    invoke-virtual {v1}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/hardware/BatteryState;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/common/hardware/BatteryState;->batteryPercentage:Lcom/facebook/rti/common/guavalite/base/Optional;

    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 761
    const-string v2, "bat"

    invoke-virtual {v1}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/hardware/BatteryState;

    iget-object v0, v0, Lcom/facebook/rti/mqtt/common/hardware/BatteryState;->batteryPercentage:Lcom/facebook/rti/common/guavalite/base/Optional;

    invoke-virtual {v0}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private addMqttSessionId(Ljava/util/Map;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 704
    const-string v0, "mqtt_session_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 705
    return-void
.end method

.method private addNetworkInfoToMap(Ljava/util/Map;Landroid/net/NetworkInfo;)V
    .locals 5
    .param p2    # Landroid/net/NetworkInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Landroid/net/NetworkInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 720
    if-eqz p2, :cond_0

    .line 721
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getState()Landroid/net/NetworkInfo$State;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/NetworkInfo$State;->toString()Ljava/lang/String;

    move-result-object v0

    .line 722
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getTypeName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/facebook/rti/common/util/StringUtil;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 723
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getSubtypeName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/rti/common/util/StringUtil;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 724
    invoke-virtual {p2}, Landroid/net/NetworkInfo;->getExtraInfo()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/rti/common/util/StringUtil;->nullToEmpty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 726
    const-string v4, "network_state"

    invoke-interface {p1, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 727
    const-string v0, "network_type"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 728
    const-string v0, "network_subtype"

    invoke-interface {p1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 729
    const-string v0, "network_extra_info"

    invoke-interface {p1, v0, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 734
    :goto_0
    const-string v0, "is_in_idle_mode"

    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->isInIdleMode()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->toString(Z)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 735
    return-void

    .line 731
    :cond_0
    const-string v0, "network_info"

    const-string v1, "null"

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0
.end method

.method private addNetworkSessionId(Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 708
    const-string v0, "network_session_id"

    invoke-interface {p1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 710
    const-string v0, "network_session_id"

    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->getNetworkSessionId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 712
    :cond_0
    return-void
.end method

.method private addNetworkSessionId(Ljava/util/Map;J)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    .prologue
    .line 715
    const-string v0, "network_session_id"

    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 716
    return-void
.end method

.method private getEventName(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 767
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->mCustomEventNameSuffix:Ljava/lang/String;

    if-nez v0, :cond_0

    :goto_0
    return-object p1

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->mCustomEventNameSuffix:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0
.end method

.method private isAirplaneModeOn(Landroid/content/Context;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 742
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x11

    if-ge v2, v3, :cond_2

    .line 744
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    .line 743
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-eqz v2, :cond_1

    .line 747
    :cond_0
    :goto_0
    return v0

    :cond_1
    move v0, v1

    .line 743
    goto :goto_0

    .line 748
    :cond_2
    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    .line 747
    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-nez v2, :cond_0

    move v0, v1

    goto :goto_0
.end method

.method private reportMqttTimedEvent(Ljava/lang/String;JJJLandroid/net/NetworkInfo;)V
    .locals 4

    .prologue
    .line 617
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "timespan_ms"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 618
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/facebook/rti/common/analytics/AnalyticsUtil;->makeMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 620
    invoke-direct {p0, v0, p4, p5}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->addMqttSessionId(Ljava/util/Map;J)V

    .line 621
    invoke-direct {p0, v0, p6, p7}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->addNetworkSessionId(Ljava/util/Map;J)V

    .line 622
    invoke-direct {p0, v0, p8}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->addNetworkInfoToMap(Ljava/util/Map;Landroid/net/NetworkInfo;)V

    .line 624
    invoke-virtual {p0, p1, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->reportMqttEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 625
    return-void
.end method


# virtual methods
.method public reportMqttConnectionEventConnectAttempt(ZJLjava/lang/String;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;JJLandroid/net/NetworkInfo;Z)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJ",
            "Ljava/lang/String;",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Ljava/lang/Exception;",
            ">;",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Ljava/lang/Byte;",
            ">;JJ",
            "Landroid/net/NetworkInfo;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 348
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "connect_result"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 350
    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "connect_duration_ms"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 351
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 349
    invoke-static {v0}, Lcom/facebook/rti/common/analytics/AnalyticsUtil;->makeMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v1

    .line 353
    if-eqz p4, :cond_0

    .line 354
    const-string v0, "failure_reason"

    invoke-interface {v1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 357
    :cond_0
    invoke-virtual {p5}, Lcom/facebook/rti/common/guavalite/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 358
    const-string v2, "exception"

    invoke-virtual {p5}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 359
    const-string v2, "error_message"

    invoke-virtual {p5}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 362
    :cond_1
    invoke-virtual {p6}, Lcom/facebook/rti/common/guavalite/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 363
    const-string v2, "conack_rc"

    invoke-virtual {p6}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Byte;

    invoke-virtual {v0}, Ljava/lang/Byte;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 366
    :cond_2
    const-string v0, "fs"

    invoke-static {p12}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 368
    invoke-direct {p0, v1, p7, p8}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->addMqttSessionId(Ljava/util/Map;J)V

    .line 369
    invoke-direct {p0, v1, p9, p10}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->addNetworkSessionId(Ljava/util/Map;J)V

    .line 370
    invoke-direct {p0, v1, p11}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->addNetworkInfoToMap(Ljava/util/Map;Landroid/net/NetworkInfo;)V

    .line 372
    const-string v0, "mqtt_connect_attempt"

    invoke-virtual {p0, v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->reportMqttEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 373
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->mRtiFlytrapLogger:Lcom/facebook/rti/common/logging/RtiFlytrapLogger;

    if-eqz v0, :cond_5

    .line 374
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 375
    const-string v0, "connect_result"

    invoke-static {p1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 376
    const-string v0, "connect_duration_ms"

    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 378
    if-eqz p4, :cond_3

    .line 379
    const-string v0, "failure_reason"

    invoke-interface {v1, v0, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 381
    :cond_3
    invoke-virtual {p5}, Lcom/facebook/rti/common/guavalite/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 382
    const-string v2, "exception"

    invoke-virtual {p5}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Exception;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 385
    :cond_4
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->mRtiFlytrapLogger:Lcom/facebook/rti/common/logging/RtiFlytrapLogger;

    const-string v2, "mqtt_connect_attempt"

    invoke-interface {v0, v2, v1}, Lcom/facebook/rti/common/logging/RtiFlytrapLogger;->log(Ljava/lang/String;Ljava/util/Map;)V

    .line 387
    :cond_5
    return-void
.end method

.method public reportMqttConnectionEventConnectRetries(IJ)V
    .locals 4

    .prologue
    .line 396
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "retry_count"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 398
    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "retry_duration_ms"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 399
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 397
    invoke-static {v0}, Lcom/facebook/rti/common/analytics/AnalyticsUtil;->makeMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 401
    const-string v1, "mqtt_connection_retries"

    invoke-virtual {p0, v1, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->reportMqttEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 402
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->mRtiFlytrapLogger:Lcom/facebook/rti/common/logging/RtiFlytrapLogger;

    if-eqz v1, :cond_0

    .line 403
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->mRtiFlytrapLogger:Lcom/facebook/rti/common/logging/RtiFlytrapLogger;

    const-string v2, "mqtt_connection_retries"

    invoke-interface {v1, v2, v0}, Lcom/facebook/rti/common/logging/RtiFlytrapLogger;->log(Ljava/lang/String;Ljava/util/Map;)V

    .line 405
    :cond_0
    return-void
.end method

.method public reportMqttConnectionEventConnectionLost(Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;JJLandroid/net/NetworkInfo;Z)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Ljava/lang/Long;",
            ">;",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Ljava/lang/Throwable;",
            ">;JJ",
            "Landroid/net/NetworkInfo;",
            "Z)V"
        }
    .end annotation

    .prologue
    .line 432
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 434
    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->mContext:Landroid/content/Context;

    invoke-direct {p0, v2}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->isAirplaneModeOn(Landroid/content/Context;)Z

    move-result v2

    .line 435
    const-string v4, "is_airplane_mode_on"

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 437
    invoke-direct {p0, v3}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->addBatteryStatus(Ljava/util/Map;)V

    .line 439
    invoke-virtual {p1}, Lcom/facebook/rti/common/guavalite/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 440
    const-string v4, "connected_duration_ms"

    invoke-virtual {p1}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 443
    :cond_0
    invoke-virtual {p2}, Lcom/facebook/rti/common/guavalite/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 444
    const-string v4, "last_ping_ms_ago"

    invoke-virtual {p2}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 447
    :cond_1
    invoke-virtual {p3}, Lcom/facebook/rti/common/guavalite/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 448
    const-string v4, "last_sent_ms_ago"

    invoke-virtual {p3}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    :cond_2
    invoke-virtual {p4}, Lcom/facebook/rti/common/guavalite/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 452
    const-string v4, "last_received_ms_ago"

    invoke-virtual {p4}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 455
    :cond_3
    invoke-virtual {p5}, Lcom/facebook/rti/common/guavalite/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 456
    const-string/jumbo v2, "reason"

    invoke-virtual {p5}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    :cond_4
    invoke-virtual {p6}, Lcom/facebook/rti/common/guavalite/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 460
    const-string v2, "operation"

    invoke-virtual {p6}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 463
    :cond_5
    invoke-virtual {p7}, Lcom/facebook/rti/common/guavalite/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 464
    const-string v4, "exception"

    invoke-virtual {p7}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    const-string v4, "error_message"

    invoke-virtual {p7}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 468
    :cond_6
    const-string v2, "fs"

    invoke-static/range {p13 .. p13}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 470
    invoke-direct {p0, v3, p8, p9}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->addMqttSessionId(Ljava/util/Map;J)V

    .line 471
    move-wide/from16 v0, p10

    invoke-direct {p0, v3, v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->addNetworkSessionId(Ljava/util/Map;J)V

    .line 472
    move-object/from16 v0, p12

    invoke-direct {p0, v3, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->addNetworkInfoToMap(Ljava/util/Map;Landroid/net/NetworkInfo;)V

    .line 474
    const-string v2, "mqtt_disconnection_on_failure"

    invoke-virtual {p0, v2, v3}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->reportMqttEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 475
    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->mRtiFlytrapLogger:Lcom/facebook/rti/common/logging/RtiFlytrapLogger;

    if-eqz v2, :cond_a

    .line 476
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 478
    invoke-virtual {p5}, Lcom/facebook/rti/common/guavalite/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 479
    const-string/jumbo v2, "reason"

    invoke-virtual {p5}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 482
    :cond_7
    invoke-virtual {p6}, Lcom/facebook/rti/common/guavalite/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 483
    const-string v2, "operation"

    invoke-virtual {p6}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v3, v2, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 486
    :cond_8
    invoke-virtual {p7}, Lcom/facebook/rti/common/guavalite/base/Optional;->isPresent()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 487
    const-string v4, "exception"

    invoke-virtual {p7}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Throwable;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v3, v4, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 490
    :cond_9
    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->getConnectionNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v2

    invoke-direct {p0, v3, v2}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->addNetworkInfoToMap(Ljava/util/Map;Landroid/net/NetworkInfo;)V

    .line 491
    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->mRtiFlytrapLogger:Lcom/facebook/rti/common/logging/RtiFlytrapLogger;

    const-string v4, "mqtt_disconnection_on_failure"

    invoke-interface {v2, v4, v3}, Lcom/facebook/rti/common/logging/RtiFlytrapLogger;->log(Ljava/lang/String;Ljava/util/Map;)V

    .line 495
    :cond_a
    return-void
.end method

.method public reportMqttConnectionEventDnsLookupDuration(JJJLandroid/net/NetworkInfo;)V
    .locals 9

    .prologue
    .line 289
    const-string v1, "mqtt_dns_lookup_duration"

    move-object v0, p0

    move-wide v2, p1

    move-wide v4, p3

    move-wide v6, p5

    move-object/from16 v8, p7

    invoke-direct/range {v0 .. v8}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->reportMqttTimedEvent(Ljava/lang/String;JJJLandroid/net/NetworkInfo;)V

    .line 295
    return-void
.end method

.method public reportMqttConnectionEventNetworkChanged(JLandroid/net/NetworkInfo;)V
    .locals 7

    .prologue
    .line 272
    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    invoke-static {v0}, Lcom/facebook/rti/common/analytics/AnalyticsUtil;->makeMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 273
    invoke-direct {p0, v0, p1, p2}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->addNetworkSessionId(Ljava/util/Map;J)V

    .line 274
    invoke-direct {p0, v0, p3}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->addNetworkInfoToMap(Ljava/util/Map;Landroid/net/NetworkInfo;)V

    .line 276
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->mMqttNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->getTimeSinceDisconnect()J

    move-result-wide v2

    .line 277
    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_0

    .line 278
    const-string v1, "dc_ms_ago"

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    :cond_0
    const-string v1, "mqtt_network_changed"

    invoke-virtual {p0, v1, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->reportMqttEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 282
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->mRtiFlytrapLogger:Lcom/facebook/rti/common/logging/RtiFlytrapLogger;

    if-eqz v1, :cond_1

    .line 283
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->mRtiFlytrapLogger:Lcom/facebook/rti/common/logging/RtiFlytrapLogger;

    const-string v2, "mqtt_network_changed"

    invoke-interface {v1, v2, v0}, Lcom/facebook/rti/common/logging/RtiFlytrapLogger;->log(Ljava/lang/String;Ljava/util/Map;)V

    .line 285
    :cond_1
    return-void
.end method

.method public reportMqttConnectionEventSocketConnectResult(JILjava/lang/String;Lcom/facebook/rti/common/guavalite/base/Optional;JJLandroid/net/NetworkInfo;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JI",
            "Ljava/lang/String;",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Ljava/lang/Throwable;",
            ">;JJ",
            "Landroid/net/NetworkInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 305
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "timespan_ms"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 307
    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "port"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 308
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "he_state"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    aput-object p4, v0, v1

    .line 306
    invoke-static {v0}, Lcom/facebook/rti/common/analytics/AnalyticsUtil;->makeMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v2

    .line 310
    invoke-virtual {p5}, Lcom/facebook/rti/common/guavalite/base/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 311
    invoke-virtual {p5}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-virtual {p5}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 313
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Caused by: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p5}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Throwable;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 315
    :goto_0
    const-string v1, "error_message"

    invoke-interface {v2, v1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 318
    :cond_0
    invoke-direct {p0, v2, p6, p7}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->addMqttSessionId(Ljava/util/Map;J)V

    .line 319
    invoke-direct {p0, v2, p8, p9}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->addNetworkSessionId(Ljava/util/Map;J)V

    .line 320
    invoke-direct {p0, v2, p10}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->addNetworkInfoToMap(Ljava/util/Map;Landroid/net/NetworkInfo;)V

    .line 322
    const-string v0, "mqtt_socket_connect"

    invoke-virtual {p0, v0, v2}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->reportMqttEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 323
    return-void

    :cond_1
    move-object v0, v1

    goto :goto_0
.end method

.method public reportMqttDeviceStateEventPowerSaveModeActivity(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 566
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "pow"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    invoke-static {v0}, Lcom/facebook/rti/common/analytics/AnalyticsUtil;->makeMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 567
    const-string v1, "mqtt_device_state"

    invoke-virtual {p0, v1, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->reportMqttEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 568
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->mRtiFlytrapLogger:Lcom/facebook/rti/common/logging/RtiFlytrapLogger;

    if-eqz v1, :cond_0

    .line 569
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->mRtiFlytrapLogger:Lcom/facebook/rti/common/logging/RtiFlytrapLogger;

    const-string v2, "mqtt_device_state"

    invoke-interface {v1, v2, v0}, Lcom/facebook/rti/common/logging/RtiFlytrapLogger;->log(Ljava/lang/String;Ljava/util/Map;)V

    .line 571
    :cond_0
    return-void
.end method

.method public reportMqttEvent(Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 690
    const-string/jumbo v0, "service_name"

    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->mServiceName:Ljava/lang/String;

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 691
    const-string/jumbo v0, "service_session_id"

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->mServiceSessionId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 692
    const-string v0, "process_id"

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->mProcessId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 693
    const-string v0, "logger_object_id"

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->mLoggerObjectId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 694
    invoke-direct {p0, p2}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->addNetworkSessionId(Ljava/util/Map;)V

    .line 696
    new-instance v0, Lcom/facebook/rti/common/analytics/AnalyticsEvent;

    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->getEventName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->mPackageName:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/facebook/rti/common/analytics/AnalyticsEvent;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 697
    invoke-virtual {v0, p2}, Lcom/facebook/rti/common/analytics/AnalyticsEvent;->putExtras(Ljava/util/Map;)Lcom/facebook/rti/common/analytics/AnalyticsEvent;

    .line 699
    const-string v1, "MqttAnalyticsLogger"

    const-string/jumbo v2, "reportMqttEvent %s"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 700
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->mAnalyticsLogger:Lcom/facebook/rti/common/analytics/AnalyticsLogger;

    invoke-interface {v1, v0}, Lcom/facebook/rti/common/analytics/AnalyticsLogger;->reportEvent(Lcom/facebook/rti/common/analytics/AnalyticsEvent;)V

    .line 701
    return-void
.end method

.method public reportMqttMessageEventInvalidMessage(Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 558
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "message_type"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string v2, "message_size"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 559
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/facebook/rti/common/analytics/AnalyticsUtil;->makeMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 561
    const-string v1, "mqtt_invalid_message"

    invoke-virtual {p0, v1, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->reportMqttEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 562
    return-void
.end method

.method public reportMqttMessageEventResponseTime(Ljava/lang/String;JJJLandroid/net/NetworkInfo;)V
    .locals 4

    .prologue
    .line 512
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "operation"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "timespan_ms"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 514
    invoke-static {p2, p3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 513
    invoke-static {v0}, Lcom/facebook/rti/common/analytics/AnalyticsUtil;->makeMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 516
    invoke-direct {p0, v0, p4, p5}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->addMqttSessionId(Ljava/util/Map;J)V

    .line 517
    invoke-direct {p0, v0, p6, p7}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->addNetworkSessionId(Ljava/util/Map;J)V

    .line 518
    invoke-direct {p0, v0, p8}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->addNetworkInfoToMap(Ljava/util/Map;Landroid/net/NetworkInfo;)V

    .line 520
    const-string v1, "mqtt_response_time"

    invoke-virtual {p0, v1, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->reportMqttEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 521
    return-void
.end method

.method public reportMqttPublishFailureEvent(Ljava/lang/String;Ljava/lang/String;IIILjava/lang/Throwable;IJ)V
    .locals 4

    .prologue
    .line 665
    const/16 v0, 0xe

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "result"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string v2, "operation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p2, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "qos"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 672
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "msg_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 674
    invoke-static {p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "original_ops_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 676
    invoke-static {p5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "retry_cnt"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 678
    invoke-static {p7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "mqtt_session_id"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 680
    invoke-static {p8, p9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 666
    invoke-static {v0}, Lcom/facebook/rti/common/analytics/AnalyticsUtil;->makeMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 681
    if-eqz p6, :cond_0

    .line 682
    const-string v1, "error_message"

    invoke-virtual {p6}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 684
    :cond_0
    const-string v1, "mqtt_publish_debug"

    invoke-virtual {p0, v1, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->reportMqttEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 685
    return-void
.end method

.method public reportMqttPublishSuccessEvent(Ljava/lang/String;IIJIIJ)V
    .locals 4

    .prologue
    .line 635
    const/16 v0, 0x10

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "result"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "success"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "operation"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    aput-object p1, v0, v1

    const/4 v1, 0x4

    const-string/jumbo v2, "qos"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    .line 642
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "msg_id"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    .line 644
    invoke-static {p3}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "original_ops_id"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    .line 646
    invoke-static {p6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string/jumbo v2, "timespan_ms"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    .line 648
    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string/jumbo v2, "retry_cnt"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    .line 650
    invoke-static {p7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "mqtt_session_id"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    .line 652
    invoke-static {p8, p9}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    .line 636
    invoke-static {v0}, Lcom/facebook/rti/common/analytics/AnalyticsUtil;->makeMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 653
    const-string v1, "mqtt_publish_debug"

    invoke-virtual {p0, v1, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->reportMqttEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 654
    return-void
.end method

.method public reportMqttServiceEventStartStop(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/rti/common/guavalite/base/Optional;Lcom/facebook/rti/common/guavalite/base/Optional;ZIJLandroid/net/NetworkInfo;)V
    .locals 4
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p10    # Landroid/net/NetworkInfo;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Lcom/facebook/rti/common/guavalite/base/Optional",
            "<",
            "Ljava/lang/Integer;",
            ">;ZIJ",
            "Landroid/net/NetworkInfo;",
            ")V"
        }
    .end annotation

    .prologue
    .line 237
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "act"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    const/4 v1, 0x2

    const-string/jumbo v2, "running"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 238
    invoke-static {p6}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/facebook/rti/common/analytics/AnalyticsUtil;->makeMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 239
    const-string v1, "process_id"

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->mProcessId:J

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string/jumbo v1, "thread_id"

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    if-eqz p2, :cond_0

    .line 242
    const-string v1, "mqtt_persistence_string"

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    :cond_0
    invoke-direct {p0, v0, p8, p9}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->addNetworkSessionId(Ljava/util/Map;J)V

    .line 245
    invoke-direct {p0, v0, p10}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->addNetworkInfoToMap(Ljava/util/Map;Landroid/net/NetworkInfo;)V

    .line 247
    if-ltz p7, :cond_1

    .line 248
    const-string v1, "fflg"

    invoke-static {p7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    :cond_1
    invoke-static {p3}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 251
    const-string v1, "calr"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    :cond_2
    invoke-virtual {p4}, Lcom/facebook/rti/common/guavalite/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 254
    const-string v1, "flg"

    invoke-virtual {p4}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    :cond_3
    invoke-virtual {p5}, Lcom/facebook/rti/common/guavalite/base/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 257
    const-string/jumbo v1, "sta_id"

    invoke-virtual {p5}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    :cond_4
    const-string v1, "mqtt_service_state"

    invoke-virtual {p0, v1, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->reportMqttEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 261
    return-void
.end method

.method public reportRadioActiveTime(J)V
    .locals 3

    .prologue
    .line 597
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string/jumbo v2, "total_wake_ms"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 598
    invoke-static {p1, p2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    invoke-static {v0}, Lcom/facebook/rti/common/analytics/AnalyticsUtil;->makeMap([Ljava/lang/String;)Ljava/util/Map;

    move-result-object v0

    .line 599
    const-string v1, "mqtt_radio_active_time"

    invoke-virtual {p0, v1, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->reportMqttEvent(Ljava/lang/String;Ljava/util/Map;)V

    .line 600
    return-void
.end method
