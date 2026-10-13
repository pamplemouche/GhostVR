.class public Lcom/oculus/modules/codegen/DialogsModule$DialogInlineImage;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "DialogsModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/DialogsModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DialogInlineImage"
.end annotation


# instance fields
.field public image:Ljava/lang/String;

.field public placeholder:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 205
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/DialogsModule$DialogInlineImage;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 221
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 224
    :goto_0
    return-object v0

    .line 222
    :cond_0
    new-instance v0, Lcom/oculus/modules/codegen/DialogsModule$DialogInlineImage;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/DialogsModule$DialogInlineImage;-><init>()V

    .line 223
    .local v0, "result":Lcom/oculus/modules/codegen/DialogsModule$DialogInlineImage;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/DialogsModule$DialogInlineImage;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 209
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 211
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "image"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogInlineImage;->image:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 212
    const-string v1, "placeholder"

    iget-object v2, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogInlineImage;->placeholder:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    return-object v0

    .line 213
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final setFromJSONObject(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 217
    const-string v0, "image"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogInlineImage;->image:Ljava/lang/String;

    .line 218
    const-string v0, "placeholder"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/DialogsModule$DialogInlineImage;->placeholder:Ljava/lang/String;

    .line 219
    return-void
.end method
