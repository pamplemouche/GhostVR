.class final Lcom/oculus/modules/QuickExperimentsModuleImpl$3;
.super Ljava/lang/Object;
.source "QuickExperimentsModuleImpl.java"

# interfaces
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/modules/QuickExperimentsModuleImpl;->fetchAndCacheQEs(Landroid/content/Context;Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/Runnable;Ljava/lang/Runnable;)V
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
.method constructor <init>(Ljava/lang/Runnable;Ljava/lang/String;Landroid/content/Context;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 347
    iput-object p1, p0, Lcom/oculus/modules/QuickExperimentsModuleImpl$3;->val$onFailure:Ljava/lang/Runnable;

    iput-object p2, p0, Lcom/oculus/modules/QuickExperimentsModuleImpl$3;->val$userId:Ljava/lang/String;

    iput-object p3, p0, Lcom/oculus/modules/QuickExperimentsModuleImpl$3;->val$context:Landroid/content/Context;

    iput-object p4, p0, Lcom/oculus/modules/QuickExperimentsModuleImpl$3;->val$onComplete:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 7
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "e"    # Ljava/io/IOException;

    .prologue
    .line 350
    invoke-static {}, Lcom/oculus/modules/QuickExperimentsModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Failed to fetch QEs: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/IOException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 351
    const-string v0, "oculus_config"

    const-string v1, "status"

    const-string v2, "qe_fetch_failed"

    const-string v3, "error"

    const-string v4, "exception"

    const-string v5, "error_details"

    .line 358
    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v6

    .line 351
    invoke-static/range {v0 .. v6}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v0, p0, Lcom/oculus/modules/QuickExperimentsModuleImpl$3;->val$onFailure:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 360
    iget-object v0, p0, Lcom/oculus/modules/QuickExperimentsModuleImpl$3;->val$onFailure:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 362
    :cond_0
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 18
    .param p1, "call"    # Lokhttp3/Call;
    .param p2, "response"    # Lokhttp3/Response;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 366
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v2

    if-nez v2, :cond_1

    .line 367
    const-string v2, "oculus_config"

    const-string v3, "status"

    const-string v4, "qe_fetch_failed"

    const-string v5, "error"

    const-string v6, "failed_response"

    const-string v7, "error_details"

    .line 374
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->toString()Ljava/lang/String;

    move-result-object v8

    .line 367
    invoke-static/range {v2 .. v8}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 375
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/modules/QuickExperimentsModuleImpl$3;->val$onFailure:Ljava/lang/Runnable;

    if-eqz v2, :cond_0

    .line 376
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/modules/QuickExperimentsModuleImpl$3;->val$onFailure:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 378
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

    .line 381
    :cond_1
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v14

    .line 382
    .local v14, "responseHeaders":Lokhttp3/Headers;
    const/4 v12, 0x0

    .local v12, "i":I
    :goto_0
    invoke-virtual {v14}, Lokhttp3/Headers;->size()I

    move-result v2

    if-ge v12, v2, :cond_2

    .line 383
    invoke-static {}, Lcom/oculus/modules/QuickExperimentsModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v14, v12}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ": "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v14, v12}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    add-int/lit8 v12, v12, 0x1

    goto :goto_0

    .line 386
    :cond_2
    invoke-virtual/range {p2 .. p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v15

    .line 387
    .local v15, "responseString":Ljava/lang/String;
    invoke-static {}, Lcom/oculus/modules/QuickExperimentsModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Received QEs: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 389
    const/16 v16, 0x0

    .line 391
    .local v16, "timeStamp":Lorg/json/JSONObject;
    :try_start_0
    new-instance v17, Lorg/json/JSONObject;

    invoke-direct/range {v17 .. v17}, Lorg/json/JSONObject;-><init>()V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    .end local v16    # "timeStamp":Lorg/json/JSONObject;
    .local v17, "timeStamp":Lorg/json/JSONObject;
    if-eqz v17, :cond_3

    .line 393
    :try_start_1
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v10

    .line 394
    .local v10, "calendar":Ljava/util/Calendar;
    const-string v2, "timestamp"

    invoke-virtual {v10}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v4

    move-object/from16 v0, v17

    invoke-virtual {v0, v2, v4, v5}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_1

    .end local v10    # "calendar":Ljava/util/Calendar;
    :cond_3
    move-object/from16 v16, v17

    .line 412
    .end local v17    # "timeStamp":Lorg/json/JSONObject;
    .restart local v16    # "timeStamp":Lorg/json/JSONObject;
    :goto_1
    if-eqz v16, :cond_5

    .line 413
    const-string v2, "\",\""

    sget-object v3, Lcom/oculus/modules/QuickExperimentsModuleImpl;->qeList:Lcom/google/common/collect/ImmutableList;

    invoke-static {v2, v3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v13

    .line 414
    .local v13, "names":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "{\"data\":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 416
    invoke-virtual {v15}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",\"names\":[\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"],\"id\":\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oculus/modules/QuickExperimentsModuleImpl$3;->val$userId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\"}"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 422
    .local v9, "cache":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/modules/QuickExperimentsModuleImpl$3;->val$context:Landroid/content/Context;

    const-string v3, "VrShellHomeQECacheFile"

    invoke-static {v2, v3, v9}, Lcom/oculus/util/FileUtils;->writeToInternalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/modules/QuickExperimentsModuleImpl$3;->val$context:Landroid/content/Context;

    const-string v3, "VrShellHomeQETimeStampFile"

    .line 424
    invoke-virtual/range {v16 .. v16}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v4

    .line 423
    invoke-static {v2, v3, v4}, Lcom/oculus/util/FileUtils;->writeToInternalStorage(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    .line 426
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/modules/QuickExperimentsModuleImpl$3;->val$onComplete:Ljava/lang/Runnable;

    if-eqz v2, :cond_4

    .line 427
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/modules/QuickExperimentsModuleImpl$3;->val$onComplete:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 431
    :cond_4
    const-string v2, "oculus_config"

    const-string v3, "status"

    const-string v4, "qe_fetch_completed"

    invoke-static {v2, v3, v4}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 436
    .end local v9    # "cache":Ljava/lang/String;
    .end local v13    # "names":Ljava/lang/String;
    :cond_5
    return-void

    .line 396
    :catch_0
    move-exception v11

    .line 397
    .local v11, "e":Lorg/json/JSONException;
    :goto_2
    invoke-static {}, Lcom/oculus/modules/QuickExperimentsModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Json error: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v11}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 398
    const-string v2, "oculus_config"

    const-string v3, "status"

    const-string v4, "qe_fetch_failed"

    const-string v5, "error"

    const-string v6, "parse_error"

    const-string v7, "error_details"

    .line 405
    invoke-virtual {v11}, Lorg/json/JSONException;->getMessage()Ljava/lang/String;

    move-result-object v8

    .line 398
    invoke-static/range {v2 .. v8}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 406
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/modules/QuickExperimentsModuleImpl$3;->val$onFailure:Ljava/lang/Runnable;

    if-eqz v2, :cond_6

    .line 407
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/modules/QuickExperimentsModuleImpl$3;->val$onFailure:Ljava/lang/Runnable;

    invoke-interface {v2}, Ljava/lang/Runnable;->run()V

    .line 409
    :cond_6
    const/16 v16, 0x0

    goto/16 :goto_1

    .line 396
    .end local v11    # "e":Lorg/json/JSONException;
    .end local v16    # "timeStamp":Lorg/json/JSONObject;
    .restart local v17    # "timeStamp":Lorg/json/JSONObject;
    :catch_1
    move-exception v11

    move-object/from16 v16, v17

    .end local v17    # "timeStamp":Lorg/json/JSONObject;
    .restart local v16    # "timeStamp":Lorg/json/JSONObject;
    goto :goto_2
.end method
