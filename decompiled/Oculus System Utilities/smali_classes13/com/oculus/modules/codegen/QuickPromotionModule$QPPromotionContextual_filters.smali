.class public Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotionContextual_filters;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "QuickPromotionModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/QuickPromotionModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QPPromotionContextual_filters"
.end annotation


# instance fields
.field public clause_type:Ljava/lang/String;

.field public clauses:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotionContextual_filtersClauses;",
            ">;"
        }
    .end annotation
.end field

.field public filters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/modules/codegen/QuickPromotionModule$QPFilter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotionContextual_filters;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 334
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 337
    :goto_0
    return-object v0

    .line 335
    :cond_0
    new-instance v0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotionContextual_filters;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotionContextual_filters;-><init>()V

    .line 336
    .local v0, "result":Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotionContextual_filters;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotionContextual_filters;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 320
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 322
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "clause_type"

    iget-object v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotionContextual_filters;->clause_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 323
    const-string v1, "filters"

    iget-object v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotionContextual_filters;->filters:Ljava/util/List;

    invoke-static {v2}, Lcom/oculus/modules/codegen/NativeModuleParcel;->convertParcelListToJSONArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 324
    const-string v1, "clauses"

    iget-object v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotionContextual_filters;->clauses:Ljava/util/List;

    invoke-static {v2}, Lcom/oculus/modules/codegen/NativeModuleParcel;->convertParcelListToJSONArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 326
    :goto_0
    return-object v0

    .line 325
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final setFromJSONObject(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 329
    const-string v0, "clause_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotionContextual_filters;->clause_type:Ljava/lang/String;

    .line 330
    const-string v0, "filters"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-class v1, Lcom/oculus/modules/codegen/QuickPromotionModule$QPFilter;

    invoke-static {v0, v1}, Lcom/oculus/modules/codegen/NativeModuleParcel;->convertJSONArrayToParcelList(Lorg/json/JSONArray;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotionContextual_filters;->filters:Ljava/util/List;

    .line 331
    const-string v0, "clauses"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-class v1, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotionContextual_filtersClauses;

    invoke-static {v0, v1}, Lcom/oculus/modules/codegen/NativeModuleParcel;->convertJSONArrayToParcelList(Lorg/json/JSONArray;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotionContextual_filters;->clauses:Ljava/util/List;

    .line 332
    return-void

    .line 329
    :cond_0
    const-string v0, "clause_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
