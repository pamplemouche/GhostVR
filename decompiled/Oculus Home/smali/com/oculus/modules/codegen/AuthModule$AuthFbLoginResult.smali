.class public Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "AuthModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/AuthModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthFbLoginResult"
.end annotation


# instance fields
.field public error:Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;

.field public fbAccessToken:Ljava/lang/String;

.field public fbUserId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 324
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 343
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 346
    :goto_0
    return-object v0

    .line 344
    :cond_0
    new-instance v0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;-><init>()V

    .line 345
    .local v0, "result":Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 329
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 331
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "error"

    iget-object v1, p0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;

    if-nez v1, :cond_0

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 332
    const-string v1, "fbAccessToken"

    iget-object v2, p0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;->fbAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 333
    const-string v1, "fbUserId"

    iget-object v2, p0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;->fbUserId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 335
    :goto_1
    return-object v0

    .line 331
    :cond_0
    iget-object v1, p0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;

    invoke-virtual {v1}, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;->convertToJSONObject()Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 334
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public final setFromJSONObject(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 338
    const-string v0, "error"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;

    .line 339
    const-string v0, "fbAccessToken"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    move-object v0, v1

    :goto_1
    iput-object v0, p0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;->fbAccessToken:Ljava/lang/String;

    .line 340
    const-string v0, "fbUserId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    iput-object v1, p0, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginResult;->fbUserId:Ljava/lang/String;

    .line 341
    return-void

    .line 338
    :cond_0
    const-string v0, "error"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;->makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/AuthModule$AuthFbLoginError;

    move-result-object v0

    goto :goto_0

    .line 339
    :cond_1
    const-string v0, "fbAccessToken"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 340
    :cond_2
    const-string v0, "fbUserId"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_2
.end method
