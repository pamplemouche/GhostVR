.class public Llibraries/marauder/analytics/FlatAnalyticsEvent;
.super Llibraries/marauder/analytics/AnalyticsEventBase;
.source "FlatAnalyticsEvent.java"


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 6
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 15
    invoke-direct {p0}, Llibraries/marauder/analytics/AnalyticsEventBase;-><init>()V

    .line 17
    :try_start_0
    iget-object v1, p0, Llibraries/marauder/analytics/FlatAnalyticsEvent;->mPayload:Lorg/json/JSONObject;

    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    iget-object v1, p0, Llibraries/marauder/analytics/FlatAnalyticsEvent;->mPayload:Lorg/json/JSONObject;

    const-string v2, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v4, v5}, Llibraries/marauder/analytics/AnalyticsUtil;->formatServerTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 23
    :goto_0
    return-void

    .line 19
    :catch_0
    move-exception v0

    .line 21
    .local v0, "jsonException":Lorg/json/JSONException;
    sget-object v1, Llibraries/marauder/analytics/FlatAnalyticsEvent;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "jsonContent"    # Ljava/lang/String;

    .prologue
    .line 26
    invoke-direct {p0, p1}, Llibraries/marauder/analytics/FlatAnalyticsEvent;-><init>(Ljava/lang/String;)V

    .line 28
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object v1, p0, Llibraries/marauder/analytics/FlatAnalyticsEvent;->mExtras:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 32
    :goto_0
    return-void

    .line 29
    :catch_0
    move-exception v0

    .line 30
    .local v0, "jsonException":Lorg/json/JSONException;
    sget-object v1, Llibraries/marauder/analytics/FlatAnalyticsEvent;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public addPayload(Ljava/lang/String;Ljava/lang/String;)Llibraries/marauder/analytics/FlatAnalyticsEvent;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "payload"    # Ljava/lang/String;

    .prologue
    .line 36
    :try_start_0
    iget-object v1, p0, Llibraries/marauder/analytics/FlatAnalyticsEvent;->mPayload:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :goto_0
    return-object p0

    .line 37
    :catch_0
    move-exception v0

    .line 38
    .local v0, "jsonException":Lorg/json/JSONException;
    sget-object v1, Llibraries/marauder/analytics/FlatAnalyticsEvent;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 46
    :try_start_0
    iget-object v1, p0, Llibraries/marauder/analytics/FlatAnalyticsEvent;->mPayload:Lorg/json/JSONObject;

    const-string v2, "extra"

    iget-object v3, p0, Llibraries/marauder/analytics/FlatAnalyticsEvent;->mExtras:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 47
    iget-object v1, p0, Llibraries/marauder/analytics/FlatAnalyticsEvent;->mPayload:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 51
    :goto_0
    return-object v1

    .line 48
    :catch_0
    move-exception v0

    .line 50
    .local v0, "jsonException":Lorg/json/JSONException;
    sget-object v1, Llibraries/marauder/analytics/FlatAnalyticsEvent;->TAG:Ljava/lang/String;

    const-string v2, "FATAL"

    invoke-static {v1, v2, v0}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 51
    const-string v1, "{}"

    goto :goto_0
.end method
