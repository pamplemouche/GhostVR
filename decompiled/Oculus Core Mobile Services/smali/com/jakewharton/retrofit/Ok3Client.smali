.class public final Lcom/jakewharton/retrofit/Ok3Client;
.super Ljava/lang/Object;
.source "Ok3Client.java"

# interfaces
.implements Lretrofit/client/Client;


# static fields
.field private static final NO_BODY:[B


# instance fields
.field private final client:Lokhttp3/Call$Factory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [B

    sput-object v0, Lcom/jakewharton/retrofit/Ok3Client;->NO_BODY:[B

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 26
    new-instance v0, Lokhttp3/OkHttpClient;

    invoke-direct {v0}, Lokhttp3/OkHttpClient;-><init>()V

    invoke-direct {p0, v0}, Lcom/jakewharton/retrofit/Ok3Client;-><init>(Lokhttp3/OkHttpClient;)V

    .line 27
    return-void
.end method

.method public constructor <init>(Lokhttp3/Call$Factory;)V
    .locals 2

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-nez p1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/NullPointerException;

    const-string v1, "client == null"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    iput-object p1, p0, Lcom/jakewharton/retrofit/Ok3Client;->client:Lokhttp3/Call$Factory;

    .line 38
    return-void
.end method

.method public constructor <init>(Lokhttp3/OkHttpClient;)V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0, p1}, Lcom/jakewharton/retrofit/Ok3Client;-><init>(Lokhttp3/Call$Factory;)V

    .line 31
    return-void
.end method

.method private static createHeaders(Lokhttp3/Headers;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lokhttp3/Headers;",
            ")",
            "Ljava/util/List",
            "<",
            "Lretrofit/client/Header;",
            ">;"
        }
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p0}, Lokhttp3/Headers;->size()I

    move-result v1

    .line 116
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 117
    const/4 v0, 0x0

    :goto_0
    if-ge v0, v1, :cond_0

    .line 118
    new-instance v3, Lretrofit/client/Header;

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->name(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0}, Lokhttp3/Headers;->value(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lretrofit/client/Header;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 120
    :cond_0
    return-object v2
.end method

.method static createRequest(Lretrofit/client/Request;)Lokhttp3/Request;
    .locals 6

    .prologue
    .line 46
    invoke-virtual {p0}, Lretrofit/client/Request;->getMethod()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/retrofit/Ok3Client;->requiresRequestBody(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lretrofit/client/Request;->getBody()Lretrofit/mime/TypedOutput;

    move-result-object v0

    if-nez v0, :cond_1

    .line 47
    const/4 v0, 0x0

    sget-object v1, Lcom/jakewharton/retrofit/Ok3Client;->NO_BODY:[B

    invoke-static {v0, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;[B)Lokhttp3/RequestBody;

    move-result-object v0

    .line 52
    :goto_0
    new-instance v1, Lokhttp3/Request$Builder;

    invoke-direct {v1}, Lokhttp3/Request$Builder;-><init>()V

    .line 53
    invoke-virtual {p0}, Lretrofit/client/Request;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lokhttp3/Request$Builder;->url(Ljava/lang/String;)Lokhttp3/Request$Builder;

    move-result-object v1

    .line 54
    invoke-virtual {p0}, Lretrofit/client/Request;->getMethod()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2, v0}, Lokhttp3/Request$Builder;->method(Ljava/lang/String;Lokhttp3/RequestBody;)Lokhttp3/Request$Builder;

    move-result-object v3

    .line 56
    invoke-virtual {p0}, Lretrofit/client/Request;->getHeaders()Ljava/util/List;

    move-result-object v4

    .line 57
    const/4 v0, 0x0

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    move v2, v0

    :goto_1
    if-ge v2, v5, :cond_2

    .line 58
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lretrofit/client/Header;

    .line 59
    invoke-virtual {v0}, Lretrofit/client/Header;->getValue()Ljava/lang/String;

    move-result-object v1

    .line 60
    if-nez v1, :cond_0

    .line 61
    const-string v1, ""

    .line 63
    :cond_0
    invoke-virtual {v0}, Lretrofit/client/Header;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v3, v0, v1}, Lokhttp3/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lokhttp3/Request$Builder;

    .line 57
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 49
    :cond_1
    invoke-virtual {p0}, Lretrofit/client/Request;->getBody()Lretrofit/mime/TypedOutput;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/retrofit/Ok3Client;->createRequestBody(Lretrofit/mime/TypedOutput;)Lokhttp3/RequestBody;

    move-result-object v0

    goto :goto_0

    .line 66
    :cond_2
    invoke-virtual {v3}, Lokhttp3/Request$Builder;->build()Lokhttp3/Request;

    move-result-object v0

    return-object v0
.end method

.method private static createRequestBody(Lretrofit/mime/TypedOutput;)Lokhttp3/RequestBody;
    .locals 2

    .prologue
    .line 75
    if-nez p0, :cond_0

    .line 76
    const/4 v0, 0x0

    .line 79
    :goto_0
    return-object v0

    .line 78
    :cond_0
    invoke-interface {p0}, Lretrofit/mime/TypedOutput;->mimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v1

    .line 79
    new-instance v0, Lcom/jakewharton/retrofit/Ok3Client$1;

    invoke-direct {v0, v1, p0}, Lcom/jakewharton/retrofit/Ok3Client$1;-><init>(Lokhttp3/MediaType;Lretrofit/mime/TypedOutput;)V

    goto :goto_0
.end method

.method private static createResponseBody(Lokhttp3/ResponseBody;)Lretrofit/mime/TypedInput;
    .locals 4

    .prologue
    .line 95
    invoke-virtual {p0}, Lokhttp3/ResponseBody;->contentLength()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 96
    const/4 v0, 0x0

    .line 98
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/jakewharton/retrofit/Ok3Client$2;

    invoke-direct {v0, p0}, Lcom/jakewharton/retrofit/Ok3Client$2;-><init>(Lokhttp3/ResponseBody;)V

    goto :goto_0
.end method

.method static parseResponse(Lokhttp3/Response;)Lretrofit/client/Response;
    .locals 6

    .prologue
    .line 70
    new-instance v0, Lretrofit/client/Response;

    invoke-virtual {p0}, Lokhttp3/Response;->request()Lokhttp3/Request;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/Request;->url()Lokhttp3/HttpUrl;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/HttpUrl;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lokhttp3/Response;->code()I

    move-result v2

    invoke-virtual {p0}, Lokhttp3/Response;->message()Ljava/lang/String;

    move-result-object v3

    .line 71
    invoke-virtual {p0}, Lokhttp3/Response;->headers()Lokhttp3/Headers;

    move-result-object v4

    invoke-static {v4}, Lcom/jakewharton/retrofit/Ok3Client;->createHeaders(Lokhttp3/Headers;)Ljava/util/List;

    move-result-object v4

    invoke-virtual {p0}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v5

    invoke-static {v5}, Lcom/jakewharton/retrofit/Ok3Client;->createResponseBody(Lokhttp3/ResponseBody;)Lretrofit/mime/TypedInput;

    move-result-object v5

    invoke-direct/range {v0 .. v5}, Lretrofit/client/Response;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/List;Lretrofit/mime/TypedInput;)V

    return-object v0
.end method

.method private static requiresRequestBody(Ljava/lang/String;)Z
    .locals 1

    .prologue
    .line 124
    const-string v0, "POST"

    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PUT"

    .line 125
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PATCH"

    .line 126
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "PROPPATCH"

    .line 127
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "REPORT"

    .line 128
    invoke-virtual {v0, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public execute(Lretrofit/client/Request;)Lretrofit/client/Response;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 41
    iget-object v0, p0, Lcom/jakewharton/retrofit/Ok3Client;->client:Lokhttp3/Call$Factory;

    invoke-static {p1}, Lcom/jakewharton/retrofit/Ok3Client;->createRequest(Lretrofit/client/Request;)Lokhttp3/Request;

    move-result-object v1

    invoke-interface {v0, v1}, Lokhttp3/Call$Factory;->newCall(Lokhttp3/Request;)Lokhttp3/Call;

    move-result-object v0

    invoke-interface {v0}, Lokhttp3/Call;->execute()Lokhttp3/Response;

    move-result-object v0

    invoke-static {v0}, Lcom/jakewharton/retrofit/Ok3Client;->parseResponse(Lokhttp3/Response;)Lretrofit/client/Response;

    move-result-object v0

    return-object v0
.end method
