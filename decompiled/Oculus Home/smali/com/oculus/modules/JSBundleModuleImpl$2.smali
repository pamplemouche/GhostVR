.class Lcom/oculus/modules/JSBundleModuleImpl$2;
.super Ljava/lang/Object;
.source "JSBundleModuleImpl.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/modules/JSBundleModuleImpl;->fetchJSBundleConfiguration()Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/modules/JSBundleModuleImpl;


# direct methods
.method constructor <init>(Lcom/oculus/modules/JSBundleModuleImpl;)V
    .locals 0
    .param p1, "this$0"    # Lcom/oculus/modules/JSBundleModuleImpl;

    .prologue
    .line 84
    iput-object p1, p0, Lcom/oculus/modules/JSBundleModuleImpl$2;->this$0:Lcom/oculus/modules/JSBundleModuleImpl;

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
    .line 84
    invoke-virtual {p0}, Lcom/oculus/modules/JSBundleModuleImpl$2;->call()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/String;
    .locals 14
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    const/4 v13, 0x1

    const/4 v12, 0x0

    .line 88
    :try_start_0
    const-string v0, "oculus_js_bundle"

    const-string v1, "status"

    const-string v2, "js_bundle_config_fetch_started"

    invoke-static {v0, v1, v2}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 93
    const-string v0, "https://graph.oculus.com"

    invoke-static {v0}, Lokhttp3/HttpUrl;->parse(Ljava/lang/String;)Lokhttp3/HttpUrl;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/HttpUrl;->newBuilder()Lokhttp3/HttpUrl$Builder;

    move-result-object v11

    .line 94
    .local v11, "urlBuilder":Lokhttp3/HttpUrl$Builder;
    const-string v0, "bundle_configuration"

    invoke-virtual {v11, v0}, Lokhttp3/HttpUrl$Builder;->addPathSegment(Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 95
    const-string v0, "access_token"

    const-string v1, "OC|826037204154824|"

    invoke-virtual {v11, v0, v1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 97
    const-string v0, "qa_only"

    const-string v1, "true"

    invoke-virtual {v11, v0, v1}, Lokhttp3/HttpUrl$Builder;->addQueryParameter(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/HttpUrl$Builder;

    .line 99
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v11}, Lokhttp3/HttpUrl$Builder;->build()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v9

    .line 100
    .local v9, "request":Lokhttp3/Request;
    invoke-static {}, Lcom/oculus/modules/JSBundleModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Built request: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v9}, Lokhttp3/Request;->toString()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    iget-object v0, p0, Lcom/oculus/modules/JSBundleModuleImpl$2;->this$0:Lcom/oculus/modules/JSBundleModuleImpl;

    invoke-static {v0}, Lcom/oculus/modules/JSBundleModuleImpl;->access$100(Lcom/oculus/modules/JSBundleModuleImpl;)Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, v9}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v10

    .line 105
    .local v10, "response":Lokhttp3/Response;
    invoke-virtual {v10}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-nez v0, :cond_0

    .line 106
    const-string v0, "Failed to fetch JS bundle configuration. Response failed: %s"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 108
    invoke-virtual {v10}, Lokhttp3/Response;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 106
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 109
    .local v6, "errorString":Ljava/lang/String;
    invoke-static {}, Lcom/oculus/modules/JSBundleModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 110
    const-string v0, "oculus_js_bundle"

    const-string v1, "status"

    const-string v2, "js_bundle_config_fetch_failed"

    const-string v3, "error"

    const-string v4, "response_unsuccessful"

    const-string v5, "error_details"

    invoke-static/range {v0 .. v6}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 118
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v6    # "errorString":Ljava/lang/String;
    .end local v9    # "request":Lokhttp3/Request;
    .end local v10    # "response":Lokhttp3/Response;
    .end local v11    # "urlBuilder":Lokhttp3/HttpUrl$Builder;
    :catch_0
    move-exception v8

    .line 132
    .local v8, "e":Ljava/lang/Exception;
    const-string v0, "Failed to fetch JS bundles: %s"

    new-array v1, v13, [Ljava/lang/Object;

    invoke-virtual {v8}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v12

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 133
    .restart local v6    # "errorString":Ljava/lang/String;
    invoke-static {}, Lcom/oculus/modules/JSBundleModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    const-string v0, "oculus_js_bundle"

    const-string v1, "status"

    const-string v2, "js_bundle_config_fetch_failed"

    const-string v3, "error"

    const-string v4, "exception"

    const-string v5, "error_details"

    invoke-static/range {v0 .. v6}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 142
    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0, v6}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 121
    .end local v6    # "errorString":Ljava/lang/String;
    .end local v8    # "e":Ljava/lang/Exception;
    .restart local v9    # "request":Lokhttp3/Request;
    .restart local v10    # "response":Lokhttp3/Response;
    .restart local v11    # "urlBuilder":Lokhttp3/HttpUrl$Builder;
    :cond_0
    :try_start_1
    invoke-virtual {v10}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v7

    .line 122
    .local v7, "bundleConfiguration":Ljava/lang/String;
    invoke-static {}, Lcom/oculus/modules/JSBundleModuleImpl;->access$000()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Received JS bundle configuration: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v7, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const-string v0, "oculus_js_bundle"

    const-string v1, "status"

    const-string v2, "js_bundle_config_fetch_success"

    invoke-static {v0, v1, v2}, Lcom/oculus/logging/legacy/OculusLogger;->reportEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 129
    return-object v7
.end method
