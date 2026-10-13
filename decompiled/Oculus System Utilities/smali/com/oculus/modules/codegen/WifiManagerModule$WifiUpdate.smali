.class public Lcom/oculus/modules/codegen/WifiManagerModule$WifiUpdate;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "WifiManagerModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/WifiManagerModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WifiUpdate"
.end annotation


# instance fields
.field public wifiLevel:D

.field public wifiStateInt:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/WifiManagerModule$WifiUpdate;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 71
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 74
    :goto_0
    return-object v0

    .line 72
    :cond_0
    new-instance v0, Lcom/oculus/modules/codegen/WifiManagerModule$WifiUpdate;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/WifiManagerModule$WifiUpdate;-><init>()V

    .line 73
    .local v0, "result":Lcom/oculus/modules/codegen/WifiManagerModule$WifiUpdate;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/WifiManagerModule$WifiUpdate;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 59
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 61
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "wifiLevel"

    iget-wide v2, p0, Lcom/oculus/modules/codegen/WifiManagerModule$WifiUpdate;->wifiLevel:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 62
    const-string v1, "wifiStateInt"

    iget-wide v2, p0, Lcom/oculus/modules/codegen/WifiManagerModule$WifiUpdate;->wifiStateInt:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    :goto_0
    return-object v0

    .line 63
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final setFromJSONObject(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    const-wide/16 v2, 0x0

    .line 67
    const-string v0, "wifiLevel"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/modules/codegen/WifiManagerModule$WifiUpdate;->wifiLevel:D

    .line 68
    const-string v0, "wifiStateInt"

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/modules/codegen/WifiManagerModule$WifiUpdate;->wifiStateInt:D

    .line 69
    return-void
.end method
