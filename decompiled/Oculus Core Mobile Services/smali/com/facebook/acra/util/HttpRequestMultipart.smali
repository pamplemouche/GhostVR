.class public Lcom/facebook/acra/util/HttpRequestMultipart;
.super Ljava/lang/Object;
.source "HttpRequestMultipart.java"


# static fields
.field private static final CONTENT_DISPOSITION:Ljava/lang/String; = "Content-Disposition"

.field private static final CONTENT_DISPOSITION_FILE:Ljava/lang/String; = "form-data; filename=\"file\"; name="

.field private static final CONTENT_DISPOSITION_FORM_DATA:Ljava/lang/String; = "form-data; name="

.field private static final CONTENT_TRANSFER_ENCODING:Ljava/lang/String; = "Content-Transfer-Encoding"

.field private static final CONTENT_TRANSFER_ENCODING_BINARY:Ljava/lang/String; = "binary"

.field private static final CONTENT_TYPE:Ljava/lang/String; = "Content-Type"

.field private static final CONTENT_TYPE_APP_BINARY:Ljava/lang/String; = "application/binary"

.field private static final CONTENT_TYPE_FORM_MULTIPART_FORMAT:Ljava/lang/String; = "multipart/form-data;boundary=%s"

.field private static final LINE_FEED:Ljava/lang/String; = "\r\n"

.field private static final STREAM_BLOCK_SIZE:I = 0x2000

.field private static final USER_AGENT:Ljava/lang/String; = "User-Agent"


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

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    iput-object p1, p0, Lcom/facebook/acra/util/HttpRequestMultipart;->mConnectionProvider:Lcom/facebook/acra/util/HttpConnectionProvider;

    .line 41
    return-void
.end method

.method private static copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 223
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_0

    .line 224
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v1}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    .line 226
    :cond_0
    return-void
.end method

.method private static generateBoundary()Ljava/lang/String;
    .locals 1

    .prologue
    .line 168
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static generateMultipartEndFooter(Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 209
    const-string v0, "--%s--\r\n"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 211
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private static generateMultipartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 3

    .prologue
    .line 179
    const-string v0, "--%s\r\nContent-Disposition: %s\"%s\"\r\nContent-Type: application/binary\r\nContent-Transfer-Encoding: binary\r\n\r\n"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    const/4 v2, 0x1

    aput-object p1, v1, v2

    const/4 v2, 0x2

    aput-object p2, v1, v2

    .line 180
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 200
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    return-object v0
.end method

.method private static writeAcraData(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/io/OutputStream;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<**>;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 152
    const-string v0, "form-data; name="

    .line 153
    invoke-static {p2, v0, p0}, Lcom/facebook/acra/util/HttpRequestMultipart;->generateMultipartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v0

    .line 154
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 157
    new-instance v0, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v0, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 158
    invoke-static {p3, v0}, Lcom/facebook/acra/util/HttpRequest;->encodeParameters(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 159
    invoke-virtual {v0}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 162
    const-string v0, "\r\n"

    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 163
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 164
    return-void
.end method


# virtual methods
.method public sendPost(Ljava/net/URL;Ljava/util/Map;Ljava/util/Map;Lcom/facebook/acra/util/ACRAResponse;Ljava/lang/String;Z)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/net/URL;",
            "Ljava/util/Map",
            "<**>;",
            "Ljava/util/Map",
            "<*",
            "Lcom/facebook/acra/util/InputStreamField;",
            ">;",
            "Lcom/facebook/acra/util/ACRAResponse;",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 64
    iget-object v1, p0, Lcom/facebook/acra/util/HttpRequestMultipart;->mConnectionProvider:Lcom/facebook/acra/util/HttpConnectionProvider;

    invoke-interface {v1, p1}, Lcom/facebook/acra/util/HttpConnectionProvider;->getConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v5

    .line 66
    invoke-static {}, Lcom/facebook/acra/util/HttpRequestMultipart;->generateBoundary()Ljava/lang/String;

    move-result-object v6

    .line 68
    const-string v1, "POST"

    invoke-virtual {v5, v1}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 69
    const-string v1, "User-Agent"

    move-object/from16 v0, p5

    invoke-virtual {v5, v1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v1, "Content-Type"

    const-string v2, "multipart/form-data;boundary=%s"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v6, v3, v4

    .line 71
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 70
    invoke-virtual {v5, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    iget-object v1, p0, Lcom/facebook/acra/util/HttpRequestMultipart;->mHeaders:Ljava/util/Map;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/facebook/acra/util/HttpRequestMultipart;->mHeaders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 73
    iget-object v1, p0, Lcom/facebook/acra/util/HttpRequestMultipart;->mHeaders:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    .line 74
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 75
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v5, v3, v1}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    :cond_0
    const/4 v1, 0x1

    invoke-virtual {v5, v1}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 81
    const/4 v1, 0x0

    invoke-virtual {v5, v1}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 83
    :try_start_0
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v7

    const/4 v3, 0x0

    .line 85
    :try_start_1
    invoke-static {v7}, Lcom/facebook/acra/util/AcraRadioMonitorBridge;->createOutputDecorator(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v4

    .line 87
    const-string v1, "acra_data"

    invoke-static {v1, v4, v6, p2}, Lcom/facebook/acra/util/HttpRequestMultipart;->writeAcraData(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Map;)V

    .line 90
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_1
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    .line 91
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/acra/util/InputStreamField;

    .line 92
    invoke-virtual {v2}, Lcom/facebook/acra/util/InputStreamField;->getSendCompressed()Z

    move-result v9

    .line 93
    invoke-virtual {v2}, Lcom/facebook/acra/util/InputStreamField;->getSendAsFile()Z

    move-result v10

    .line 96
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    .line 97
    if-eqz v10, :cond_3

    const-string v1, "form-data; filename=\"file\"; name="

    .line 101
    :goto_2
    invoke-virtual {v11}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v10

    .line 98
    invoke-static {v6, v1, v10}, Lcom/facebook/acra/util/HttpRequestMultipart;->generateMultipartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v1

    .line 102
    invoke-virtual {v4, v1}, Ljava/io/OutputStream;->write([B)V

    .line 106
    if-eqz v9, :cond_4

    .line 107
    new-instance v1, Lcom/facebook/acra/util/CompressionOutputStream;

    const/16 v10, 0x2000

    move/from16 v0, p6

    invoke-direct {v1, v4, v10, v0}, Lcom/facebook/acra/util/CompressionOutputStream;-><init>(Ljava/io/OutputStream;IZ)V

    .line 112
    :goto_3
    invoke-virtual {v2}, Lcom/facebook/acra/util/InputStreamField;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/facebook/acra/util/HttpRequestMultipart;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 113
    if-eqz v9, :cond_1

    .line 115
    check-cast v1, Lcom/facebook/acra/util/CompressionOutputStream;

    invoke-virtual {v1}, Lcom/facebook/acra/util/CompressionOutputStream;->finish()V

    .line 119
    :cond_1
    const-string v1, "\r\n"

    invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 120
    invoke-virtual {v4, v1}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    .line 83
    :catch_0
    move-exception v1

    :try_start_2
    throw v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    :catchall_0
    move-exception v2

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    :goto_4
    if-eqz v7, :cond_2

    if-eqz v2, :cond_8

    :try_start_3
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    :goto_5
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 133
    :catchall_1
    move-exception v1

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v1

    .line 97
    :cond_3
    :try_start_5
    const-string v1, "form-data; name="

    goto :goto_2

    :cond_4
    move-object v1, v4

    .line 110
    goto :goto_3

    .line 124
    :cond_5
    invoke-static {v6}, Lcom/facebook/acra/util/HttpRequestMultipart;->generateMultipartEndFooter(Ljava/lang/String;)[B

    move-result-object v1

    .line 125
    invoke-virtual {v4, v1}, Ljava/io/OutputStream;->write([B)V

    .line 127
    invoke-virtual {v4}, Ljava/io/OutputStream;->flush()V

    .line 129
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v1

    .line 130
    move-object/from16 v0, p4

    invoke-virtual {v0, v1}, Lcom/facebook/acra/util/ACRAResponse;->setStatusCode(I)V

    .line 131
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 132
    if-eqz v7, :cond_6

    if-eqz v3, :cond_7

    :try_start_6
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 133
    :cond_6
    :goto_6
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 135
    return-void

    .line 132
    :catch_1
    move-exception v1

    :try_start_7
    invoke-virtual {v3, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_7
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V

    goto :goto_6

    :catch_2
    move-exception v3

    invoke-virtual {v2, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_8
    invoke-virtual {v7}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_5

    :catchall_2
    move-exception v1

    move-object v2, v3

    goto :goto_4
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
    .line 234
    iput-object p1, p0, Lcom/facebook/acra/util/HttpRequestMultipart;->mHeaders:Ljava/util/Map;

    .line 235
    return-void
.end method
