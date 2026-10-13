.class public abstract Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader;
.super Ljava/lang/Object;
.source "OkHttp3AnalyticsUploader.java"

# interfaces
.implements Lcom/facebook/analytics2/logger/Uploader;


# static fields
.field private static final DEFAULT_ENDPOINT_URL:Ljava/lang/String; = "https://graph.facebook.com/logging_client_events"

.field private static final FB_API_CALLER_CLASS_HEADER_NAME:Ljava/lang/String; = "fb_api_caller_class"

.field private static final FB_API_REQ_FRIENDLY_NAME_HEADER_NAME:Ljava/lang/String; = "fb_api_req_friendly_name"

.field private static final TAG:Ljava/lang/String; = "OkHttpAnalyticsUploader"

.field private static final USER_AGENT_HEADER_NAME:Ljava/lang/String; = "User-Agent"

.field private static final WWW_FORM_URLENCODED_CONTENT_TYPE:Lokhttp3/MediaType;


# instance fields
.field private mCachedClassName:Ljava/lang/String;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "application/x-www-form-urlencoded"

    .line 46
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    sput-object v0, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader;->WWW_FORM_URLENCODED_CONTENT_TYPE:Lokhttp3/MediaType;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 55
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lokhttp3/MediaType;
    .locals 1

    .line 28
    sget-object v0, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader;->WWW_FORM_URLENCODED_CONTENT_TYPE:Lokhttp3/MediaType;

    return-object v0
.end method

.method private static bodyFromPayload(Lcom/facebook/analytics2/logger/BatchPayload;Ljava/lang/String;)Lokhttp3/RequestBody;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .line 140
    new-instance v0, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader$1;

    invoke-direct {v0, p1, p0}, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader$1;-><init>(Ljava/lang/String;Lcom/facebook/analytics2/logger/BatchPayload;)V

    return-object v0
.end method

.method private createRequest(Lcom/facebook/analytics2/logger/BatchPayload;)Lokhttp3/Request;
    .locals 3

    .line 113
    new-instance v0, Lokhttp3/Headers$Builder;

    invoke-direct {v0}, Lokhttp3/Headers$Builder;-><init>()V

    .line 115
    invoke-virtual {p0}, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader;->getUserAgent()Ljava/lang/String;

    move-result-object v1

    const-string v2, "User-Agent"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v0

    const-string v1, "fb_api_req_friendly_name"

    const-string v2, "sendAnalyticsLog"

    .line 116
    invoke-virtual {v0, v1, v2}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v0

    .line 117
    invoke-direct {p0}, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader;->getClassName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "fb_api_caller_class"

    invoke-virtual {v0, v2, v1}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v0

    .line 119
    invoke-virtual {p0}, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader;->getAccessToken()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader;->bodyFromPayload(Lcom/facebook/analytics2/logger/BatchPayload;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 122
    invoke-static {p1}, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3GzipUtils;->gzippedBody(Lokhttp3/RequestBody;)Lokhttp3/RequestBody;

    move-result-object p1

    .line 123
    invoke-static {v0}, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3GzipUtils;->addHttpHeader(Lokhttp3/Headers$Builder;)V

    .line 125
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 126
    invoke-virtual {p0}, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader;->getEndpointUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 127
    invoke-virtual {p0}, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader;->getRequestTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 128
    invoke-virtual {v0}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    invoke-virtual {v1, v0}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    move-result-object v0

    .line 129
    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->post(Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 130
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    return-object p1
.end method

.method private getClassName()Ljava/lang/String;
    .locals 1

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
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end method

.method protected abstract getClient()Lokhttp3/OkHttpClient;
.end method

.method protected getEndpointUrl()Ljava/lang/String;
    .locals 1

    const-string v0, "https://graph.facebook.com/logging_client_events"

    return-object v0
.end method

.method protected getRequestTag()Ljava/lang/Object;
    .locals 1
    .annotation build Ljavax/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method protected abstract getUserAgent()Ljava/lang/String;
.end method

.method public upload(Lcom/facebook/analytics2/logger/UploadJob;Lcom/facebook/analytics2/logger/UploaderCallback;)V
    .locals 2

    .line 88
    invoke-virtual {p1}, Lcom/facebook/analytics2/logger/UploadJob;->getBatchPayload()Lcom/facebook/analytics2/logger/BatchPayload;

    move-result-object p1

    .line 89
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader;->createRequest(Lcom/facebook/analytics2/logger/BatchPayload;)Lokhttp3/Request;

    move-result-object p1

    const-string v0, "OkHttpAnalyticsUploader"

    const-string v1, "upload: request=%s"

    .line 91
    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 105
    :try_start_0
    invoke-virtual {p0}, Lcom/facebook/analytics2/uploader/okhttp3/OkHttp3AnalyticsUploader;->getClient()Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    invoke-interface {p1}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object p1

    .line 106
    invoke-virtual {p1}, Lokhttp3/Response;->code()I

    move-result v0

    invoke-virtual {p1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object p1

    invoke-virtual {p1}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lcom/facebook/analytics2/logger/UploaderCallback;->onSuccess(ILjava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 108
    invoke-interface {p2, p1}, Lcom/facebook/analytics2/logger/UploaderCallback;->onFailure(Ljava/io/IOException;)V

    :goto_0
    return-void
.end method
