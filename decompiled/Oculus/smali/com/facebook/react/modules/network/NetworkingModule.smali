.class public final Lcom/facebook/react/modules/network/NetworkingModule;
.super Lcom/facebook/react/bridge/ReactContextBaseJavaModule;
.source "NetworkingModule.java"


# annotations
.annotation runtime Lcom/facebook/react/module/annotations/ReactModule;
    name = "Networking"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/react/modules/network/NetworkingModule$CustomClientBuilder;,
        Lcom/facebook/react/modules/network/NetworkingModule$ResponseHandler;,
        Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;,
        Lcom/facebook/react/modules/network/NetworkingModule$UriHandler;
    }
.end annotation


# static fields
.field private static customClientBuilder:Lcom/facebook/react/modules/network/NetworkingModule$CustomClientBuilder;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field


# instance fields
.field private final mClient:Lokhttp3/OkHttpClient;

.field private final mCookieHandler:Lcom/facebook/react/modules/network/ForwardingCookieHandler;

.field private final mCookieJarContainer:Lcom/facebook/react/modules/network/CookieJarContainer;

.field private final mDefaultUserAgent:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field private final mRequestBodyHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mResponseHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/react/modules/network/NetworkingModule$ResponseHandler;",
            ">;"
        }
    .end annotation
.end field

.field private mShuttingDown:Z

.field private final mUriHandlers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/react/modules/network/NetworkingModule$UriHandler;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    sput-object v0, Lcom/facebook/react/modules/network/NetworkingModule;->customClientBuilder:Lcom/facebook/react/modules/network/NetworkingModule$CustomClientBuilder;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 144
    invoke-static {p1}, Lcom/facebook/react/modules/network/OkHttpClientProvider;->createClient(Landroid/content/Context;)Lokhttp3/OkHttpClient;

    move-result-object v0

    invoke-direct {p0, p1, v1, v0, v1}, Lcom/facebook/react/modules/network/NetworkingModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;Lokhttp3/OkHttpClient;Ljava/util/List;)V

    .line 145
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 163
    invoke-static {p1}, Lcom/facebook/react/modules/network/OkHttpClientProvider;->createClient(Landroid/content/Context;)Lokhttp3/OkHttpClient;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/facebook/react/modules/network/NetworkingModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;Lokhttp3/OkHttpClient;Ljava/util/List;)V

    .line 164
    return-void
.end method

.method constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;Lokhttp3/OkHttpClient;Ljava/util/List;)V
    .locals 3
    .param p2    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p4    # Ljava/util/List;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            "Ljava/lang/String;",
            "Lokhttp3/OkHttpClient;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/react/modules/network/NetworkInterceptorCreator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 114
    invoke-direct {p0, p1}, Lcom/facebook/react/bridge/ReactContextBaseJavaModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;)V

    .line 104
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mRequestBodyHandlers:Ljava/util/List;

    .line 105
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mUriHandlers:Ljava/util/List;

    .line 106
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mResponseHandlers:Ljava/util/List;

    .line 116
    if-eqz p4, :cond_1

    .line 117
    invoke-virtual {p3}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v1

    .line 118
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/network/NetworkInterceptorCreator;

    .line 119
    invoke-interface {v0}, Lcom/facebook/react/modules/network/NetworkInterceptorCreator;->create()Lokhttp3/Interceptor;

    move-result-object v0

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    goto :goto_0

    .line 121
    :cond_0
    invoke-virtual {v1}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object p3

    .line 123
    :cond_1
    iput-object p3, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mClient:Lokhttp3/OkHttpClient;

    .line 124
    new-instance v0, Lcom/facebook/react/modules/network/ForwardingCookieHandler;

    invoke-direct {v0, p1}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;-><init>(Lcom/facebook/react/bridge/ReactContext;)V

    iput-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mCookieHandler:Lcom/facebook/react/modules/network/ForwardingCookieHandler;

    .line 125
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v0}, Lokhttp3/OkHttpClient;->cookieJar()Lokhttp3/CookieJar;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/network/CookieJarContainer;

    iput-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mCookieJarContainer:Lcom/facebook/react/modules/network/CookieJarContainer;

    .line 126
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mShuttingDown:Z

    .line 127
    iput-object p2, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mDefaultUserAgent:Ljava/lang/String;

    .line 128
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mRequestIds:Ljava/util/Set;

    .line 129
    return-void
.end method

.method public constructor <init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/react/bridge/ReactApplicationContext;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/react/modules/network/NetworkInterceptorCreator;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 154
    const/4 v0, 0x0

    invoke-static {p1}, Lcom/facebook/react/modules/network/OkHttpClientProvider;->createClient(Landroid/content/Context;)Lokhttp3/OkHttpClient;

    move-result-object v1

    invoke-direct {p0, p1, v0, v1, p2}, Lcom/facebook/react/modules/network/NetworkingModule;-><init>(Lcom/facebook/react/bridge/ReactApplicationContext;Ljava/lang/String;Lokhttp3/OkHttpClient;Ljava/util/List;)V

    .line 155
    return-void
.end method

.method static synthetic access$000(JJ)Z
    .locals 2

    .prologue
    .line 52
    invoke-static {p0, p1, p2, p3}, Lcom/facebook/react/modules/network/NetworkingModule;->shouldDispatch(JJ)Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/facebook/react/modules/network/NetworkingModule;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mShuttingDown:Z

    return v0
.end method

.method static synthetic access$200(Lcom/facebook/react/modules/network/NetworkingModule;I)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/facebook/react/modules/network/NetworkingModule;->removeRequest(I)V

    return-void
.end method

.method static synthetic access$300(Lokhttp3/Headers;)Lcom/facebook/react/bridge/WritableMap;
    .locals 1

    .prologue
    .line 52
    invoke-static {p0}, Lcom/facebook/react/modules/network/NetworkingModule;->translateHeaders(Lokhttp3/Headers;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$400(Lcom/facebook/react/modules/network/NetworkingModule;)Ljava/util/List;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mResponseHandlers:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$500(Lcom/facebook/react/modules/network/NetworkingModule;Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;ILokhttp3/ResponseBody;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/facebook/react/modules/network/NetworkingModule;->readWithProgress(Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;ILokhttp3/ResponseBody;)V

    return-void
.end method

.method static synthetic access$600(Lcom/facebook/react/modules/network/NetworkingModule;)Lokhttp3/OkHttpClient;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mClient:Lokhttp3/OkHttpClient;

    return-object v0
.end method

.method private declared-synchronized addRequest(I)V
    .locals 2

    .prologue
    .line 613
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mRequestIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 614
    monitor-exit p0

    return-void

    .line 613
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static applyCustomBuilder(Lokhttp3/OkHttpClient$Builder;)V
    .locals 1

    .prologue
    .line 175
    sget-object v0, Lcom/facebook/react/modules/network/NetworkingModule;->customClientBuilder:Lcom/facebook/react/modules/network/NetworkingModule$CustomClientBuilder;

    if-eqz v0, :cond_0

    .line 176
    sget-object v0, Lcom/facebook/react/modules/network/NetworkingModule;->customClientBuilder:Lcom/facebook/react/modules/network/NetworkingModule$CustomClientBuilder;

    invoke-interface {v0, p0}, Lcom/facebook/react/modules/network/NetworkingModule$CustomClientBuilder;->apply(Lokhttp3/OkHttpClient$Builder;)V

    .line 178
    :cond_0
    return-void
.end method

.method private declared-synchronized cancelAllRequests()V
    .locals 2

    .prologue
    .line 621
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mRequestIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 622
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/facebook/react/modules/network/NetworkingModule;->cancelRequest(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 621
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 624
    :cond_0
    :try_start_1
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mRequestIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 625
    monitor-exit p0

    return-void
.end method

.method private cancelRequest(I)V
    .locals 2

    .prologue
    .line 651
    new-instance v0, Lcom/facebook/react/modules/network/NetworkingModule$4;

    invoke-virtual {p0}, Lcom/facebook/react/modules/network/NetworkingModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v1

    invoke-direct {v0, p0, v1, p1}, Lcom/facebook/react/modules/network/NetworkingModule$4;-><init>(Lcom/facebook/react/modules/network/NetworkingModule;Lcom/facebook/react/bridge/ReactContext;I)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    .line 656
    invoke-virtual {v0, v1}, Lcom/facebook/react/modules/network/NetworkingModule$4;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 657
    return-void
.end method

.method private constructMultipartBody(Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;I)Lokhttp3/MultipartBody$Builder;
    .locals 9
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 666
    invoke-direct {p0}, Lcom/facebook/react/modules/network/NetworkingModule;->getEventEmitter()Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    move-result-object v5

    .line 667
    new-instance v3, Lokhttp3/MultipartBody$Builder;

    invoke-direct {v3}, Lokhttp3/MultipartBody$Builder;-><init>()V

    .line 668
    invoke-static {p2}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    invoke-virtual {v3, v0}, Lokhttp3/MultipartBody$Builder;->setType(Lokhttp3/MediaType;)Lokhttp3/MultipartBody$Builder;

    .line 670
    const/4 v0, 0x0

    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v6

    move v4, v0

    :goto_0
    if-ge v4, v6, :cond_5

    .line 671
    invoke-interface {p1, v4}, Lcom/facebook/react/bridge/ReadableArray;->getMap(I)Lcom/facebook/react/bridge/ReadableMap;

    move-result-object v7

    .line 674
    const-string v0, "headers"

    invoke-interface {v7, v0}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v0

    .line 675
    invoke-direct {p0, v0, v1}, Lcom/facebook/react/modules/network/NetworkingModule;->extractHeaders(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;)Lokhttp3/Headers;

    move-result-object v2

    .line 676
    if-nez v2, :cond_0

    .line 677
    const-string v0, "Missing or invalid header format for FormData part."

    invoke-static {v5, p3, v0, v1}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 715
    :goto_1
    return-object v1

    .line 682
    :cond_0
    const-string v0, "content-type"

    invoke-virtual {v2, v0}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 683
    if-eqz v0, :cond_6

    .line 684
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    .line 687
    invoke-virtual {v2}, Lokhttp3/Headers;->newBuilder()Lokhttp3/Headers$Builder;

    move-result-object v2

    const-string v8, "content-type"

    invoke-virtual {v2, v8}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v2

    .line 690
    :goto_2
    const-string/jumbo v8, "string"

    invoke-interface {v7, v8}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 691
    const-string/jumbo v8, "string"

    invoke-interface {v7, v8}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 692
    invoke-static {v0, v7}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    .line 670
    :goto_3
    add-int/lit8 v0, v4, 0x1

    move v4, v0

    goto :goto_0

    .line 693
    :cond_1
    const-string/jumbo v8, "uri"

    invoke-interface {v7, v8}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 694
    if-nez v0, :cond_2

    .line 695
    const-string v0, "Binary FormData part needs a content-type header."

    invoke-static {v5, p3, v0, v1}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 699
    :cond_2
    const-string/jumbo v8, "uri"

    invoke-interface {v7, v8}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 701
    invoke-virtual {p0}, Lcom/facebook/react/modules/network/NetworkingModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v8

    invoke-static {v8, v7}, Lcom/facebook/react/modules/network/RequestBodyUtil;->getFileInputStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v8

    .line 702
    if-nez v8, :cond_3

    .line 703
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not retrieve file for uri "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v5, p3, v0, v1}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1

    .line 710
    :cond_3
    invoke-static {v0, v8}, Lcom/facebook/react/modules/network/RequestBodyUtil;->create(Lokhttp3/MediaType;Ljava/io/InputStream;)Lokhttp3/RequestBody;

    move-result-object v0

    invoke-virtual {v3, v2, v0}, Lokhttp3/MultipartBody$Builder;->addPart(Lokhttp3/Headers;Lokhttp3/RequestBody;)Lokhttp3/MultipartBody$Builder;

    goto :goto_3

    .line 712
    :cond_4
    const-string v0, "Unrecognized FormData part."

    invoke-static {v5, p3, v0, v1}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_3

    :cond_5
    move-object v1, v3

    .line 715
    goto :goto_1

    :cond_6
    move-object v0, v1

    goto :goto_2
.end method

.method private extractHeaders(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;)Lokhttp3/Headers;
    .locals 9
    .param p1    # Lcom/facebook/react/bridge/ReadableArray;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/react/bridge/ReadableMap;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    const/4 v2, 0x0

    .line 723
    if-nez p1, :cond_1

    .line 749
    :cond_0
    :goto_0
    return-object v0

    .line 726
    :cond_1
    new-instance v4, Lokhttp3/Headers$Builder;

    invoke-direct {v4}, Lokhttp3/Headers$Builder;-><init>()V

    .line 727
    invoke-interface {p1}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v5

    move v3, v2

    :goto_1
    if-ge v3, v5, :cond_2

    .line 728
    invoke-interface {p1, v3}, Lcom/facebook/react/bridge/ReadableArray;->getArray(I)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v6

    .line 729
    if-eqz v6, :cond_0

    invoke-interface {v6}, Lcom/facebook/react/bridge/ReadableArray;->size()I

    move-result v7

    const/4 v8, 0x2

    if-ne v7, v8, :cond_0

    .line 732
    invoke-interface {v6, v2}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-static {v7}, Lcom/facebook/react/modules/network/HeaderUtil;->stripHeaderName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 733
    invoke-interface {v6, v1}, Lcom/facebook/react/bridge/ReadableArray;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/react/modules/network/HeaderUtil;->stripHeaderValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 734
    if-eqz v7, :cond_0

    if-eqz v6, :cond_0

    .line 737
    invoke-virtual {v4, v7, v6}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 727
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 739
    :cond_2
    const-string/jumbo v0, "user-agent"

    invoke-virtual {v4, v0}, Lokhttp3/Headers$Builder;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_3

    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mDefaultUserAgent:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 740
    const-string/jumbo v0, "user-agent"

    iget-object v3, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mDefaultUserAgent:Ljava/lang/String;

    invoke-virtual {v4, v0, v3}, Lokhttp3/Headers$Builder;->add(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 744
    :cond_3
    if-eqz p2, :cond_5

    const-string/jumbo v0, "string"

    invoke-interface {p2, v0}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v0, v1

    .line 745
    :goto_2
    if-nez v0, :cond_4

    .line 746
    const-string v0, "content-encoding"

    invoke-virtual {v4, v0}, Lokhttp3/Headers$Builder;->removeAll(Ljava/lang/String;)Lokhttp3/Headers$Builder;

    .line 749
    :cond_4
    invoke-virtual {v4}, Lokhttp3/Headers$Builder;->build()Lokhttp3/Headers;

    move-result-object v0

    goto :goto_0

    :cond_5
    move v0, v2

    .line 744
    goto :goto_2
.end method

.method private getEventEmitter()Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;
    .locals 2

    .prologue
    .line 753
    invoke-virtual {p0}, Lcom/facebook/react/modules/network/NetworkingModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v0

    const-class v1, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    invoke-virtual {v0, v1}, Lcom/facebook/react/bridge/ReactApplicationContext;->getJSModule(Ljava/lang/Class;)Lcom/facebook/react/bridge/JavaScriptModule;

    move-result-object v0

    check-cast v0, Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    return-object v0
.end method

.method private readWithProgress(Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;ILokhttp3/ResponseBody;)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v8, -0x1

    .line 578
    :try_start_0
    move-object v0, p3

    check-cast v0, Lcom/facebook/react/modules/network/ProgressResponseBody;

    move-object v2, v0

    .line 579
    invoke-virtual {v2}, Lcom/facebook/react/modules/network/ProgressResponseBody;->totalBytesRead()J
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v6

    .line 580
    :try_start_1
    invoke-virtual {v2}, Lcom/facebook/react/modules/network/ProgressResponseBody;->contentLength()J
    :try_end_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    move-result-wide v8

    .line 586
    :goto_0
    invoke-virtual {p3}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v2

    if-nez v2, :cond_0

    sget-object v2, Lcom/facebook/react/common/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 590
    :goto_1
    new-instance v10, Lcom/facebook/react/modules/network/ProgressiveStringDecoder;

    invoke-direct {v10, v2}, Lcom/facebook/react/modules/network/ProgressiveStringDecoder;-><init>(Ljava/nio/charset/Charset;)V

    .line 591
    invoke-virtual {p3}, Lokhttp3/ResponseBody;->byteStream()Ljava/io/InputStream;

    move-result-object v11

    .line 593
    const/16 v2, 0x2000

    :try_start_2
    new-array v2, v2, [B

    .line 595
    :goto_2
    invoke-virtual {v11, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1

    .line 599
    invoke-virtual {v10, v2, v3}, Lcom/facebook/react/modules/network/ProgressiveStringDecoder;->decodeNext([BI)Ljava/lang/String;

    move-result-object v5

    move-object v3, p1

    move v4, p2

    .line 596
    invoke-static/range {v3 .. v9}, Lcom/facebook/react/modules/network/ResponseUtil;->onIncrementalDataReceived(Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;ILjava/lang/String;JJ)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2

    .line 604
    :catchall_0
    move-exception v2

    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    throw v2

    .line 588
    :cond_0
    invoke-virtual {p3}, Lokhttp3/ResponseBody;->contentType()Lokhttp3/MediaType;

    move-result-object v2

    sget-object v3, Lcom/facebook/react/common/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    invoke-virtual {v2, v3}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v2

    goto :goto_1

    .line 604
    :cond_1
    invoke-virtual {v11}, Ljava/io/InputStream;->close()V

    .line 606
    return-void

    .line 581
    :catch_0
    move-exception v2

    move-wide v6, v8

    goto :goto_0

    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private declared-synchronized removeRequest(I)V
    .locals 2

    .prologue
    .line 617
    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mRequestIds:Ljava/util/Set;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 618
    monitor-exit p0

    return-void

    .line 617
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private static shouldDispatch(JJ)Z
    .locals 2

    .prologue
    .line 609
    const-wide/32 v0, 0x5f5e100

    add-long/2addr v0, p2

    cmp-long v0, v0, p0

    if-gez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static translateHeaders(Lokhttp3/Headers;)Lcom/facebook/react/bridge/WritableMap;
    .locals 5

    .prologue
    .line 628
    invoke-static {}, Lcom/facebook/react/bridge/Arguments;->createMap()Lcom/facebook/react/bridge/WritableMap;

    move-result-object v1

    .line 629
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 630
    invoke-virtual {p0, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v2

    .line 632
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/WritableMap;->hasKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 633
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 634
    invoke-interface {v1, v2}, Lcom/facebook/react/bridge/WritableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 633
    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 636
    :cond_0
    invoke-virtual {p0, v0}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v2, v3}, Lcom/facebook/react/bridge/WritableMap;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 639
    :cond_1
    return-object v1
.end method

.method private wrapRequestBodyWithProgressEmitter(Lokhttp3/RequestBody;Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;I)Lokhttp3/RequestBody;
    .locals 1

    .prologue
    .line 553
    if-nez p1, :cond_0

    .line 554
    const/4 v0, 0x0

    .line 556
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/facebook/react/modules/network/NetworkingModule$3;

    invoke-direct {v0, p0, p2, p3}, Lcom/facebook/react/modules/network/NetworkingModule$3;-><init>(Lcom/facebook/react/modules/network/NetworkingModule;Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;I)V

    invoke-static {p1, v0}, Lcom/facebook/react/modules/network/RequestBodyUtil;->createProgressRequest(Lokhttp3/RequestBody;Lcom/facebook/react/modules/network/ProgressListener;)Lcom/facebook/react/modules/network/ProgressRequestBody;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public abortRequest(I)V
    .locals 0
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 644
    invoke-direct {p0, p1}, Lcom/facebook/react/modules/network/NetworkingModule;->cancelRequest(I)V

    .line 645
    invoke-direct {p0, p1}, Lcom/facebook/react/modules/network/NetworkingModule;->removeRequest(I)V

    .line 646
    return-void
.end method

.method public clearCookies(Lcom/facebook/react/bridge/Callback;)V
    .locals 1
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 661
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mCookieHandler:Lcom/facebook/react/modules/network/ForwardingCookieHandler;

    invoke-virtual {v0, p1}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->clearCookies(Lcom/facebook/react/bridge/Callback;)V

    .line 662
    return-void
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 187
    const-string v0, "Networking"

    return-object v0
.end method

.method public initialize()V
    .locals 3

    .prologue
    .line 182
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mCookieJarContainer:Lcom/facebook/react/modules/network/CookieJarContainer;

    new-instance v1, Lokhttp3/JavaNetCookieJar;

    iget-object v2, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mCookieHandler:Lcom/facebook/react/modules/network/ForwardingCookieHandler;

    invoke-direct {v1, v2}, Lokhttp3/JavaNetCookieJar;-><init>(Ljava/net/CookieHandler;)V

    invoke-interface {v0, v1}, Lcom/facebook/react/modules/network/CookieJarContainer;->setCookieJar(Lokhttp3/CookieJar;)V

    .line 183
    return-void
.end method

.method public onCatalystInstanceDestroy()V
    .locals 1

    .prologue
    .line 192
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mShuttingDown:Z

    .line 193
    invoke-direct {p0}, Lcom/facebook/react/modules/network/NetworkingModule;->cancelAllRequests()V

    .line 195
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mCookieHandler:Lcom/facebook/react/modules/network/ForwardingCookieHandler;

    invoke-virtual {v0}, Lcom/facebook/react/modules/network/ForwardingCookieHandler;->destroy()V

    .line 196
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mCookieJarContainer:Lcom/facebook/react/modules/network/CookieJarContainer;

    invoke-interface {v0}, Lcom/facebook/react/modules/network/CookieJarContainer;->removeCookieJar()V

    .line 198
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mRequestBodyHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 199
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mResponseHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 200
    iget-object v0, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mUriHandlers:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 201
    return-void
.end method

.method public sendRequest(Ljava/lang/String;Ljava/lang/String;ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;ZIZ)V
    .locals 4
    .annotation runtime Lcom/facebook/react/bridge/ReactMethod;
    .end annotation

    .prologue
    .line 239
    :try_start_0
    invoke-virtual/range {p0 .. p9}, Lcom/facebook/react/modules/network/NetworkingModule;->sendRequestInternal(Ljava/lang/String;Ljava/lang/String;ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;ZIZ)V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    const-string v1, "NetworkingModule"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed to send url request: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/facebook/common/logging/FLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 251
    invoke-direct {p0}, Lcom/facebook/react/modules/network/NetworkingModule;->getEventEmitter()Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, p3, v2, v0}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method public sendRequestInternal(Ljava/lang/String;Ljava/lang/String;ILcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;ZIZ)V
    .locals 11

    .prologue
    .line 266
    invoke-static {p2}, Lcom/facebook/react/modules/intent/IntentModule;->rewriteExternalUrl(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0}, Lcom/facebook/react/modules/network/NetworkingModule;->getEventEmitter()Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;

    move-result-object v5

    .line 269
    :try_start_0
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 272
    iget-object v2, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mUriHandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/modules/network/NetworkingModule$UriHandler;

    .line 273
    move-object/from16 v0, p6

    invoke-interface {v2, v3, v0}, Lcom/facebook/react/modules/network/NetworkingModule$UriHandler;->supports(Landroid/net/Uri;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 274
    invoke-interface {v2, v3}, Lcom/facebook/react/modules/network/NetworkingModule$UriHandler;->fetch(Landroid/net/Uri;)Lcom/facebook/react/bridge/WritableMap;

    move-result-object v2

    .line 275
    invoke-static {v5, p3, v2}, Lcom/facebook/react/modules/network/ResponseUtil;->onDataReceived(Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;ILcom/facebook/react/bridge/WritableMap;)V

    .line 276
    invoke-static {v5, p3}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestSuccess(Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 547
    :cond_1
    :goto_0
    return-void

    .line 280
    :catch_0
    move-exception v2

    .line 281
    invoke-virtual {v2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v5, p3, v3, v2}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 287
    :cond_2
    :try_start_1
    new-instance v2, Lokhttp3/Request$Builder;

    invoke-direct {v2}, Lokhttp3/Request$Builder;-><init>()V

    invoke-virtual {v2, p2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-result-object v6

    .line 293
    if-eqz p3, :cond_3

    .line 294
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v6, v2}, Lokhttp3/Request$Builder;->tag(Ljava/lang/Object;)Lokhttp3/Request$Builder;

    .line 297
    :cond_3
    iget-object v2, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v2}, Lokhttp3/OkHttpClient;->newBuilder()Lokhttp3/OkHttpClient$Builder;

    move-result-object v2

    .line 299
    invoke-static {v2}, Lcom/facebook/react/modules/network/NetworkingModule;->applyCustomBuilder(Lokhttp3/OkHttpClient$Builder;)V

    .line 301
    if-nez p9, :cond_4

    .line 302
    sget-object v3, Lokhttp3/CookieJar;->NO_COOKIES:Lokhttp3/CookieJar;

    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient$Builder;->cookieJar(Lokhttp3/CookieJar;)Lokhttp3/OkHttpClient$Builder;

    .line 307
    :cond_4
    if-eqz p7, :cond_5

    .line 308
    new-instance v3, Lcom/facebook/react/modules/network/NetworkingModule$1;

    move-object/from16 v0, p6

    invoke-direct {v3, p0, v0, v5, p3}, Lcom/facebook/react/modules/network/NetworkingModule$1;-><init>(Lcom/facebook/react/modules/network/NetworkingModule;Ljava/lang/String;Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;I)V

    invoke-virtual {v2, v3}, Lokhttp3/OkHttpClient$Builder;->addNetworkInterceptor(Lokhttp3/Interceptor;)Lokhttp3/OkHttpClient$Builder;

    .line 346
    :cond_5
    iget-object v3, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v3}, Lokhttp3/OkHttpClient;->connectTimeoutMillis()I

    move-result v3

    move/from16 v0, p8

    if-eq v0, v3, :cond_6

    .line 347
    move/from16 v0, p8

    int-to-long v8, v0

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, v8, v9, v3}, Lokhttp3/OkHttpClient$Builder;->connectTimeout(JLjava/util/concurrent/TimeUnit;)Lokhttp3/OkHttpClient$Builder;

    .line 349
    :cond_6
    invoke-virtual {v2}, Lokhttp3/OkHttpClient$Builder;->build()Lokhttp3/OkHttpClient;

    move-result-object v7

    .line 351
    move-object/from16 v0, p5

    invoke-direct {p0, p4, v0}, Lcom/facebook/react/modules/network/NetworkingModule;->extractHeaders(Lcom/facebook/react/bridge/ReadableArray;Lcom/facebook/react/bridge/ReadableMap;)Lokhttp3/Headers;

    move-result-object v2

    .line 352
    if-nez v2, :cond_7

    .line 353
    const-string v2, "Unrecognized headers format"

    const/4 v3, 0x0

    invoke-static {v5, p3, v2, v3}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 288
    :catch_1
    move-exception v2

    .line 289
    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v5, p3, v2, v3}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;ILjava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    .line 356
    :cond_7
    const-string v3, "content-type"

    invoke-virtual {v2, v3}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 357
    const-string v4, "content-encoding"

    invoke-virtual {v2, v4}, Lokhttp3/Headers;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 358
    invoke-virtual {v6, v2}, Lokhttp3/Request$Builder;->headers(Lokhttp3/Headers;)Lokhttp3/Request$Builder;

    .line 361
    const/4 v4, 0x0

    .line 362
    if-eqz p5, :cond_18

    .line 363
    iget-object v2, p0, Lcom/facebook/react/modules/network/NetworkingModule;->mRequestBodyHandlers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_8
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_18

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;

    .line 364
    move-object/from16 v0, p5

    invoke-interface {v2, v0}, Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;->supports(Lcom/facebook/react/bridge/ReadableMap;)Z

    move-result v10

    if-eqz v10, :cond_8

    .line 372
    :goto_1
    if-eqz p5, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v9, "get"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_9

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v4

    const-string v9, "head"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    .line 373
    :cond_9
    invoke-static {p1}, Lcom/facebook/react/modules/network/RequestBodyUtil;->getEmptyBody(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 441
    :cond_a
    :goto_2
    invoke-direct {p0, v2, v5, p3}, Lcom/facebook/react/modules/network/NetworkingModule;->wrapRequestBodyWithProgressEmitter(Lokhttp3/RequestBody;Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;I)Lokhttp3/RequestBody;

    move-result-object v2

    .line 440
    invoke-virtual {v6, p1, v2}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 443
    invoke-direct {p0, p3}, Lcom/facebook/react/modules/network/NetworkingModule;->addRequest(I)V

    .line 445
    invoke-virtual {v6}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v2

    invoke-virtual {v7, v2}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v8

    new-instance v2, Lcom/facebook/react/modules/network/NetworkingModule$2;

    move-object v3, p0

    move v4, p3

    move-object/from16 v6, p6

    move/from16 v7, p7

    invoke-direct/range {v2 .. v7}, Lcom/facebook/react/modules/network/NetworkingModule$2;-><init>(Lcom/facebook/react/modules/network/NetworkingModule;ILcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;Ljava/lang/String;Z)V

    .line 446
    invoke-interface {v8, v2}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    goto/16 :goto_0

    .line 374
    :cond_b
    if-eqz v2, :cond_c

    .line 375
    move-object/from16 v0, p5

    invoke-interface {v2, v0, v3}, Lcom/facebook/react/modules/network/NetworkingModule$RequestBodyHandler;->toRequestBody(Lcom/facebook/react/bridge/ReadableMap;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v2

    goto :goto_2

    .line 376
    :cond_c
    const-string/jumbo v2, "string"

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_10

    .line 377
    if-nez v3, :cond_d

    .line 378
    const-string v2, "Payload is set but no content-type header specified"

    const/4 v3, 0x0

    invoke-static {v5, p3, v2, v3}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;ILjava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 382
    :cond_d
    const-string/jumbo v2, "string"

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 383
    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    .line 384
    invoke-static {v8}, Lcom/facebook/react/modules/network/RequestBodyUtil;->isGzipEncoding(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_e

    .line 385
    invoke-static {v3, v4}, Lcom/facebook/react/modules/network/RequestBodyUtil;->createGzip(Lokhttp3/MediaType;Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 386
    if-nez v2, :cond_a

    .line 387
    const-string v2, "Failed to gzip request body"

    const/4 v3, 0x0

    invoke-static {v5, p3, v2, v3}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;ILjava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 394
    :cond_e
    if-nez v3, :cond_f

    sget-object v2, Lcom/facebook/react/common/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 398
    :goto_3
    invoke-virtual {v4, v2}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v2

    invoke-static {v3, v2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v2

    goto :goto_2

    .line 394
    :cond_f
    sget-object v2, Lcom/facebook/react/common/StandardCharsets;->UTF_8:Ljava/nio/charset/Charset;

    .line 397
    invoke-virtual {v3, v2}, Lokhttp3/MediaType;->charset(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v2

    goto :goto_3

    .line 400
    :cond_10
    const-string v2, "base64"

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_12

    .line 401
    if-nez v3, :cond_11

    .line 402
    const-string v2, "Payload is set but no content-type header specified"

    const/4 v3, 0x0

    invoke-static {v5, p3, v2, v3}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;ILjava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 406
    :cond_11
    const-string v2, "base64"

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 407
    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v3

    .line 408
    invoke-static {v2}, Lokio/ByteString;->decodeBase64(Ljava/lang/String;)Lokio/ByteString;

    move-result-object v2

    invoke-static {v3, v2}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Lokio/ByteString;)Lokhttp3/RequestBody;

    move-result-object v2

    goto/16 :goto_2

    .line 409
    :cond_12
    const-string/jumbo v2, "uri"

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    .line 410
    if-nez v3, :cond_13

    .line 411
    const-string v2, "Payload is set but no content-type header specified"

    const/4 v3, 0x0

    invoke-static {v5, p3, v2, v3}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;ILjava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 415
    :cond_13
    const-string/jumbo v2, "uri"

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 417
    invoke-virtual {p0}, Lcom/facebook/react/modules/network/NetworkingModule;->getReactApplicationContext()Lcom/facebook/react/bridge/ReactApplicationContext;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/facebook/react/modules/network/RequestBodyUtil;->getFileInputStream(Landroid/content/Context;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v4

    .line 418
    if-nez v4, :cond_14

    .line 419
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Could not retrieve file for uri "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v5, p3, v2, v3}, Lcom/facebook/react/modules/network/ResponseUtil;->onRequestError(Lcom/facebook/react/modules/core/DeviceEventManagerModule$RCTDeviceEventEmitter;ILjava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_0

    .line 423
    :cond_14
    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v2

    invoke-static {v2, v4}, Lcom/facebook/react/modules/network/RequestBodyUtil;->create(Lokhttp3/MediaType;Ljava/io/InputStream;)Lokhttp3/RequestBody;

    move-result-object v2

    goto/16 :goto_2

    .line 424
    :cond_15
    const-string v2, "formData"

    move-object/from16 v0, p5

    invoke-interface {v0, v2}, Lcom/facebook/react/bridge/ReadableMap;->hasKey(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_16

    .line 425
    if-nez v3, :cond_17

    .line 426
    const-string v2, "multipart/form-data"

    .line 428
    :goto_4
    const-string v3, "formData"

    move-object/from16 v0, p5

    invoke-interface {v0, v3}, Lcom/facebook/react/bridge/ReadableMap;->getArray(Ljava/lang/String;)Lcom/facebook/react/bridge/ReadableArray;

    move-result-object v3

    .line 430
    invoke-direct {p0, v3, v2, p3}, Lcom/facebook/react/modules/network/NetworkingModule;->constructMultipartBody(Lcom/facebook/react/bridge/ReadableArray;Ljava/lang/String;I)Lokhttp3/MultipartBody$Builder;

    move-result-object v2

    .line 431
    if-eqz v2, :cond_1

    .line 434
    invoke-virtual {v2}, Lokhttp3/MultipartBody$Builder;->build()Lokhttp3/MultipartBody;

    move-result-object v2

    goto/16 :goto_2

    .line 437
    :cond_16
    invoke-static {p1}, Lcom/facebook/react/modules/network/RequestBodyUtil;->getEmptyBody(Ljava/lang/String;)Lokhttp3/RequestBody;

    move-result-object v2

    goto/16 :goto_2

    :cond_17
    move-object v2, v3

    goto :goto_4

    :cond_18
    move-object v2, v4

    goto/16 :goto_1
.end method
