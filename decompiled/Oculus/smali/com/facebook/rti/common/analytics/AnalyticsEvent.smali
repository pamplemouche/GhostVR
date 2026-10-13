.class public Lcom/facebook/rti/common/analytics/AnalyticsEvent;
.super Ljava/lang/Object;
.source "AnalyticsEvent.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mExtras:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mModuleName:Ljava/lang/String;

.field private final mName:Ljava/lang/String;

.field private final mTime:J


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 15
    const-class v0, Lcom/facebook/rti/common/analytics/AnalyticsEvent;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/facebook/rti/common/analytics/AnalyticsEvent;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 22
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 20
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/rti/common/analytics/AnalyticsEvent;->mExtras:Ljava/util/Map;

    .line 23
    invoke-static {p1}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    invoke-static {p2}, Lcom/facebook/rti/common/guavalite/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/facebook/rti/common/analytics/AnalyticsEvent;->mTime:J

    .line 26
    iput-object p1, p0, Lcom/facebook/rti/common/analytics/AnalyticsEvent;->mName:Ljava/lang/String;

    .line 27
    iput-object p2, p0, Lcom/facebook/rti/common/analytics/AnalyticsEvent;->mModuleName:Ljava/lang/String;

    .line 28
    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/AnalyticsEvent;->mName:Ljava/lang/String;

    return-object v0
.end method

.method public putExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/rti/common/analytics/AnalyticsEvent;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/AnalyticsEvent;->mExtras:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 32
    return-object p0
.end method

.method public putExtras(Ljava/util/Map;)Lcom/facebook/rti/common/analytics/AnalyticsEvent;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "*>;)",
            "Lcom/facebook/rti/common/analytics/AnalyticsEvent;"
        }
    .end annotation

    .prologue
    .line 36
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 38
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v0, ""

    .line 37
    :goto_1
    invoke-virtual {p0, v2, v0}, Lcom/facebook/rti/common/analytics/AnalyticsEvent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/rti/common/analytics/AnalyticsEvent;

    goto :goto_0

    .line 38
    :cond_0
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 41
    :cond_1
    return-object p0
.end method

.method public setUserId(Ljava/lang/String;)Lcom/facebook/rti/common/analytics/AnalyticsEvent;
    .locals 1

    .prologue
    .line 45
    const-string v0, "pk"

    invoke-virtual {p0, v0, p1}, Lcom/facebook/rti/common/analytics/AnalyticsEvent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Lcom/facebook/rti/common/analytics/AnalyticsEvent;

    move-result-object v0

    return-object v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 6

    .prologue
    .line 73
    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    .line 75
    :try_start_0
    const-string v0, "name"

    iget-object v1, p0, Lcom/facebook/rti/common/analytics/AnalyticsEvent;->mName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 76
    const-string/jumbo v0, "time"

    iget-wide v4, p0, Lcom/facebook/rti/common/analytics/AnalyticsEvent;->mTime:J

    invoke-static {v4, v5}, Lcom/facebook/rti/common/analytics/AnalyticsUtil;->formatServerTime(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 77
    const-string v0, "module"

    iget-object v1, p0, Lcom/facebook/rti/common/analytics/AnalyticsEvent;->mModuleName:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 78
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/AnalyticsEvent;->mExtras:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 79
    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3}, Lorg/json/JSONObject;-><init>()V

    .line 80
    iget-object v0, p0, Lcom/facebook/rti/common/analytics/AnalyticsEvent;->mExtras:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 81
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v3, v1, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 85
    :catch_0
    move-exception v0

    .line 86
    sget-object v1, Lcom/facebook/rti/common/analytics/AnalyticsEvent;->TAG:Ljava/lang/String;

    const-string v3, "Failed to serialize"

    invoke-static {v1, v0, v3}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    .line 88
    :cond_0
    :goto_1
    return-object v2

    .line 83
    :cond_1
    :try_start_1
    const-string v0, "extra"

    invoke-virtual {v2, v0, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 93
    invoke-virtual {p0}, Lcom/facebook/rti/common/analytics/AnalyticsEvent;->toJson()Lorg/json/JSONObject;

    move-result-object v0

    invoke-virtual {v0}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
