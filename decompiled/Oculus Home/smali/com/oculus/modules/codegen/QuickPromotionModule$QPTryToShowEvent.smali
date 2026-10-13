.class public Lcom/oculus/modules/codegen/QuickPromotionModule$QPTryToShowEvent;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "QuickPromotionModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/QuickPromotionModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QPTryToShowEvent"
.end annotation


# instance fields
.field public promotions:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;",
            ">;"
        }
    .end annotation
.end field

.field public trigger:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 247
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/QuickPromotionModule$QPTryToShowEvent;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 263
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 266
    :goto_0
    return-object v0

    .line 264
    :cond_0
    new-instance v0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPTryToShowEvent;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPTryToShowEvent;-><init>()V

    .line 265
    .local v0, "result":Lcom/oculus/modules/codegen/QuickPromotionModule$QPTryToShowEvent;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPTryToShowEvent;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 251
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 253
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "promotions"

    iget-object v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPTryToShowEvent;->promotions:Ljava/util/List;

    invoke-static {v2}, Lcom/oculus/modules/codegen/NativeModuleParcel;->convertParcelListToJSONArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 254
    const-string v1, "trigger"

    iget-object v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPTryToShowEvent;->trigger:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 256
    :goto_0
    return-object v0

    .line 255
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final setFromJSONObject(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 259
    const-string v0, "promotions"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-class v1, Lcom/oculus/modules/codegen/QuickPromotionModule$QPPromotion;

    invoke-static {v0, v1}, Lcom/oculus/modules/codegen/NativeModuleParcel;->convertJSONArrayToParcelList(Lorg/json/JSONArray;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPTryToShowEvent;->promotions:Ljava/util/List;

    .line 260
    const-string v0, "trigger"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPTryToShowEvent;->trigger:Ljava/lang/String;

    .line 261
    return-void
.end method
