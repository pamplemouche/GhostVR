.class public Lcom/oculus/modules/codegen/LibraryModule$LibraryUpdate;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "LibraryModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/LibraryModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LibraryUpdate"
.end annotation


# instance fields
.field public packageName:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 315
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/LibraryModule$LibraryUpdate;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 328
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 331
    :goto_0
    return-object v0

    .line 329
    :cond_0
    new-instance v0, Lcom/oculus/modules/codegen/LibraryModule$LibraryUpdate;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/LibraryModule$LibraryUpdate;-><init>()V

    .line 330
    .local v0, "result":Lcom/oculus/modules/codegen/LibraryModule$LibraryUpdate;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/LibraryModule$LibraryUpdate;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 318
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 320
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "packageName"

    iget-object v2, p0, Lcom/oculus/modules/codegen/LibraryModule$LibraryUpdate;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 322
    :goto_0
    return-object v0

    .line 321
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final setFromJSONObject(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 325
    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/oculus/modules/codegen/LibraryModule$LibraryUpdate;->packageName:Ljava/lang/String;

    .line 326
    return-void

    .line 325
    :cond_0
    const-string v0, "packageName"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
