.class public Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;
.super Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;
.source "ZeroRatingConnectionConfigOverrides.java"


# instance fields
.field private final mClock:Lcom/facebook/rti/common/time/Clock;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;Lcom/facebook/common/errorreporting/FbErrorReporter;Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;Lcom/facebook/rti/common/time/Clock;)V
    .locals 6
    .param p4    # Lcom/facebook/common/errorreporting/FbErrorReporter;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 37
    invoke-direct/range {p0 .. p5}, Lcom/facebook/rti/mqtt/manager/ProductSpecificConfigOverrides;-><init>(Landroid/content/Context;Lcom/facebook/rti/mqtt/common/config/ConnectionConfigManager;Lcom/facebook/rti/mqtt/manager/ServiceConnectionType;Lcom/facebook/common/errorreporting/FbErrorReporter;Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;)V

    .line 43
    iput-object p6, p0, Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;->mClock:Lcom/facebook/rti/common/time/Clock;

    .line 45
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;->mIRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

    sget-object v1, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->LAST_HOST:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    .line 46
    invoke-interface {v0, v1}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;->get(Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    move-result-object v0

    .line 48
    const-string/jumbo v1, "zero_rating_last_host_timestamp"

    const-wide/16 v2, 0x0

    .line 49
    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    .line 51
    iget-object v1, p0, Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;->mClock:Lcom/facebook/rti/common/time/Clock;

    invoke-interface {v1}, Lcom/facebook/rti/common/time/Clock;->now()J

    move-result-wide v4

    sub-long v2, v4, v2

    const-wide/32 v4, 0x5265c00

    cmp-long v1, v2, v4

    if-gez v1, :cond_0

    .line 52
    const-string/jumbo v1, "zero_rating_last_host"

    const/4 v2, 0x0

    .line 53
    invoke-interface {v0, v1, v2}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    iput-object v0, p0, Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;->mMqttEndpoint:Ljava/lang/String;

    .line 56
    :cond_0
    return-void
.end method


# virtual methods
.method protected getBroadcastActionName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    const-string v0, "com.facebook.rti.mqtt.ACTION_ZR_SWITCH"

    return-object v0
.end method

.method protected getLogTag()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    const-string v0, "ZeroRatingConnectionConfigOverrides"

    return-object v0
.end method

.method protected saveEndpoints(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 70
    iget-object v0, p0, Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;->mIRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

    sget-object v1, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->LAST_HOST:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    .line 71
    invoke-interface {v0, v1}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;->get(Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    move-result-object v0

    .line 72
    invoke-interface {v0}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->edit()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "zero_rating_last_host"

    .line 73
    invoke-interface {v0, v1, p1}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "zero_rating_last_host_timestamp"

    iget-object v2, p0, Lcom/facebook/rti/mqtt/manager/ZeroRatingConnectionConfigOverrides;->mClock:Lcom/facebook/rti/common/time/Clock;

    .line 74
    invoke-interface {v2}, Lcom/facebook/rti/common/time/Clock;->now()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->putLong(Ljava/lang/String;J)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v0

    .line 75
    invoke-interface {v0}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->commit()V

    .line 76
    return-void
.end method
