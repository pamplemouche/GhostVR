.class public Llibraries/marauder/analytics/AnalyticsEventBase;
.super Ljava/lang/Object;
.source "AnalyticsEventBase.java"

# interfaces
.implements Llibraries/marauder/analytics/IAnalyticsEvent;


# static fields
.field protected static final EXTRAS_KEY:Ljava/lang/String; = "extra"

.field protected static final NAME_KEY:Ljava/lang/String; = "name"

.field protected static final TAG:Ljava/lang/String;

.field protected static final TIME_KEY:Ljava/lang/String; = "time"


# instance fields
.field protected mExtras:Lorg/json/JSONObject;

.field protected final mPayload:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 11
    const-class v0, Llibraries/marauder/analytics/FlatAnalyticsEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Llibraries/marauder/analytics/AnalyticsEventBase;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Llibraries/marauder/analytics/AnalyticsEventBase;->mPayload:Lorg/json/JSONObject;

    .line 16
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    iput-object v0, p0, Llibraries/marauder/analytics/AnalyticsEventBase;->mExtras:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public addExtra(Ljava/lang/String;D)Llibraries/marauder/analytics/AnalyticsEventBase;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # D

    .prologue
    .line 45
    :try_start_0
    iget-object v1, p0, Llibraries/marauder/analytics/AnalyticsEventBase;->mExtras:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 49
    :goto_0
    return-object p0

    .line 46
    :catch_0
    move-exception v0

    .line 47
    .local v0, "jsonException":Lorg/json/JSONException;
    sget-object v1, Llibraries/marauder/analytics/AnalyticsEventBase;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public addExtra(Ljava/lang/String;I)Llibraries/marauder/analytics/AnalyticsEventBase;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 74
    :try_start_0
    iget-object v1, p0, Llibraries/marauder/analytics/AnalyticsEventBase;->mExtras:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 78
    :goto_0
    return-object p0

    .line 75
    :catch_0
    move-exception v0

    .line 76
    .local v0, "jsonException":Lorg/json/JSONException;
    sget-object v1, Llibraries/marauder/analytics/AnalyticsEventBase;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public addExtra(Ljava/lang/String;J)Llibraries/marauder/analytics/AnalyticsEventBase;
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 54
    :try_start_0
    iget-object v1, p0, Llibraries/marauder/analytics/AnalyticsEventBase;->mExtras:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2, p3}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 58
    :goto_0
    return-object p0

    .line 55
    :catch_0
    move-exception v0

    .line 56
    .local v0, "jsonException":Lorg/json/JSONException;
    sget-object v1, Llibraries/marauder/analytics/AnalyticsEventBase;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public addExtra(Ljava/lang/String;Ljava/lang/String;)Llibraries/marauder/analytics/AnalyticsEventBase;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 35
    :try_start_0
    iget-object v1, p0, Llibraries/marauder/analytics/AnalyticsEventBase;->mExtras:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 39
    :goto_0
    return-object p0

    .line 36
    :catch_0
    move-exception v0

    .line 37
    .local v0, "jsonException":Lorg/json/JSONException;
    sget-object v1, Llibraries/marauder/analytics/AnalyticsEventBase;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public addExtra(Ljava/lang/String;Z)Llibraries/marauder/analytics/AnalyticsEventBase;
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Z

    .prologue
    .line 64
    :try_start_0
    iget-object v1, p0, Llibraries/marauder/analytics/AnalyticsEventBase;->mExtras:Lorg/json/JSONObject;

    invoke-virtual {v1, p1, p2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 68
    :goto_0
    return-object p0

    .line 65
    :catch_0
    move-exception v0

    .line 66
    .local v0, "jsonException":Lorg/json/JSONException;
    sget-object v1, Llibraries/marauder/analytics/AnalyticsEventBase;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic addExtra(Ljava/lang/String;D)Llibraries/marauder/analytics/IAnalyticsEvent;
    .locals 2

    .prologue
    .line 9
    invoke-virtual {p0, p1, p2, p3}, Llibraries/marauder/analytics/AnalyticsEventBase;->addExtra(Ljava/lang/String;D)Llibraries/marauder/analytics/AnalyticsEventBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addExtra(Ljava/lang/String;I)Llibraries/marauder/analytics/IAnalyticsEvent;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1, p2}, Llibraries/marauder/analytics/AnalyticsEventBase;->addExtra(Ljava/lang/String;I)Llibraries/marauder/analytics/AnalyticsEventBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addExtra(Ljava/lang/String;J)Llibraries/marauder/analytics/IAnalyticsEvent;
    .locals 2

    .prologue
    .line 9
    invoke-virtual {p0, p1, p2, p3}, Llibraries/marauder/analytics/AnalyticsEventBase;->addExtra(Ljava/lang/String;J)Llibraries/marauder/analytics/AnalyticsEventBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addExtra(Ljava/lang/String;Ljava/lang/String;)Llibraries/marauder/analytics/IAnalyticsEvent;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1, p2}, Llibraries/marauder/analytics/AnalyticsEventBase;->addExtra(Ljava/lang/String;Ljava/lang/String;)Llibraries/marauder/analytics/AnalyticsEventBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic addExtra(Ljava/lang/String;Z)Llibraries/marauder/analytics/IAnalyticsEvent;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1, p2}, Llibraries/marauder/analytics/AnalyticsEventBase;->addExtra(Ljava/lang/String;Z)Llibraries/marauder/analytics/AnalyticsEventBase;

    move-result-object v0

    return-object v0
.end method

.method public log()V
    .locals 1

    .prologue
    .line 24
    invoke-static {}, Llibraries/marauder/analytics/Analytics;->getLogger()Llibraries/marauder/analytics/AnalyticsLogger;

    move-result-object v0

    invoke-interface {v0, p0}, Llibraries/marauder/analytics/AnalyticsLogger;->reportEvent(Llibraries/marauder/analytics/IAnalyticsEvent;)V

    .line 25
    return-void
.end method

.method public setTime(J)Llibraries/marauder/analytics/AnalyticsEventBase;
    .locals 5
    .param p1, "time"    # J

    .prologue
    .line 92
    :try_start_0
    iget-object v1, p0, Llibraries/marauder/analytics/AnalyticsEventBase;->mPayload:Lorg/json/JSONObject;

    const-string v2, "time"

    invoke-static {p1, p2}, Llibraries/marauder/analytics/AnalyticsUtil;->formatServerTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 96
    :goto_0
    return-object p0

    .line 93
    :catch_0
    move-exception v0

    .line 94
    .local v0, "jsonException":Lorg/json/JSONException;
    sget-object v1, Llibraries/marauder/analytics/AnalyticsEventBase;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public bridge synthetic setTime(J)Llibraries/marauder/analytics/IAnalyticsEvent;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1, p2}, Llibraries/marauder/analytics/AnalyticsEventBase;->setTime(J)Llibraries/marauder/analytics/AnalyticsEventBase;

    move-result-object v0

    return-object v0
.end method

.method public setUserId(Ljava/lang/String;)Llibraries/marauder/analytics/AnalyticsEventBase;
    .locals 1
    .param p1, "userId"    # Ljava/lang/String;

    .prologue
    .line 83
    const-string v0, "pk"

    invoke-virtual {p0, v0, p1}, Llibraries/marauder/analytics/AnalyticsEventBase;->addExtra(Ljava/lang/String;Ljava/lang/String;)Llibraries/marauder/analytics/AnalyticsEventBase;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic setUserId(Ljava/lang/String;)Llibraries/marauder/analytics/IAnalyticsEvent;
    .locals 1

    .prologue
    .line 9
    invoke-virtual {p0, p1}, Llibraries/marauder/analytics/AnalyticsEventBase;->setUserId(Ljava/lang/String;)Llibraries/marauder/analytics/AnalyticsEventBase;

    move-result-object v0

    return-object v0
.end method
