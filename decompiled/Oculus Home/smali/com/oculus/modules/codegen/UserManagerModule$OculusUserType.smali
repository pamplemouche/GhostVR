.class public Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "UserManagerModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/UserManagerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OculusUserType"
.end annotation


# instance fields
.field public id:D

.field public name:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 102
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 118
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 121
    :goto_0
    return-object v0

    .line 119
    :cond_0
    new-instance v0, Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;-><init>()V

    .line 120
    .local v0, "result":Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 106
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 108
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "id"

    iget-wide v2, p0, Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;->id:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 109
    const-string v1, "name"

    iget-object v2, p0, Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;->name:Ljava/lang/String;

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
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 114
    const-string v0, "id"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;->id:D

    .line 115
    const-string v0, "name"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/UserManagerModule$OculusUserType;->name:Ljava/lang/String;

    .line 116
    return-void
.end method
