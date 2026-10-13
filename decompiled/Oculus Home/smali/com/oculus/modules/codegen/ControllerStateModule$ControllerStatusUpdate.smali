.class public Lcom/oculus/modules/codegen/ControllerStateModule$ControllerStatusUpdate;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "ControllerStateModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/ControllerStateModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ControllerStatusUpdate"
.end annotation


# instance fields
.field public status:Ljava/lang/String;

.field public type:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/ControllerStateModule$ControllerStatusUpdate;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 123
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 126
    :goto_0
    return-object v0

    .line 124
    :cond_0
    new-instance v0, Lcom/oculus/modules/codegen/ControllerStateModule$ControllerStatusUpdate;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/ControllerStateModule$ControllerStatusUpdate;-><init>()V

    .line 125
    .local v0, "result":Lcom/oculus/modules/codegen/ControllerStateModule$ControllerStatusUpdate;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/ControllerStateModule$ControllerStatusUpdate;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 111
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 113
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "status"

    iget-object v2, p0, Lcom/oculus/modules/codegen/ControllerStateModule$ControllerStatusUpdate;->status:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 114
    const-string v1, "type"

    iget-object v2, p0, Lcom/oculus/modules/codegen/ControllerStateModule$ControllerStatusUpdate;->type:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 116
    :goto_0
    return-object v0

    .line 115
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final setFromJSONObject(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 119
    const-string v0, "status"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/ControllerStateModule$ControllerStatusUpdate;->status:Ljava/lang/String;

    .line 120
    const-string v0, "type"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/ControllerStateModule$ControllerStatusUpdate;->type:Ljava/lang/String;

    .line 121
    return-void
.end method
