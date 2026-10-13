.class public Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;
.super Ljava/lang/Object;
.source "EstimateRadioActiveTimeHelper.java"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mIsLogTimeEnabled:Z

.field private mLastMessageMs:J

.field private mLastWriteSharedPreferencesMs:J

.field private final mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

.field private final mMqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

.field private final mRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

.field private mTotalWakeMs:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;Lcom/facebook/rti/common/time/MonotonicClock;ZLcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;)V
    .locals 4

    .prologue
    const-wide/16 v2, -0x1

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    iput-wide v2, p0, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->mLastMessageMs:J

    .line 31
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->mTotalWakeMs:J

    .line 34
    iput-wide v2, p0, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->mLastWriteSharedPreferencesMs:J

    .line 42
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->mContext:Landroid/content/Context;

    .line 43
    iput-object p2, p0, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->mMqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    .line 44
    iput-object p3, p0, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    .line 45
    iput-boolean p4, p0, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->mIsLogTimeEnabled:Z

    .line 46
    iput-object p5, p0, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->mRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

    .line 47
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->setValidLastLogMs()V

    .line 48
    return-void
.end method

.method private estimateTime()V
    .locals 8

    .prologue
    const-wide/16 v6, 0x2710

    .line 59
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v0

    .line 62
    iget-wide v2, p0, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->mLastMessageMs:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-gez v2, :cond_1

    .line 63
    iput-wide v0, p0, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->mLastMessageMs:J

    .line 64
    iput-wide v0, p0, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->mLastWriteSharedPreferencesMs:J

    .line 90
    :cond_0
    :goto_0
    return-void

    .line 69
    :cond_1
    iget-wide v2, p0, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->mLastMessageMs:J

    sub-long v2, v0, v2

    .line 70
    iput-wide v0, p0, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->mLastMessageMs:J

    .line 71
    cmp-long v4, v2, v6

    if-lez v4, :cond_3

    .line 72
    iget-wide v2, p0, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->mTotalWakeMs:J

    add-long/2addr v2, v6

    iput-wide v2, p0, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->mTotalWakeMs:J

    .line 78
    :goto_1
    iget-wide v2, p0, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->mLastWriteSharedPreferencesMs:J

    sub-long v2, v0, v2

    .line 79
    const-wide/16 v4, 0x4e20

    cmp-long v2, v2, v4

    if-lez v2, :cond_2

    .line 80
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->writeSharedPreferences()V

    .line 81
    iput-wide v0, p0, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->mLastWriteSharedPreferencesMs:J

    .line 85
    :cond_2
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->getRtiSharedPreferences()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    move-result-object v2

    const-string v3, "last_log_ms"

    invoke-interface {v2, v3, v0, v1}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    sub-long v2, v0, v2

    .line 86
    const-wide/32 v4, 0x36ee80

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 87
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->logRadioActiveTime()V

    .line 88
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->getRtiSharedPreferences()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->edit()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v2

    const-string v3, "last_log_ms"

    invoke-interface {v2, v3, v0, v1}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->putLong(Ljava/lang/String;J)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->commit()V

    goto :goto_0

    .line 74
    :cond_3
    iget-wide v4, p0, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->mTotalWakeMs:J

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->mTotalWakeMs:J

    goto :goto_1
.end method

.method private getRtiSharedPreferences()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;
    .locals 2

    .prologue
    .line 116
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->mRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

    sget-object v1, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->MQTT_RADIO_ACTIVE_TIME:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    invoke-interface {v0, v1}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;->get(Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private logRadioActiveTime()V
    .locals 6

    .prologue
    .line 111
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->mMqttAnalyticsLogger:Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;

    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->getRtiSharedPreferences()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "total_wake_ms"

    const-wide/16 v4, 0x0

    invoke-interface {v1, v2, v4, v5}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Lcom/facebook/rti/mqtt/common/analytics/MqttAnalyticsLogger;->reportRadioActiveTime(J)V

    .line 112
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->getRtiSharedPreferences()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->edit()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->clear()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->commit()V

    .line 113
    return-void
.end method

.method private setValidLastLogMs()V
    .locals 4

    .prologue
    .line 94
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v0

    .line 95
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->getRtiSharedPreferences()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    move-result-object v2

    const-string v3, "last_log_ms"

    invoke-interface {v2, v3, v0, v1}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 96
    cmp-long v2, v2, v0

    if-ltz v2, :cond_0

    .line 97
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->getRtiSharedPreferences()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    move-result-object v2

    invoke-interface {v2}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->edit()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v2

    const-string v3, "last_log_ms"

    invoke-interface {v2, v3, v0, v1}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->putLong(Ljava/lang/String;J)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->commit()V

    .line 99
    :cond_0
    return-void
.end method

.method private writeSharedPreferences()V
    .locals 6

    .prologue
    const-wide/16 v4, 0x0

    .line 103
    iget-wide v0, p0, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->mTotalWakeMs:J

    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->getRtiSharedPreferences()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    move-result-object v2

    const-string/jumbo v3, "total_wake_ms"

    invoke-interface {v2, v3, v4, v5}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    add-long/2addr v0, v2

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->mTotalWakeMs:J

    .line 104
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->getRtiSharedPreferences()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->edit()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "total_wake_ms"

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->mTotalWakeMs:J

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->putLong(Ljava/lang/String;J)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->commit()V

    .line 105
    iput-wide v4, p0, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->mTotalWakeMs:J

    .line 106
    return-void
.end method


# virtual methods
.method public declared-synchronized onWriteOrReceive()V
    .locals 1

    .prologue
    .line 52
    monitor-enter p0

    :try_start_0
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->mIsLogTimeEnabled:Z

    if-eqz v0, :cond_0

    .line 53
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/EstimateRadioActiveTimeHelper;->estimateTime()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 55
    :cond_0
    monitor-exit p0

    return-void

    .line 52
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
