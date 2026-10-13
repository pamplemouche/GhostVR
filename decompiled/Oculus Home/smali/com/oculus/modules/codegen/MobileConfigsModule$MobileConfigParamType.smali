.class public Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "MobileConfigsModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/MobileConfigsModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "MobileConfigParamType"
.end annotation


# instance fields
.field public config:Ljava/lang/String;

.field public configId:D

.field public defaultValue:Ljava/lang/String;

.field public paramId:D

.field public parameter:Ljava/lang/String;

.field public slotId:D

.field public type:Ljava/lang/String;

.field public unit_type:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 253
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 256
    :goto_0
    return-object v0

    .line 254
    :cond_0
    new-instance v0, Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;-><init>()V

    .line 255
    .local v0, "result":Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 229
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 231
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "config"

    iget-object v2, p0, Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;->config:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 232
    const-string v1, "configId"

    iget-wide v2, p0, Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;->configId:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 233
    const-string v1, "defaultValue"

    iget-object v2, p0, Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;->defaultValue:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 234
    const-string v1, "parameter"

    iget-object v2, p0, Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;->parameter:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    const-string v1, "paramId"

    iget-wide v2, p0, Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;->paramId:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 236
    const-string v1, "slotId"

    iget-wide v2, p0, Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;->slotId:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 237
    const-string v1, "type"

    iget-object v2, p0, Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    const-string v1, "unit_type"

    iget-wide v2, p0, Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;->unit_type:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
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
    const-wide/16 v2, 0x0

    .line 243
    const-string v0, "config"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;->config:Ljava/lang/String;

    .line 244
    const-string v0, "configId"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;->configId:D

    .line 245
    const-string v0, "defaultValue"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;->defaultValue:Ljava/lang/String;

    .line 246
    const-string v0, "parameter"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;->parameter:Ljava/lang/String;

    .line 247
    const-string v0, "paramId"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;->paramId:D

    .line 248
    const-string v0, "slotId"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;->slotId:D

    .line 249
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;->type:Ljava/lang/String;

    .line 250
    const-string v0, "unit_type"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/modules/codegen/MobileConfigsModule$MobileConfigParamType;->unit_type:D

    .line 251
    return-void
.end method
