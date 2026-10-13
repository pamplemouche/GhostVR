.class final Lcom/oculus/modules/QuickExperimentsModuleImpl$1;
.super Ljava/lang/Object;
.source "QuickExperimentsModuleImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/modules/QuickExperimentsModuleImpl;->initialFetchAsync(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 157
    iput-object p1, p0, Lcom/oculus/modules/QuickExperimentsModuleImpl$1;->val$context:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 157
    invoke-virtual {p0}, Lcom/oculus/modules/QuickExperimentsModuleImpl$1;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 21

    .prologue
    .line 160
    const/4 v9, 0x0

    .line 161
    .local v9, "cache":Lorg/json/JSONObject;
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V

    .line 162
    .local v14, "overrides":Lorg/json/JSONObject;
    const-wide/16 v18, 0x0

    .line 165
    .local v18, "timestamp":D
    :try_start_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/modules/QuickExperimentsModuleImpl$1;->val$context:Landroid/content/Context;

    const-string v3, "VrShellHomeQECacheFile"

    invoke-static {v2, v3}, Lcom/oculus/util/FileUtils;->readFromInternalStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 166
    .local v11, "cacheAsString":Ljava/lang/String;
    invoke-virtual {v11}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 167
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v11}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v9    # "cache":Lorg/json/JSONObject;
    .local v10, "cache":Lorg/json/JSONObject;
    move-object v9, v10

    .line 182
    .end local v10    # "cache":Lorg/json/JSONObject;
    .end local v11    # "cacheAsString":Ljava/lang/String;
    .restart local v9    # "cache":Lorg/json/JSONObject;
    :cond_0
    :goto_0
    :try_start_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/modules/QuickExperimentsModuleImpl$1;->val$context:Landroid/content/Context;

    const-string v3, "VrShellHomeQEOverridesFile"

    invoke-static {v2, v3}, Lcom/oculus/util/FileUtils;->readFromInternalStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 183
    .local v16, "overridesAsString":Ljava/lang/String;
    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    .line 184
    new-instance v15, Lorg/json/JSONObject;

    invoke-direct/range {v15 .. v16}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .end local v14    # "overrides":Lorg/json/JSONObject;
    .local v15, "overrides":Lorg/json/JSONObject;
    move-object v14, v15

    .line 199
    .end local v15    # "overrides":Lorg/json/JSONObject;
    .end local v16    # "overridesAsString":Ljava/lang/String;
    .restart local v14    # "overrides":Lorg/json/JSONObject;
    :cond_1
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/modules/QuickExperimentsModuleImpl$1;->val$context:Landroid/content/Context;

    const-string v3, "VrShellHomeQETimeStampFile"

    invoke-static {v2, v3}, Lcom/oculus/util/FileUtils;->readFromInternalStorage(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    .line 200
    .local v17, "timestampAsString":Ljava/lang/String;
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 201
    new-instance v20, Lorg/json/JSONObject;

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 202
    .local v20, "timestampObject":Lorg/json/JSONObject;
    const-string v2, "timestamp"

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    move-result-wide v18

    .line 216
    .end local v17    # "timestampAsString":Ljava/lang/String;
    .end local v20    # "timestampObject":Lorg/json/JSONObject;
    :cond_2
    :goto_2
    invoke-static {}, Lcom/oculus/modules/QuickExperimentsModuleImpl;->access$100()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->lock()V

    .line 218
    :try_start_3
    new-instance v2, Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;

    invoke-direct {v2}, Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;-><init>()V

    invoke-static {v2}, Lcom/oculus/modules/QuickExperimentsModuleImpl;->access$202(Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;)Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;

    .line 219
    invoke-static {}, Lcom/oculus/modules/QuickExperimentsModuleImpl;->access$200()Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;

    move-result-object v2

    invoke-static {v9}, Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResultCache;->makeFromJSONObject(Lorg/json/JSONObject;)Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResultCache;

    move-result-object v3

    iput-object v3, v2, Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;->cache:Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResultCache;

    .line 220
    invoke-static {}, Lcom/oculus/modules/QuickExperimentsModuleImpl;->access$200()Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;

    move-result-object v2

    iput-object v14, v2, Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;->overrides:Lorg/json/JSONObject;

    .line 221
    invoke-static {}, Lcom/oculus/modules/QuickExperimentsModuleImpl;->access$200()Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;

    move-result-object v2

    move-wide/from16 v0, v18

    iput-wide v0, v2, Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;->timestamp:D

    .line 222
    invoke-static {}, Lcom/oculus/modules/QuickExperimentsModuleImpl;->access$300()Lcom/oculus/modules/QuickExperimentsModuleImpl;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 223
    invoke-static {}, Lcom/oculus/modules/QuickExperimentsModuleImpl;->access$400()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/oculus/modules/codegen/Resolver;

    .line 224
    .local v12, "callback":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;>;"
    invoke-static {}, Lcom/oculus/modules/QuickExperimentsModuleImpl;->access$300()Lcom/oculus/modules/QuickExperimentsModuleImpl;

    move-result-object v3

    invoke-static {v3, v12}, Lcom/oculus/modules/QuickExperimentsModuleImpl;->access$500(Lcom/oculus/modules/QuickExperimentsModuleImpl;Lcom/oculus/modules/codegen/Resolver;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_3

    .line 228
    .end local v12    # "callback":Lcom/oculus/modules/codegen/Resolver;, "Lcom/oculus/modules/codegen/Resolver<Lcom/oculus/modules/codegen/QuickExperimentsModule$GetCachedQEsResult;>;"
    :catchall_0
    move-exception v2

    invoke-static {}, Lcom/oculus/modules/QuickExperimentsModuleImpl;->access$100()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    throw v2

    .line 169
    :catch_0
    move-exception v13

    .line 170
    .local v13, "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/oculus/modules/QuickExperimentsModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialFetchAsync(): Failed to parse cache. Json error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 171
    const-string v2, "oculus_config"

    const-string v3, "status"

    const-string v4, "qe_local_read_failed"

    const-string v5, "error"

    const-string v6, "parse_cache"

    const-string v7, "error_details"

    .line 178
    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 171
    invoke-static/range {v2 .. v8}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 186
    .end local v13    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v13

    .line 187
    .restart local v13    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/oculus/modules/QuickExperimentsModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialFetchAsync(): Failed to parse overrides. Json error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 188
    const-string v2, "oculus_config"

    const-string v3, "status"

    const-string v4, "qe_local_read_failed"

    const-string v5, "error"

    const-string v6, "parse_overrides"

    const-string v7, "error_details"

    .line 195
    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 188
    invoke-static/range {v2 .. v8}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    .line 204
    .end local v13    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v13

    .line 205
    .restart local v13    # "e":Ljava/lang/Exception;
    invoke-static {}, Lcom/oculus/modules/QuickExperimentsModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "initialFetchAsync(): Failed to parse timestamp. Json error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const-string v2, "oculus_config"

    const-string v3, "status"

    const-string v4, "qe_local_read_failed"

    const-string v5, "error"

    const-string v6, "parse_timestamp"

    const-string v7, "error_details"

    .line 213
    invoke-virtual {v13}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 206
    invoke-static/range {v2 .. v8}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 228
    .end local v13    # "e":Ljava/lang/Exception;
    :cond_3
    invoke-static {}, Lcom/oculus/modules/QuickExperimentsModuleImpl;->access$100()Ljava/util/concurrent/locks/ReentrantLock;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/concurrent/locks/ReentrantLock;->unlock()V

    .line 231
    const/4 v2, 0x0

    return-object v2
.end method
