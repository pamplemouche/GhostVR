.class public Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryNodeDataType;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "DeviceEnvironmentModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/DeviceEnvironmentModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RepositoryNodeDataType"
.end annotation


# instance fields
.field public date:D

.field public landed:Z

.field public node:Ljava/lang/String;

.field public remoteBookmark:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryNodeDataType;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 249
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 252
    :goto_0
    return-object v0

    .line 250
    :cond_0
    new-instance v0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryNodeDataType;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryNodeDataType;-><init>()V

    .line 251
    .local v0, "result":Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryNodeDataType;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryNodeDataType;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 233
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 235
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "date"

    iget-wide v2, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryNodeDataType;->date:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 236
    const-string v1, "landed"

    iget-boolean v2, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryNodeDataType;->landed:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 237
    const-string v1, "node"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryNodeDataType;->node:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    const-string v1, "remoteBookmark"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryNodeDataType;->remoteBookmark:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 240
    :goto_0
    return-object v0

    .line 239
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final setFromJSONObject(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 243
    const-string v0, "date"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryNodeDataType;->date:D

    .line 244
    const-string v0, "landed"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryNodeDataType;->landed:Z

    .line 245
    const-string v0, "node"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryNodeDataType;->node:Ljava/lang/String;

    .line 246
    const-string v0, "remoteBookmark"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryNodeDataType;->remoteBookmark:Ljava/lang/String;

    .line 247
    return-void

    .line 246
    :cond_0
    const-string v0, "remoteBookmark"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
