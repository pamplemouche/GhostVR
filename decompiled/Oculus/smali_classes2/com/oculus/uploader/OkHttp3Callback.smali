.class public Lcom/oculus/uploader/OkHttp3Callback;
.super Ljava/lang/Object;
.source "OkHttp3Callback.java"

# interfaces
.implements Lokhttp3/Callback;


# instance fields
.field private final mResponseHandler:Lcom/facebook/fbuploader/HttpRequestExecutor$HttpRequestResponseHandler;


# direct methods
.method public constructor <init>(Lcom/facebook/fbuploader/HttpRequestExecutor$HttpRequestResponseHandler;)V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 19
    iput-object p1, p0, Lcom/oculus/uploader/OkHttp3Callback;->mResponseHandler:Lcom/facebook/fbuploader/HttpRequestExecutor$HttpRequestResponseHandler;

    .line 20
    return-void
.end method

.method private static getRequestAsString(Lokhttp3/Request;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 48
    const-string v0, "Request: %s Headers: %s"

    .line 49
    invoke-virtual {p0}, Lokhttp3/Request;->headers()Lokhttp3/Headers;

    move-result-object v1

    .line 48
    invoke-static {v0, p0, v1}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getResponseAsString(Lokhttp3/Response;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    const-string v0, "Response[%d]: %s "

    .line 54
    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-static {v0, v1, v2}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static isRetryable(Lokhttp3/Request;)Z
    .locals 2

    .prologue
    .line 44
    const-string v0, "get"

    invoke-virtual {p0}, Lokhttp3/Request;->method()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 7

    .prologue
    .line 24
    iget-object v6, p0, Lcom/oculus/uploader/OkHttp3Callback;->mResponseHandler:Lcom/facebook/fbuploader/HttpRequestExecutor$HttpRequestResponseHandler;

    new-instance v0, Lcom/facebook/fbuploader/UploadFailureException;

    .line 25
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-static {v1}, Lcom/oculus/uploader/OkHttp3Callback;->getRequestAsString(Lokhttp3/Request;)Ljava/lang/String;

    move-result-object v1

    const-wide/16 v2, -0x1

    const/4 v4, 0x0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/fbuploader/UploadFailureException;-><init>(Ljava/lang/String;JZLjava/lang/Exception;)V

    .line 26
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-static {v1}, Lcom/oculus/uploader/OkHttp3Callback;->isRetryable(Lokhttp3/Request;)Z

    move-result v1

    .line 24
    invoke-virtual {v6, v0, v1}, Lcom/facebook/fbuploader/HttpRequestExecutor$HttpRequestResponseHandler;->onFailure(Ljava/lang/Exception;Z)V

    .line 27
    return-void
.end method

.method public onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 31
    invoke-virtual {p2}, Lokhttp3/Response;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 32
    iget-object v0, p0, Lcom/oculus/uploader/OkHttp3Callback;->mResponseHandler:Lcom/facebook/fbuploader/HttpRequestExecutor$HttpRequestResponseHandler;

    invoke-virtual {p2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->string()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/fbuploader/HttpRequestExecutor$HttpRequestResponseHandler;->onCompletion(Ljava/lang/String;)V

    .line 41
    :goto_0
    return-void

    .line 34
    :cond_0
    iget-object v0, p0, Lcom/oculus/uploader/OkHttp3Callback;->mResponseHandler:Lcom/facebook/fbuploader/HttpRequestExecutor$HttpRequestResponseHandler;

    new-instance v1, Lcom/facebook/fbuploader/UploadFailureException;

    const-string v2, "%s failed, %s"

    .line 38
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v3

    invoke-static {v3}, Lcom/oculus/uploader/OkHttp3Callback;->getRequestAsString(Lokhttp3/Request;)Ljava/lang/String;

    move-result-object v3

    invoke-static {p2}, Lcom/oculus/uploader/OkHttp3Callback;->getResponseAsString(Lokhttp3/Response;)Ljava/lang/String;

    move-result-object v4

    .line 36
    invoke-static {v2, v3, v4}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/facebook/fbuploader/UploadFailureException;-><init>(Ljava/lang/String;)V

    .line 39
    invoke-interface {p1}, Lokhttp3/Call;->request()Lokhttp3/Request;

    move-result-object v2

    invoke-static {v2}, Lcom/oculus/uploader/OkHttp3Callback;->isRetryable(Lokhttp3/Request;)Z

    move-result v2

    .line 34
    invoke-virtual {v0, v1, v2}, Lcom/facebook/fbuploader/HttpRequestExecutor$HttpRequestResponseHandler;->onFailure(Ljava/lang/Exception;Z)V

    goto :goto_0
.end method
