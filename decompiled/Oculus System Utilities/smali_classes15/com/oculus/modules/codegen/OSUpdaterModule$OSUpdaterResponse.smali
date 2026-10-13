.class public Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdaterResponse;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "OSUpdaterModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/OSUpdaterModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OSUpdaterResponse"
.end annotation


# instance fields
.field public areUpdatesAvailable:Z

.field public currentOSVersion:Ljava/lang/String;

.field public targetVersion:Ljava/lang/String;

.field public updaterState:Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdaterResponse;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 120
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 123
    :goto_0
    return-object v0

    .line 121
    :cond_0
    new-instance v0, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdaterResponse;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdaterResponse;-><init>()V

    .line 122
    .local v0, "result":Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdaterResponse;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdaterResponse;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 104
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 106
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "areUpdatesAvailable"

    iget-boolean v2, p0, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdaterResponse;->areUpdatesAvailable:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 107
    const-string v1, "currentOSVersion"

    iget-object v2, p0, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdaterResponse;->currentOSVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 108
    const-string v1, "targetVersion"

    iget-object v2, p0, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdaterResponse;->targetVersion:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 109
    const-string v1, "updaterState"

    iget-object v2, p0, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdaterResponse;->updaterState:Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

    invoke-virtual {v2}, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :goto_0
    return-object v0

    .line 110
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final setFromJSONObject(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 114
    const-string v0, "areUpdatesAvailable"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdaterResponse;->areUpdatesAvailable:Z

    .line 115
    const-string v0, "currentOSVersion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdaterResponse;->currentOSVersion:Ljava/lang/String;

    .line 116
    const-string v0, "targetVersion"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdaterResponse;->targetVersion:Ljava/lang/String;

    .line 117
    const-string v0, "updaterState"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;->valueOf(Ljava/lang/String;)Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdaterResponse;->updaterState:Lcom/oculus/modules/codegen/OSUpdaterModule$OSUpdateState;

    .line 118
    return-void
.end method
