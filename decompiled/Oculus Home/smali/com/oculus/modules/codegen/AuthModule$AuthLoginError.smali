.class public Lcom/oculus/modules/codegen/AuthModule$AuthLoginError;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "AuthModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/AuthModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthLoginError"
.end annotation


# instance fields
.field public code:D

.field public message:Ljava/lang/String;

.field public methodId:Ljava/lang/String;

.field public nonce:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 430
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/AuthModule$AuthLoginError;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 455
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 458
    :goto_0
    return-object v0

    .line 456
    :cond_0
    new-instance v0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginError;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/AuthModule$AuthLoginError;-><init>()V

    .line 457
    .local v0, "result":Lcom/oculus/modules/codegen/AuthModule$AuthLoginError;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/AuthModule$AuthLoginError;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 437
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 439
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "code"

    iget-wide v2, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginError;->code:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 440
    const-string v1, "message"

    iget-object v2, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginError;->message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 441
    const-string v1, "methodId"

    iget-object v2, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginError;->methodId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 442
    const-string v1, "nonce"

    iget-object v2, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginError;->nonce:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 443
    const-string v1, "title"

    iget-object v2, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginError;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 445
    :goto_0
    return-object v0

    .line 444
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final setFromJSONObject(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 448
    const-string v0, "code"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginError;->code:D

    .line 449
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginError;->message:Ljava/lang/String;

    .line 450
    const-string v0, "methodId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginError;->methodId:Ljava/lang/String;

    .line 451
    const-string v0, "nonce"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginError;->nonce:Ljava/lang/String;

    .line 452
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-object v1, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginError;->title:Ljava/lang/String;

    .line 453
    return-void

    .line 449
    :cond_0
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 451
    :cond_1
    const-string v0, "nonce"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 452
    :cond_2
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method
