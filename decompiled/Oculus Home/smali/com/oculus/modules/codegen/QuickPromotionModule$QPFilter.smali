.class public Lcom/oculus/modules/codegen/QuickPromotionModule$QPFilter;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "QuickPromotionModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/QuickPromotionModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QPFilter"
.end annotation


# instance fields
.field public extra_datas:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/modules/codegen/QuickPromotionModule$QPParameter;",
            ">;"
        }
    .end annotation
.end field

.field public filter_type:Ljava/lang/String;

.field public unknown_action:Ljava/lang/String;

.field public value:Lcom/oculus/modules/codegen/QuickPromotionModule$QPParameter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 340
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/QuickPromotionModule$QPFilter;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 362
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 365
    :goto_0
    return-object v0

    .line 363
    :cond_0
    new-instance v0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPFilter;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPFilter;-><init>()V

    .line 364
    .local v0, "result":Lcom/oculus/modules/codegen/QuickPromotionModule$QPFilter;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPFilter;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 346
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 348
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "extra_datas"

    iget-object v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPFilter;->extra_datas:Ljava/util/List;

    invoke-static {v2}, Lcom/oculus/modules/codegen/NativeModuleParcel;->convertParcelListToJSONArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 349
    const-string v1, "filter_type"

    iget-object v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPFilter;->filter_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 350
    const-string v1, "unknown_action"

    iget-object v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPFilter;->unknown_action:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 351
    const-string v1, "value"

    iget-object v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPFilter;->value:Lcom/oculus/modules/codegen/QuickPromotionModule$QPParameter;

    invoke-virtual {v2}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPParameter;->convertToJSONObject()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 353
    :goto_0
    return-object v0

    .line 352
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final setFromJSONObject(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 356
    const-string v0, "extra_datas"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-class v1, Lcom/oculus/modules/codegen/QuickPromotionModule$QPParameter;

    invoke-static {v0, v1}, Lcom/oculus/modules/codegen/NativeModuleParcel;->convertJSONArrayToParcelList(Lorg/json/JSONArray;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPFilter;->extra_datas:Ljava/util/List;

    .line 357
    const-string v0, "filter_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPFilter;->filter_type:Ljava/lang/String;

    .line 358
    const-string v0, "unknown_action"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPFilter;->unknown_action:Ljava/lang/String;

    .line 359
    const-string v0, "value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPParameter;->makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/QuickPromotionModule$QPParameter;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPFilter;->value:Lcom/oculus/modules/codegen/QuickPromotionModule$QPParameter;

    .line 360
    return-void
.end method
