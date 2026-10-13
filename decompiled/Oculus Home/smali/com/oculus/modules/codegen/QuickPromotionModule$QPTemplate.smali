.class public Lcom/oculus/modules/codegen/QuickPromotionModule$QPTemplate;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "QuickPromotionModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/QuickPromotionModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QPTemplate"
.end annotation


# instance fields
.field public name:Ljava/lang/String;

.field public parameters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/modules/codegen/QuickPromotionModule$QPParameter;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 604
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/QuickPromotionModule$QPTemplate;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 620
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 623
    :goto_0
    return-object v0

    .line 621
    :cond_0
    new-instance v0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPTemplate;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPTemplate;-><init>()V

    .line 622
    .local v0, "result":Lcom/oculus/modules/codegen/QuickPromotionModule$QPTemplate;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPTemplate;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 608
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 610
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "name"

    iget-object v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPTemplate;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 611
    const-string v1, "parameters"

    iget-object v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPTemplate;->parameters:Ljava/util/List;

    invoke-static {v2}, Lcom/oculus/modules/codegen/NativeModuleParcel;->convertParcelListToJSONArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 613
    :goto_0
    return-object v0

    .line 612
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final setFromJSONObject(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 616
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPTemplate;->name:Ljava/lang/String;

    .line 617
    const-string v0, "parameters"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-class v1, Lcom/oculus/modules/codegen/QuickPromotionModule$QPParameter;

    invoke-static {v0, v1}, Lcom/oculus/modules/codegen/NativeModuleParcel;->convertJSONArrayToParcelList(Lorg/json/JSONArray;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPTemplate;->parameters:Ljava/util/List;

    .line 618
    return-void
.end method
