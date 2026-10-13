.class public Lcom/oculus/modules/codegen/AuthModule$AuthCheckFbMachineApprovalResult;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "AuthModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/AuthModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AuthCheckFbMachineApprovalResult"
.end annotation


# instance fields
.field public approved:Ljava/lang/Boolean;

.field public error:Lcom/oculus/modules/codegen/AuthModule$AuthError;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 271
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/AuthModule$AuthCheckFbMachineApprovalResult;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 287
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 290
    :goto_0
    return-object v0

    .line 288
    :cond_0
    new-instance v0, Lcom/oculus/modules/codegen/AuthModule$AuthCheckFbMachineApprovalResult;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/AuthModule$AuthCheckFbMachineApprovalResult;-><init>()V

    .line 289
    .local v0, "result":Lcom/oculus/modules/codegen/AuthModule$AuthCheckFbMachineApprovalResult;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/AuthModule$AuthCheckFbMachineApprovalResult;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 275
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 277
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "approved"

    iget-object v2, p0, Lcom/oculus/modules/codegen/AuthModule$AuthCheckFbMachineApprovalResult;->approved:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 278
    const-string v2, "error"

    iget-object v1, p0, Lcom/oculus/modules/codegen/AuthModule$AuthCheckFbMachineApprovalResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthError;

    if-nez v1, :cond_0

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 280
    :goto_1
    return-object v0

    .line 278
    :cond_0
    iget-object v1, p0, Lcom/oculus/modules/codegen/AuthModule$AuthCheckFbMachineApprovalResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthError;

    invoke-virtual {v1}, Lcom/oculus/modules/codegen/AuthModule$AuthError;->convertToJSONObject()Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 279
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public final setFromJSONObject(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    const/4 v1, 0x0

    .line 283
    const-string v0, "approved"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, v1

    :goto_0
    iput-object v0, p0, Lcom/oculus/modules/codegen/AuthModule$AuthCheckFbMachineApprovalResult;->approved:Ljava/lang/Boolean;

    .line 284
    const-string v0, "error"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    :goto_1
    iput-object v1, p0, Lcom/oculus/modules/codegen/AuthModule$AuthCheckFbMachineApprovalResult;->error:Lcom/oculus/modules/codegen/AuthModule$AuthError;

    .line 285
    return-void

    .line 283
    :cond_0
    const-string v0, "approved"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0

    .line 284
    :cond_1
    const-string v0, "error"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/modules/codegen/AuthModule$AuthError;->makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/AuthModule$AuthError;

    move-result-object v1

    goto :goto_1
.end method
