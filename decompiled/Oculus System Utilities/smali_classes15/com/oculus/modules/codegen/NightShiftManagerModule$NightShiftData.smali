.class public Lcom/oculus/modules/codegen/NightShiftManagerModule$NightShiftData;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "NightShiftManagerModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/NightShiftManagerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NightShiftData"
.end annotation


# instance fields
.field public active:Z

.field public autoMode:D

.field public customEndTimeMinute:D

.field public customStartTimeMinute:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/NightShiftManagerModule$NightShiftData;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 168
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 171
    :goto_0
    return-object v0

    .line 169
    :cond_0
    new-instance v0, Lcom/oculus/modules/codegen/NightShiftManagerModule$NightShiftData;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/NightShiftManagerModule$NightShiftData;-><init>()V

    .line 170
    .local v0, "result":Lcom/oculus/modules/codegen/NightShiftManagerModule$NightShiftData;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/NightShiftManagerModule$NightShiftData;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 152
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 154
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "active"

    iget-boolean v2, p0, Lcom/oculus/modules/codegen/NightShiftManagerModule$NightShiftData;->active:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    .line 155
    const-string v1, "autoMode"

    iget-wide v2, p0, Lcom/oculus/modules/codegen/NightShiftManagerModule$NightShiftData;->autoMode:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 156
    const-string v1, "customEndTimeMinute"

    iget-wide v2, p0, Lcom/oculus/modules/codegen/NightShiftManagerModule$NightShiftData;->customEndTimeMinute:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 157
    const-string v1, "customStartTimeMinute"

    iget-wide v2, p0, Lcom/oculus/modules/codegen/NightShiftManagerModule$NightShiftData;->customStartTimeMinute:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 159
    :goto_0
    return-object v0

    .line 158
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final setFromJSONObject(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    const-wide/16 v2, 0x0

    .line 162
    const-string v0, "active"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/modules/codegen/NightShiftManagerModule$NightShiftData;->active:Z

    .line 163
    const-string v0, "autoMode"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/modules/codegen/NightShiftManagerModule$NightShiftData;->autoMode:D

    .line 164
    const-string v0, "customEndTimeMinute"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/modules/codegen/NightShiftManagerModule$NightShiftData;->customEndTimeMinute:D

    .line 165
    const-string v0, "customStartTimeMinute"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/modules/codegen/NightShiftManagerModule$NightShiftData;->customStartTimeMinute:D

    .line 166
    return-void
.end method
