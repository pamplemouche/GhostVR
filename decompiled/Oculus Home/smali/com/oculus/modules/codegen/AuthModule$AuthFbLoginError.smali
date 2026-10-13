.class public Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "AuthModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/AuthModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthFbLoginError"
.end annotation


# instance fields
.field public authToken:Ljava/lang/String;

.field public code:D

.field public fbUserId:Ljava/lang/String;

.field public loginFirstFactor:Ljava/lang/String;

.field public machineId:Ljava/lang/String;

.field public message:Ljava/lang/String;

.field public methodId:Ljava/lang/String;

.field public nonce:Ljava/lang/String;

.field public title:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 349
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 386
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 389
    :goto_0
    return-object v0

    .line 387
    :cond_0
    new-instance v0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;-><init>()V

    .line 388
    .local v0, "result":Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 360
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 362
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "code"

    iget-wide v2, p0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;->code:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 363
    const-string v1, "message"

    iget-object v2, p0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;->message:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 364
    const-string v1, "methodId"

    iget-object v2, p0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;->methodId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 365
    const-string v1, "nonce"

    iget-object v2, p0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;->nonce:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 366
    const-string v1, "title"

    iget-object v2, p0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;->title:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 367
    const-string v1, "authToken"

    iget-object v2, p0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;->authToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 368
    const-string v1, "fbUserId"

    iget-object v2, p0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;->fbUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 369
    const-string v1, "loginFirstFactor"

    iget-object v2, p0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;->loginFirstFactor:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 370
    const-string v1, "machineId"

    iget-object v2, p0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;->machineId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 372
    :goto_0
    return-object v0

    .line 371
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final setFromJSONObject(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 375
    const-string v0, "code"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v2

    iput-wide v2, p0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;->code:D

    .line 376
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;->message:Ljava/lang/String;

    .line 377
    const-string v0, "methodId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;->methodId:Ljava/lang/String;

    .line 378
    const-string v0, "nonce"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;->nonce:Ljava/lang/String;

    .line 379
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    move-object v0, v1

    :goto_2
    iput-object v0, p0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;->title:Ljava/lang/String;

    .line 380
    const-string v0, "authToken"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    move-object v0, v1

    :goto_3
    iput-object v0, p0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;->authToken:Ljava/lang/String;

    .line 381
    const-string v0, "fbUserId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    move-object v0, v1

    :goto_4
    iput-object v0, p0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;->fbUserId:Ljava/lang/String;

    .line 382
    const-string v0, "loginFirstFactor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move-object v0, v1

    :goto_5
    iput-object v0, p0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;->loginFirstFactor:Ljava/lang/String;

    .line 383
    const-string v0, "machineId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    :goto_6
    iput-object v1, p0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;->machineId:Ljava/lang/String;

    .line 384
    return-void

    .line 376
    :cond_0
    const-string v0, "message"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 378
    :cond_1
    const-string v0, "nonce"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 379
    :cond_2
    const-string v0, "title"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    .line 380
    :cond_3
    const-string v0, "authToken"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_3

    .line 381
    :cond_4
    const-string v0, "fbUserId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_4

    .line 382
    :cond_5
    const-string v0, "loginFirstFactor"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_5

    .line 383
    :cond_6
    const-string v0, "machineId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_6
.end method
