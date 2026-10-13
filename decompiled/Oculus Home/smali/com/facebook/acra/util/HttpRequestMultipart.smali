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
    .param p1, "connectionProvider"    # Lcom/facebook/acra/util/HttpConnectionProvider;

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
    .param p0, "is"    # Ljava/io/InputStream;
    .param p1, "os"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 221
    const/16 v2, 0x2000

    new-array v0, v2, [B

    .line 223
    .local v0, "buffer":[B
    :goto_0
    invoke-virtual {p0, v0}, Ljava/io/InputStream;->read([B)I

    move-result v1

    .local v1, "bytesWritten":I
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
    .locals 4
    .param p0, "boundary"    # Ljava/lang/String;

    .prologue
    .line 209
    const-string v1, "--%s--\r\n"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 211
    .local v0, "header":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method private static generateMultipartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B
    .locals 4
    .param p0, "boundary"    # Ljava/lang/String;
    .param p1, "disposition"    # Ljava/lang/String;
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 179
    const-string v1, "--%s\r\nContent-Disposition: %s\"%s\"\r\nContent-Type: application/binary\r\nContent-Transfer-Encoding: binary\r\n\r\n"

    const/4 v2, 0x3

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p0, v2, v3

    const/4 v3, 0x1

    aput-object p1, v2, v3

    const/4 v3, 0x2

    aput-object p2, v2, v3

    .line 180
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 200
    .local v0, "header":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    return-object v1
.end method

.method private static writeAcraData(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Map;)V
    .locals 4
    .param p0, "fieldName"    # Ljava/lang/String;
    .param p1, "outputStream"    # Ljava/io/OutputStream;
    .param p2, "boundary"    # Ljava/lang/String;
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
    .local p3, "textParameters":Ljava/util/Map;, "Ljava/util/Map<**>;"
    const-string v3, "form-data; name="

    .line 153
    invoke-static {p2, v3, p0}, Lcom/facebook/acra/util/HttpRequestMultipart;->generateMultipartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v2

    .line 154
    .local v2, "header_acra":[B
    invoke-virtual {p1, v2}, Ljava/io/OutputStream;->write([B)V

    .line 157
    new-instance v1, Ljava/util/zip/GZIPOutputStream;

    invoke-direct {v1, p1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 158
    .local v1, "gzipStream":Ljava/util/zip/GZIPOutputStream;
    invoke-static {p3, v1}, Lcom/facebook/acra/util/HttpRequest;->encodeParameters(Ljava/util/Map;Ljava/io/OutputStream;)V

    .line 159
    invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->finish()V

    .line 162
    const-string v3, "\r\n"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    .line 163
    .local v0, "footer":[B
    invoke-virtual {p1, v0}, Ljava/io/OutputStream;->write([B)V

    .line 164
    return-void
.end method


# virtual methods
.method public sendPost(Ljava/net/URL;Ljava/util/Map;Ljava/util/Map;Lcom/facebook/acra/util/ACRAResponse;Ljava/lang/String;Z)V
    .locals 24
    .param p1, "url"    # Ljava/net/URL;
    .param p4, "response"    # Lcom/facebook/acra/util/ACRAResponse;
    .param p5, "userAgent"    # Ljava/lang/String;
    .param p6, "useZstd"    # Z
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
    .local p2, "textParameters":Ljava/util/Map;, "Ljava/util/Map<**>;"
    .local p3, "binParameters":Ljava/util/Map;, "Ljava/util/Map<*Lcom/facebook/acra/util/InputStreamField;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/acra/util/HttpRequestMultipart;->mConnectionProvider:Lcom/facebook/acra/util/HttpConnectionProvider;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Lcom/facebook/acra/util/HttpConnectionProvider;->getConnection(Ljava/net/URL;)Ljava/net/HttpURLConnection;

    move-result-object v18

    .line 66
    .local v18, "urlConnection":Ljava/net/HttpURLConnection;
    invoke-static {}, Lcom/facebook/acra/util/HttpRequestMultipart;->generateBoundary()Ljava/lang/String;

    move-result-object v4

    .line 68
    .local v4, "boundary":Ljava/lang/String;
    const-string v19, "POST"

    invoke-virtual/range {v18 .. v19}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 69
    const-string v19, "User-Agent"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, p5

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 70
    const-string v19, "Content-Type"

    const-string v20, "multipart/form-data;boundary=%s"

    const/16 v21, 0x1

    move/from16 v0, v21

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v21, v0

    const/16 v22, 0x0

    aput-object v4, v21, v22

    .line 71
    invoke-static/range {v20 .. v21}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v20

    .line 70
    invoke-virtual/range {v18 .. v20}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 72
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/acra/util/HttpRequestMultipart;->mHeaders:Ljava/util/Map;

    move-object/from16 v19, v0

    if-eqz v19, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/acra/util/HttpRequestMultipart;->mHeaders:Ljava/util/Map;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->isEmpty()Z

    move-result v19

    if-nez v19, :cond_0

    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/acra/util/HttpRequestMultipart;->mHeaders:Ljava/util/Map;

    move-object/from16 v19, v0

    invoke-interface/range {v19 .. v19}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v7

    .line 74
    .local v7, "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    invoke-interface {v7}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v19

    :goto_0
    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->hasNext()Z

    move-result v20

    if-eqz v20, :cond_0

    invoke-interface/range {v19 .. v19}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    .line 75
    .local v5, "e":Ljava/util/Map$Entry;
    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v21

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 78
    .end local v5    # "e":Ljava/util/Map$Entry;
    .end local v7    # "entries":Ljava/util/Set;, "Ljava/util/Set<Ljava/util/Map$Entry<Ljava/lang/String;Ljava/lang/String;>;>;"
    :cond_0
    const/16 v19, 0x1

    invoke-virtual/range {v18 .. v19}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 81
    const/16 v19, 0x0

    invoke-virtual/range {v18 .. v19}, Ljava/net/HttpURLConnection;->setChunkedStreamingMode(I)V

    .line 83
    :try_start_0
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-object v3

    .local v3, "baseOutputStream":Ljava/io/OutputStream;
    const/16 v20, 0x0

    .line 85
    :try_start_1
    invoke-static {v3}, Lcom/facebook/acra/util/AcraRadioMonitorBridge;->createOutputDecorator(Ljava/io/OutputStream;)Ljava/io/OutputStream;

    move-result-object v13

    .line 87
    .local v13, "outputStream":Ljava/io/OutputStream;
    const-string v19, "acra_data"

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-static {v0, v13, v4, v1}, Lcom/facebook/acra/util/HttpRequestMultipart;->writeAcraData(Ljava/lang/String;Ljava/io/OutputStream;Ljava/lang/String;Ljava/util/Map;)V

    .line 90
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :goto_1
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v19

    if-eqz v19, :cond_5

    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 91
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<*Lcom/facebook/acra/util/InputStreamField;>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/facebook/acra/util/InputStreamField;

    .line 92
    .local v9, "field":Lcom/facebook/acra/util/InputStreamField;
    invoke-virtual {v9}, Lcom/facebook/acra/util/InputStreamField;->getSendCompressed()Z

    move-result v16

    .line 93
    .local v16, "sendCompressed":Z
    invoke-virtual {v9}, Lcom/facebook/acra/util/InputStreamField;->getSendAsFile()Z

    move-result v15

    .line 96
    .local v15, "sendAsFile":Z
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v12

    .line 97
    .local v12, "key":Ljava/lang/Object;
    if-eqz v15, :cond_3

    const-string v19, "form-data; filename=\"file\"; name="

    .line 101
    :goto_2
    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v22

    .line 98
    move-object/from16 v0, v19

    move-object/from16 v1, v22

    invoke-static {v4, v0, v1}, Lcom/facebook/acra/util/HttpRequestMultipart;->generateMultipartHeader(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)[B

    move-result-object v11

    .line 102
    .local v11, "header_bin":[B
    invoke-virtual {v13, v11}, Ljava/io/OutputStream;->write([B)V

    .line 106
    if-eqz v16, :cond_4

    .line 107
    new-instance v17, Lcom/facebook/acra/util/CompressionOutputStream;

    const/16 v19, 0x2000

    move-object/from16 v0, v17

    move/from16 v1, v19

    move/from16 v2, p6

    invoke-direct {v0, v13, v1, v2}, Lcom/facebook/acra/util/CompressionOutputStream;-><init>(Ljava/io/OutputStream;IZ)V

    .line 112
    .local v17, "targetOutputStream":Ljava/io/OutputStream;
    :goto_3
    invoke-virtual {v9}, Lcom/facebook/acra/util/InputStreamField;->getInputStream()Ljava/io/InputStream;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-static {v0, v1}, Lcom/facebook/acra/util/HttpRequestMultipart;->copyStream(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 113
    if-eqz v16, :cond_1

    .line 115
    check-cast v17, Lcom/facebook/acra/util/CompressionOutputStream;

    .end local v17    # "targetOutputStream":Ljava/io/OutputStream;
    invoke-virtual/range {v17 .. v17}, Lcom/facebook/acra/util/CompressionOutputStream;->finish()V

    .line 119
    :cond_1
    const-string v19, "\r\n"

    invoke-virtual/range {v19 .. v19}, Ljava/lang/String;->getBytes()[B

    move-result-object v10

    .line 120
    .local v10, "footer":[B
    invoke-virtual {v13, v10}, Ljava/io/OutputStream;->write([B)V
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    goto :goto_1

    .line 83
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<*Lcom/facebook/acra/util/InputStreamField;>;"
    .end local v9    # "field":Lcom/facebook/acra/util/InputStreamField;
    .end local v10    # "footer":[B
    .end local v11    # "header_bin":[B
    .end local v12    # "key":Ljava/lang/Object;
    .end local v13    # "outputStream":Ljava/io/OutputStream;
    .end local v15    # "sendAsFile":Z
    .end local v16    # "sendCompressed":Z
    :catch_0
    move-exception v19

    :try_start_2
    throw v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 132
    :catchall_0
    move-exception v20

    move-object/from16 v23, v20

    move-object/from16 v20, v19

    move-object/from16 v19, v23

    :goto_4
    if-eqz v3, :cond_2

    if-eqz v20, :cond_8

    :try_start_3
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :cond_2
    :goto_5
    :try_start_4
    throw v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 133
    .end local v3    # "baseOutputStream":Ljava/io/OutputStream;
    :catchall_1
    move-exception v19

    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->disconnect()V

    throw v19

    .line 97
    .restart local v3    # "baseOutputStream":Ljava/io/OutputStream;
    .restart local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<*Lcom/facebook/acra/util/InputStreamField;>;"
    .restart local v9    # "field":Lcom/facebook/acra/util/InputStreamField;
    .restart local v12    # "key":Ljava/lang/Object;
    .restart local v13    # "outputStream":Ljava/io/OutputStream;
    .restart local v15    # "sendAsFile":Z
    .restart local v16    # "sendCompressed":Z
    :cond_3
    :try_start_5
    const-string v19, "form-data; name="

    goto :goto_2

    .line 110
    .restart local v11    # "header_bin":[B
    :cond_4
    move-object/from16 v17, v13

    .restart local v17    # "targetOutputStream":Ljava/io/OutputStream;
    goto :goto_3

    .line 124
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<*Lcom/facebook/acra/util/InputStreamField;>;"
    .end local v9    # "field":Lcom/facebook/acra/util/InputStreamField;
    .end local v11    # "header_bin":[B
    .end local v12    # "key":Ljava/lang/Object;
    .end local v15    # "sendAsFile":Z
    .end local v16    # "sendCompressed":Z
    .end local v17    # "targetOutputStream":Ljava/io/OutputStream;
    :cond_5
    invoke-static {v4}, Lcom/facebook/acra/util/HttpRequestMultipart;->generateMultipartEndFooter(Ljava/lang/String;)[B

    move-result-object v6

    .line 125
    .local v6, "endFooter":[B
    invoke-virtual {v13, v6}, Ljava/io/OutputStream;->write([B)V

    .line 127
    invoke-virtual {v13}, Ljava/io/OutputStream;->flush()V

    .line 129
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v14

    .line 130
    .local v14, "responseCode":I
    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Lcom/facebook/acra/util/ACRAResponse;->setStatusCode(I)V

    .line 131
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/io/InputStream;->close()V
    :try_end_5
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_0
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 132
    if-eqz v3, :cond_6

    if-eqz v20, :cond_7

    :try_start_6
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_6
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 133
    :cond_6
    :goto_6
    invoke-virtual/range {v18 .. v18}, Ljava/net/HttpURLConnection;->disconnect()V

    .line 135
    return-void

    .line 132
    :catch_1
    move-exception v19

    :try_start_7
    move-object/from16 v0, v20

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_6

    :cond_7
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V

    goto :goto_6

    .end local v6    # "endFooter":[B
    .end local v13    # "outputStream":Ljava/io/OutputStream;
    .end local v14    # "responseCode":I
    :catch_2
    move-exception v21

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_5

    :cond_8
    invoke-virtual {v3}, Ljava/io/OutputStream;->close()V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    goto :goto_5

    :catchall_2
    move-exception v19

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
    .local p1, "headers":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/facebook/acra/util/HttpRequestMultipart;->mHeaders:Ljava/util/Map;

    .line 235
    return-void
.end method
