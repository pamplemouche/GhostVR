.class public Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "QuickPromotionModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/QuickPromotionModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QPPromotion"
.end annotation


# instance fields
.field public bypass_surface_delay:Z

.field public contextual_filters:Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotionContextual_filters;

.field public is_holdout:Z

.field public logging_data:Ljava/lang/String;

.field public max_impressions:D

.field public promotion_creatives:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/modules/codegen/QuickPromotionModule$QPCreative;",
            ">;"
        }
    .end annotation
.end field

.field public promotion_id:Ljava/lang/String;

.field public promotion_template:Lcom/oculus/modules/codegen/QuickPromotionModule$QPTemplate;

.field public surface_id:D

.field public triggers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 269
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 309
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 312
    :goto_0
    return-object v0

    .line 310
    :cond_0
    new-instance v0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;-><init>()V

    .line 311
    .local v0, "result":Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 281
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 283
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "bypass_surface_delay"

    iget-boolean v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;->bypass_surface_delay:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 284
    const-string v1, "contextual_filters"

    iget-object v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;->contextual_filters:Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotionContextual_filters;

    invoke-virtual {v2}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotionContextual_filters;->convertToJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 285
    const-string v1, "is_holdout"

    iget-boolean v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;->is_holdout:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 286
    const-string v1, "logging_data"

    iget-object v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;->logging_data:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 287
    const-string v1, "max_impressions"

    iget-wide v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;->max_impressions:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 288
    const-string v1, "promotion_creatives"

    iget-object v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;->promotion_creatives:Ljava/util/List;

    invoke-static {v2}, Lcom/oculus/modules/codegen/NativeModuleParcel;->convertParcelListToJSONArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 289
    const-string v1, "promotion_id"

    iget-object v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;->promotion_id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 290
    const-string v1, "promotion_template"

    iget-object v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;->promotion_template:Lcom/oculus/modules/codegen/QuickPromotionModule$QPTemplate;

    invoke-virtual {v2}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPTemplate;->convertToJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 291
    const-string v1, "surface_id"

    iget-wide v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;->surface_id:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 292
    const-string v1, "triggers"

    iget-object v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;->triggers:Ljava/util/List;

    invoke-static {v2}, Lcom/oculus/modules/codegen/NativeModuleParcel;->convertStringListToJSONArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 294
    :goto_0
    return-object v0

    .line 293
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final setFromJSONObject(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    const-wide/16 v2, 0x0

    .line 297
    const-string v0, "bypass_surface_delay"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;->bypass_surface_delay:Z

    .line 298
    const-string v0, "contextual_filters"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotionContextual_filters;->makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotionContextual_filters;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;->contextual_filters:Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotionContextual_filters;

    .line 299
    const-string v0, "is_holdout"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;->is_holdout:Z

    .line 300
    const-string v0, "logging_data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;->logging_data:Ljava/lang/String;

    .line 301
    const-string v0, "max_impressions"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;->max_impressions:D

    .line 302
    const-string v0, "promotion_creatives"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-class v1, Lcom/oculus/modules/codegen/QuickPromotionModule$QPCreative;

    invoke-static {v0, v1}, Lcom/oculus/modules/codegen/NativeModuleParcel;->convertJSONArrayToParcelList(Lorg/json/JSONArray;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;->promotion_creatives:Ljava/util/List;

    .line 303
    const-string v0, "promotion_id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;->promotion_id:Ljava/lang/String;

    .line 304
    const-string v0, "promotion_template"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPTemplate;->makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/QuickPromotionModule$QPTemplate;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;->promotion_template:Lcom/oculus/modules/codegen/QuickPromotionModule$QPTemplate;

    .line 305
    const-string v0, "surface_id"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;->surface_id:D

    .line 306
    const-string v0, "triggers"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/modules/codegen/NativeModuleParcel;->convertJSONArrayToStringList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;->triggers:Ljava/util/List;

    .line 307
    return-void
.end method
