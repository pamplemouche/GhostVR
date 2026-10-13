.class public Lcom/oculus/modules/codegen/BatteryManagerModule$GetLowPowerModeAsyncResult;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "BatteryManagerModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/BatteryManagerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetLowPowerModeAsyncResult"
.end annotation


# instance fields
.field public isBatterySaver:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 122
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/BatteryManagerModule$GetLowPowerModeAsyncResult;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 135
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 138
    :goto_0
    return-object v0

    .line 136
    :cond_0
    new-instance v0, Lcom/oculus/modules/codegen/BatteryManagerModule$GetLowPowerModeAsyncResult;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/BatteryManagerModule$GetLowPowerModeAsyncResult;-><init>()V

    .line 137
    .local v0, "result":Lcom/oculus/modules/codegen/BatteryManagerModule$GetLowPowerModeAsyncResult;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/BatteryManagerModule$GetLowPowerModeAsyncResult;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 125
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 127
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "isBatterySaver"

    iget-boolean v2, p0, Lcom/oculus/modules/codegen/BatteryManagerModule$GetLowPowerModeAsyncResult;->isBatterySaver:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-object v0

    .line 128
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final setFromJSONObject(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 132
    const-string v0, "isBatterySaver"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/modules/codegen/BatteryManagerModule$GetLowPowerModeAsyncResult;->isBatterySaver:Z

    .line 133
    return-void
.end method
