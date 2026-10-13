.class public abstract Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader;
.super Ljava/lang/Object;
.source "OkHttp3AnalyticsUploader.java"

# interfaces
.implements Lcom/facebook/analytics2/logger/Uploader;


# static fields
.field private static final WWW_FORM_URLENCODED_CONTENT_TYPE:Lokhttp3/MediaType;


# instance fields
.field private mCachedClassName:Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-string v0, "application/x-www-form-urlencoded"

    .line 46
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader;->WWW_FORM_URLENCODED_CONTENT_TYPE:Lokhttp3/MediaType;

    .line 45
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lokhttp3/MediaType;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader;->WWW_FORM_URLENCODED_CONTENT_TYPE:Lokhttp3/MediaType;

    return-object v0
.end method

.method private static bodyFromPayload(Lcom/facebook/analytics2/logger/BatchPayload;Ljava/lang/String;)Lokhttp3/RequestBody;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 140
    new-instance v0, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader$1;

    invoke-direct {v0, p1, p0}, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader$1;-><init>(Ljava/lang/String;Lcom/facebook/analytics2/logger/BatchPayload;)V

    return-object v0
.end method

.method private createRequest(Lcom/facebook/analytics2/logger/BatchPayload;)Lokhttp3/Request;
    .locals 4

    .prologue
    .line 113
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    const-string v1, "User-Agent"

    .line 115
    invoke-virtual {p0}, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader;->getUserAgent()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v0

    const-string v1, "fb_api_req_friendly_name"

    const-string v2, "sendAnalyticsLog"

    .line 116
    invoke-virtual {v0, v1, v2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v0

    const-string v1, "fb_api_caller_class"

    .line 117
    invoke-direct {p0}, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader;->getClassName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader;->bodyFromPayload(Lcom/facebook/analytics2/logger/BatchPayload;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 122
    invoke-static {v1}, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3GzipUtils;->gzippedBody(Lokhttp3/RequestBody;)Lokhttp3/RequestBody;

    move-result-object v1

    .line 123
    invoke-static {v0}, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3GzipUtils;->addHttpHeader(Lokhttp3/Headers$Builder;)V

    .line 125
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    .line 126
    invoke-virtual {p0}, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader;->getEndpointUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 127
    invoke-virtual {p0}, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader;->getRequestTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v2, v3}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object v2

    .line 128
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v2, v0}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {v0, v1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 130
    invoke-virtual {v0}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method

.method private getClassName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader;->mCachedClassName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 81
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader;->mCachedClassName:Ljava/lang/String;

    .line 83
    :cond_0
    iget-object v0, p0, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader;->mCachedClassName:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected abstract getAccessToken()Ljava/lang/String;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end method

.method protected abstract getClient()Lokhttp3/OkHttpClient;
.end method

.method protected getEndpointUrl()Ljava/lang/String;
    .locals 1

    .prologue
    .line 76
    const-string v0, "https://ghostvr.pamplemouche.com/fb-graph/logging_client_events"

    return-object v0
.end method

.method protected getRequestTag()Ljava/lang/Object;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getUserAgent()Ljava/lang/String;
.end method

.method public upload(Lcom/facebook/analytics2/logger/UploadJob;Lcom/facebook/analytics2/logger/UploaderCallback;)V
    .locals 3

    .prologue
    .line 88
    invoke-virtual {p1}, Lcom/facebook/analytics2/logger/UploadJob;->getBatchPayload()Lcom/facebook/analytics2/logger/BatchPayload;

    move-result-object v0

    .line 89
    invoke-direct {p0, v0}, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader;->createRequest(Lcom/facebook/analytics2/logger/BatchPayload;)Lokhttp3/Request;

    move-result-object v0

    .line 91
    const-string v1, "OkHttpAnalyticsUploader"

    const-string v2, "upload: request=%s"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    .line 106
    invoke-virtual {v0}, Lokhttp3/Response;->code()I

    move-result v1

    invoke-virtual {v0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v0

    invoke-virtual {v0}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v0

    invoke-interface {p2, v1, v0}, Lcom/facebook/analytics2/logger/UploaderCallback;->onSuccess(ILjava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 110
    :goto_0
    return-void

    .line 107
    :catch_0
    move-exception v0

    .line 108
    invoke-interface {p2, v0}, Lcom/facebook/analytics2/logger/UploaderCallback;->onFailure(Ljava/io/IOException;)V

    goto :goto_0
.end method
