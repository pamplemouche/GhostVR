.class public Lcom/oculus/logging/analytics2/OculusEventAnalytics2Impl;
.super Ljava/lang/Object;
.source "OculusEventAnalytics2Impl.java"

# interfaces
.implements Lcom/oculus/logging/OculusLoggingEvent;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field final mEventBuilder:Lcom/facebook/analytics2/logger/EventBuilder;

.field private final mEventName:Ljava/lang/String;

.field private final mIsSampled:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 26
    const-class v0, Lcom/oculus/logging/analytics2/OculusEventAnalytics2Impl;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/logging/analytics2/OculusEventAnalytics2Impl;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lcom/facebook/analytics2/logger/EventBuilder;)V
    .locals 1

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    iput-object p1, p0, Lcom/oculus/logging/analytics2/OculusEventAnalytics2Impl;->mEventName:Ljava/lang/String;

    .line 34
    iput-object p2, p0, Lcom/oculus/logging/analytics2/OculusEventAnalytics2Impl;->mEventBuilder:Lcom/facebook/analytics2/logger/EventBuilder;

    .line 39
    iget-object v0, p0, Lcom/oculus/logging/analytics2/OculusEventAnalytics2Impl;->mEventBuilder:Lcom/facebook/analytics2/logger/EventBuilder;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventBuilder;->isSampled()Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/logging/analytics2/OculusEventAnalytics2Impl;->mIsSampled:Z

    .line 40
    return-void
.end method


# virtual methods
.method public addBaseExtraForInternalUse(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/logging/OculusLoggingEvent;
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/oculus/logging/analytics2/OculusEventAnalytics2Impl;->mEventBuilder:Lcom/facebook/analytics2/logger/EventBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/analytics2/logger/EventBuilder;->addBaseParameterForInternalUseOnly(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics2/logger/EventBuilder;

    .line 127
    return-object p0
.end method

.method public addExtra(Ljava/lang/String;D)Lcom/oculus/logging/OculusLoggingEvent;
    .locals 2

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oculus/logging/analytics2/OculusEventAnalytics2Impl;->mEventBuilder:Lcom/facebook/analytics2/logger/EventBuilder;

    invoke-static {p2, p3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/analytics2/logger/EventBuilder;->addExtra(Ljava/lang/String;Ljava/lang/Number;)Lcom/facebook/analytics2/logger/EventBuilder;

    .line 104
    return-object p0
.end method

.method public addExtra(Ljava/lang/String;I)Lcom/oculus/logging/OculusLoggingEvent;
    .locals 2

    .prologue
    .line 97
    iget-object v0, p0, Lcom/oculus/logging/analytics2/OculusEventAnalytics2Impl;->mEventBuilder:Lcom/facebook/analytics2/logger/EventBuilder;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/analytics2/logger/EventBuilder;->addExtra(Ljava/lang/String;Ljava/lang/Number;)Lcom/facebook/analytics2/logger/EventBuilder;

    .line 98
    return-object p0
.end method

.method public addExtra(Ljava/lang/String;J)Lcom/oculus/logging/OculusLoggingEvent;
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/oculus/logging/analytics2/OculusEventAnalytics2Impl;->mEventBuilder:Lcom/facebook/analytics2/logger/EventBuilder;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/analytics2/logger/EventBuilder;->addExtra(Ljava/lang/String;Ljava/lang/Number;)Lcom/facebook/analytics2/logger/EventBuilder;

    .line 110
    return-object p0
.end method

.method public addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/logging/OculusLoggingEvent;
    .locals 1
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 91
    iget-object v0, p0, Lcom/oculus/logging/analytics2/OculusEventAnalytics2Impl;->mEventBuilder:Lcom/facebook/analytics2/logger/EventBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/analytics2/logger/EventBuilder;->addExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/analytics2/logger/EventBuilder;

    .line 92
    return-object p0
.end method

.method public addExtra(Ljava/lang/String;Lorg/json/JSONArray;)Lcom/oculus/logging/OculusLoggingEvent;
    .locals 2

    .prologue
    .line 121
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "JSONArray not supported, use getExtras() instead"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public addExtra(Ljava/lang/String;Z)Lcom/oculus/logging/OculusLoggingEvent;
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/oculus/logging/analytics2/OculusEventAnalytics2Impl;->mEventBuilder:Lcom/facebook/analytics2/logger/EventBuilder;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/facebook/analytics2/logger/EventBuilder;->addExtra(Ljava/lang/String;Ljava/lang/Boolean;)Lcom/facebook/analytics2/logger/EventBuilder;

    .line 116
    return-object p0
.end method

.method addJsonExtras(Lcom/fasterxml/jackson/databind/node/ObjectNode;)V
    .locals 1

    .prologue
    .line 76
    iget-object v0, p0, Lcom/oculus/logging/analytics2/OculusEventAnalytics2Impl;->mEventBuilder:Lcom/facebook/analytics2/logger/EventBuilder;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventBuilder;->getExtras()Lcom/facebook/crudolib/params/ParamsCollectionMap;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/common/paramsutil/JsonToParamsCollectionUtil;->copyFromJson(Lcom/fasterxml/jackson/databind/node/ObjectNode;Lcom/facebook/crudolib/params/ParamsCollectionMap;)V

    .line 77
    return-void
.end method

.method public getExtras()Lcom/facebook/crudolib/params/ParamsCollectionMap;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 173
    iget-object v0, p0, Lcom/oculus/logging/analytics2/OculusEventAnalytics2Impl;->mEventBuilder:Lcom/facebook/analytics2/logger/EventBuilder;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventBuilder;->getExtras()Lcom/facebook/crudolib/params/ParamsCollectionMap;

    move-result-object v0

    return-object v0
.end method

.method public isSampled()Z
    .locals 1

    .prologue
    .line 81
    iget-boolean v0, p0, Lcom/oculus/logging/analytics2/OculusEventAnalytics2Impl;->mIsSampled:Z

    return v0
.end method

.method public logAndRelease()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oculus/logging/analytics2/OculusEventAnalytics2Impl;->mEventBuilder:Lcom/facebook/analytics2/logger/EventBuilder;

    invoke-virtual {v0}, Lcom/facebook/analytics2/logger/EventBuilder;->logAndRelease()V

    .line 87
    return-void
.end method

.method parseJson(Lcom/oculus/errorreporting/ErrorReporter;Lcom/fasterxml/jackson/databind/ObjectMapper;Ljava/lang/String;)Lcom/fasterxml/jackson/databind/node/ObjectNode;
    .locals 5
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 49
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    if-eqz p2, :cond_1

    .line 60
    :try_start_1
    invoke-virtual {p2, p3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->readTree(Ljava/lang/String;)Lcom/fasterxml/jackson/databind/JsonNode;

    move-result-object v0

    .line 61
    invoke-virtual {v0}, Lcom/fasterxml/jackson/databind/JsonNode;->isObject()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 62
    check-cast v0, Lcom/fasterxml/jackson/databind/node/ObjectNode;
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    :goto_0
    return-object v0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    sget-object v2, Lcom/oculus/logging/analytics2/OculusEventAnalytics2Impl;->TAG:Ljava/lang/String;

    const-string v3, "JSONException"

    invoke-static {v2, v3, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 52
    const-string v2, "corrupted"

    const/4 v3, 0x1

    invoke-virtual {p0, v2, v3}, Lcom/oculus/logging/analytics2/OculusEventAnalytics2Impl;->addExtra(Ljava/lang/String;Z)Lcom/oculus/logging/OculusLoggingEvent;

    .line 53
    const-string v2, "failed_to_parse_telemetry_data"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lcom/oculus/logging/analytics2/OculusEventAnalytics2Impl;->mEventName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v0}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v1

    .line 54
    goto :goto_0

    .line 64
    :cond_0
    :try_start_2
    sget-object v0, Lcom/oculus/logging/analytics2/OculusEventAnalytics2Impl;->TAG:Ljava/lang/String;

    const-string v2, "Error adding json extras: json is not an object"

    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    move-object v0, v1

    goto :goto_0

    .line 67
    :cond_1
    sget-object v0, Lcom/oculus/logging/analytics2/OculusEventAnalytics2Impl;->TAG:Ljava/lang/String;

    const-string v2, "Error adding json extras: objectMapper is null"

    invoke-static {v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 69
    :catch_1
    move-exception v0

    .line 70
    sget-object v2, Lcom/oculus/logging/analytics2/OculusEventAnalytics2Impl;->TAG:Ljava/lang/String;

    const-string v3, "Error adding json extras:"

    invoke-static {v2, v3, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method

.method public setEventInDownloadedSamplingTag()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/oculus/logging/analytics2/OculusEventAnalytics2Impl;->mEventBuilder:Lcom/facebook/analytics2/logger/EventBuilder;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventTagManager;->tagIsEventInDownloadedSamplingConfig(Lcom/facebook/analytics2/logger/EventBuilder;)V

    .line 158
    return-void
.end method

.method public setHasDownloadedSamplingConfigTag()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Lcom/oculus/logging/analytics2/OculusEventAnalytics2Impl;->mEventBuilder:Lcom/facebook/analytics2/logger/EventBuilder;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventTagManager;->tagHasDownloadedSamplingConfig(Lcom/facebook/analytics2/logger/EventBuilder;)V

    .line 153
    return-void
.end method

.method public setNtTagForInternalUse()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/oculus/logging/analytics2/OculusEventAnalytics2Impl;->mEventBuilder:Lcom/facebook/analytics2/logger/EventBuilder;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventTagManager;->setNtTagForInternalUse(Lcom/facebook/analytics2/logger/EventBuilder;)V

    .line 143
    return-void
.end method

.method public setReactNativeTagForInternalUse()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/oculus/logging/analytics2/OculusEventAnalytics2Impl;->mEventBuilder:Lcom/facebook/analytics2/logger/EventBuilder;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventTagManager;->setReactNativeTagForInternalUse(Lcom/facebook/analytics2/logger/EventBuilder;)V

    .line 138
    return-void
.end method

.method public setTime(J)Lcom/oculus/logging/OculusLoggingEvent;
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/oculus/logging/analytics2/OculusEventAnalytics2Impl;->mEventBuilder:Lcom/facebook/analytics2/logger/EventBuilder;

    invoke-virtual {v0, p1, p2}, Lcom/facebook/analytics2/logger/EventBuilder;->overrideLoggedWallTimeMillis(J)Lcom/facebook/analytics2/logger/EventBuilder;

    .line 168
    return-object p0
.end method

.method public setUslTagForInternalUse()V
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/oculus/logging/analytics2/OculusEventAnalytics2Impl;->mEventBuilder:Lcom/facebook/analytics2/logger/EventBuilder;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventTagManager;->setUslTagForInternalUse(Lcom/facebook/analytics2/logger/EventBuilder;)V

    .line 133
    return-void
.end method

.method public setXplatTagForInternalUse()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Lcom/oculus/logging/analytics2/OculusEventAnalytics2Impl;->mEventBuilder:Lcom/facebook/analytics2/logger/EventBuilder;

    invoke-static {v0}, Lcom/facebook/analytics2/logger/EventTagManager;->setXplatTagForInternalUse(Lcom/facebook/analytics2/logger/EventBuilder;)V

    .line 148
    return-void
.end method
