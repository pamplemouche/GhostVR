.class public Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResultCache;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "QuickExperimentsModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/QuickExperimentsModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetCachedQEsResultCache"
.end annotation


# instance fields
.field public data:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field

.field public id:Ljava/lang/String;

.field public names:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 132
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResultCache;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 151
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 154
    :goto_0
    return-object v0

    .line 152
    :cond_0
    new-instance v0, Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResultCache;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResultCache;-><init>()V

    .line 153
    .local v0, "result":Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResultCache;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResultCache;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 3

    .prologue
    .line 137
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 139
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    const-string v1, "data"

    iget-object v2, p0, Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResultCache;->data:Ljava/util/List;

    invoke-static {v2}, Lcom/oculus/modules/codegen/NativeModuleParcel;->convertObjectListToJSONArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    const-string v1, "id"

    iget-object v2, p0, Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResultCache;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 141
    const-string v1, "names"

    iget-object v2, p0, Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResultCache;->names:Ljava/util/List;

    invoke-static {v2}, Lcom/oculus/modules/codegen/NativeModuleParcel;->convertStringListToJSONArray(Ljava/util/List;)Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 143
    :goto_0
    return-object v0

    .line 142
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public final setFromJSONObject(Lorg/json/JSONObject;)V
    .locals 1
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 146
    const-string v0, "data"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/modules/codegen/NativeModuleParcel;->convertJSONArrayToObjectList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResultCache;->data:Ljava/util/List;

    .line 147
    const-string v0, "id"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResultCache;->id:Ljava/lang/String;

    .line 148
    const-string v0, "names"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/modules/codegen/NativeModuleParcel;->convertJSONArrayToStringList(Lorg/json/JSONArray;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResultCache;->names:Ljava/util/List;

    .line 149
    return-void
.end method
