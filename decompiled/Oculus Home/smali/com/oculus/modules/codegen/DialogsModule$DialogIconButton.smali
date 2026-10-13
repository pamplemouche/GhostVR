.class public Lcom/oculus/modules/codegen/DialogsModule$DialogIconButton;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "DialogsModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/DialogsModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogIconButton"
.end annotation


# instance fields
.field public action:Ljava/lang/String;

.field public autoClose:Ljava/lang/Boolean;

.field public icon:Lcom/oculus/modules/codegen/DialogsModule$DialogIconType;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 180
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/DialogsModule$DialogIconButton;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 199
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 202
    :goto_0
    return-object v0

    .line 200
    :cond_0
    new-instance v0, Lcom/oculus/modules/codegen/DialogsModule$DialogIconButton;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/DialogsModule$DialogIconButton;-><init>()V

    .line 201
    .local v0, "result":Lcom/oculus/modules/codegen/DialogsModule$DialogIconButton;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/DialogsModule$DialogIconButton;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 185
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 187
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "action"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogIconButton;->action:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 188
    iget-object v1, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogIconButton;->autoClose:Ljava/lang/Boolean;

    if-eqz v1, :cond_0

    const-string v1, "autoClose"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogIconButton;->autoClose:Ljava/lang/Boolean;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 189
    :cond_0
    const-string v1, "icon"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogIconButton;->icon:Lcom/oculus/modules/codegen/DialogsModule$DialogIconType;

    invoke-virtual {v2}, Lcom/oculus/modules/codegen/DialogsModule$DialogIconType;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-object v0

    .line 190
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final setFromJSONObject(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 194
    const-string v0, "action"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogIconButton;->action:Ljava/lang/String;

    .line 195
    const-string v0, "autoClose"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogIconButton;->autoClose:Ljava/lang/Boolean;

    .line 196
    const-string v0, "icon"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/modules/codegen/DialogsModule$DialogIconType;->valueOf(Ljava/lang/String;)Lcom/oculus/modules/codegen/DialogsModule$DialogIconType;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogIconButton;->icon:Lcom/oculus/modules/codegen/DialogsModule$DialogIconType;

    .line 197
    return-void

    .line 195
    :cond_0
    const-string v0, "autoClose"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method
