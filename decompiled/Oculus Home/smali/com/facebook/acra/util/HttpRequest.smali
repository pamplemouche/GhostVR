.class public Lcom/facebook/acra/util/HttpRequest;
.super Ljava/lang/Object;
.source "HttpRequest.java"


# static fields
.field private static final CHAR_ARRAY_BUFFER_SIZE:I = 0x100

.field public static final POST_CONTENT_TYPE_FORM_URLENCODED:Ljava/lang/String; = "application/x-www-form-urlencoded"


# instance fields
.field private mConnectionProvider:Lcom/facebook/acra/util/HttpConnectionProvider;

.field private mHeaders:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/acra/util/HttpConnectionProvider;)V
    .locals 0
    .param p1, "connectionProvider"    # Lcom/facebook/acra/util/HttpConnectionProvider;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    iput-object p1, p0, Lcom/facebook/acra/util/HttpRequest;->mConnectionProvider:Lcom/facebook/acra/util/HttpConnectionProvider;

    .line 35
    return-void
.end method

.method public static encodeParameters(Ljava/util/Map;Ljava/io/OutputStream;)V
    .locals 8
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/io/OutputStream;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 87
    .local p0, "parameters":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const/4 v2, 0x1

    .line 88
    .local v2, "first":Z
    new-instance v5, Ljava/io/BufferedWriter;

    new-instance v6, Ljava/io/OutputStreamWriter;

    invoke-direct {v6, p1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v5, v6}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 89
    .local v5, "writer":Ljava/io/Writer;
    new-instance v0, Lcom/facebook/acra/util/UrlEncodingWriter;

    invoke-direct {v0, v5}, Lcom/facebook/acra/util/UrlEncodingWriter;-><init>(Ljava/io/Writer;)V

    .line 90
    .local v0, "encodingWriter":Lcom/facebook/acra/util/UrlEncodingWriter;
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 91
    .local v1, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    .line 92
    .local v3, "key":Ljava/lang/Object;
    if-nez v2, :cond_0

    .line 93
    const/16 v7, 0x26

    invoke-virtual {v5, v7}, Ljava/io/Writer;->append(C)Ljava/io/Writer;

    .line 95
    :cond_0
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    .line 96
    .local v4, "value":Ljava/lang/Object;
    if-nez v4, :cond_1

    .line 97
    const-string v4, ""

    .line 99
    .end local v4    # "value":Ljava/lang/Object;
    :cond_1
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/facebook/acra/util/UrlEncodingWriter;->write(Ljava/lang/String;)V

    .line 100
    const/16 v7, 0x3d

    invoke-virtual {v5, v7}, Ljava/io/Writer;->write(I)V

    .line 101
    instance-of v7, v4, Ljava/io/InputStream;

    if-eqz v7, :cond_2

    .line 102
    check-cast v4, Ljava/io/InputStream;

    invoke-static {v4, v0}, Lcom/facebook/acra/util/HttpRequest;->transferData(Ljava/io/InputStream;Ljava/io/Writer;)Z

    .line 106
    :goto_1
    const/4 v2, 0x0

    .line 107
    goto :goto_0

    .line 104
    :cond_2
    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Lcom/facebook/acra/util/UrlEncodingWriter;->write(Ljava/lang/String;)V

    goto :goto_1

    .line 108
    .end local v1    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<**>;"
    .end local v3    # "key":Ljava/lang/Object;
    :cond_3
    invoke-virtual {v5}, Ljava/io/Writer;->flush()V

    .line 109
    return-void
.end method

.method private static transferData(Ljava/io/InputStream;Ljava/io/Writer;)Z
    .locals 6
    .param p0, "input"    # Ljava/io/InputStream;
    .param p1, "writer"    # Ljava/io/Writer;

    .prologue
    const/4 v4, 0x0

    .line 121
    new-instance v3, Ljava/io/InputStreamReader;

    invoke-direct {v3, p0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    .line 122
    .local v3, "reader":Ljava/io/InputStreamReader;
    const/16 v5, 0x100

    new-array v0, v5, [C

    .line 126
    .local v0, "data":[C
    :goto_0
    :try_start_0
    invoke-virtual {v3, v0}, Ljava/io/InputStreamReader;->read([C)I

    move-result v2

    .line 127
    .local v2, "read":I
    const/4 v5, -0x1

    if-ne v2, v5, :cond_0

    .line 135
    const/4 v4, 0x1

    .end local v2    # "read":I
    :goto_1
    return v4

    .line 130
    .restart local v2    # "read":I
    :cond_0
    const/4 v5, 0x0

    invoke-virtual {p1, v0, v5, v2}, Ljava/io/Writer;->write([CII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    .end local v2    # "read":I
    :catch_0
    move-exception v1

    .line 133
    .local v1, "e":Ljava/io/IOException;
    goto :goto_1
.end method


# virtual methods
.method public sendPost(Ljava/net/URL;Ljava/util/Map;Lcom/facebook/acra/util/ACRAResponse;Ljava/lang/String;)V
    .locals 9
    .param p1, "url"    # Ljava/net/URL;
    .param p3, "response"    # Lcom/facebook/acra/util/ACRAResponse;
    .param p4, "userAgent"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/Map",
            "<**>;",
            "Lcom/facebook/acra/util/ACRAResponse;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    .local p2, "parameters":Ljava/util/Map;, "Ljava/util/Map<**>;"
    iget-object v6, p0, Lcom/facebook/acra/util/HttpRequest;->mConnectionProvider:Lcom/facebook/acra/util/HttpConnectionProvider;

    invoke-interface {v6, p1}, Lcom/facebook/acra/util/HttpConnectionProvider;->getConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 50
    .local v5, "urlConnection":Ljava/net/HttpURLConnection;
    const-string v6, "POST"

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 51
    const-string v6, "User-Agent"

    invoke-virtual {v5, v6, p4}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 52
    const-string v6, "Content-Type"

    const-string v7, "application/x-www-form-urlencoded"

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 53
    const-string v6, "Content-Encoding"

    const-string v7, "gzip"

    invoke-virtual {v5, v6, v7}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 54
    iget-object v6, p0, Lcom/facebook/acra/util/HttpRequest;->mHeaders:Ljava/util/Map;

    if-eqz v6, :cond_0

    iget-object v6, p0, Lcom/facebook/acra/util/HttpRequest;->mHeaders:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_0

    .line 55
    iget-object v6, p0, Lcom/facebook/acra/util/HttpRequest;->mHeaders:Ljava/util/Map;

    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 56
    .local v1, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_0
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 57
    .local v0, "e":Ljava/util/Map$Entry;
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v5, v7, v8}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 60
    .end local v0    # "e":Ljava/util/Map$Entry;
    .end local v1    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 64
    :try_start_0
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-static {v6}, Lcom/facebook/acra/util/AcraRadioMonitorBridge;->createOutputDecorator(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v3

    .line 65
    .local v3, "outputStream":Ljava/io/OutputStream;
    new-instance v2, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v2, v3}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 66
    .local v2, "gzipStream":Ljava/util/zip/GZIPOutputStream;
    invoke-static {p2, v2}, Lcom/facebook/acra/util/HttpRequest;->encodeParameters(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 67
    invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V

    .line 70
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v4

    .line 71
    .local v4, "responseCode":I
    invoke-virtual {p3, v4}, Lcom/facebook/acra/util/ACRAResponse;->setStatusCode(I)V

    .line 72
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-virtual {v6}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 74
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 76
    return-void

    .line 74
    .end local v2    # "gzipStream":Ljava/util/zip/GZIPOutputStream;
    .end local v3    # "outputStream":Ljava/io/OutputStream;
    .end local v4    # "responseCode":I
    :catchall_0
    move-exception v6

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v6
.end method

.method public setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 117
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/facebook/acra/util/HttpRequest;->mHeaders:Ljava/util/Map;

    .line 118
    return-void
.end method
