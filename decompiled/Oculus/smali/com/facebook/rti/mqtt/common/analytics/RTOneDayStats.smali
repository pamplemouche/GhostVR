.class public abstract Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;
.super Ljava/lang/Object;
.source "RTOneDayStats.java"

# interfaces
.implements Lcom/facebook/rti/mqtt/common/analytics/RTStatsBase;


# instance fields
.field private final mCategoryKey:Ljava/lang/String;

.field private final mClock:Lcom/facebook/rti/common/time/Clock;

.field private final mContext:Landroid/content/Context;

.field private final mCounterBuffer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private mCurrentDay:I

.field private final mIsLoggingHealthStatsEnabled:Z

.field private mLastFlushTime:J

.field private final mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

.field private final mServiceName:Ljava/lang/String;

.field private mSharedPreferences:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Lcom/facebook/rti/common/time/Clock;Lcom/facebook/rti/common/time/MonotonicClock;Ljava/lang/String;Z)V
    .locals 2

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    iput-object p1, p0, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->mContext:Landroid/content/Context;

    .line 47
    iput-object p2, p0, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->mServiceName:Ljava/lang/String;

    .line 48
    iput-object p3, p0, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->mClock:Lcom/facebook/rti/common/time/Clock;

    .line 49
    iput-object p4, p0, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    .line 50
    iput-object p5, p0, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->mCategoryKey:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->mCounterBuffer:Ljava/util/HashMap;

    .line 52
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->getCurrentDay()I

    move-result v0

    iput v0, p0, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->mCurrentDay:I

    .line 53
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->mLastFlushTime:J

    .line 54
    iput-boolean p6, p0, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->mIsLoggingHealthStatsEnabled:Z

    .line 55
    return-void
.end method

.method private varargs combineTokens(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 130
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const/4 v0, 0x0

    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 133
    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 134
    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 136
    :cond_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private flush()V
    .locals 8

    .prologue
    .line 148
    iget-boolean v0, p0, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->mIsLoggingHealthStatsEnabled:Z

    if-nez v0, :cond_1

    .line 173
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->mCounterBuffer:Ljava/util/HashMap;

    monitor-enter v1

    .line 155
    :try_start_0
    new-instance v0, Ljava/util/HashMap;

    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->mCounterBuffer:Ljava/util/HashMap;

    invoke-direct {v0, v2}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    .line 156
    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->mCounterBuffer:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->clear()V

    .line 157
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 159
    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 164
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->initSharedPreference()V

    .line 165
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 166
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 167
    iget-object v4, p0, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    const-wide/16 v6, 0x0

    invoke-interface {v4, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    .line 168
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    .line 169
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    add-long/2addr v4, v6

    invoke-interface {v2, v0, v4, v5}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    goto :goto_1

    .line 157
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    .line 171
    :cond_2
    invoke-static {v2}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 172
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->mLastFlushTime:J

    goto :goto_0
.end method

.method private getCurrentDay()I
    .locals 4

    .prologue
    .line 140
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->mClock:Lcom/facebook/rti/common/time/Clock;

    invoke-interface {v0}, Lcom/facebook/rti/common/time/Clock;->now()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    div-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method

.method private getPeriod()J
    .locals 4

    .prologue
    .line 144
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->mClock:Lcom/facebook/rti/common/time/Clock;

    invoke-interface {v0}, Lcom/facebook/rti/common/time/Clock;->now()J

    move-result-wide v0

    const-wide/32 v2, 0x5265c00

    rem-long/2addr v0, v2

    return-wide v0
.end method

.method private declared-synchronized initSharedPreference()V
    .locals 4

    .prologue
    .line 193
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->mSharedPreferences:Landroid/content/SharedPreferences;

    if-nez v0, :cond_0

    .line 194
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->mContext:Landroid/content/Context;

    new-instance v1, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper$RtiSharedPref;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "rti.mqtt.counter."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->mServiceName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 201
    invoke-virtual {p0}, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->getCategoryKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper$RtiSharedPref;-><init>(Ljava/lang/String;)V

    .line 195
    invoke-static {v0, v1}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper;->getSharedPreferences(Landroid/content/Context;Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper$RtiSharedPref;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->mSharedPreferences:Landroid/content/SharedPreferences;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 203
    :cond_0
    monitor-exit p0

    return-void

    .line 193
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private parseDateFromKey(Ljava/lang/String;)I
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 176
    if-nez p1, :cond_1

    .line 188
    :cond_0
    :goto_0
    return v0

    .line 180
    :cond_1
    const-string v1, "."

    invoke-virtual {p1, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v1

    .line 181
    if-lez v1, :cond_0

    .line 186
    const/4 v2, 0x0

    :try_start_0
    invoke-virtual {p1, v2, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    goto :goto_0

    .line 187
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public getCategoryKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->mCategoryKey:Ljava/lang/String;

    return-object v0
.end method

.method public varargs increment(J[Ljava/lang/String;)Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;
    .locals 7

    .prologue
    .line 104
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->getCurrentDay()I

    move-result v0

    .line 105
    iget v1, p0, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->mCurrentDay:I

    if-eq v1, v0, :cond_0

    .line 106
    iput v0, p0, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->mCurrentDay:I

    .line 107
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->flush()V

    .line 110
    :cond_0
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p3}, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->combineTokens(Ljava/lang/String;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 113
    iget-object v2, p0, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->mCounterBuffer:Ljava/util/HashMap;

    monitor-enter v2

    .line 114
    :try_start_0
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->mCounterBuffer:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 115
    if-nez v0, :cond_1

    .line 116
    const-wide/16 v4, 0x0

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    .line 118
    :cond_1
    iget-object v3, p0, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->mCounterBuffer:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    add-long/2addr v4, p1

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->mMonotonicClock:Lcom/facebook/rti/common/time/MonotonicClock;

    invoke-interface {v0}, Lcom/facebook/rti/common/time/MonotonicClock;->now()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->mLastFlushTime:J

    sub-long/2addr v0, v2

    const-wide/32 v2, 0x36ee80

    cmp-long v0, v0, v2

    if-lez v0, :cond_2

    .line 123
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->flush()V

    .line 126
    :cond_2
    return-object p0

    .line 119
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public toJson(ZZ)Lorg/json/JSONObject;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->initSharedPreference()V

    .line 65
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 66
    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->getCurrentDay()I

    move-result v4

    .line 67
    iget-object v0, p0, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 72
    iget-object v1, p0, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->mSharedPreferences:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v5

    .line 73
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_0
    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 74
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v1}, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->parseDateFromKey(Ljava/lang/String;)I

    move-result v1

    .line 75
    if-gt v1, v4, :cond_1

    add-int/lit8 v2, v1, 0x3

    if-ge v2, v4, :cond_2

    .line 77
    :cond_1
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v5, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 78
    :cond_2
    if-eqz p2, :cond_3

    .line 80
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_0

    .line 81
    :cond_3
    if-eq v1, v4, :cond_0

    .line 83
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 84
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v5, v0}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    goto :goto_0

    .line 87
    :cond_4
    invoke-static {v5}, Lcom/facebook/rti/common/sharedprefs/SharedPreferencesHelper;->apply(Landroid/content/SharedPreferences$Editor;)V

    .line 89
    invoke-virtual {v3}, Lorg/json/JSONObject;->length()I

    move-result v0

    if-nez v0, :cond_5

    .line 90
    const/4 v0, 0x0

    .line 98
    :goto_1
    return-object v0

    .line 91
    :cond_5
    if-nez p2, :cond_6

    move-object v0, v3

    .line 92
    goto :goto_1

    .line 95
    :cond_6
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 96
    const-string v1, "period_ms"

    invoke-direct {p0}, Lcom/facebook/rti/mqtt/common/analytics/RTOneDayStats;->getPeriod()J

    move-result-wide v4

    invoke-virtual {v0, v1, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    .line 97
    const-string v1, "data"

    invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    goto :goto_1
.end method
