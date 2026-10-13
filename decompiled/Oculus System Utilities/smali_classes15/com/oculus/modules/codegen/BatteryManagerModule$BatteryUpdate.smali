.class public Lcom/oculus/modules/codegen/BatteryManagerModule$BatteryUpdate;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "BatteryManagerModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/BatteryManagerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BatteryUpdate"
.end annotation


# instance fields
.field public level:D

.field public plugged:D

.field public status:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 97
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/BatteryManagerModule$BatteryUpdate;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 116
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 119
    :goto_0
    return-object v0

    .line 117
    :cond_0
    new-instance v0, Lcom/oculus/modules/codegen/BatteryManagerModule$BatteryUpdate;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/BatteryManagerModule$BatteryUpdate;-><init>()V

    .line 118
    .local v0, "result":Lcom/oculus/modules/codegen/BatteryManagerModule$BatteryUpdate;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/BatteryManagerModule$BatteryUpdate;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 102
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 104
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "level"

    iget-wide v2, p0, Lcom/oculus/modules/codegen/BatteryManagerModule$BatteryUpdate;->level:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 105
    const-string v1, "plugged"

    iget-wide v2, p0, Lcom/oculus/modules/codegen/BatteryManagerModule$BatteryUpdate;->plugged:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 106
    const-string v1, "status"

    iget-wide v2, p0, Lcom/oculus/modules/codegen/BatteryManagerModule$BatteryUpdate;->status:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 108
    :goto_0
    return-object v0

    .line 107
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final setFromJSONObject(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    const-wide/16 v2, 0x0

    .line 111
    const-string v0, "level"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/modules/codegen/BatteryManagerModule$BatteryUpdate;->level:D

    .line 112
    const-string v0, "plugged"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/modules/codegen/BatteryManagerModule$BatteryUpdate;->plugged:D

    .line 113
    const-string v0, "status"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/modules/codegen/BatteryManagerModule$BatteryUpdate;->status:D

    .line 114
    return-void
.end method
