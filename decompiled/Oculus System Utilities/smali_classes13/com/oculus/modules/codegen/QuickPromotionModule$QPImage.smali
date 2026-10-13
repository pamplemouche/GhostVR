.class public Lcom/oculus/modules/codegen/QuickPromotionModule$QPImage;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "QuickPromotionModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/QuickPromotionModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QPImage"
.end annotation


# instance fields
.field public dimensionless_cache_key:Ljava/lang/String;

.field public height:D

.field public is_silhouette:Z

.field public mime_type:Ljava/lang/String;

.field public name:Ljava/lang/String;

.field public scale:D

.field public uri:Ljava/lang/String;

.field public width:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 536
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/QuickPromotionModule$QPImage;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 570
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 573
    :goto_0
    return-object v0

    .line 571
    :cond_0
    new-instance v0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPImage;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPImage;-><init>()V

    .line 572
    .local v0, "result":Lcom/oculus/modules/codegen/QuickPromotionModule$QPImage;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPImage;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 546
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 548
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "dimensionless_cache_key"

    iget-object v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPImage;->dimensionless_cache_key:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 549
    const-string v1, "height"

    iget-wide v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPImage;->height:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 550
    const-string v1, "is_silhouette"

    iget-boolean v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPImage;->is_silhouette:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 551
    const-string v1, "mime_type"

    iget-object v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPImage;->mime_type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 552
    const-string v1, "name"

    iget-object v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPImage;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 553
    const-string v1, "scale"

    iget-wide v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPImage;->scale:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 554
    const-string v1, "uri"

    iget-object v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPImage;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 555
    const-string v1, "width"

    iget-wide v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPImage;->width:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 557
    :goto_0
    return-object v0

    .line 556
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final setFromJSONObject(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    const-wide/16 v2, 0x0

    .line 560
    const-string v0, "dimensionless_cache_key"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPImage;->dimensionless_cache_key:Ljava/lang/String;

    .line 561
    const-string v0, "height"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPImage;->height:D

    .line 562
    const-string v0, "is_silhouette"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPImage;->is_silhouette:Z

    .line 563
    const-string v0, "mime_type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPImage;->mime_type:Ljava/lang/String;

    .line 564
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPImage;->name:Ljava/lang/String;

    .line 565
    const-string v0, "scale"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPImage;->scale:D

    .line 566
    const-string v0, "uri"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPImage;->uri:Ljava/lang/String;

    .line 567
    const-string v0, "width"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPImage;->width:D

    .line 568
    return-void
.end method
