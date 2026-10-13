.class public Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;
.super Ljava/lang/Object;
.source "MqttHealthStatsHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$MetricKey;
    }
.end annotation


# static fields
.field private static final APP_NAME_ENCODING_MAP:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private volatile mClientCoreName:Ljava/lang/String;

.field private final mClock:Lcom/facebook/rti/common/time/Clock;

.field private volatile mConnectTriggerReason:Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;

.field private final mContext:Landroid/content/Context;

.field private volatile mEnabledCompatibleApps:Ljava/lang/String;

.field private final mFbnsLiteNotificationCounterMap:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field private final mIsLoggingHealthStatsEnabled:Z

.field private final mIsMqttForegroundProvider:Lcom/facebook/rti/common/util/NonInjectProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mMetricMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$MetricKey;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation
.end field

.field private final mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

.field private final mMqttSnapshotHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;

.field private final mNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

.field private volatile mNotificationDeliveryStoreClass:Ljava/lang/String;

.field private final mRTStatsMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/rti/mqtt/common/analytics/RTStatsBase;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mRegisteredApps:Ljava/lang/String;

.field private final mRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

.field private final mScreenPowerState:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

.field private final mServiceManager:Lcom/facebook/rti/common/util/SystemServiceManager;

.field private final mServiceName:Ljava/lang/String;

.field private volatile mValidCompatibleApps:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 47
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$1;

    invoke-direct {v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$1;-><init>()V

    sput-object v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->APP_NAME_ENCODING_MAP:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/facebook/rti/common/util/SystemServiceManager;Ljava/lang/String;Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;Lcom/facebook/rti/common/time/MonotonicClock;Lcom/facebook/rti/common/time/Clock;Lcom/facebook/rti/common/util/NonInjectProvider;ZLcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;)V
    .locals 1
    .param p8    # Lcom/facebook/rti/common/util/NonInjectProvider;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/facebook/rti/common/util/SystemServiceManager;",
            "Ljava/lang/String;",
            "Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;",
            "Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;",
            "Lcom/facebook/rti/common/time/MonotonicClock;",
            "Lcom/facebook/rti/common/time/Clock;",
            "Lcom/facebook/rti/common/util/NonInjectProvider",
            "<",
            "Ljava/lang/Boolean;",
            ">;Z",
            "Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;",
            ")V"
        }
    .end annotation

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mFbnsLiteNotificationCounterMap:Ljava/util/concurrent/ConcurrentMap;

    .line 87
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mClientCoreName:Ljava/lang/String;

    .line 88
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mNotificationDeliveryStoreClass:Ljava/lang/String;

    .line 89
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mValidCompatibleApps:Ljava/lang/String;

    .line 90
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mEnabledCompatibleApps:Ljava/lang/String;

    .line 91
    const-string v0, ""

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mRegisteredApps:Ljava/lang/String;

    .line 104
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mContext:Landroid/content/Context;

    .line 105
    iput-object p2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mServiceManager:Lcom/facebook/rti/common/util/SystemServiceManager;

    .line 106
    iput-object p3, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mServiceName:Ljava/lang/String;

    .line 107
    iput-object p4, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    .line 108
    iput-object p5, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mScreenPowerState:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

    .line 109
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;

    invoke-direct {v0, p1, p6}, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;-><init>(Landroid/content/Context;Lcom/facebook/rti/common/time/MonotonicClock;)V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mMqttSnapshotHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;

    .line 110
    iput-object p7, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mClock:Lcom/facebook/rti/common/time/Clock;

    .line 111
    iput-object p6, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    .line 112
    iput-object p8, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mIsMqttForegroundProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    .line 113
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mMetricMap:Ljava/util/HashMap;

    .line 114
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mRTStatsMap:Ljava/util/HashMap;

    .line 115
    iput-boolean p9, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mIsLoggingHealthStatsEnabled:Z

    .line 116
    iput-object p10, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

    .line 117
    return-void
.end method

.method private static convertRtiSharedPrefToString(Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 443
    invoke-interface {p0}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 444
    invoke-static {v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->convertValueMapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static convertSharedPrefToString(Landroid/content/SharedPreferences;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 448
    invoke-interface {p0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 449
    invoke-static {v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->convertValueMapToString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static convertValueMapToString(Ljava/util/Map;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 453
    const/4 v0, 0x1

    .line 454
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 455
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 456
    if-eqz v1, :cond_0

    .line 457
    const/4 v2, 0x0

    .line 461
    :goto_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v5, "|"

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v2

    .line 462
    goto :goto_0

    .line 459
    :cond_0
    const-string v2, ";"

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    goto :goto_1

    .line 463
    :cond_1
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private encodeAppsList(Ljava/util/List;)Ljava/lang/String;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 346
    invoke-interface {p1}, Ljava/util/List;->listIterator()Ljava/util/ListIterator;

    move-result-object v1

    .line 347
    :goto_0
    invoke-interface {v1}, Ljava/util/ListIterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 348
    invoke-interface {v1}, Ljava/util/ListIterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 349
    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->APP_NAME_ENCODING_MAP:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 350
    sget-object v2, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->APP_NAME_ENCODING_MAP:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/ListIterator;->set(Ljava/lang/Object;)V

    goto :goto_0

    .line 352
    :cond_0
    const-string v2, "MqttHealthStatsHelper"

    const-string v3, "appPkgName %s not found in encoding map"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    invoke-static {v2, v3, v4}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 356
    :cond_1
    const-string v0, ";"

    invoke-static {v0, p1}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getBasicInfo()Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo;
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 282
    const-class v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getStat(Ljava/lang/Class;)Lcom/facebook/rti/mqtt/common/analytics/RTStatsBase;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo;

    .line 283
    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo$Metric;->ServiceName:Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo$Metric;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mServiceName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo;->set(Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;Ljava/lang/Object;)V

    .line 284
    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo$Metric;->ClientCoreName:Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo$Metric;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mClientCoreName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo;->set(Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;Ljava/lang/Object;)V

    .line 285
    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo$Metric;->NotificationStoreName:Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo$Metric;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mNotificationDeliveryStoreClass:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo;->set(Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;Ljava/lang/Object;)V

    .line 287
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mContext:Landroid/content/Context;

    sget-object v2, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->ANALYTICS:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    .line 288
    invoke-static {v1, v2}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper;->getSharedPreferences(Landroid/content/Context;Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 290
    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo$Metric;->YearClass:Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo$Metric;

    const-string/jumbo v3, "year_class"

    .line 292
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 290
    invoke-virtual {v0, v1, v3}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo;->set(Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;Ljava/lang/Object;)V

    .line 294
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

    sget-object v3, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->GATEKEEPERS:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    .line 295
    invoke-interface {v1, v3}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;->get(Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    move-result-object v1

    .line 296
    sget-object v3, Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo$Metric;->MqttGKs:Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo$Metric;

    invoke-static {v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->convertRtiSharedPrefToString(Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo;->set(Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;Ljava/lang/Object;)V

    .line 298
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mContext:Landroid/content/Context;

    sget-object v3, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->FLAGS:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    .line 299
    invoke-static {v1, v3}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper;->getSharedPreferences(Landroid/content/Context;Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 300
    sget-object v3, Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo$Metric;->MqttFlags:Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo$Metric;

    invoke-static {v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->convertSharedPrefToString(Landroid/content/SharedPreferences;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo;->set(Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;Ljava/lang/Object;)V

    .line 302
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mIsMqttForegroundProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    if-eqz v1, :cond_0

    .line 303
    sget-object v3, Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo$Metric;->AppState:Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo$Metric;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mIsMqttForegroundProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    invoke-interface {v1}, Lcom/facebook/rti/common/util/NonInjectProvider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, "fg"

    :goto_0
    invoke-virtual {v0, v3, v1}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo;->set(Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;Ljava/lang/Object;)V

    .line 306
    :cond_0
    sget-object v3, Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo$Metric;->ScreenState:Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo$Metric;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mScreenPowerState:Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;

    invoke-virtual {v1}, Lcom/facebook/rti/mqtt/common/hardware/ScreenPowerState;->isScreenOn()Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v1, "1"

    :goto_1
    invoke-virtual {v0, v3, v1}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo;->set(Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;Ljava/lang/Object;)V

    .line 307
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mServiceManager:Lcom/facebook/rti/common/util/SystemServiceManager;

    const-string v3, "phone"

    const-class v4, Landroid/telephony/TelephonyManager;

    .line 308
    invoke-virtual {v1, v3, v4}, Lcom/facebook/rti/common/util/SystemServiceManager;->ensureService(Ljava/lang/String;Ljava/lang/Class;)Lcom/facebook/rti/common/guavalite/base/Optional;

    move-result-object v1

    .line 309
    sget-object v3, Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo$Metric;->Country:Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo$Metric;

    .line 312
    invoke-virtual {v1}, Lcom/facebook/rti/common/guavalite/base/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 313
    invoke-virtual {v1}, Lcom/facebook/rti/common/guavalite/base/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/telephony/TelephonyManager;

    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getNetworkCountryIso()Ljava/lang/String;

    move-result-object v1

    .line 311
    :goto_2
    invoke-static {v1}, Lcom/facebook/rti/common/util/StringUtil;->toUpper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 309
    invoke-virtual {v0, v3, v1}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo;->set(Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;Ljava/lang/Object;)V

    .line 315
    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo$Metric;->NetworkType:Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo$Metric;

    iget-object v3, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    .line 317
    invoke-virtual {v3}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->getConnectionNetworkTypeName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/rti/common/util/StringUtil;->toUpper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 315
    invoke-virtual {v0, v1, v3}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo;->set(Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;Ljava/lang/Object;)V

    .line 318
    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo$Metric;->NetworkSubtype:Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo$Metric;

    iget-object v3, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    .line 320
    invoke-virtual {v3}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->getConnectionNetworkSubtypeName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/facebook/rti/common/util/StringUtil;->toUpper(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 318
    invoke-virtual {v0, v1, v3}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo;->set(Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;Ljava/lang/Object;)V

    .line 321
    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo$Metric;->IsEmployee:Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo$Metric;

    const-string v3, "is_employee"

    .line 323
    invoke-interface {v2, v3, v5}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 321
    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo;->set(Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;Ljava/lang/Object;)V

    .line 324
    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo$Metric;->ValidCompatibleApps:Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo$Metric;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mValidCompatibleApps:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo;->set(Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;Ljava/lang/Object;)V

    .line 325
    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo$Metric;->EnabledCompatibleApps:Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo$Metric;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mEnabledCompatibleApps:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo;->set(Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;Ljava/lang/Object;)V

    .line 326
    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo$Metric;->RegisteredApps:Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo$Metric;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mRegisteredApps:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo;->set(Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;Ljava/lang/Object;)V

    .line 328
    return-object v0

    .line 303
    :cond_1
    const-string v1, "bg"

    goto :goto_0

    .line 306
    :cond_2
    const-string v1, "0"

    goto :goto_1

    .line 313
    :cond_3
    const-string v1, ""

    goto :goto_2
.end method

.method private getConnectivity()Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats;
    .locals 1

    .prologue
    .line 230
    const-class v0, Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getStat(Ljava/lang/Class;)Lcom/facebook/rti/mqtt/common/analytics/RTStatsBase;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats;

    return-object v0
.end method

.method private declared-synchronized getCounter(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$MetricKey;)Ljava/util/concurrent/atomic/AtomicLong;
    .locals 2

    .prologue
    .line 238
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mMetricMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mMetricMap:Ljava/util/HashMap;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mMetricMap:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 238
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private getDataUsage()Lcom/facebook/rti/mqtt/common/analytics/RTDataUsageStats;
    .locals 1

    .prologue
    .line 201
    const-class v0, Lcom/facebook/rti/mqtt/common/analytics/RTDataUsageStats;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getStat(Ljava/lang/Class;)Lcom/facebook/rti/mqtt/common/analytics/RTStatsBase;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/analytics/RTDataUsageStats;

    return-object v0
.end method

.method private getLatency()Lcom/facebook/rti/mqtt/common/analytics/RTStatsLatency;
    .locals 1

    .prologue
    .line 226
    const-class v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLatency;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getStat(Ljava/lang/Class;)Lcom/facebook/rti/mqtt/common/analytics/RTStatsBase;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLatency;

    return-object v0
.end method

.method private getLifecycle(J)Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;
    .locals 7

    .prologue
    .line 213
    const-class v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getStat(Ljava/lang/Class;)Lcom/facebook/rti/mqtt/common/analytics/RTStatsBase;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;

    .line 214
    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->MqttDurationMs:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;->get(Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 215
    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->NetworkDurationMs:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;->get(Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    .line 216
    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->getCurrentConnectedDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 217
    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->NetworkTotalDurationMs:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;->get(Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicLong;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mNetworkManager:Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;

    .line 218
    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/common/hardware/MqttNetworkManager;->getLifetimeConnectedDuration()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 219
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    .line 220
    invoke-interface {v1}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v2

    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$MetricKey;->ServiceCreatedTimestamp:Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$MetricKey;

    invoke-direct {p0, v1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getCounter(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$MetricKey;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    sub-long/2addr v2, v4

    .line 221
    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;->ServiceDurationMs:Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle$Metric;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;->get(Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 222
    return-object v0
.end method

.method private getTopicStats()Lcom/facebook/rti/mqtt/common/analytics/RTTopicStats;
    .locals 1

    .prologue
    .line 209
    const-class v0, Lcom/facebook/rti/mqtt/common/analytics/RTTopicStats;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getStat(Ljava/lang/Class;)Lcom/facebook/rti/mqtt/common/analytics/RTStatsBase;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/analytics/RTTopicStats;

    return-object v0
.end method

.method private getTrafficStats()Lcom/facebook/rti/mqtt/common/analytics/RTTrafficStats;
    .locals 1

    .prologue
    .line 205
    const-class v0, Lcom/facebook/rti/mqtt/common/analytics/RTTrafficStats;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getStat(Ljava/lang/Class;)Lcom/facebook/rti/mqtt/common/analytics/RTStatsBase;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/analytics/RTTrafficStats;

    return-object v0
.end method


# virtual methods
.method public getConnectTriggerReason()Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;
    .locals 1

    .prologue
    .line 262
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mConnectTriggerReason:Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;

    return-object v0
.end method

.method public getConnectivityStats()Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;
    .locals 9

    .prologue
    const/4 v2, 0x0

    .line 151
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;

    .line 152
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getBasicInfo()Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo;

    move-result-object v1

    .line 154
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getConnectivity()Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats;

    move-result-object v3

    iget-object v4, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mMqttSnapshotHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;

    const/4 v5, 0x1

    .line 156
    invoke-virtual {v4, v5}, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->getMqttHealthStatsSnapshot(Z)Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsSnapshot;

    move-result-object v5

    .line 157
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getDataUsage()Lcom/facebook/rti/mqtt/common/analytics/RTDataUsageStats;

    move-result-object v6

    .line 158
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getTrafficStats()Lcom/facebook/rti/mqtt/common/analytics/RTTrafficStats;

    move-result-object v7

    const/4 v8, 0x0

    move-object v4, v2

    invoke-direct/range {v0 .. v8}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;-><init>(Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo;Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats;Lcom/facebook/rti/mqtt/common/analytics/RTStatsLatency;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsSnapshot;Lcom/facebook/rti/mqtt/common/analytics/RTDataUsageStats;Lcom/facebook/rti/mqtt/common/analytics/RTTrafficStats;Z)V

    return-object v0
.end method

.method public getFbnsLiteNotificationCounters()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/concurrent/atomic/AtomicLong;",
            ">;"
        }
    .end annotation

    .prologue
    .line 258
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mFbnsLiteNotificationCounterMap:Ljava/util/concurrent/ConcurrentMap;

    return-object v0
.end method

.method public getHealthStatsForBugReport(JZ)Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;
    .locals 11

    .prologue
    .line 125
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;

    .line 126
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getBasicInfo()Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo;

    move-result-object v1

    .line 127
    invoke-direct {p0, p1, p2}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getLifecycle(J)Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;

    move-result-object v2

    .line 128
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getConnectivity()Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats;

    move-result-object v3

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mMqttSnapshotHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;

    .line 130
    invoke-virtual {v5, p3}, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->getMqttHealthStatsSnapshot(Z)Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsSnapshot;

    move-result-object v5

    .line 131
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getDataUsage()Lcom/facebook/rti/mqtt/common/analytics/RTDataUsageStats;

    move-result-object v6

    .line 132
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getTrafficStats()Lcom/facebook/rti/mqtt/common/analytics/RTTrafficStats;

    move-result-object v7

    .line 133
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getTopicStats()Lcom/facebook/rti/mqtt/common/analytics/RTTopicStats;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x1

    invoke-direct/range {v0 .. v10}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;-><init>(Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo;Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats;Lcom/facebook/rti/mqtt/common/analytics/RTStatsLatency;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsSnapshot;Lcom/facebook/rti/mqtt/common/analytics/RTDataUsageStats;Lcom/facebook/rti/mqtt/common/analytics/RTTrafficStats;Lcom/facebook/rti/mqtt/common/analytics/RTTopicStats;ZZ)V

    return-object v0
.end method

.method public getLifecycleAndLatencyStats(J)Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 139
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;

    .line 140
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getBasicInfo()Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo;

    move-result-object v1

    .line 141
    invoke-direct {p0, p1, p2}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getLifecycle(J)Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;

    move-result-object v2

    .line 143
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getLatency()Lcom/facebook/rti/mqtt/common/analytics/RTStatsLatency;

    move-result-object v4

    const/4 v8, 0x1

    move-object v5, v3

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v8}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStats;-><init>(Lcom/facebook/rti/mqtt/common/analytics/RTStatsBasicInfo;Lcom/facebook/rti/mqtt/common/analytics/RTStatsLifeCycle;Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats;Lcom/facebook/rti/mqtt/common/analytics/RTStatsLatency;Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsSnapshot;Lcom/facebook/rti/mqtt/common/analytics/RTDataUsageStats;Lcom/facebook/rti/mqtt/common/analytics/RTTrafficStats;Z)V

    return-object v0
.end method

.method public declared-synchronized getStat(Ljava/lang/Class;)Lcom/facebook/rti/mqtt/common/analytics/RTStatsBase;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Lcom/facebook/rti/mqtt/common/analytics/RTStatsBase;",
            ">(",
            "Ljava/lang/Class",
            "<TT;>;)TT;"
        }
    .end annotation

    .prologue
    .line 173
    monitor-enter p0

    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    .line 174
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mRTStatsMap:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    const-class v0, Lcom/facebook/rti/mqtt/common/analytics/RTDataUsageStats;

    if-ne p1, v0, :cond_1

    .line 177
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/RTDataUsageStats;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mServiceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mClock:Lcom/facebook/rti/common/time/Clock;

    iget-object v4, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    iget-boolean v5, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mIsLoggingHealthStatsEnabled:Z

    invoke-direct/range {v0 .. v5}, Lcom/facebook/rti/mqtt/common/analytics/RTDataUsageStats;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/rti/common/time/Clock;Lcom/facebook/rti/common/time/MonotonicClock;Z)V

    .line 191
    :goto_0
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mRTStatsMap:Ljava/util/HashMap;

    invoke-virtual {v1, v6, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 194
    :cond_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mRTStatsMap:Ljava/util/HashMap;

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsBase;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object v0

    .line 180
    :cond_1
    :try_start_1
    const-class v0, Lcom/facebook/rti/mqtt/common/analytics/RTTrafficStats;

    if-ne p1, v0, :cond_2

    .line 181
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/RTTrafficStats;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mServiceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mClock:Lcom/facebook/rti/common/time/Clock;

    iget-object v4, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    iget-boolean v5, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mIsLoggingHealthStatsEnabled:Z

    invoke-direct/range {v0 .. v5}, Lcom/facebook/rti/mqtt/common/analytics/RTTrafficStats;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/rti/common/time/Clock;Lcom/facebook/rti/common/time/MonotonicClock;Z)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    :try_start_2
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Incorrect stat category used:"

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 173
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 184
    :cond_2
    :try_start_3
    const-class v0, Lcom/facebook/rti/mqtt/common/analytics/RTTopicStats;

    if-ne p1, v0, :cond_3

    .line 185
    new-instance v0, Lcom/facebook/rti/mqtt/common/analytics/RTTopicStats;

    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mServiceName:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mClock:Lcom/facebook/rti/common/time/Clock;

    iget-object v4, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    iget-boolean v5, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mIsLoggingHealthStatsEnabled:Z

    invoke-direct/range {v0 .. v5}, Lcom/facebook/rti/mqtt/common/analytics/RTTopicStats;-><init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/rti/common/time/Clock;Lcom/facebook/rti/common/time/MonotonicClock;Z)V

    goto :goto_0

    .line 189
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/analytics/RTStatsBase;
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0
.end method

.method public markConnectStart()V
    .locals 1

    .prologue
    .line 278
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mMqttSnapshotHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->markConnectStart()V

    .line 279
    return-void
.end method

.method public markDisconnect()V
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mMqttSnapshotHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->markDisconnect()V

    .line 271
    return-void
.end method

.method public markServiceStart(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mMqttSnapshotHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;

    invoke-virtual {v0, p1}, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->markServiceStart(Ljava/lang/String;)V

    .line 275
    return-void
.end method

.method public reportFbnsLiteNotificationReceived(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 253
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mFbnsLiteNotificationCounterMap:Ljava/util/concurrent/ConcurrentMap;

    new-instance v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    invoke-interface {v0, p1, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mFbnsLiteNotificationCounterMap:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 255
    return-void
.end method

.method public reportSuccessfulConnection(J)V
    .locals 3

    .prologue
    .line 246
    const-class v0, Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getStat(Ljava/lang/Class;)Lcom/facebook/rti/mqtt/common/analytics/RTStatsBase;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats;

    .line 247
    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats$Metric;->CountSuccessfulConnection:Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats$Metric;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats;->get(Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicLong;->incrementAndGet()J

    .line 248
    sget-object v1, Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats$Metric;->ConnectingMs:Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats$Metric;

    invoke-virtual {v0, v1}, Lcom/facebook/rti/mqtt/common/analytics/RTConnectivityStats;->get(Lcom/facebook/rti/mqtt/common/analytics/RTInMemoryStats$RTStatsKey;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v0, p1, p2}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 249
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mMqttSnapshotHelper:Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;

    invoke-virtual {v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttSnapshotHelper;->markConnectSuccess()V

    .line 250
    return-void
.end method

.method public setClientCoreName(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 163
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mClientCoreName:Ljava/lang/String;

    .line 164
    return-void
.end method

.method public setConnectTriggerReason(Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;)V
    .locals 0

    .prologue
    .line 266
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mConnectTriggerReason:Lcom/facebook/rti/mqtt/common/analytics/ConnectTriggerReason;

    .line 267
    return-void
.end method

.method public setCounter(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$MetricKey;J)V
    .locals 2

    .prologue
    .line 234
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getCounter(Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper$MetricKey;)Ljava/util/concurrent/atomic/AtomicLong;

    move-result-object v0

    invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/atomic/AtomicLong;->set(J)V

    .line 235
    return-void
.end method

.method public setNotificationDeliveryStoreClass(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 167
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mNotificationDeliveryStoreClass:Ljava/lang/String;

    .line 168
    return-void
.end method

.method public updateRegisteredApps(Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 340
    invoke-direct {p0, p1}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->encodeAppsList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mValidCompatibleApps:Ljava/lang/String;

    .line 341
    invoke-direct {p0, p2}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->encodeAppsList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mEnabledCompatibleApps:Ljava/lang/String;

    .line 342
    invoke-direct {p0, p3}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->encodeAppsList(Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mRegisteredApps:Ljava/lang/String;

    .line 343
    return-void
.end method

.method public updateTrafficStats(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 10

    .prologue
    .line 362
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mIsMqttForegroundProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    if-nez v0, :cond_3

    const/4 v0, 0x0

    move v1, v0

    .line 365
    :goto_0
    invoke-static {}, Lcom/facebook/rti/shared/trafficstatus/TrafficStatus;->getInstance()Lcom/facebook/rti/shared/trafficstatus/TrafficStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/rti/shared/trafficstatus/TrafficStatus;->isRadioWakeupTraffic()Z

    move-result v5

    .line 368
    invoke-static {}, Lcom/facebook/rti/shared/trafficstatus/TrafficStatus;->getInstance()Lcom/facebook/rti/shared/trafficstatus/TrafficStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/rti/shared/trafficstatus/TrafficStatus;->getPingCaller()Ljava/lang/String;

    move-result-object v0

    .line 369
    if-eqz v0, :cond_2

    if-nez p4, :cond_0

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->PINGREQ:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    .line 370
    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    if-eqz p4, :cond_2

    sget-object v2, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->PINGRESP:Lcom/facebook/rti/mqtt/protocol/messages/MessageType;

    .line 371
    invoke-virtual {v2}, Lcom/facebook/rti/mqtt/protocol/messages/MessageType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 372
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 374
    :cond_2
    if-eqz v1, :cond_4

    .line 375
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_FG"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 379
    :goto_1
    if-eqz v5, :cond_6

    .line 380
    if-eqz v1, :cond_5

    .line 381
    const-class v0, Lcom/facebook/rti/mqtt/common/analytics/RTTrafficStats;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getStat(Ljava/lang/Class;)Lcom/facebook/rti/mqtt/common/analytics/RTStatsBase;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/analytics/RTTrafficStats;

    const-wide/16 v2, 0x1

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "tc"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "fg"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "rw"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object p3, v6, v7

    .line 382
    invoke-virtual {v0, v2, v3, v6}, Lcom/facebook/rti/mqtt/common/analytics/RTTrafficStats;->increment(J[Ljava/lang/String;)Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;

    .line 419
    :goto_2
    if-eqz v1, :cond_8

    const-string v0, "fg"

    move-object v2, v0

    .line 422
    :goto_3
    invoke-static {p2}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_9

    move-object v3, v4

    .line 429
    :goto_4
    const-class v0, Lcom/facebook/rti/mqtt/common/analytics/RTTopicStats;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getStat(Ljava/lang/Class;)Lcom/facebook/rti/mqtt/common/analytics/RTStatsBase;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/analytics/RTTopicStats;

    const-wide/16 v6, 0x1

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/String;

    const/4 v9, 0x0

    aput-object v3, v8, v9

    const/4 v3, 0x1

    aput-object v2, v8, v3

    invoke-virtual {v0, v6, v7, v8}, Lcom/facebook/rti/mqtt/common/analytics/RTTopicStats;->increment(J[Ljava/lang/String;)Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;

    .line 431
    invoke-static {}, Lcom/facebook/rti/shared/trafficstatus/TrafficStatus;->getInstance()Lcom/facebook/rti/shared/trafficstatus/TrafficStatus;

    move-result-object v0

    invoke-virtual {v0}, Lcom/facebook/rti/shared/trafficstatus/TrafficStatus;->setLatestTrafficMs()V

    .line 432
    const-string v0, "MqttHealthStatsHelper"

    const-string v2, "logged mqtt traffic, isRadioWakeup:%b, type:%s, topic:%s, isMqttForeground:%b, network:%s"

    const/4 v3, 0x5

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v6, 0x0

    .line 435
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    aput-object v5, v3, v6

    const/4 v5, 0x1

    aput-object v4, v3, v5

    const/4 v4, 0x2

    aput-object p2, v3, v4

    const/4 v4, 0x3

    .line 438
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    aput-object v1, v3, v4

    const/4 v1, 0x4

    aput-object p3, v3, v1

    .line 432
    invoke-static {v0, v2, v3}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 440
    return-void

    .line 362
    :cond_3
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->mIsMqttForegroundProvider:Lcom/facebook/rti/common/util/NonInjectProvider;

    .line 363
    invoke-interface {v0}, Lcom/facebook/rti/common/util/NonInjectProvider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    move v1, v0

    goto/16 :goto_0

    .line 377
    :cond_4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "_BG"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 389
    :cond_5
    const-class v0, Lcom/facebook/rti/mqtt/common/analytics/RTTrafficStats;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getStat(Ljava/lang/Class;)Lcom/facebook/rti/mqtt/common/analytics/RTStatsBase;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/analytics/RTTrafficStats;

    const-wide/16 v2, 0x1

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "tc"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "bg"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string/jumbo v8, "rw"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object p3, v6, v7

    .line 390
    invoke-virtual {v0, v2, v3, v6}, Lcom/facebook/rti/mqtt/common/analytics/RTTrafficStats;->increment(J[Ljava/lang/String;)Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;

    goto/16 :goto_2

    .line 399
    :cond_6
    if-eqz v1, :cond_7

    .line 400
    const-class v0, Lcom/facebook/rti/mqtt/common/analytics/RTTrafficStats;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getStat(Ljava/lang/Class;)Lcom/facebook/rti/mqtt/common/analytics/RTStatsBase;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/analytics/RTTrafficStats;

    const-wide/16 v2, 0x1

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "tc"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "fg"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "nw"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object p3, v6, v7

    .line 401
    invoke-virtual {v0, v2, v3, v6}, Lcom/facebook/rti/mqtt/common/analytics/RTTrafficStats;->increment(J[Ljava/lang/String;)Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;

    goto/16 :goto_2

    .line 408
    :cond_7
    const-class v0, Lcom/facebook/rti/mqtt/common/analytics/RTTrafficStats;

    invoke-virtual {p0, v0}, Lcom/facebook/rti/mqtt/common/analytics/MqttHealthStatsHelper;->getStat(Ljava/lang/Class;)Lcom/facebook/rti/mqtt/common/analytics/RTStatsBase;

    move-result-object v0

    check-cast v0, Lcom/facebook/rti/mqtt/common/analytics/RTTrafficStats;

    const-wide/16 v2, 0x1

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/String;

    const/4 v7, 0x0

    const-string/jumbo v8, "tc"

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-string v8, "bg"

    aput-object v8, v6, v7

    const/4 v7, 0x2

    const-string v8, "nw"

    aput-object v8, v6, v7

    const/4 v7, 0x3

    aput-object p3, v6, v7

    .line 409
    invoke-virtual {v0, v2, v3, v6}, Lcom/facebook/rti/mqtt/common/analytics/RTTrafficStats;->increment(J[Ljava/lang/String;)Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;

    goto/16 :goto_2

    .line 419
    :cond_8
    const-string v0, "bg"

    move-object v2, v0

    goto/16 :goto_3

    .line 424
    :cond_9
    const-string v0, "/"

    invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 425
    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    move-object v3, v0

    goto/16 :goto_4

    :cond_a
    move-object v3, p2

    .line 427
    goto/16 :goto_4
.end method
