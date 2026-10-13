.class public Lcom/oculus/modules/codegen/AuthModule$AuthLoginResult;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "AuthModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/AuthModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthLoginResult"
.end annotation


# instance fields
.field public error:Lcom/oculus/modules/codegen/AuthModule$AuthLoginError;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 411
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/AuthModule$AuthLoginResult;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 424
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 427
    :goto_0
    return-object v0

    .line 425
    :cond_0
    new-instance v0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginResult;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/AuthModule$AuthLoginResult;-><init>()V

    .line 426
    .local v0, "result":Lcom/oculus/modules/codegen/AuthModule$AuthLoginResult;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/AuthModule$AuthLoginResult;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 414
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 416
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "error"

    iget-object v1, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthLoginError;

    if-nez v1, :cond_0

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 418
    :goto_1
    return-object v0

    .line 416
    :cond_0
    iget-object v1, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthLoginError;

    invoke-virtual {v1}, Lcom/oculus/modules/codegen/AuthModule$AuthLoginError;->convertToJSONObject()Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 417
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public final setFromJSONObject(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 421
    const-string v0, "error"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/oculus/modules/codegen/AuthModule$AuthLoginResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthLoginError;

    .line 422
    return-void

    .line 421
    :cond_0
    const-string v0, "error"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/modules/codegen/AuthModule$AuthLoginError;->makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/AuthModule$AuthLoginError;

    move-result-object v0

    goto :goto_0
.end method
