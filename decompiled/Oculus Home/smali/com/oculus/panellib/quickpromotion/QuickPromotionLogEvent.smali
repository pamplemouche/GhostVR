.class public Lcom/oculus/panellib/quickpromotion/QuickPromotionLogEvent;
.super Llibraries/marauder/analytics/AnalyticsEventBase;
.source "QuickPromotionLogEvent.java"


# static fields
.field public static final EVENT_ACTION:Ljava/lang/String; = "click"

.field public static final EVENT_EXPOSURE:Ljava/lang/String; = "qp_holdout_exposure"

.field public static final EVENT_VIEW:Ljava/lang/String; = "view"

.field public static final KEY_EVENT_NAME:Ljava/lang/String; = "name"

.field public static final KEY_INSTANCE_LOG_DATA:Ljava/lang/String; = "instance_log_data"

.field public static final KEY_MODULE:Ljava/lang/String; = "module"

.field public static final KEY_OBJECT_ID:Ljava/lang/String; = "object_id"

.field public static final KEY_PROMOTION_ID:Ljava/lang/String; = "promotion_id"

.field public static final KEY_TRIGGER:Ljava/lang/String; = "trigger"

.field public static final VALUE_MODULE:Ljava/lang/String; = "quick_promotion"


# direct methods
.method private constructor <init>(Ljava/lang/String;)V
    .locals 4
    .param p1, "event"    # Ljava/lang/String;

    .prologue
    .line 30
    invoke-direct {p0}, Llibraries/marauder/analytics/AnalyticsEventBase;-><init>()V

    .line 32
    :try_start_0
    iget-object v1, p0, Lcom/oculus/panellib/quickpromotion/QuickPromotionLogEvent;->mPayload:Lorg/json/JSONObject;

    const-string v2, "module"

    const-string v3, "quick_promotion"

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 33
    iget-object v1, p0, Lcom/oculus/panellib/quickpromotion/QuickPromotionLogEvent;->mPayload:Lorg/json/JSONObject;

    const-string v2, "name"

    invoke-virtual {v1, v2, p1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    :goto_0
    return-void

    .line 34
    :catch_0
    move-exception v0

    .line 35
    .local v0, "jsonException":Ljava/lang/Throwable;
    sget-object v1, Lcom/oculus/panellib/quickpromotion/QuickPromotionLogEvent;->TAG:Ljava/lang/String;

    const-string v2, ""

    invoke-static {v1, v2, v0}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public static newClickEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/panellib/quickpromotion/QuickPromotionLogEvent;
    .locals 2
    .param p0, "promotionId"    # Ljava/lang/String;
    .param p1, "trigger"    # Ljava/lang/String;
    .param p2, "logData"    # Ljava/lang/String;
    .param p3, "actionType"    # Ljava/lang/String;

    .prologue
    .line 27
    new-instance v0, Lcom/oculus/panellib/quickpromotion/QuickPromotionLogEvent;

    const-string v1, "click"

    invoke-direct {v0, v1}, Lcom/oculus/panellib/quickpromotion/QuickPromotionLogEvent;-><init>(Ljava/lang/String;)V

    const-string v1, "promotion_id"

    invoke-virtual {v0, v1, p0}, Lcom/oculus/panellib/quickpromotion/QuickPromotionLogEvent;->addExtra(Ljava/lang/String;Ljava/lang/String;)Llibraries/marauder/analytics/AnalyticsEventBase;

    move-result-object v0

    const-string v1, "trigger"

    invoke-virtual {v0, v1, p1}, Llibraries/marauder/analytics/AnalyticsEventBase;->addExtra(Ljava/lang/String;Ljava/lang/String;)Llibraries/marauder/analytics/AnalyticsEventBase;

    move-result-object v0

    const-string v1, "instance_log_data"

    invoke-virtual {v0, v1, p2}, Llibraries/marauder/analytics/AnalyticsEventBase;->addExtra(Ljava/lang/String;Ljava/lang/String;)Llibraries/marauder/analytics/AnalyticsEventBase;

    move-result-object v0

    const-string v1, "object_id"

    invoke-virtual {v0, v1, p3}, Llibraries/marauder/analytics/AnalyticsEventBase;->addExtra(Ljava/lang/String;Ljava/lang/String;)Llibraries/marauder/analytics/AnalyticsEventBase;

    move-result-object v0

    check-cast v0, Lcom/oculus/panellib/quickpromotion/QuickPromotionLogEvent;

    return-object v0
.end method

.method public static newExposureEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/panellib/quickpromotion/QuickPromotionLogEvent;
    .locals 2
    .param p0, "promotionId"    # Ljava/lang/String;
    .param p1, "trigger"    # Ljava/lang/String;
    .param p2, "logData"    # Ljava/lang/String;

    .prologue
    .line 19
    new-instance v0, Lcom/oculus/panellib/quickpromotion/QuickPromotionLogEvent;

    const-string v1, "qp_holdout_exposure"

    invoke-direct {v0, v1}, Lcom/oculus/panellib/quickpromotion/QuickPromotionLogEvent;-><init>(Ljava/lang/String;)V

    const-string v1, "promotion_id"

    invoke-virtual {v0, v1, p0}, Lcom/oculus/panellib/quickpromotion/QuickPromotionLogEvent;->addExtra(Ljava/lang/String;Ljava/lang/String;)Llibraries/marauder/analytics/AnalyticsEventBase;

    move-result-object v0

    const-string v1, "trigger"

    invoke-virtual {v0, v1, p1}, Llibraries/marauder/analytics/AnalyticsEventBase;->addExtra(Ljava/lang/String;Ljava/lang/String;)Llibraries/marauder/analytics/AnalyticsEventBase;

    move-result-object v0

    const-string v1, "instance_log_data"

    invoke-virtual {v0, v1, p2}, Llibraries/marauder/analytics/AnalyticsEventBase;->addExtra(Ljava/lang/String;Ljava/lang/String;)Llibraries/marauder/analytics/AnalyticsEventBase;

    move-result-object v0

    check-cast v0, Lcom/oculus/panellib/quickpromotion/QuickPromotionLogEvent;

    return-object v0
.end method

.method public static newViewEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/panellib/quickpromotion/QuickPromotionLogEvent;
    .locals 2
    .param p0, "promotionId"    # Ljava/lang/String;
    .param p1, "trigger"    # Ljava/lang/String;
    .param p2, "logData"    # Ljava/lang/String;

    .prologue
    .line 23
    new-instance v0, Lcom/oculus/panellib/quickpromotion/QuickPromotionLogEvent;

    const-string v1, "view"

    invoke-direct {v0, v1}, Lcom/oculus/panellib/quickpromotion/QuickPromotionLogEvent;-><init>(Ljava/lang/String;)V

    const-string v1, "promotion_id"

    invoke-virtual {v0, v1, p0}, Lcom/oculus/panellib/quickpromotion/QuickPromotionLogEvent;->addExtra(Ljava/lang/String;Ljava/lang/String;)Llibraries/marauder/analytics/AnalyticsEventBase;

    move-result-object v0

    const-string v1, "trigger"

    invoke-virtual {v0, v1, p1}, Llibraries/marauder/analytics/AnalyticsEventBase;->addExtra(Ljava/lang/String;Ljava/lang/String;)Llibraries/marauder/analytics/AnalyticsEventBase;

    move-result-object v0

    const-string v1, "instance_log_data"

    invoke-virtual {v0, v1, p2}, Llibraries/marauder/analytics/AnalyticsEventBase;->addExtra(Ljava/lang/String;Ljava/lang/String;)Llibraries/marauder/analytics/AnalyticsEventBase;

    move-result-object v0

    check-cast v0, Lcom/oculus/panellib/quickpromotion/QuickPromotionLogEvent;

    return-object v0
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 41
    :try_start_0
    iget-object v1, p0, Lcom/oculus/panellib/quickpromotion/QuickPromotionLogEvent;->mPayload:Lorg/json/JSONObject;

    const-string v2, "extra"

    iget-object v3, p0, Lcom/oculus/panellib/quickpromotion/QuickPromotionLogEvent;->mExtras:Lorg/json/JSONObject;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 42
    iget-object v1, p0, Lcom/oculus/panellib/quickpromotion/QuickPromotionLogEvent;->mPayload:Lorg/json/JSONObject;

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 45
    :goto_0
    return-object v1

    .line 43
    :catch_0
    move-exception v0

    .line 44
    .local v0, "jsonException":Ljava/lang/Throwable;
    sget-object v1, Lcom/oculus/panellib/quickpromotion/QuickPromotionLogEvent;->TAG:Ljava/lang/String;

    const-string v2, "FATAL"

    invoke-static {v1, v2, v0}, Llibraries/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 45
    const-string v1, "{}"

    goto :goto_0
.end method
