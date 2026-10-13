.class public Llibraries/marauder/analytics/QEExposureLogEvent;
.super Llibraries/marauder/analytics/AnalyticsEventBase;
.source "QEExposureLogEvent.java"


# static fields
.field private static RESULT_VAL:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 8
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    sput-object v0, Llibraries/marauder/analytics/QEExposureLogEvent;->RESULT_VAL:Lorg/json/JSONObject;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 8
    .param p1, "experimentName"    # Ljava/lang/String;
    .param p2, "groupName"    # Ljava/lang/String;
    .param p3, "unitId"    # Ljava/lang/String;

    .prologue
    .line 10
    invoke-direct {p0}, Llibraries/marauder/analytics/AnalyticsEventBase;-><init>()V

    .line 12
    :try_start_0
    sget-object v3, Llibraries/marauder/analytics/QEExposureLogEvent;->RESULT_VAL:Lorg/json/JSONObject;

    const-string v4, "event"

    const-string v5, "exposure"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 17
    :goto_0
    :try_start_1
    iget-object v3, p0, Llibraries/marauder/analytics/QEExposureLogEvent;->mPayload:Lorg/json/JSONObject;

    const-string v4, "name"

    const-string v5, "quick_experiment_event"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    iget-object v3, p0, Llibraries/marauder/analytics/QEExposureLogEvent;->mPayload:Lorg/json/JSONObject;

    const-string v4, "exprID"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "__qe__"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 19
    iget-object v3, p0, Llibraries/marauder/analytics/QEExposureLogEvent;->mPayload:Lorg/json/JSONObject;

    const-string v4, "unit_id"

    invoke-virtual {v3, v4, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 20
    iget-object v3, p0, Llibraries/marauder/analytics/QEExposureLogEvent;->mPayload:Lorg/json/JSONObject;

    const-string v4, "log_type"

    const-string v5, "experiment"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 21
    iget-object v3, p0, Llibraries/marauder/analytics/QEExposureLogEvent;->mPayload:Lorg/json/JSONObject;

    const-string v4, "oculus_sessionless"

    const-string v5, "1"

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 22
    iget-object v3, p0, Llibraries/marauder/analytics/QEExposureLogEvent;->mPayload:Lorg/json/JSONObject;

    const-string v4, "time"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Llibraries/marauder/analytics/AnalyticsUtil;->formatServerTime(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 23
    iget-object v3, p0, Llibraries/marauder/analytics/QEExposureLogEvent;->mPayload:Lorg/json/JSONObject;

    const-string v4, "result"

    sget-object v5, Llibraries/marauder/analytics/QEExposureLogEvent;->RESULT_VAL:Lorg/json/JSONObject;

    invoke-virtual {v3, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 24
    const-string v3, "os_type"

    const-string v4, "Oculus"

    invoke-virtual {p0, v3, v4}, Llibraries/marauder/analytics/QEExposureLogEvent;->addExtra(Ljava/lang/String;Ljava/lang/String;)Llibraries/marauder/analytics/AnalyticsEventBase;

    .line 25
    const-string v2, "group"

    .line 26
    .local v2, "str":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 27
    const-string p2, "null"

    .line 29
    :cond_0
    invoke-virtual {p0, v2, p2}, Llibraries/marauder/analytics/QEExposureLogEvent;->addExtra(Ljava/lang/String;Ljava/lang/String;)Llibraries/marauder/analytics/AnalyticsEventBase;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_1

    .line 33
    .end local v2    # "str":Ljava/lang/String;
    :goto_1
    return-void

    .line 13
    :catch_0
    move-exception v0

    .line 14
    .local v0, "e":Lorg/json/JSONException;
    const/4 v3, 0x0

    sput-object v3, Llibraries/marauder/analytics/QEExposureLogEvent;->RESULT_VAL:Lorg/json/JSONObject;

    goto :goto_0

    .line 30
    .end local v0    # "e":Lorg/json/JSONException;
    :catch_1
    move-exception v1

    .line 31
    .local v1, "jsonException":Ljava/lang/Throwable;
    sget-object v3, Llibraries/marauder/analytics/QEExposureLogEvent;->TAG:Ljava/lang/String;

    const-string v4, ""

    invoke-static {v3, v4, v1}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 37
    :try_start_0
    iget-object v1, p0, Llibraries/marauder/analytics/QEExposureLogEvent;->mPayload:Lorg/json/JSONObject;

    const-string v2, "extra"

    iget-object v3, p0, Llibraries/marauder/analytics/QEExposureLogEvent;->mExtras:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 38
    iget-object v1, p0, Llibraries/marauder/analytics/QEExposureLogEvent;->mPayload:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 41
    :goto_0
    return-object v1

    .line 39
    :catch_0
    move-exception v0

    .line 40
    .local v0, "jsonException":Ljava/lang/Throwable;
    sget-object v1, Llibraries/marauder/analytics/QEExposureLogEvent;->TAG:Ljava/lang/String;

    const-string v2, "FATAL"

    invoke-static {v1, v2, v0}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 41
    const-string v1, "{}"

    goto :goto_0
.end method
