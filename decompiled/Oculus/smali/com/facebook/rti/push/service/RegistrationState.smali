.class public Lcom/facebook/rti/push/service/RegistrationState;
.super Ljava/lang/Object;
.source "RegistrationState.java"


# annotations
.annotation build Lcom/facebook/rti/common/guavalite/annotations/VisibleForTesting;
.end annotation


# instance fields
.field private final mClock:Lcom/facebook/rti/common/time/Clock;

.field private final mIRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;


# direct methods
.method public constructor <init>(Lcom/facebook/rti/common/time/Clock;Lcom/facebook/rti/common/util/RtiBuildInfoUtil;Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/facebook/rti/push/service/RegistrationState;->mClock:Lcom/facebook/rti/common/time/Clock;

    .line 49
    iput-object p3, p0, Lcom/facebook/rti/push/service/RegistrationState;->mIRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

    .line 50
    invoke-direct {p0, p2}, Lcom/facebook/rti/push/service/RegistrationState;->verifyAndUpdateMqttBuildNumber(Lcom/facebook/rti/common/util/RtiBuildInfoUtil;)V

    .line 51
    return-void
.end method

.method private getCacheEntry(Ljava/lang/String;Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;)Lcom/facebook/rti/push/service/RegistrationCacheEntry;
    .locals 4
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 210
    invoke-static {p1, p2}, Lcom/facebook/rti/push/service/RegistrationState;->getRegStateString(Ljava/lang/String;Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;)Ljava/lang/String;

    move-result-object v1

    .line 211
    invoke-static {v1}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 219
    :goto_0
    return-object v0

    .line 216
    :cond_0
    :try_start_0
    invoke-static {v1}, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->deserialize(Ljava/lang/String;)Lcom/facebook/rti/push/service/RegistrationCacheEntry;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    goto :goto_0

    .line 217
    :catch_0
    move-exception v1

    .line 218
    const-string v2, "RegistrationState"

    const-string v3, "Parse failed"

    invoke-static {v2, v1, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0
.end method

.method private getFbnsStatePreferences()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;
    .locals 2

    .prologue
    .line 282
    iget-object v0, p0, Lcom/facebook/rti/push/service/RegistrationState;->mIRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

    sget-object v1, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->FBNS_STATE:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    invoke-interface {v0, v1}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;->get(Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private getRegStatePreferences()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;
    .locals 2

    .prologue
    .line 278
    iget-object v0, p0, Lcom/facebook/rti/push/service/RegistrationState;->mIRtiSharedPrefsProvider:Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;

    sget-object v1, Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;->REGISTRATIONS:Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;

    invoke-interface {v0, v1}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPrefsProvider;->get(Lcom/facebook/rti/common/sharedprefs/RtiSharedPrefKeys;)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    move-result-object v0

    return-object v0
.end method

.method private static getRegStateString(Ljava/lang/String;Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 242
    :try_start_0
    const-string v0, ""

    invoke-interface {p1, p0, v0}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 245
    :goto_0
    return-object v0

    .line 243
    :catch_0
    move-exception v0

    .line 244
    const-string v1, "RegistrationState"

    const-string v2, "get reg state string failed"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 245
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static saveCacheEntry(Ljava/lang/String;Lcom/facebook/rti/push/service/RegistrationCacheEntry;Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;)Z
    .locals 3

    .prologue
    .line 229
    :try_start_0
    invoke-virtual {p1}, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->serialize()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 235
    invoke-interface {p2}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->edit()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1, p0, v0}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->commit()V

    .line 236
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 230
    :catch_0
    move-exception v0

    .line 231
    const-string v1, "RegistrationState"

    const-string v2, "RegistrationCacheEntry serialization failed"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 232
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private verifyAndUpdateMqttBuildNumber(Lcom/facebook/rti/common/util/RtiBuildInfoUtil;)V
    .locals 3

    .prologue
    .line 250
    invoke-direct {p0}, Lcom/facebook/rti/push/service/RegistrationState;->getFbnsStatePreferences()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    move-result-object v0

    .line 251
    const-string v1, "mqtt_version"

    const-string v2, ""

    .line 252
    invoke-interface {v0, v1, v2}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 253
    invoke-virtual {p1}, Lcom/facebook/rti/common/util/RtiBuildInfoUtil;->getBuildNumber()Ljava/lang/String;

    move-result-object v2

    .line 254
    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    invoke-virtual {p0}, Lcom/facebook/rti/push/service/RegistrationState;->invalidateAllTokenCache()V

    .line 258
    invoke-interface {v0}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->edit()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v0

    const-string v1, "mqtt_version"

    .line 259
    invoke-interface {v0, v1, v2}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v0

    .line 260
    invoke-interface {v0}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->commit()V

    .line 262
    :cond_0
    return-void
.end method


# virtual methods
.method public addApp(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 55
    const-string v0, "RegistrationState"

    const-string v3, "add app %s %s"

    invoke-static {v0, v3, p1, p2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    invoke-static {p1}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkArgument(Z)V

    .line 57
    invoke-static {p2}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkArgument(Z)V

    .line 58
    new-instance v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;

    invoke-direct {v0}, Lcom/facebook/rti/push/service/RegistrationCacheEntry;-><init>()V

    .line 59
    iput-object p1, v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->mPackageName:Ljava/lang/String;

    .line 60
    iput-object p2, v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->mAppId:Ljava/lang/String;

    .line 61
    iget-object v1, p0, Lcom/facebook/rti/push/service/RegistrationState;->mClock:Lcom/facebook/rti/common/time/Clock;

    invoke-interface {v1}, Lcom/facebook/rti/common/time/Clock;->now()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    iput-object v1, v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->mTime:Ljava/lang/Long;

    .line 62
    invoke-direct {p0}, Lcom/facebook/rti/push/service/RegistrationState;->getRegStatePreferences()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lcom/facebook/rti/push/service/RegistrationState;->saveCacheEntry(Ljava/lang/String;Lcom/facebook/rti/push/service/RegistrationCacheEntry;Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;)Z

    move-result v0

    return v0

    :cond_0
    move v0, v2

    .line 56
    goto :goto_0

    :cond_1
    move v1, v2

    .line 57
    goto :goto_1
.end method

.method public clearAuthFailedRegisterTime()V
    .locals 2

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/facebook/rti/push/service/RegistrationState;->getFbnsStatePreferences()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->edit()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auto_reg_retry"

    invoke-interface {v0, v1}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->remove(Ljava/lang/String;)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->commit()V

    .line 271
    return-void
.end method

.method public getAppId(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 178
    invoke-static {p1}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkArgument(Z)V

    .line 180
    invoke-virtual {p0, p1}, Lcom/facebook/rti/push/service/RegistrationState;->getTokenEntry(Ljava/lang/String;)Lcom/facebook/rti/push/service/RegistrationCacheEntry;

    move-result-object v0

    .line 181
    if-nez v0, :cond_1

    .line 182
    const/4 v0, 0x0

    .line 185
    :goto_1
    return-object v0

    .line 178
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 185
    :cond_1
    iget-object v0, v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->mAppId:Ljava/lang/String;

    goto :goto_1
.end method

.method public getRegisteredApps()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/rti/push/service/RegistrationCacheEntry;",
            ">;"
        }
    .end annotation

    .prologue
    .line 190
    invoke-direct {p0}, Lcom/facebook/rti/push/service/RegistrationState;->getRegStatePreferences()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    .line 191
    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    .line 192
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 194
    :try_start_0
    const-string v3, "RegistrationState"

    const-string v4, "getRegisteredApps retrieving %s:%s"

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v6

    invoke-static {v3, v4, v5, v6}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 196
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->deserialize(Ljava/lang/String;)Lcom/facebook/rti/push/service/RegistrationCacheEntry;

    move-result-object v0

    .line 197
    if-eqz v0, :cond_0

    iget-boolean v3, v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->mInvalid:Z

    if-nez v3, :cond_0

    .line 198
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 200
    :catch_0
    move-exception v0

    .line 201
    const-string v3, "RegistrationState"

    const-string v4, "Parse failed"

    invoke-static {v3, v0, v4}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :cond_1
    return-object v1
.end method

.method public getTokenEntry(Ljava/lang/String;)Lcom/facebook/rti/push/service/RegistrationCacheEntry;
    .locals 1

    .prologue
    .line 145
    invoke-direct {p0}, Lcom/facebook/rti/push/service/RegistrationState;->getRegStatePreferences()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    move-result-object v0

    .line 146
    invoke-direct {p0, p1, v0}, Lcom/facebook/rti/push/service/RegistrationState;->getCacheEntry(Ljava/lang/String;Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;)Lcom/facebook/rti/push/service/RegistrationCacheEntry;

    move-result-object v0

    return-object v0
.end method

.method public getValidToken(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 154
    const-string v0, "RegistrationState"

    const-string v2, "getValidToken %s"

    invoke-static {v0, v2, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 155
    invoke-static {p1}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkArgument(Z)V

    .line 157
    invoke-virtual {p0, p1}, Lcom/facebook/rti/push/service/RegistrationState;->getTokenEntry(Ljava/lang/String;)Lcom/facebook/rti/push/service/RegistrationCacheEntry;

    move-result-object v0

    .line 158
    if-eqz v0, :cond_0

    iget-boolean v2, v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->mInvalid:Z

    if-eqz v2, :cond_2

    :cond_0
    move-object v0, v1

    .line 167
    :goto_1
    return-object v0

    .line 155
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 162
    :cond_2
    iget-object v2, p0, Lcom/facebook/rti/push/service/RegistrationState;->mClock:Lcom/facebook/rti/common/time/Clock;

    invoke-interface {v2}, Lcom/facebook/rti/common/time/Clock;->now()J

    move-result-wide v2

    .line 163
    iget-object v4, v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->mTime:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    const-wide/32 v6, 0x5265c00

    add-long/2addr v4, v6

    cmp-long v4, v4, v2

    if-ltz v4, :cond_3

    iget-object v4, v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->mTime:Ljava/lang/Long;

    invoke-virtual {v4}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v2, v4, v2

    if-lez v2, :cond_4

    :cond_3
    move-object v0, v1

    .line 164
    goto :goto_1

    .line 167
    :cond_4
    iget-object v0, v0, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->mToken:Ljava/lang/String;

    goto :goto_1
.end method

.method public invalidateAllTokenCache()V
    .locals 8

    .prologue
    .line 114
    const-string v0, "RegistrationState"

    const-string v1, "invalidateAllTokenCache"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    invoke-direct {p0}, Lcom/facebook/rti/push/service/RegistrationState;->getRegStatePreferences()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    move-result-object v1

    .line 116
    invoke-interface {v1}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->edit()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v2

    .line 117
    invoke-interface {v1}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 118
    invoke-direct {p0, v0, v1}, Lcom/facebook/rti/push/service/RegistrationState;->getCacheEntry(Ljava/lang/String;Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;)Lcom/facebook/rti/push/service/RegistrationCacheEntry;

    move-result-object v4

    .line 119
    if-nez v4, :cond_0

    .line 120
    const-string v4, "RegistrationState"

    const-string v5, "invalid value for %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v0, v6, v7

    invoke-static {v4, v5, v6}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 123
    :cond_0
    const-string v5, ""

    iput-object v5, v4, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->mToken:Ljava/lang/String;

    .line 124
    iget-object v5, p0, Lcom/facebook/rti/push/service/RegistrationState;->mClock:Lcom/facebook/rti/common/time/Clock;

    invoke-interface {v5}, Lcom/facebook/rti/common/time/Clock;->now()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    iput-object v5, v4, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->mTime:Ljava/lang/Long;

    .line 128
    :try_start_0
    invoke-virtual {v4}, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->serialize()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    .line 133
    invoke-interface {v2, v0, v4}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    goto :goto_0

    .line 129
    :catch_0
    move-exception v0

    .line 130
    const-string v4, "RegistrationState"

    const-string v5, "RegistrationCacheEntry serialization failed"

    invoke-static {v4, v0, v5}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 135
    :cond_1
    invoke-interface {v2}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->commit()V

    .line 136
    return-void
.end method

.method public invalidateTokenCache(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    .line 98
    const-string v0, "RegistrationState"

    const-string v1, "invalidateTokenCache %s"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    invoke-static {p1}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkArgument(Z)V

    .line 100
    invoke-direct {p0}, Lcom/facebook/rti/push/service/RegistrationState;->getRegStatePreferences()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    move-result-object v0

    .line 101
    invoke-direct {p0, p1, v0}, Lcom/facebook/rti/push/service/RegistrationState;->getCacheEntry(Ljava/lang/String;Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;)Lcom/facebook/rti/push/service/RegistrationCacheEntry;

    move-result-object v1

    .line 102
    if-nez v1, :cond_1

    .line 103
    const-string v0, "RegistrationState"

    const-string v1, "Missing entry"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 110
    :goto_1
    return-void

    .line 99
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 107
    :cond_1
    const-string v2, ""

    iput-object v2, v1, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->mToken:Ljava/lang/String;

    .line 108
    iget-object v2, p0, Lcom/facebook/rti/push/service/RegistrationState;->mClock:Lcom/facebook/rti/common/time/Clock;

    invoke-interface {v2}, Lcom/facebook/rti/common/time/Clock;->now()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->mTime:Ljava/lang/Long;

    .line 109
    invoke-static {p1, v1, v0}, Lcom/facebook/rti/push/service/RegistrationState;->saveCacheEntry(Ljava/lang/String;Lcom/facebook/rti/push/service/RegistrationCacheEntry;Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;)Z

    goto :goto_1
.end method

.method public removeApp(Ljava/lang/String;)V
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    .line 86
    const-string v0, "RegistrationState"

    const-string/jumbo v2, "remove app %s"

    invoke-static {v0, v2, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 87
    invoke-static {p1}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkArgument(Z)V

    .line 88
    invoke-direct {p0}, Lcom/facebook/rti/push/service/RegistrationState;->getRegStatePreferences()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    move-result-object v0

    .line 89
    invoke-direct {p0, p1, v0}, Lcom/facebook/rti/push/service/RegistrationState;->getCacheEntry(Ljava/lang/String;Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;)Lcom/facebook/rti/push/service/RegistrationCacheEntry;

    move-result-object v2

    .line 90
    if-eqz v2, :cond_0

    iget-boolean v3, v2, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->mInvalid:Z

    if-nez v3, :cond_0

    .line 91
    iput-boolean v1, v2, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->mInvalid:Z

    .line 92
    invoke-static {p1, v2, v0}, Lcom/facebook/rti/push/service/RegistrationState;->saveCacheEntry(Ljava/lang/String;Lcom/facebook/rti/push/service/RegistrationCacheEntry;Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;)Z

    .line 94
    :cond_0
    return-void

    .line 87
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setAuthFailedRegisterTime()V
    .locals 4

    .prologue
    .line 274
    invoke-direct {p0}, Lcom/facebook/rti/push/service/RegistrationState;->getFbnsStatePreferences()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->edit()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v0

    const-string v1, "auto_reg_retry"

    iget-object v2, p0, Lcom/facebook/rti/push/service/RegistrationState;->mClock:Lcom/facebook/rti/common/time/Clock;

    invoke-interface {v2}, Lcom/facebook/rti/common/time/Clock;->now()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->putLong(Ljava/lang/String;J)Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences$Editor;->commit()V

    .line 275
    return-void
.end method

.method public shouldAutoRegisterOnAuthFailed()Z
    .locals 4

    .prologue
    .line 265
    invoke-direct {p0}, Lcom/facebook/rti/push/service/RegistrationState;->getFbnsStatePreferences()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    move-result-object v0

    const-string v1, "auto_reg_retry"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    .line 266
    iget-object v2, p0, Lcom/facebook/rti/push/service/RegistrationState;->mClock:Lcom/facebook/rti/common/time/Clock;

    invoke-interface {v2}, Lcom/facebook/rti/common/time/Clock;->now()J

    move-result-wide v2

    sub-long v0, v2, v0

    const-wide/32 v2, 0x5265c00

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public updateTokenCache(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nonnull;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 67
    const-string v0, "RegistrationState"

    const-string/jumbo v3, "updateTokenCache %s %s"

    invoke-static {v0, v3, p1, p2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 68
    invoke-static {p1}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    move v0, v1

    :goto_0
    invoke-static {v0}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkArgument(Z)V

    .line 69
    invoke-static {p2}, Lcom/facebook/rti/common/util/StringUtil;->isEmptyOrNull(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    :goto_1
    invoke-static {v1}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkArgument(Z)V

    .line 70
    invoke-virtual {p0}, Lcom/facebook/rti/push/service/RegistrationState;->clearAuthFailedRegisterTime()V

    .line 72
    invoke-direct {p0}, Lcom/facebook/rti/push/service/RegistrationState;->getRegStatePreferences()Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;

    move-result-object v0

    .line 73
    invoke-direct {p0, p1, v0}, Lcom/facebook/rti/push/service/RegistrationState;->getCacheEntry(Ljava/lang/String;Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;)Lcom/facebook/rti/push/service/RegistrationCacheEntry;

    move-result-object v1

    .line 74
    if-nez v1, :cond_2

    .line 75
    const-string v0, "RegistrationState"

    const-string v1, "Missing entry"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    :goto_2
    return v2

    :cond_0
    move v0, v2

    .line 68
    goto :goto_0

    :cond_1
    move v1, v2

    .line 69
    goto :goto_1

    .line 79
    :cond_2
    iput-object p2, v1, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->mToken:Ljava/lang/String;

    .line 80
    iget-object v2, p0, Lcom/facebook/rti/push/service/RegistrationState;->mClock:Lcom/facebook/rti/common/time/Clock;

    invoke-interface {v2}, Lcom/facebook/rti/common/time/Clock;->now()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    iput-object v2, v1, Lcom/facebook/rti/push/service/RegistrationCacheEntry;->mTime:Ljava/lang/Long;

    .line 81
    invoke-static {p1, v1, v0}, Lcom/facebook/rti/push/service/RegistrationState;->saveCacheEntry(Ljava/lang/String;Lcom/facebook/rti/push/service/RegistrationCacheEntry;Lcom/facebook/rti/common/sharedprefs/IRtiSharedPreferences;)Z

    move-result v2

    goto :goto_2
.end method
