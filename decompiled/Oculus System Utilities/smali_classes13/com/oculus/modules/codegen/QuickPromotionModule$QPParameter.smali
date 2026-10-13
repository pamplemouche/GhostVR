.class public Lcom/oculus/modules/codegen/QuickPromotionModule$QPParameter;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "QuickPromotionModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/QuickPromotionModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QPParameter"
.end annotation


# instance fields
.field public bool_value:Ljava/lang/Boolean;

.field public color_value:Ljava/lang/String;

.field public float_value:Ljava/lang/Double;

.field public int_value:Ljava/lang/Double;

.field public name:Ljava/lang/String;

.field public required:Z

.field public string_value:Ljava/lang/String;

.field public uri_value:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 368
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/QuickPromotionModule$QPParameter;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 402
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 405
    :goto_0
    return-object v0

    .line 403
    :cond_0
    new-instance v0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPParameter;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPParameter;-><init>()V

    .line 404
    .local v0, "result":Lcom/oculus/modules/codegen/QuickPromotionModule$QPParameter;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/QuickPromotionModule$QPParameter;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 378
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 380
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "bool_value"

    iget-object v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPParameter;->bool_value:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 381
    const-string v1, "color_value"

    iget-object v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPParameter;->color_value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 382
    const-string v1, "float_value"

    iget-object v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPParameter;->float_value:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 383
    const-string v1, "int_value"

    iget-object v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPParameter;->int_value:Ljava/lang/Double;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 384
    const-string v1, "name"

    iget-object v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPParameter;->name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 385
    const-string v1, "required"

    iget-boolean v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPParameter;->required:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 386
    const-string v1, "string_value"

    iget-object v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPParameter;->string_value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 387
    const-string v1, "uri_value"

    iget-object v2, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPParameter;->uri_value:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 389
    :goto_0
    return-object v0

    .line 388
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final setFromJSONObject(Lorg/json/JSONObject;)V
    .locals 6
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    const-wide/16 v4, 0x0

    const/4 v1, 0x0

    .line 392
    const-string v0, "bool_value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPParameter;->bool_value:Ljava/lang/Boolean;

    .line 393
    const-string v0, "color_value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPParameter;->color_value:Ljava/lang/String;

    .line 394
    const-string v0, "float_value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPParameter;->float_value:Ljava/lang/Double;

    .line 395
    const-string v0, "int_value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    :goto_3
    iput-object v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPParameter;->int_value:Ljava/lang/Double;

    .line 396
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPParameter;->name:Ljava/lang/String;

    .line 397
    const-string v0, "required"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPParameter;->required:Z

    .line 398
    const-string v0, "string_value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPParameter;->string_value:Ljava/lang/String;

    .line 399
    const-string v0, "uri_value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    :goto_5
    iput-object v1, p0, Lcom/oculus/modules/codegen/QuickPromotionModule$QPParameter;->uri_value:Ljava/lang/String;

    .line 400
    return-void

    .line 392
    :cond_0
    const-string v0, "bool_value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 393
    :cond_1
    const-string v0, "color_value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 394
    :cond_2
    const-string v0, "float_value"

    invoke-virtual {p1, v0, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_2

    .line 395
    :cond_3
    const-string v0, "int_value"

    invoke-virtual {p1, v0, v4, v5}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_3

    .line 398
    :cond_4
    const-string v0, "string_value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 399
    :cond_5
    const-string v0, "uri_value"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_5
.end method
