.class public Lcom/facebook/tigon/oktigon/AbstractOkTigonService;
.super Ljava/lang/Object;
.source "AbstractOkTigonService.java"

# interfaces
.implements Lcom/facebook/tigon/javaservice/JavaBackedTigonService;


# instance fields
.field private final mAccessToken:Ljava/lang/String;

.field private final mOkHttpClient:Lokhttp3/OkHttpClient;

.field private final mUserAgent:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lokhttp3/OkHttpClient;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object p1, p0, Lcom/facebook/tigon/oktigon/AbstractOkTigonService;->mOkHttpClient:Lokhttp3/OkHttpClient;

    .line 31
    iput-object p2, p0, Lcom/facebook/tigon/oktigon/AbstractOkTigonService;->mAccessToken:Ljava/lang/String;

    .line 32
    iput-object p3, p0, Lcom/facebook/tigon/oktigon/AbstractOkTigonService;->mUserAgent:Ljava/lang/String;

    .line 33
    return-void
.end method

.method private buildRequest(Lcom/facebook/tigon/iface/TigonRequest;[B)Lokhttp3/Request;
    .locals 8

    .prologue
    const/4 v4, 0x0

    .line 51
    new-instance v5, Lokhttp3/Request$Builder;

    invoke-direct {v5}, Lokhttp3/Request$Builder;-><init>()V

    .line 52
    invoke-interface {p1}, Lcom/facebook/tigon/iface/TigonRequest;->url()Ljava/lang/String;

    move-result-object v0

    .line 53
    iget-object v1, p0, Lcom/facebook/tigon/oktigon/AbstractOkTigonService;->mAccessToken:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 54
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "?"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "access_token"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/tigon/oktigon/AbstractOkTigonService;->mAccessToken:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 56
    :cond_0
    invoke-virtual {v5, v0}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 59
    const/4 v3, 0x0

    .line 60
    invoke-interface {p1}, Lcom/facebook/tigon/iface/TigonRequest;->headers()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v4

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 61
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 62
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 63
    const-string v7, "Content-Type"

    invoke-virtual {v7, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 68
    :goto_1
    const-string v2, "User-Agent"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 69
    const/4 v1, 0x1

    :goto_2
    move v3, v1

    move-object v2, v0

    .line 71
    goto :goto_0

    .line 66
    :cond_1
    invoke-virtual {v5, v1, v0}, Lokhttp3/Request$Builder;->header(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-object v0, v2

    goto :goto_1

    .line 73
    :cond_2
    if-eqz p2, :cond_3

    new-instance v4, Lcom/facebook/tigon/oktigon/OkTigonRequestBody;

    invoke-direct {v4, p2, v2}, Lcom/facebook/tigon/oktigon/OkTigonRequestBody;-><init>([BLjava/lang/String;)V

    .line 74
    :cond_3
    invoke-interface {p1}, Lcom/facebook/tigon/iface/TigonRequest;->method()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v5, v0, v4}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    .line 76
    if-nez v3, :cond_4

    .line 77
    const-string v0, "User-Agent"

    iget-object v1, p0, Lcom/facebook/tigon/oktigon/AbstractOkTigonService;->mUserAgent:Ljava/lang/String;

    invoke-virtual {v5, v0, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 80
    :cond_4
    invoke-virtual {v5}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    return-object v0

    :cond_5
    move v1, v3

    goto :goto_2
.end method


# virtual methods
.method public submitHttpRequest(Lcom/facebook/tigon/javaservice/AbstractRequestToken;Lcom/facebook/tigon/iface/TigonRequest;[B)V
    .locals 2
    .annotation build Lcom/facebook/proguard/annotations/DoNotStrip;
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    check-cast p1, Lcom/facebook/tigon/oktigon/OkTigonRequestToken;

    .line 43
    invoke-direct {p0, p2, p3}, Lcom/facebook/tigon/oktigon/AbstractOkTigonService;->buildRequest(Lcom/facebook/tigon/iface/TigonRequest;[B)Lokhttp3/Request;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/facebook/tigon/oktigon/AbstractOkTigonService;->mOkHttpClient:Lokhttp3/OkHttpClient;

    invoke-virtual {v1, v0}, Lokhttp3/OkHttpClient;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    .line 46
    invoke-virtual {p1, v0}, Lcom/facebook/tigon/oktigon/OkTigonRequestToken;->attachActiveCall(Lokhttp3/Call;)V

    .line 47
    invoke-interface {v0, p1}, Lokhttp3/Call;->enqueue(Lokhttp3/Callback;)V

    .line 48
    return-void
.end method
