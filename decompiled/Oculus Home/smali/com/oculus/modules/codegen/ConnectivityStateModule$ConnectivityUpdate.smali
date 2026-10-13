.class public Lcom/oculus/modules/codegen/ConnectivityStateModule$ConnectivityUpdate;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "ConnectivityStateModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/ConnectivityStateModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ConnectivityUpdate"
.end annotation


# instance fields
.field public connected:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/ConnectivityStateModule$ConnectivityUpdate;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 63
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 66
    :goto_0
    return-object v0

    .line 64
    :cond_0
    new-instance v0, Lcom/oculus/modules/codegen/ConnectivityStateModule$ConnectivityUpdate;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/ConnectivityStateModule$ConnectivityUpdate;-><init>()V

    .line 65
    .local v0, "result":Lcom/oculus/modules/codegen/ConnectivityStateModule$ConnectivityUpdate;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/ConnectivityStateModule$ConnectivityUpdate;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 53
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 55
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "connected"

    iget-boolean v2, p0, Lcom/oculus/modules/codegen/ConnectivityStateModule$ConnectivityUpdate;->connected:Z

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 57
    :goto_0
    return-object v0

    .line 56
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final setFromJSONObject(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 60
    const-string v0, "connected"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/modules/codegen/ConnectivityStateModule$ConnectivityUpdate;->connected:Z

    .line 61
    return-void
.end method
