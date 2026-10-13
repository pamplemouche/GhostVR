.class public Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryLocationType;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "DeviceEnvironmentModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/DeviceEnvironmentModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "RepositoryLocationType"
.end annotation


# instance fields
.field public dirty:Z

.field public nodes:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryNodeDataType;",
            ">;"
        }
    .end annotation
.end field

.field public remoteBookmark:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryLocationType;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 221
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 224
    :goto_0
    return-object v0

    .line 222
    :cond_0
    new-instance v0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryLocationType;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryLocationType;-><init>()V

    .line 223
    .local v0, "result":Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryLocationType;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryLocationType;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 207
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 209
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "dirty"

    iget-boolean v2, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryLocationType;->dirty:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 210
    const-string v1, "nodes"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryLocationType;->nodes:Ljava/util/List;

    invoke-static {v2}, Lcom/oculus/modules/codegen/NativeModuleParcel;->convertParcelListToJSONArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 211
    const-string v1, "remoteBookmark"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryLocationType;->remoteBookmark:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    :goto_0
    return-object v0

    .line 212
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final setFromJSONObject(Lorg/json/JSONObject;)V
    .locals 2
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 216
    const-string v0, "dirty"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryLocationType;->dirty:Z

    .line 217
    const-string v0, "nodes"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    const-class v1, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryNodeDataType;

    invoke-static {v0, v1}, Lcom/oculus/modules/codegen/NativeModuleParcel;->convertJSONArrayToParcelList(Lorg/json/JSONArray;Ljava/lang/Class;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryLocationType;->nodes:Ljava/util/List;

    .line 218
    const-string v0, "remoteBookmark"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/DeviceEnvironmentModule$RepositoryLocationType;->remoteBookmark:Ljava/lang/String;

    .line 219
    return-void
.end method
