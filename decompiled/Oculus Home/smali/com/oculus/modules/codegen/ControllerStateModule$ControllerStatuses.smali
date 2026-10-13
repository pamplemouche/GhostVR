.class public Lcom/oculus/modules/codegen/ControllerStateModule$ControllerStatuses;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "ControllerStateModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/ControllerStateModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ControllerStatuses"
.end annotation


# instance fields
.field public primary:Ljava/lang/String;

.field public secondary:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 129
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/ControllerStateModule$ControllerStatuses;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 145
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 148
    :goto_0
    return-object v0

    .line 146
    :cond_0
    new-instance v0, Lcom/oculus/modules/codegen/ControllerStateModule$ControllerStatuses;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/ControllerStateModule$ControllerStatuses;-><init>()V

    .line 147
    .local v0, "result":Lcom/oculus/modules/codegen/ControllerStateModule$ControllerStatuses;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/ControllerStateModule$ControllerStatuses;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 133
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 135
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "primary"

    iget-object v2, p0, Lcom/oculus/modules/codegen/ControllerStateModule$ControllerStatuses;->primary:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 136
    const-string v1, "secondary"

    iget-object v2, p0, Lcom/oculus/modules/codegen/ControllerStateModule$ControllerStatuses;->secondary:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 138
    :goto_0
    return-object v0

    .line 137
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final setFromJSONObject(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 141
    const-string v0, "primary"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/ControllerStateModule$ControllerStatuses;->primary:Ljava/lang/String;

    .line 142
    const-string v0, "secondary"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/ControllerStateModule$ControllerStatuses;->secondary:Ljava/lang/String;

    .line 143
    return-void
.end method
