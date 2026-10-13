.class public Lcom/oculus/modules/codegen/QuickPromotionModule$QPAction;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "QuickPromotionModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/QuickPromotionModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QPAction"
.end annotation


# instance fields
.field public dismiss_promotion:Z

.field public limit:D

.field public title_text:Ljava/lang/String;

.field public url:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 576
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/QuickPromotionModule$QPAction;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 598
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 601
    :goto_0
    return-object v0

    .line 599
    :cond_0
    new-instance v0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPAction;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPAction;-><init>()V

    .line 600
    .local v0, "result":Lcom/oculus/modules/codegen/QuickPromotionModule$QPAction;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPAction;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 582
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 584
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "dismiss_promotion"

    iget-boolean v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPAction;->dismiss_promotion:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 585
    const-string v1, "limit"

    iget-wide v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPAction;->limit:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 586
    iget-object v1, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPAction;->title_text:Ljava/lang/String;

    if-eqz v1, :cond_0

    const-string v1, "title_text"

    iget-object v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPAction;->title_text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 587
    :cond_0
    iget-object v1, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPAction;->url:Ljava/lang/String;

    if-eqz v1, :cond_1

    const-string v1, "url"

    iget-object v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPAction;->url:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 589
    :cond_1
    :goto_0
    return-object v0

    .line 588
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final setFromJSONObject(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 592
    const-string v0, "dismiss_promotion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPAction;->dismiss_promotion:Z

    .line 593
    const-string v0, "limit"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPAction;->limit:D

    .line 594
    const-string v0, "title_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPAction;->title_text:Ljava/lang/String;

    .line 595
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-object v1, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPAction;->url:Ljava/lang/String;

    .line 596
    return-void

    .line 594
    :cond_0
    const-string v0, "title_text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 595
    :cond_1
    const-string v0, "url"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_1
.end method
