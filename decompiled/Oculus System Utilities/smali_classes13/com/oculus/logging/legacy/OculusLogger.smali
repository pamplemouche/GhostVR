.class public Lcom/oculus/logging/legacy/OculusLogger;
.super Ljava/lang/Object;
.source "OculusLogger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/logging/legacy/OculusLogger$DefaultEventFactory;,
        Lcom/oculus/logging/legacy/OculusLogger$EventFactory;
    }
.end annotation


# static fields
.field private static final CORE_APPS:[Ljava/lang/String;

.field private static final TAG:Ljava/lang/String;

.field private static sAccessToken:Ljava/lang/String;

.field private static sCoreAppVersions:Ljava/lang/String;

.field private static sEventFactory:Lcom/oculus/logging/legacy/OculusLogger$EventFactory;

.field private static sIsInitialized:Z

.field private static sUnifiedTelemetryLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const-class v0, Lcom/oculus/logging/legacy/OculusLogger;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/logging/legacy/OculusLogger;->TAG:Ljava/lang/String;

    .line 48
    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.oculus.browser"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.oculus.govrnux"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "com.oculus.home"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "com.oculus.horizon"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "com.oculus.mediaplayer"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "com.oculus.systemactivities"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "com.oculus.systemdriver"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "com.oculus.systemutilities"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "com.oculus.vrshell"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "com.oculus.vrshell.home"

    aput-object v2, v0, v1

    sput-object v0, Lcom/oculus/logging/legacy/OculusLogger;->CORE_APPS:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static flushNow()V
    .locals 2

    .prologue
    .line 323
    sget-object v0, Lcom/oculus/logging/legacy/OculusLogger;->TAG:Ljava/lang/String;

    const-string v1, "AnalyticsLogger.flush()"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    invoke-static {}, Llibraries/marauder/analytics/Analytics;->getLogger()Llibraries/marauder/analytics/AnalyticsLogger;

    move-result-object v0

    invoke-interface {v0}, Llibraries/marauder/analytics/AnalyticsLogger;->flush()V

    .line 325
    return-void
.end method

.method public static getCoreAppVersionJson()Ljava/lang/String;
    .locals 1

    .prologue
    .line 131
    sget-object v0, Lcom/oculus/logging/legacy/OculusLogger;->sCoreAppVersions:Ljava/lang/String;

    return-object v0
.end method

.method private static getEventFactory()Lcom/oculus/logging/legacy/OculusLogger$EventFactory;
    .locals 2

    .prologue
    .line 124
    sget-object v0, Lcom/oculus/logging/legacy/OculusLogger;->sEventFactory:Lcom/oculus/logging/legacy/OculusLogger$EventFactory;

    if-nez v0, :cond_0

    .line 125
    new-instance v0, Lcom/oculus/logging/legacy/OculusLogger$DefaultEventFactory;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/oculus/logging/legacy/OculusLogger$DefaultEventFactory;-><init>(Lcom/oculus/logging/legacy/OculusLogger$1;)V

    sput-object v0, Lcom/oculus/logging/legacy/OculusLogger;->sEventFactory:Lcom/oculus/logging/legacy/OculusLogger$EventFactory;

    .line 127
    :cond_0
    sget-object v0, Lcom/oculus/logging/legacy/OculusLogger;->sEventFactory:Lcom/oculus/logging/legacy/OculusLogger$EventFactory;

    return-object v0
.end method

.method public static init(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/logging/legacy/InterceptingAnalyticsLogger$LogEventInterceptor;)V
    .locals 17
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "deviceId"    # Ljava/lang/String;
    .param p2, "url"    # Ljava/lang/String;
    .param p3, "appId"    # Ljava/lang/String;
    .param p4, "appSecret"    # Ljava/lang/String;
    .param p5, "versionName"    # Ljava/lang/String;
    .param p6, "versionCode"    # Ljava/lang/String;
    .param p7, "interceptor"    # Lcom/oculus/logging/legacy/InterceptingAnalyticsLogger$LogEventInterceptor;

    .prologue
    .line 77
    sget-boolean v5, Lcom/oculus/logging/legacy/OculusLogger;->sIsInitialized:Z

    if-nez v5, :cond_0

    .line 78
    const/4 v5, 0x1

    sput-boolean v5, Lcom/oculus/logging/legacy/OculusLogger;->sIsInitialized:Z

    .line 83
    invoke-static {}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->getInstance()Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;

    move-result-object v5

    sput-object v5, Lcom/oculus/logging/legacy/OculusLogger;->sUnifiedTelemetryLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;

    .line 84
    sget-object v5, Lcom/oculus/logging/legacy/OculusLogger;->sUnifiedTelemetryLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;

    invoke-virtual/range {p0 .. p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->init(Landroid/content/Context;)V

    .line 86
    new-instance v4, Lcom/oculus/logging/legacy/InterceptingAnalyticsLogger;

    new-instance v10, Llibraries/marauder/analytics/AnalyticsUploader;

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    move-object/from16 v3, p4

    invoke-direct {v10, v0, v1, v2, v3}, Llibraries/marauder/analytics/AnalyticsUploader;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    move-object/from16 v9, p3

    move-object/from16 v13, p7

    invoke-direct/range {v4 .. v13}, Lcom/oculus/logging/legacy/InterceptingAnalyticsLogger;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Llibraries/marauder/analytics/AnalyticsUploader;Ljava/lang/String;Ljava/lang/String;Lcom/oculus/logging/legacy/InterceptingAnalyticsLogger$LogEventInterceptor;)V

    .line 97
    .local v4, "logger":Lcom/oculus/logging/legacy/InterceptingAnalyticsLogger;
    invoke-static {v4}, Llibraries/marauder/analytics/Analytics;->setLogger(Llibraries/marauder/analytics/AnalyticsLogger;)V

    .line 100
    :try_start_0
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 101
    .local v14, "coreAppVersions":Lorg/json/JSONObject;
    sget-object v6, Lcom/oculus/logging/legacy/OculusLogger;->CORE_APPS:[Ljava/lang/String;

    array-length v7, v6

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v7, :cond_1

    aget-object v16, v6, v5

    .line 102
    .local v16, "packageName":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v16

    invoke-static {v0, v1}, Lcom/oculus/panellib/AppDetails;->get(Landroid/content/Context;Ljava/lang/String;)Lcom/oculus/panellib/AppDetails;

    move-result-object v8

    iget v8, v8, Lcom/oculus/panellib/AppDetails;->versionCode:I

    move-object/from16 v0, v16

    invoke-virtual {v14, v0, v8}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 80
    .end local v4    # "logger":Lcom/oculus/logging/legacy/InterceptingAnalyticsLogger;
    .end local v14    # "coreAppVersions":Lorg/json/JSONObject;
    .end local v16    # "packageName":Ljava/lang/String;
    :cond_0
    new-instance v5, Ljava/lang/Error;

    const-string v6, "Error OculusLogger already initialized!"

    invoke-direct {v5, v6}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v5

    .line 104
    .restart local v4    # "logger":Lcom/oculus/logging/legacy/InterceptingAnalyticsLogger;
    .restart local v14    # "coreAppVersions":Lorg/json/JSONObject;
    :cond_1
    :try_start_1
    invoke-virtual {v14}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v5

    sput-object v5, Lcom/oculus/logging/legacy/OculusLogger;->sCoreAppVersions:Ljava/lang/String;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 109
    .end local v14    # "coreAppVersions":Lorg/json/JSONObject;
    :goto_1
    return-void

    .line 105
    :catch_0
    move-exception v15

    .line 106
    .local v15, "e":Lorg/json/JSONException;
    sget-object v5, Lcom/oculus/logging/legacy/OculusLogger;->TAG:Ljava/lang/String;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Json error: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v15}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const-string v5, "invalid"

    sput-object v5, Lcom/oculus/logging/legacy/OculusLogger;->sCoreAppVersions:Ljava/lang/String;

    goto :goto_1
.end method

.method private static logEvent(Ljava/lang/String;Ljava/util/HashMap;Z)V
    .locals 4
    .param p0, "eventName"    # Ljava/lang/String;
    .param p2, "includeAppVersions"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 200
    .local p1, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    sget-object v3, Lcom/oculus/logging/legacy/OculusLogger;->sUnifiedTelemetryLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;

    invoke-virtual {v3}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->shouldDuplicateLogging()Z

    move-result v1

    .line 203
    .local v1, "shouldDuplicateLogging":Z
    sget-object v3, Lcom/oculus/logging/legacy/OculusLogger;->sUnifiedTelemetryLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;

    .line 204
    invoke-virtual {v3}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->shouldUseUnifiedTelemetryService()Z

    move-result v2

    .line 207
    .local v2, "shouldOnlyUseUnifiedTelemetry":Z
    invoke-static {p1}, Lcom/oculus/logging/legacy/OculusLogger;->shouldEventBypassDuplicateLogging(Ljava/util/HashMap;)Z

    move-result v0

    .line 209
    .local v0, "eventNeedsUnifiedTelemetry":Z
    if-nez v1, :cond_0

    if-nez v2, :cond_0

    if-eqz v0, :cond_1

    .line 210
    :cond_0
    invoke-static {p0, p1}, Lcom/oculus/logging/legacy/OculusLogger;->logUnifiedTelemetryEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 214
    :cond_1
    if-nez v2, :cond_2

    .line 215
    invoke-static {p0, p1, p2}, Lcom/oculus/logging/legacy/OculusLogger;->logLegacyEvent(Ljava/lang/String;Ljava/util/HashMap;Z)V

    .line 217
    :cond_2
    return-void
.end method

.method private static logLegacyEvent(Ljava/lang/String;Ljava/util/HashMap;Z)V
    .locals 9
    .param p0, "eventName"    # Ljava/lang/String;
    .param p2, "includeAppVersions"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 238
    .local p1, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-static {}, Lcom/oculus/logging/legacy/OculusLogger;->getEventFactory()Lcom/oculus/logging/legacy/OculusLogger$EventFactory;

    move-result-object v4

    invoke-interface {v4, p0}, Lcom/oculus/logging/legacy/OculusLogger$EventFactory;->newEvent(Ljava/lang/String;)Llibraries/marauder/analytics/IAnalyticsEvent;

    move-result-object v0

    .line 239
    .local v0, "event":Llibraries/marauder/analytics/IAnalyticsEvent;
    if-eqz p1, :cond_2

    .line 240
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 241
    .local v1, "it":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 242
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 243
    .local v2, "pair":Ljava/util/Map$Entry;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 244
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 245
    .local v3, "value":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 247
    sget-object v4, Lcom/oculus/logging/legacy/OculusLogger;->sAccessToken:Ljava/lang/String;

    if-eqz v4, :cond_1

    sget-object v4, Lcom/oculus/logging/legacy/OculusLogger;->sAccessToken:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 249
    sget-object v4, Lcom/oculus/logging/legacy/OculusLogger;->sAccessToken:Ljava/lang/String;

    const-string v5, "<edited>"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 250
    sget-object v4, Lcom/oculus/logging/legacy/OculusLogger;->TAG:Ljava/lang/String;

    const-string v5, "Access token stripped"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    invoke-interface {v2, v3}, Ljava/util/Map$Entry;->setValue(Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    :cond_1
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v0, v4, v3}, Llibraries/marauder/analytics/IAnalyticsEvent;->addExtra(Ljava/lang/String;Ljava/lang/String;)Llibraries/marauder/analytics/IAnalyticsEvent;

    goto :goto_0

    .line 259
    .end local v1    # "it":Ljava/util/Iterator;
    .end local v2    # "pair":Ljava/util/Map$Entry;
    .end local v3    # "value":Ljava/lang/String;
    :cond_2
    if-eqz p2, :cond_3

    sget-object v4, Lcom/oculus/logging/legacy/OculusLogger;->sCoreAppVersions:Ljava/lang/String;

    if-eqz v4, :cond_3

    .line 260
    const-string v4, "core_app_versions"

    sget-object v5, Lcom/oculus/logging/legacy/OculusLogger;->sCoreAppVersions:Ljava/lang/String;

    invoke-interface {v0, v4, v5}, Llibraries/marauder/analytics/IAnalyticsEvent;->addExtra(Ljava/lang/String;Ljava/lang/String;)Llibraries/marauder/analytics/IAnalyticsEvent;

    .line 262
    :cond_3
    invoke-interface {v0}, Llibraries/marauder/analytics/IAnalyticsEvent;->log()V

    .line 264
    sget-object v4, Lcom/oculus/logging/legacy/OculusLogger;->TAG:Ljava/lang/String;

    const-string v5, "logLegacyEvent(%s, {%s}, %s)"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    const/4 v7, 0x2

    .line 266
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 264
    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    return-void
.end method

.method private static logUnifiedTelemetryEvent(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 5
    .param p0, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 222
    .local p1, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    new-instance v1, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    invoke-direct {v1, p0}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;-><init>(Ljava/lang/String;)V

    .line 223
    .local v1, "event":Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;
    if-eqz p1, :cond_1

    .line 224
    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 225
    .local v0, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 226
    .local v2, "value":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 227
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v1, v3, v2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    goto :goto_0

    .line 231
    .end local v0    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;"
    .end local v2    # "value":Ljava/lang/String;
    :cond_1
    sget-object v3, Lcom/oculus/logging/legacy/OculusLogger;->sUnifiedTelemetryLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;

    const/4 v4, 0x0

    invoke-virtual {v3, v1, v4}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->reportEvent(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;Z)V

    .line 232
    return-void
.end method

.method public static reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 138
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 139
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    invoke-static {p0, v0}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 141
    return-void
.end method

.method public static reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "key1"    # Ljava/lang/String;
    .param p2, "value1"    # Ljava/lang/String;
    .param p3, "key2"    # Ljava/lang/String;
    .param p4, "value2"    # Ljava/lang/String;

    .prologue
    .line 149
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 150
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    invoke-virtual {v0, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    invoke-static {p0, v0}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 153
    return-void
.end method

.method public static reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "eventName"    # Ljava/lang/String;
    .param p1, "key1"    # Ljava/lang/String;
    .param p2, "value1"    # Ljava/lang/String;
    .param p3, "key2"    # Ljava/lang/String;
    .param p4, "value2"    # Ljava/lang/String;
    .param p5, "key3"    # Ljava/lang/String;
    .param p6, "value3"    # Ljava/lang/String;

    .prologue
    .line 163
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 164
    .local v0, "args":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    invoke-virtual {v0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 165
    invoke-virtual {v0, p3, p4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 166
    invoke-virtual {v0, p5, p6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 167
    invoke-static {p0, v0}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/util/HashMap;)V

    .line 168
    return-void
.end method

.method public static reportEvent(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .param p0, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 179
    .local p1, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/oculus/logging/legacy/OculusLogger;->logEvent(Ljava/lang/String;Ljava/util/HashMap;Z)V

    .line 180
    return-void
.end method

.method private static reportLegacyExposure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p0, "experimentName"    # Ljava/lang/String;
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "unitId"    # Ljava/lang/String;

    .prologue
    .line 318
    new-instance v0, Llibraries/marauder/analytics/QEExposureLogEvent;

    invoke-direct {v0, p0, p1, p2}, Llibraries/marauder/analytics/QEExposureLogEvent;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Llibraries/marauder/analytics/QEExposureLogEvent;->log()V

    .line 319
    return-void
.end method

.method public static reportQuickExperimentExposure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .param p0, "experimentName"    # Ljava/lang/String;
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "unitId"    # Ljava/lang/String;

    .prologue
    .line 279
    sget-object v2, Lcom/oculus/logging/legacy/OculusLogger;->TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "reportQuickExperimentExposure("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    sget-object v2, Lcom/oculus/logging/legacy/OculusLogger;->sUnifiedTelemetryLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;

    invoke-virtual {v2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->shouldDuplicateLogging()Z

    move-result v0

    .line 288
    .local v0, "shouldDuplicateLogging":Z
    sget-object v2, Lcom/oculus/logging/legacy/OculusLogger;->sUnifiedTelemetryLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;

    .line 289
    invoke-virtual {v2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->shouldUseUnifiedTelemetryService()Z

    move-result v1

    .line 290
    .local v1, "shouldOnlyUseUnifiedTelemetry":Z
    if-nez v0, :cond_0

    if-eqz v1, :cond_1

    .line 291
    :cond_0
    invoke-static {p0, p1, p2}, Lcom/oculus/logging/legacy/OculusLogger;->reportUnifiedTelemetryExposure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 293
    :cond_1
    if-nez v1, :cond_2

    .line 294
    invoke-static {p0, p1, p2}, Lcom/oculus/logging/legacy/OculusLogger;->reportLegacyExposure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    :cond_2
    return-void
.end method

.method private static reportUnifiedTelemetryExposure(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p0, "experimentName"    # Ljava/lang/String;
    .param p1, "groupName"    # Ljava/lang/String;
    .param p2, "unitId"    # Ljava/lang/String;

    .prologue
    .line 308
    new-instance v0, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    const-string v1, "quick_experiment_event"

    invoke-direct {v0, v1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;-><init>(Ljava/lang/String;)V

    .line 309
    .local v0, "analyticsEvent":Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;
    const-string v1, "exprID"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "__qe__"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setInternalUseParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    move-result-object v1

    const-string v2, "unit_id"

    .line 310
    invoke-virtual {v1, v2, p2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setInternalUseParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    move-result-object v1

    const-string v2, "oculus_sessionless"

    const-string v3, "1"

    .line 311
    invoke-virtual {v1, v2, v3}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setInternalUseParam(Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    move-result-object v1

    const-string v2, "group"

    .line 312
    invoke-virtual {v1, v2, p1}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    move-result-object v1

    const-string v2, "event"

    const-string v3, "EXPOSURE"

    .line 313
    invoke-virtual {v1, v2, v3}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;->setExtra(Ljava/lang/String;Ljava/lang/Object;)Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;

    .line 314
    sget-object v1, Lcom/oculus/logging/legacy/OculusLogger;->sUnifiedTelemetryLogger:Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/UnifiedTelemetryLogger;->logExposure(Lcom/oculus/unifiedtelemetry/unifiedtelemetrysupportlib/AnalyticsEvent;Z)V

    .line 315
    return-void
.end method

.method public static reportVersionedEvent(Ljava/lang/String;Ljava/util/HashMap;)V
    .locals 1
    .param p0, "eventName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 191
    .local p1, "values":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    const/4 v0, 0x1

    invoke-static {p0, p1, v0}, Lcom/oculus/logging/legacy/OculusLogger;->logEvent(Ljava/lang/String;Ljava/util/HashMap;Z)V

    .line 192
    return-void
.end method

.method public static setAccessToken(Ljava/lang/String;)V
    .locals 1
    .param p0, "accessToken"    # Ljava/lang/String;

    .prologue
    .line 112
    invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 115
    sput-object p0, Lcom/oculus/logging/legacy/OculusLogger;->sAccessToken:Ljava/lang/String;

    .line 117
    :cond_0
    return-void
.end method

.method static setEventFactory(Lcom/oculus/logging/legacy/OculusLogger$EventFactory;)V
    .locals 0
    .param p0, "factory"    # Lcom/oculus/logging/legacy/OculusLogger$EventFactory;

    .prologue
    .line 120
    sput-object p0, Lcom/oculus/logging/legacy/OculusLogger;->sEventFactory:Lcom/oculus/logging/legacy/OculusLogger$EventFactory;

    .line 121
    return-void
.end method

.method private static shouldEventBypassDuplicateLogging(Ljava/util/HashMap;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 301
    .local p0, "extras":Ljava/util/HashMap;, "Ljava/util/HashMap<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p0, :cond_0

    const-string v0, "__bypass_duplicate_logging_check__"

    invoke-virtual {p0, v0}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static shutdown()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 328
    const/4 v0, 0x0

    sput-boolean v0, Lcom/oculus/logging/legacy/OculusLogger;->sIsInitialized:Z

    .line 329
    sput-object v1, Lcom/oculus/logging/legacy/OculusLogger;->sEventFactory:Lcom/oculus/logging/legacy/OculusLogger$EventFactory;

    .line 330
    invoke-static {v1}, Llibraries/marauder/analytics/Analytics;->setLogger(Llibraries/marauder/analytics/AnalyticsLogger;)V

    .line 331
    return-void
.end method
