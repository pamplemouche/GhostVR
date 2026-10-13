.class final Lcom/oculus/systemutilities/module/GateKeepers$3;
.super Ljava/lang/Object;
.source "GateKeepers.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/systemutilities/module/GateKeepers;->fetchAndCacheGKs(Landroid/content/Context;Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$context:Landroid/content/Context;

.field final synthetic val$onComplete:Ljava/lang/Runnable;

.field final synthetic val$onFailure:Ljava/lang/Runnable;

.field final synthetic val$userId:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;Landroid/content/Context;Ljava/lang/String;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 331
    iput-object p1, p0, Lcom/oculus/systemutilities/module/GateKeepers$3;->val$onFailure:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/oculus/systemutilities/module/GateKeepers$3;->val$context:Landroid/content/Context;

    iput-object p3, p0, Lcom/oculus/systemutilities/module/GateKeepers$3;->val$userId:Ljava/lang/String;

    iput-object p4, p0, Lcom/oculus/systemutilities/module/GateKeepers$3;->val$onComplete:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 7
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 334
    invoke-static {}, Lcom/oculus/systemutilities/module/GateKeepers;->access$600()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Failed to fetch GKs"

    invoke-static {v0, v1, p2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 335
    const-string v0, "oculus_config"

    const-string v1, "status"

    const-string v2, "gk_fetch_failed"

    const-string v3, "error"

    const-string v4, "exception"

    const-string v5, "error_details"

    .line 342
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 335
    invoke-static/range {v0 .. v6}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 343
    iget-object v0, p0, Lcom/oculus/systemutilities/module/GateKeepers$3;->val$onFailure:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/oculus/systemutilities/module/GateKeepers$3;->val$onFailure:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 346
    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 19
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 350
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v2

    if-nez v2, :cond_1

    .line 351
    const-string v2, "oculus_config"

    const-string v3, "status"

    const-string v4, "gk_fetch_failed"

    const-string v5, "error"

    const-string v6, "failed_response"

    const-string v7, "error_details"

    .line 358
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->toString()Ljava/lang/String;

    move-result-object v8

    .line 351
    invoke-static/range {v2 .. v8}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/systemutilities/module/GateKeepers$3;->val$onFailure:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 360
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/systemutilities/module/GateKeepers$3;->val$onFailure:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 362
    :cond_0
    new-instance v2, Ljava/io/IOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unexpected code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 365
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v17

    .line 366
    .local v17, "responseHeaders":Lokhttp3/Headers;
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_0
    invoke-virtual/range {v17 .. v17}, Lokhttp3/Headers;->size()I

    move-result v2

    move/from16 v0, v16

    if-ge v0, v2, :cond_2

    .line 367
    invoke-static {}, Lcom/oculus/systemutilities/module/GateKeepers;->access$600()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v17

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    add-int/lit8 v16, v16, 0x1

    goto :goto_0

    .line 370
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v18

    .line 371
    .local v18, "responseString":Ljava/lang/String;
    invoke-static {}, Lcom/oculus/systemutilities/module/GateKeepers;->access$600()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received GKs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v18

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const/4 v13, 0x0

    .line 375
    .local v13, "gkMap":Lorg/json/JSONObject;
    :try_start_0
    new-instance v14, Lorg/json/JSONObject;

    invoke-direct {v14}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 376
    .end local v13    # "gkMap":Lorg/json/JSONObject;
    .local v14, "gkMap":Lorg/json/JSONObject;
    :try_start_1
    new-instance v15, Lorg/json/JSONObject;

    move-object/from16 v0, v18

    invoke-direct {v15, v0}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 377
    .local v15, "gkResponseObject":Lorg/json/JSONObject;
    const-string v2, "data"

    .line 378
    invoke-virtual {v15, v2}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v2

    const/4 v3, 0x0

    .line 379
    invoke-virtual {v2, v3}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v3, "results"

    .line 380
    invoke-virtual {v2, v3}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v11

    .line 381
    .local v11, "gkBoolArray":Lorg/json/JSONArray;
    sget-object v2, Lcom/oculus/systemutilities/module/GateKeepers;->gkList:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v12

    .line 382
    .local v12, "gkCount":I
    const/16 v16, 0x0

    :goto_1
    move/from16 v0, v16

    if-ge v0, v12, :cond_3

    .line 383
    sget-object v2, Lcom/oculus/systemutilities/module/GateKeepers;->gkList:Lcom/google/common/collect/ImmutableList;

    move/from16 v0, v16

    invoke-virtual {v2, v0}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    move/from16 v0, v16

    invoke-virtual {v11, v0}, Lorg/json/JSONArray;->getBoolean(I)Z

    move-result v3

    invoke-virtual {v14, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .line 382
    add-int/lit8 v16, v16, 0x1

    goto :goto_1

    :cond_3
    move-object v13, v14

    .line 401
    .end local v11    # "gkBoolArray":Lorg/json/JSONArray;
    .end local v12    # "gkCount":I
    .end local v14    # "gkMap":Lorg/json/JSONObject;
    .end local v15    # "gkResponseObject":Lorg/json/JSONObject;
    .restart local v13    # "gkMap":Lorg/json/JSONObject;
    :cond_4
    :goto_2
    if-eqz v13, :cond_6

    .line 402
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v9

    .line 403
    .local v9, "calendar":Ljava/util/Calendar;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/systemutilities/module/GateKeepers$3;->val$context:Landroid/content/Context;

    const-string v3, "VrShellHomeGKCacheFile"

    .line 406
    invoke-virtual {v13}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 403
    invoke-static {v2, v3, v4}, Lcom/oculus/util/FileUtils;->writeToInternalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 408
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/systemutilities/module/GateKeepers$3;->val$context:Landroid/content/Context;

    const-string v3, "VrShellHomeGKExtraFile"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "{\"timestamp\":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 411
    invoke-virtual {v9}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",\"id\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oculus/systemutilities/module/GateKeepers$3;->val$userId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\"}"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 408
    invoke-static {v2, v3, v4}, Lcom/oculus/util/FileUtils;->writeToInternalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 413
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/systemutilities/module/GateKeepers$3;->val$onComplete:Ljava/lang/Runnable;

    if-eqz v2, :cond_5

    .line 414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/systemutilities/module/GateKeepers$3;->val$onComplete:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 418
    :cond_5
    const-string v2, "oculus_config"

    const-string v3, "status"

    const-string v4, "gk_fetch_completed"

    invoke-static {v2, v3, v4}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    .end local v9    # "calendar":Ljava/util/Calendar;
    :cond_6
    return-void

    .line 385
    :catch_0
    move-exception v10

    .line 386
    .local v10, "e":Lorg/json/JSONException;
    :goto_3
    invoke-static {}, Lcom/oculus/systemutilities/module/GateKeepers;->access$600()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Json error"

    invoke-static {v2, v3, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 387
    const-string v2, "oculus_config"

    const-string v3, "status"

    const-string v4, "gk_fetch_failed"

    const-string v5, "error"

    const-string v6, "parse_error"

    const-string v7, "error_details"

    .line 394
    invoke-virtual {v10}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 387
    invoke-static/range {v2 .. v8}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const/4 v13, 0x0

    .line 396
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/systemutilities/module/GateKeepers$3;->val$onFailure:Ljava/lang/Runnable;

    if-eqz v2, :cond_4

    .line 397
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/systemutilities/module/GateKeepers$3;->val$onFailure:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    goto/16 :goto_2

    .line 385
    .end local v10    # "e":Lorg/json/JSONException;
    .end local v13    # "gkMap":Lorg/json/JSONObject;
    .restart local v14    # "gkMap":Lorg/json/JSONObject;
    :catch_1
    move-exception v10

    move-object v13, v14

    .end local v14    # "gkMap":Lorg/json/JSONObject;
    .restart local v13    # "gkMap":Lorg/json/JSONObject;
    goto :goto_3
.end method
