.class public Lcom/oculus/modules/codegen/DialogsModule$DialogButton;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "DialogsModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/DialogsModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogButton"
.end annotation


# instance fields
.field public action:Ljava/lang/String;

.field public autoClose:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 158
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/DialogsModule$DialogButton;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 174
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 177
    :goto_0
    return-object v0

    .line 175
    :cond_0
    new-instance v0, Lcom/oculus/modules/codegen/DialogsModule$DialogButton;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/DialogsModule$DialogButton;-><init>()V

    .line 176
    .local v0, "result":Lcom/oculus/modules/codegen/DialogsModule$DialogButton;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/DialogsModule$DialogButton;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 162
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 164
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "action"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogButton;->action:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 165
    iget-object v1, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogButton;->autoClose:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    const-string v1, "autoClose"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogButton;->autoClose:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 167
    :cond_0
    :goto_0
    return-object v0

    .line 166
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final setFromJSONObject(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 170
    const-string v0, "action"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogButton;->action:Ljava/lang/String;

    .line 171
    const-string v0, "autoClose"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogButton;->autoClose:Ljava/lang/Boolean;

    .line 172
    return-void

    .line 171
    :cond_0
    const-string v0, "autoClose"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method
