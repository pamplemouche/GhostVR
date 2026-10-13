.class public Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;
.super Lcom/oculus/modules/codegen/NativeModuleParcel;
.source "QuickExperimentsModule.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/modules/codegen/QuickExperimentsModule;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "GetCachedQEsResult"
.end annotation


# instance fields
.field public cache:Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResultCache;

.field public overrides:Lorg/json/JSONObject;

.field public timestamp:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 107
    invoke-direct {p0}, Lcom/oculus/modules/codegen/NativeModuleParcel;-><init>()V

    return-void
.end method

.method public static final makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;
    .locals 1
    .param p0, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 126
    if-nez p0, :cond_0

    const/4 v0, 0x0

    .line 129
    :goto_0
    return-object v0

    .line 127
    :cond_0
    new-instance v0, Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;

    invoke-direct {v0}, Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;-><init>()V

    .line 128
    .local v0, "result":Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;
    invoke-virtual {v0, p0}, Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;->setFromJSONObject(Lorg/json/JSONObject;)V

    goto :goto_0
.end method


# virtual methods
.method public final convertToJSONObject()Lorg/json/JSONObject;
    .locals 4

    .prologue
    .line 112
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 114
    .local v0, "parcel":Lorg/json/JSONObject;
    :try_start_0
    const-string v2, "cache"

    iget-object v1, p0, Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;->cache:Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResultCache;

    if-nez v1, :cond_0

    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    :goto_0
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 115
    const-string v1, "overrides"

    iget-object v2, p0, Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;->overrides:Lorg/json/JSONObject;

    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 116
    const-string v1, "timestamp"

    iget-wide v2, p0, Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;->timestamp:D

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 118
    :goto_1
    return-object v0

    .line 114
    :cond_0
    iget-object v1, p0, Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;->cache:Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResultCache;

    invoke-virtual {v1}, Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResultCache;->convertToJSONObject()Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 117
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public final setFromJSONObject(Lorg/json/JSONObject;)V
    .locals 4
    .param p1, "json"    # Lorg/json/JSONObject;

    .prologue
    .line 121
    const-string v0, "cache"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    iput-object v0, p0, Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;->cache:Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResultCache;

    .line 122
    const-string v0, "overrides"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;->overrides:Lorg/json/JSONObject;

    .line 123
    const-string v0, "timestamp"

    const-wide/16 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v0

    iput-wide v0, p0, Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;->timestamp:D

    .line 124
    return-void

    .line 121
    :cond_0
    const-string v0, "cache"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResultCache;->makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResultCache;

    move-result-object v0

    goto :goto_0
.end method
