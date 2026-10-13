.class public Lcom/oculus/http/core/interceptor/GzipInterceptor;
.super Ljava/lang/Object;
.source "GzipInterceptor.java"

# interfaces
.implements Lokhttp3/Interceptor;


# static fields
.field private static final HEADER_CONTENT_ENCODING:Ljava/lang/String; = "Content-Encoding"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public intercept(Lokhttp3/Interceptor$Chain;)Lokhttp3/Response;
    .locals 8
    .param p1, "chain"    # Lokhttp3/Interceptor$Chain;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 20
    invoke-interface {p1}, Lokhttp3/Interceptor$Chain;->request()Lokhttp3/Request;

    move-result-object v4

    invoke-interface {p1, v4}, Lokhttp3/Interceptor$Chain;->proceed(Lokhttp3/Request;)Lokhttp3/Response;

    move-result-object v2

    .line 22
    .local v2, "response":Lokhttp3/Response;
    invoke-virtual {v2}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v3

    .line 24
    .local v3, "responseBody":Lokhttp3/ResponseBody;
    if-eqz v3, :cond_0

    const-string v4, "gzip"

    const-string v5, "Content-Encoding"

    invoke-virtual {v2, v5}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 25
    new-instance v1, Lokio/GzipSource;

    invoke-virtual {v3}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v4

    invoke-direct {v1, v4}, Lokio/GzipSource;-><init>(Lokio/Source;)V

    .line 26
    .local v1, "gzipSource":Lokio/GzipSource;
    const-string v4, "Content-Type"

    invoke-virtual {v2, v4}, Lokhttp3/Response;->header(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 27
    .local v0, "contentType":Ljava/lang/String;
    if-eqz v0, :cond_1

    .line 29
    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v4

    :goto_0
    const-wide/16 v6, -0x1

    .line 31
    invoke-static {v1}, Lokio/Okio;->buffer(Lokio/Source;)Lokio/BufferedSource;

    move-result-object v5

    .line 28
    invoke-static {v4, v6, v7, v5}, Lokhttp3/ResponseBody;->create(Lokhttp3/MediaType;JLokio/BufferedSource;)Lokhttp3/ResponseBody;

    move-result-object v3

    .line 34
    invoke-virtual {v2}, Lokhttp3/Response;->newBuilder()Lokhttp3/Response$Builder;

    move-result-object v4

    invoke-virtual {v4, v3}, Lokhttp3/Response$Builder;->body(Lokhttp3/ResponseBody;)Lokhttp3/Response$Builder;

    move-result-object v4

    const-string v5, "Content-Encoding"

    invoke-virtual {v4, v5}, Lokhttp3/Response$Builder;->removeHeader(Ljava/lang/String;)Lokhttp3/Response$Builder;

    move-result-object v4

    invoke-virtual {v4}, Lokhttp3/Response$Builder;->build()Lokhttp3/Response;

    move-result-object v2

    .line 37
    .end local v0    # "contentType":Ljava/lang/String;
    .end local v1    # "gzipSource":Lokio/GzipSource;
    :cond_0
    return-object v2

    .line 29
    .restart local v0    # "contentType":Ljava/lang/String;
    .restart local v1    # "gzipSource":Lokio/GzipSource;
    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method
