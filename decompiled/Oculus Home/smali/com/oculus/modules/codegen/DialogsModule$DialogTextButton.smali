.class public Lcom/oculus/modules/codegen/DialogsModule$DialogTextButton;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "DialogsModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/DialogsModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogTextButton"
.end annotation


# instance fields
.field public action:Ljava/lang/String;

.field public autoClose:Ljava/lang/Boolean;

.field public text:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 227
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/DialogsModule$DialogTextButton;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 246
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 249
    :goto_0
    return-object v0

    .line 247
    :cond_0
    new-instance v0, Lcom/oculus/modules/codegen/DialogsModule$DialogTextButton;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/DialogsModule$DialogTextButton;-><init>()V

    .line 248
    .local v0, "result":Lcom/oculus/modules/codegen/DialogsModule$DialogTextButton;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/DialogsModule$DialogTextButton;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 232
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 234
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "action"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogTextButton;->action:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 235
    iget-object v1, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogTextButton;->autoClose:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    const-string v1, "autoClose"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogTextButton;->autoClose:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 236
    :cond_0
    const-string v1, "text"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogTextButton;->text:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    return-object v0

    .line 237
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final setFromJSONObject(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 241
    const-string v0, "action"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogTextButton;->action:Ljava/lang/String;

    .line 242
    const-string v0, "autoClose"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogTextButton;->autoClose:Ljava/lang/Boolean;

    .line 243
    const-string v0, "text"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogTextButton;->text:Ljava/lang/String;

    .line 244
    return-void

    .line 242
    :cond_0
    const-string v0, "autoClose"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method
