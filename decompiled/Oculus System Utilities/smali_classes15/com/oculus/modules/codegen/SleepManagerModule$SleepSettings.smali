.class public Lcom/oculus/modules/codegen/SleepManagerModule$SleepSettings;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "SleepManagerModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/SleepManagerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SleepSettings"
.end annotation


# instance fields
.field public autoSleepTime:D

.field public autoWakeEnabled:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/SleepManagerModule$SleepSettings;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 73
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 76
    :goto_0
    return-object v0

    .line 74
    :cond_0
    new-instance v0, Lcom/oculus/modules/codegen/SleepManagerModule$SleepSettings;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/SleepManagerModule$SleepSettings;-><init>()V

    .line 75
    .local v0, "result":Lcom/oculus/modules/codegen/SleepManagerModule$SleepSettings;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/SleepManagerModule$SleepSettings;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 61
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 63
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "autoSleepTime"

    iget-wide v2, p0, Lcom/oculus/modules/codegen/SleepManagerModule$SleepSettings;->autoSleepTime:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 64
    const-string v1, "autoWakeEnabled"

    iget-boolean v2, p0, Lcom/oculus/modules/codegen/SleepManagerModule$SleepSettings;->autoWakeEnabled:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 66
    :goto_0
    return-object v0

    .line 65
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final setFromJSONObject(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 69
    const-string v0, "autoSleepTime"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/modules/codegen/SleepManagerModule$SleepSettings;->autoSleepTime:D

    .line 70
    const-string v0, "autoWakeEnabled"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/modules/codegen/SleepManagerModule$SleepSettings;->autoWakeEnabled:Z

    .line 71
    return-void
.end method
