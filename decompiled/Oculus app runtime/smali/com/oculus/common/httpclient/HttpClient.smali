.class public Lcom/oculus/common/httpclient/HttpClient;
.super Ljava/lang/Object;
.source "HttpClient.java"

# interfaces
.implements Ljava/lang/AutoCloseable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/common/httpclient/HttpClient$CacheDirective;,
        Lcom/oculus/common/httpclient/HttpClient$Transfer;
    }
.end annotation


# static fields
.field public static final CACHE_SIZE:J = 0x6400000L

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mCache:Lokhttp3/Cache;

.field private mClient:Lokhttp3/OkHttpClient;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 18
    const-class v0, Lcom/oculus/common/httpclient/HttpClient;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/common/httpclient/HttpClient;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 5

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 28
    new-instance v0, Lokhttp3/OkHttpClient$Builder;

    invoke-direct {v0}, Lokhttp3/OkHttpClient$Builder;-><init>()V

    const-wide v1, 0x17130eb7dbfL

    .line 31
    invoke-static {v1, v2}, Lcom/oculus/common/httpclient/FbCertificatePinnerFactory;->create(J)Lokhttp3/CertificatePinner;

    move-result-object v1

    .line 30
    invoke-virtual {v0, v1}, Lokhttp3/OkHttpClient$Builder;->certificatePinner(Lokhttp3/CertificatePinner;)Lokhttp3/OkHttpClient$Builder;

    move-result-object v0

    .line 34
    :try_start_0
    new-instance v1, Lokhttp3/Cache;

    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const-wide/32 v3, 0x6400000

    invoke-direct {v1, v2, v3, v4}, Lokhttp3/Cache;-><init>(Ljava/io/File;J)V

    iput-object v1, p0, Lcom/oculus/common/httpclient/HttpClient;->mCache:Lokhttp3/Cache;

    .line 35
    iget-object p1, p0, Lcom/oculus/common/httpclient/HttpClient;->mCache:Lokhttp3/Cache;

    invoke-virtual {p1}, Lokhttp3/Cache;->initialize()V

    .line 36
    iget-object p1, p0, Lcom/oculus/common/httpclient/HttpClient;->mCache:Lokhttp3/Cache;

    invoke-virtual {v0, p1}, Lokhttp3/OkHttpClient$Builder;->cache(Lokhttp3/Cache;)Lokhttp3/OkHttpClient$Builder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 40
    :catch_0
    invoke-virtual {v0}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p1

    iput-object p1, p0, Lcom/oculus/common/httpclient/HttpClient;->mClient:Lokhttp3/OkHttpClient;

    .line 41
    invoke-direct {p0}, Lcom/oculus/common/httpclient/HttpClient;->nativeInit()V

    return-void
.end method

.method private native nativeClose()V
.end method

.method private native nativeInit()V
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 45
    invoke-direct {p0}, Lcom/oculus/common/httpclient/HttpClient;->nativeClose()V

    return-void
.end method

.method public get(Ljava/lang/String;I)Lcom/oculus/common/httpclient/HttpClient$Transfer;
    .locals 2

    .line 194
    sget-object v0, Lcom/oculus/common/httpclient/HttpClient$CacheDirective;->ALLOW_CACHE:Lcom/oculus/common/httpclient/HttpClient$CacheDirective;

    if-eqz p2, :cond_2

    const/4 v1, 0x1

    if-eq p2, v1, :cond_1

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    goto :goto_0

    .line 204
    :cond_0
    sget-object v0, Lcom/oculus/common/httpclient/HttpClient$CacheDirective;->FORCE_UPDATE:Lcom/oculus/common/httpclient/HttpClient$CacheDirective;

    goto :goto_0

    .line 201
    :cond_1
    sget-object v0, Lcom/oculus/common/httpclient/HttpClient$CacheDirective;->FORCE_CACHE:Lcom/oculus/common/httpclient/HttpClient$CacheDirective;

    goto :goto_0

    .line 198
    :cond_2
    sget-object v0, Lcom/oculus/common/httpclient/HttpClient$CacheDirective;->ALLOW_CACHE:Lcom/oculus/common/httpclient/HttpClient$CacheDirective;

    .line 208
    :goto_0
    invoke-virtual {p0, p1, v0}, Lcom/oculus/common/httpclient/HttpClient;->get(Ljava/lang/String;Lcom/oculus/common/httpclient/HttpClient$CacheDirective;)Lcom/oculus/common/httpclient/HttpClient$Transfer;

    move-result-object p1

    return-object p1
.end method

.method public get(Ljava/lang/String;Lcom/oculus/common/httpclient/HttpClient$CacheDirective;)Lcom/oculus/common/httpclient/HttpClient$Transfer;
    .locals 1

    .line 178
    new-instance v0, Lokhttp3/Request$Builder;

    invoke-direct {v0}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v0, p1}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object p1

    .line 179
    sget-object v0, Lcom/oculus/common/httpclient/HttpClient$CacheDirective;->FORCE_UPDATE:Lcom/oculus/common/httpclient/HttpClient$CacheDirective;

    if-ne p2, v0, :cond_0

    .line 180
    sget-object p2, Lokhttp3/CacheControl;->FORCE_NETWORK:Lokhttp3/CacheControl;

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    goto :goto_0

    .line 181
    :cond_0
    sget-object v0, Lcom/oculus/common/httpclient/HttpClient$CacheDirective;->FORCE_CACHE:Lcom/oculus/common/httpclient/HttpClient$CacheDirective;

    if-ne p2, v0, :cond_1

    .line 182
    sget-object p2, Lokhttp3/CacheControl;->FORCE_CACHE:Lokhttp3/CacheControl;

    invoke-virtual {p1, p2}, Lokhttp3/Request$Builder;->cacheControl(Lokhttp3/CacheControl;)Lokhttp3/Request$Builder;

    .line 185
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object p1

    .line 186
    iget-object p2, p0, Lcom/oculus/common/httpclient/HttpClient;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {p2, p1}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object p1

    .line 187
    new-instance p2, Lcom/oculus/common/httpclient/HttpClient$Transfer;

    invoke-direct {p2, p1}, Lcom/oculus/common/httpclient/HttpClient$Transfer;-><init>(Lokhttp3/Call;)V

    .line 188
    invoke-interface {p1, p2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    return-object p2
.end method
