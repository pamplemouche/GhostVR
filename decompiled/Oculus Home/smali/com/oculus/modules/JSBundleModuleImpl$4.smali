.class Lcom/oculus/modules/JSBundleModuleImpl$4;
.super Ljava/lang/Object;
.source "JSBundleModuleImpl.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/modules/JSBundleModuleImpl;->downloadJSBundle()Lbolts/Continuation;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Lcom/oculus/vrshell/home/JSBundle;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Boolean;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/modules/JSBundleModuleImpl;


# direct methods
.method constructor <init>(Lcom/oculus/modules/JSBundleModuleImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/modules/JSBundleModuleImpl;

    .prologue
    .line 186
    iput-object p1, p0, Lcom/oculus/modules/JSBundleModuleImpl$4;->this$0:Lcom/oculus/modules/JSBundleModuleImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/oculus/vrshell/home/JSBundle;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 189
    .local p1, "task":Lbolts/Task;, "Lbolts/Task<Lcom/oculus/vrshell/home/JSBundle;>;"
    invoke-virtual/range {p1 .. p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/oculus/vrshell/home/JSBundle;

    .line 190
    .local v8, "bundle":Lcom/oculus/vrshell/home/JSBundle;
    if-nez v8, :cond_0

    .line 191
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    .line 263
    :goto_0
    return-object v1

    .line 194
    :cond_0
    :try_start_0
    const-string v1, "oculus_js_bundle"

    const-string v2, "status"

    const-string v3, "js_bundle_download_started"

    invoke-static {v1, v2, v3}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    invoke-virtual {v8}, Lcom/oculus/vrshell/home/JSBundle;->getUrl()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v16

    .line 201
    .local v16, "urlBuilder":Lokhttp3/HttpUrl$Builder;
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual/range {v16 .. v16}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v12

    .line 202
    .local v12, "request":Lokhttp3/Request;
    invoke-static {}, Lcom/oculus/modules/JSBundleModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Built request: %s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {v12}, Lokhttp3/Request;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oculus/modules/JSBundleModuleImpl$4;->this$0:Lcom/oculus/modules/JSBundleModuleImpl;

    invoke-static {v1}, Lcom/oculus/modules/JSBundleModuleImpl;->access$100(Lcom/oculus/modules/JSBundleModuleImpl;)Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, v12}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v1

    invoke-interface {v1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v13

    .line 206
    .local v13, "response":Lokhttp3/Response;
    invoke-virtual {v13}, Lokhttp3/Response;->isSuccessful()Z

    move-result v1

    if-nez v1, :cond_1

    .line 207
    const-string v1, "Failed to download JS bundles. Response failed: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 209
    invoke-virtual {v13}, Lokhttp3/Response;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    .line 207
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 210
    .local v7, "errorString":Ljava/lang/String;
    invoke-static {}, Lcom/oculus/modules/JSBundleModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const-string v1, "oculus_js_bundle"

    const-string v2, "status"

    const-string v3, "js_bundle_download_failed"

    const-string v4, "error"

    const-string v5, "response_unsuccessful"

    const-string v6, "error_details"

    invoke-static/range {v1 .. v7}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    .end local v7    # "errorString":Ljava/lang/String;
    .end local v12    # "request":Lokhttp3/Request;
    .end local v13    # "response":Lokhttp3/Response;
    .end local v16    # "urlBuilder":Lokhttp3/HttpUrl$Builder;
    :catch_0
    move-exception v10

    .line 291
    .local v10, "e":Ljava/lang/Exception;
    const-string v1, "Failed to download JS bundle: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 292
    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 293
    .restart local v7    # "errorString":Ljava/lang/String;
    const-string v1, "oculus_js_bundle"

    const-string v2, "status"

    const-string v3, "js_bundle_download_failed"

    const-string v4, "error"

    const-string v5, "exception"

    const-string v6, "error_details"

    invoke-static/range {v1 .. v7}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 224
    .end local v7    # "errorString":Ljava/lang/String;
    .end local v10    # "e":Ljava/lang/Exception;
    .restart local v12    # "request":Lokhttp3/Request;
    .restart local v13    # "response":Lokhttp3/Response;
    .restart local v16    # "urlBuilder":Lokhttp3/HttpUrl$Builder;
    :cond_1
    :try_start_1
    const-string v1, "unverified_%s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 225
    invoke-virtual {v8}, Lcom/oculus/vrshell/home/JSBundle;->getFileName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v15

    .line 226
    .local v15, "unverifiedFileName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oculus/modules/JSBundleModuleImpl$4;->this$0:Lcom/oculus/modules/JSBundleModuleImpl;

    .line 227
    invoke-static {v1}, Lcom/oculus/modules/JSBundleModuleImpl;->access$200(Lcom/oculus/modules/JSBundleModuleImpl;)Landroid/content/Context;

    move-result-object v1

    .line 229
    invoke-virtual {v13}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->bytes()[B

    move-result-object v2

    .line 226
    invoke-static {v1, v15, v2}, Lcom/oculus/util/FileUtils;->writeBytesToInternalStorage(Landroid/content/Context;Ljava/lang/String;[B)V

    .line 230
    invoke-static {}, Lcom/oculus/modules/JSBundleModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Downloaded %s to %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v15, v3, v4

    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oculus/modules/JSBundleModuleImpl$4;->this$0:Lcom/oculus/modules/JSBundleModuleImpl;

    .line 231
    invoke-static {v5}, Lcom/oculus/modules/JSBundleModuleImpl;->access$200(Lcom/oculus/modules/JSBundleModuleImpl;)Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v5

    aput-object v5, v3, v4

    .line 230
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 232
    const-string v1, "oculus_js_bundle"

    const-string v2, "status"

    const-string v3, "js_bundle_download_complete"

    invoke-static {v1, v2, v3}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 237
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oculus/modules/JSBundleModuleImpl$4;->this$0:Lcom/oculus/modules/JSBundleModuleImpl;

    invoke-virtual {v8}, Lcom/oculus/vrshell/home/JSBundle;->getChecksum()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v15, v2}, Lcom/oculus/modules/JSBundleModuleImpl;->access$300(Lcom/oculus/modules/JSBundleModuleImpl;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v9

    .line 238
    .local v9, "checksumIsValid":Z
    invoke-static {}, Lcom/oculus/modules/JSBundleModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v2

    const-string v3, "JS bundle override checksum %s is %s"

    const/4 v1, 0x2

    new-array v4, v1, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 240
    invoke-virtual {v8}, Lcom/oculus/vrshell/home/JSBundle;->getChecksum()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v1

    const/4 v5, 0x1

    if-eqz v9, :cond_2

    const-string v1, "valid"

    :goto_1
    aput-object v1, v4, v5

    .line 238
    invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    if-eqz v9, :cond_4

    .line 244
    const-string v1, "oculus_js_bundle"

    const-string v2, "status"

    const-string v3, "js_bundle_download_checksum_verified"

    invoke-static {v1, v2, v3}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 248
    new-instance v14, Ljava/io/File;

    const-string v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oculus/modules/JSBundleModuleImpl$4;->this$0:Lcom/oculus/modules/JSBundleModuleImpl;

    .line 249
    invoke-static {v4}, Lcom/oculus/modules/JSBundleModuleImpl;->access$200(Lcom/oculus/modules/JSBundleModuleImpl;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    aput-object v15, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v14, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 250
    .local v14, "unverifiedBundle":Ljava/io/File;
    new-instance v17, Ljava/io/File;

    const-string v1, "%s/%s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oculus/modules/JSBundleModuleImpl$4;->this$0:Lcom/oculus/modules/JSBundleModuleImpl;

    .line 251
    invoke-static {v4}, Lcom/oculus/modules/JSBundleModuleImpl;->access$200(Lcom/oculus/modules/JSBundleModuleImpl;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v8}, Lcom/oculus/vrshell/home/JSBundle;->getFileName()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, v17

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 253
    .local v17, "verifiedBundle":Ljava/io/File;
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v11

    .line 254
    .local v11, "renameSucceeded":Z
    if-eqz v11, :cond_3

    .line 255
    invoke-static {}, Lcom/oculus/modules/JSBundleModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v1

    const-string v2, "%s renamed to %s. Ready for execution."

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v15, v3, v4

    const/4 v4, 0x1

    .line 258
    invoke-virtual {v8}, Lcom/oculus/vrshell/home/JSBundle;->getFileName()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    .line 255
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    const-string v1, "oculus_js_bundle"

    const-string v2, "status"

    const-string v3, "js_bundle_ready_for_execution"

    invoke-static {v1, v2, v3}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 263
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v1}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v1

    goto/16 :goto_0

    .line 240
    .end local v11    # "renameSucceeded":Z
    .end local v14    # "unverifiedBundle":Ljava/io/File;
    .end local v17    # "verifiedBundle":Ljava/io/File;
    :cond_2
    const-string v1, "invalid"

    goto/16 :goto_1

    .line 265
    .restart local v11    # "renameSucceeded":Z
    .restart local v14    # "unverifiedBundle":Ljava/io/File;
    .restart local v17    # "verifiedBundle":Ljava/io/File;
    :cond_3
    const-string v1, "Failed to rename verified JS bundle"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 266
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 267
    .restart local v7    # "errorString":Ljava/lang/String;
    const-string v1, "oculus_js_bundle"

    const-string v2, "status"

    const-string v3, "js_bundle_download_failed"

    const-string v4, "error"

    const-string v5, "rename_failed"

    const-string v6, "error_details"

    invoke-static/range {v1 .. v7}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 275
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1

    .line 278
    .end local v7    # "errorString":Ljava/lang/String;
    .end local v11    # "renameSucceeded":Z
    .end local v14    # "unverifiedBundle":Ljava/io/File;
    .end local v17    # "verifiedBundle":Ljava/io/File;
    :cond_4
    const-string v1, "JS bundle override checksum was invalid"

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    .line 279
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    .line 280
    .restart local v7    # "errorString":Ljava/lang/String;
    const-string v1, "oculus_js_bundle"

    const-string v2, "status"

    const-string v3, "js_bundle_download_failed"

    const-string v4, "error"

    const-string v5, "checksum_not_match"

    const-string v6, "error_details"

    invoke-static/range {v1 .. v7}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 288
    new-instance v1, Ljava/lang/Exception;

    invoke-direct {v1, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 186
    invoke-virtual {p0, p1}, Lcom/oculus/modules/JSBundleModuleImpl$4;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
