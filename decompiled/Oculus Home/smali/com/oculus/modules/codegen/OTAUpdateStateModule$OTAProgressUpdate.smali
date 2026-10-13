.class public Lcom/oculus/modules/codegen/OTAUpdateStateModule$OTAProgressUpdate;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "OTAUpdateStateModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/OTAUpdateStateModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "OTAProgressUpdate"
.end annotation


# instance fields
.field public progress:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 50
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/OTAUpdateStateModule$OTAProgressUpdate;
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
    new-instance v0, Lcom/oculus/modules/codegen/OTAUpdateStateModule$OTAProgressUpdate;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/OTAUpdateStateModule$OTAProgressUpdate;-><init>()V

    .line 65
    .local v0, "result":Lcom/oculus/modules/codegen/OTAUpdateStateModule$OTAProgressUpdate;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/OTAUpdateStateModule$OTAProgressUpdate;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 53
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 55
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "progress"

    iget-wide v2, p0, Lcom/oculus/modules/codegen/OTAUpdateStateModule$OTAProgressUpdate;->progress:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
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
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 60
    const-string v0, "progress"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/modules/codegen/OTAUpdateStateModule$OTAProgressUpdate;->progress:D

    .line 61
    return-void
.end method
