.class public Lcom/oculus/localmedia/server/LocalMediaServer;
.super Ljava/lang/Object;
.source "LocalMediaServer.java"

# interfaces
.implements Lcom/oculus/localmedia/server/LocalMediaServerRouteManager;
.implements Ljava/lang/Runnable;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mIsRunning:Z

.field private mListener:Lcom/oculus/localmedia/server/LocalMediaServerListener;

.field private mLocalAddress:Ljava/net/InetAddress;

.field private mRequestCount:J

.field private mServerSocket:Ljava/net/ServerSocket;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 35
    const-class v0, Lcom/oculus/localmedia/server/LocalMediaServer;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/localmedia/server/LocalMediaServer;->TAG:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/localmedia/server/LocalMediaServer;Ljava/net/Socket;)V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0, p1}, Lcom/oculus/localmedia/server/LocalMediaServer;->handle(Ljava/net/Socket;)V

    return-void
.end method

.method static synthetic access$100(Ljava/net/Socket;)V
    .locals 0

    .prologue
    .line 33
    invoke-static {p0}, Lcom/oculus/localmedia/server/LocalMediaServer;->safeClose(Ljava/net/Socket;)V

    return-void
.end method

.method private getEtag(Ljava/io/File;)Ljava/lang/String;
    .locals 4

    .prologue
    .line 288
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private handle(Ljava/net/Socket;)V
    .locals 13

    .prologue
    .line 187
    const/4 v1, 0x0

    .line 188
    const/4 v2, 0x0

    .line 190
    const/4 v0, 0x0

    .line 191
    const-wide/16 v4, 0x0

    .line 192
    const-wide/16 v6, -0x1

    .line 195
    :try_start_0
    new-instance v8, Ljava/io/BufferedReader;

    new-instance v3, Ljava/io/InputStreamReader;

    invoke-virtual {p1}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v9

    invoke-direct {v3, v9}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v8, v3}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_6
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 197
    :cond_0
    :goto_0
    :try_start_1
    invoke-virtual {v8}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 198
    sget-object v3, Lcom/oculus/localmedia/server/LocalMediaServer;->TAG:Ljava/lang/String;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "Request : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v9}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 199
    const-string v3, "GET /"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 200
    const/16 v0, 0x2f

    invoke-virtual {v1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 201
    const/16 v3, 0x20

    invoke-virtual {v1, v3, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v3

    .line 202
    invoke-virtual {v1, v0, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 203
    :cond_1
    const-string v3, "Range"

    invoke-virtual {v1, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 204
    const-string v3, "bytes="

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v3

    .line 205
    if-lez v3, :cond_0

    .line 206
    add-int/lit8 v3, v3, 0x6

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v9

    invoke-virtual {v1, v3, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 207
    const/16 v3, 0x2d

    invoke-virtual {v1, v3}, Ljava/lang/String;->indexOf(I)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_7
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-result v3

    .line 209
    if-lez v3, :cond_0

    .line 210
    const/4 v6, 0x0

    :try_start_2
    invoke-virtual {v1, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 211
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    .line 212
    invoke-virtual {v6}, Ljava/lang/String;->isEmpty()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 213
    const-wide/16 v6, 0x0

    goto :goto_0

    .line 215
    :cond_2
    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v1, v3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_0
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-result-wide v6

    goto/16 :goto_0

    .line 218
    :catch_0
    move-exception v1

    .line 219
    const-wide/16 v6, -0x1

    goto/16 :goto_0

    .line 226
    :cond_3
    :try_start_3
    new-instance v1, Ljava/io/PrintStream;

    invoke-virtual {p1}, Ljava/net/Socket;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_7
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 229
    if-nez v0, :cond_6

    .line 230
    :try_start_4
    new-instance v0, Ljava/lang/Exception;

    const-string v2, "Invalid null route"

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 267
    :catch_1
    move-exception v0

    move-object v2, v8

    .line 268
    :goto_1
    :try_start_5
    sget-object v3, Lcom/oculus/localmedia/server/LocalMediaServer;->TAG:Ljava/lang/String;

    const-string v4, "Web server error :"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 270
    :try_start_6
    invoke-direct {p0, v1}, Lcom/oculus/localmedia/server/LocalMediaServer;->writeServerError(Ljava/io/PrintStream;)V
    :try_end_6
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_5
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    .line 274
    :goto_2
    if-eqz v1, :cond_4

    .line 275
    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V

    .line 277
    :cond_4
    if-eqz v2, :cond_5

    .line 279
    :try_start_7
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_7
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_7} :catch_3

    .line 285
    :cond_5
    :goto_3
    return-void

    .line 233
    :cond_6
    :try_start_8
    const-string v2, "/"

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    .line 234
    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Lcom/oculus/localmedia/MediaQueryUtils;->parseMediaType(Ljava/lang/String;)Lcom/oculus/localmedia/MediaType;

    move-result-object v3

    .line 235
    sget-object v9, Lcom/oculus/localmedia/MediaType;->UNKNOWN:Lcom/oculus/localmedia/MediaType;

    if-eq v3, v9, :cond_7

    array-length v9, v2

    const/4 v10, 0x2

    if-ge v9, v10, :cond_a

    .line 236
    :cond_7
    new-instance v2, Ljava/lang/Exception;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Invalid route format:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_8
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_1
    .catchall {:try_start_8 .. :try_end_8} :catchall_0

    .line 274
    :catchall_0
    move-exception v0

    :goto_4
    if-eqz v1, :cond_8

    .line 275
    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V

    .line 277
    :cond_8
    if-eqz v8, :cond_9

    .line 279
    :try_start_9
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_4

    .line 282
    :cond_9
    :goto_5
    throw v0

    .line 238
    :cond_a
    const/4 v0, 0x1

    :try_start_a
    aget-object v0, v2, v0

    invoke-static {v0}, Lcom/oculus/localmedia/MediaProviderUtils;->removeFileExtension(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/16 v9, 0xa

    invoke-static {v0, v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v9

    .line 239
    invoke-static {}, Lcom/oculus/localmedia/MediaQuery;->builder()Lcom/oculus/localmedia/MediaQuery$Builder;

    invoke-static {v3, v9}, Lcom/oculus/localmedia/MediaQuery$Builder;->fromMedia(Lcom/oculus/localmedia/MediaType;I)Lcom/oculus/localmedia/MediaQuery$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaQuery$Builder;->build()Lcom/oculus/localmedia/MediaQuery;

    move-result-object v0

    .line 240
    invoke-static {v0}, Lcom/oculus/localmedia/LocalMediaManager;->query(Lcom/oculus/localmedia/MediaQuery;)Lcom/oculus/localmedia/MediaResponse;

    move-result-object v0

    .line 241
    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaResponse;->getItems()Ljava/util/ArrayList;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/localmedia/MediaItem;

    .line 242
    if-nez v0, :cond_b

    .line 243
    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Invalid mediaId:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_b
    array-length v3, v2

    const/4 v9, 0x2

    if-le v3, v9, :cond_d

    const/4 v3, 0x2

    aget-object v2, v2, v3

    .line 248
    :goto_6
    const-string v3, "thumb"

    invoke-virtual {v2, v3}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    .line 249
    if-nez v3, :cond_c

    iget-object v2, p0, Lcom/oculus/localmedia/server/LocalMediaServer;->mListener:Lcom/oculus/localmedia/server/LocalMediaServerListener;

    if-eqz v2, :cond_c

    .line 250
    iget-object v2, p0, Lcom/oculus/localmedia/server/LocalMediaServer;->mListener:Lcom/oculus/localmedia/server/LocalMediaServerListener;

    invoke-virtual {p0, v0}, Lcom/oculus/localmedia/server/LocalMediaServer;->getThumbnailUrl(Lcom/oculus/localmedia/MediaItem;)Ljava/net/URL;

    move-result-object v9

    invoke-interface {v2, v9}, Lcom/oculus/localmedia/server/LocalMediaServerListener;->onWebServerItemRequested(Ljava/net/URL;)V

    .line 253
    :cond_c
    if-eqz v3, :cond_e

    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaItem;->getThumbnailFilePath()Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    .line 254
    :goto_7
    if-eqz v3, :cond_f

    const-string v3, "image/jpg"

    .line 256
    :goto_8
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 257
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_10

    .line 258
    new-instance v0, Ljava/lang/Exception;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Local path does not exist:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    throw v0

    .line 247
    :cond_d
    const-string v2, ""

    goto :goto_6

    .line 253
    :cond_e
    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaItem;->getFilePath()Ljava/lang/String;

    move-result-object v2

    move-object v9, v2

    goto :goto_7

    .line 254
    :cond_f
    invoke-virtual {v0}, Lcom/oculus/localmedia/MediaItem;->getMimeType()Ljava/lang/String;

    move-result-object v3

    goto :goto_8

    .line 261
    :cond_10
    const-wide/16 v10, -0x1

    cmp-long v0, v6, v10

    if-lez v0, :cond_12

    move-object v0, p0

    .line 262
    invoke-direct/range {v0 .. v7}, Lcom/oculus/localmedia/server/LocalMediaServer;->outputRangeContent(Ljava/io/PrintStream;Ljava/io/File;Ljava/lang/String;JJ)V

    .line 266
    :goto_9
    invoke-virtual {v1}, Ljava/io/PrintStream;->flush()V
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_1
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 274
    if-eqz v1, :cond_11

    .line 275
    invoke-virtual {v1}, Ljava/io/PrintStream;->close()V

    .line 277
    :cond_11
    if-eqz v8, :cond_5

    .line 279
    :try_start_b
    invoke-virtual {v8}, Ljava/io/BufferedReader;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_2

    goto/16 :goto_3

    .line 280
    :catch_2
    move-exception v0

    .line 281
    sget-object v0, Lcom/oculus/localmedia/server/LocalMediaServer;->TAG:Ljava/lang/String;

    const-string v1, "Error when closing reader socket"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 264
    :cond_12
    :try_start_c
    invoke-direct {p0, v1, v2, v3}, Lcom/oculus/localmedia/server/LocalMediaServer;->outputContent(Ljava/io/PrintStream;Ljava/io/File;Ljava/lang/String;)V
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_1
    .catchall {:try_start_c .. :try_end_c} :catchall_0

    goto :goto_9

    .line 280
    :catch_3
    move-exception v0

    .line 281
    sget-object v0, Lcom/oculus/localmedia/server/LocalMediaServer;->TAG:Ljava/lang/String;

    const-string v1, "Error when closing reader socket"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 280
    :catch_4
    move-exception v1

    .line 281
    sget-object v1, Lcom/oculus/localmedia/server/LocalMediaServer;->TAG:Ljava/lang/String;

    const-string v2, "Error when closing reader socket"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 271
    :catch_5
    move-exception v0

    goto/16 :goto_2

    .line 274
    :catchall_1
    move-exception v0

    move-object v8, v1

    move-object v1, v2

    goto/16 :goto_4

    :catchall_2
    move-exception v0

    move-object v1, v2

    goto/16 :goto_4

    :catchall_3
    move-exception v0

    move-object v8, v2

    goto/16 :goto_4

    .line 267
    :catch_6
    move-exception v0

    move-object v12, v2

    move-object v2, v1

    move-object v1, v12

    goto/16 :goto_1

    :catch_7
    move-exception v0

    move-object v1, v2

    move-object v2, v8

    goto/16 :goto_1
.end method

.method private outputContent(Ljava/io/PrintStream;Ljava/io/File;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 311
    const/4 v2, 0x0

    .line 313
    :try_start_0
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p2}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 315
    :try_start_1
    const-string v0, "HTTP/1.0 200 OK"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 316
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Type: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 317
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Content-Length: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 318
    const-string v0, "Accept-Ranges: bytes"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 319
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "ETag: "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/oculus/localmedia/server/LocalMediaServer;->getEtag(Ljava/io/File;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 320
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 322
    const/16 v0, 0x400

    new-array v0, v0, [B

    .line 324
    :goto_0
    const/4 v2, -0x1

    invoke-virtual {v1, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v2, v3, :cond_1

    .line 325
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2, v3}, Ljava/io/PrintStream;->write([BII)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_0

    .line 327
    :catch_0
    move-exception v0

    .line 328
    :goto_1
    :try_start_2
    sget-object v2, Lcom/oculus/localmedia/server/LocalMediaServer;->TAG:Ljava/lang/String;

    const-string v3, "Web Server error "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 330
    if-eqz v1, :cond_0

    .line 331
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 334
    :cond_0
    :goto_2
    return-void

    .line 330
    :cond_1
    if-eqz v1, :cond_0

    .line 331
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto :goto_2

    .line 330
    :catchall_0
    move-exception v0

    move-object v1, v2

    :goto_3
    if-eqz v1, :cond_2

    .line 331
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_2
    throw v0

    .line 330
    :catchall_1
    move-exception v0

    goto :goto_3

    .line 327
    :catch_1
    move-exception v0

    move-object v1, v2

    goto :goto_1
.end method

.method private outputRangeContent(Ljava/io/PrintStream;Ljava/io/File;Ljava/lang/String;JJ)V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 337
    const/4 v1, 0x0

    .line 339
    :try_start_0
    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v6

    .line 340
    const-wide/16 v2, 0x0

    cmp-long v0, p4, v2

    if-ltz v0, :cond_3

    .line 341
    cmp-long v0, p4, v6

    if-ltz v0, :cond_1

    .line 342
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/localmedia/server/LocalMediaServer;->outputContent(Ljava/io/PrintStream;Ljava/io/File;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 381
    if-eqz v1, :cond_0

    .line 382
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    .line 385
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    const-wide/16 v2, 0x0

    cmp-long v0, p6, v2

    if-gtz v0, :cond_2

    .line 346
    const-wide/16 v2, 0x1

    sub-long p6, v6, v2

    .line 348
    :cond_2
    sub-long v2, p6, p4

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    .line 349
    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-gez v0, :cond_6

    .line 350
    const-wide/16 v2, 0x0

    move-wide v4, v2

    .line 354
    :goto_1
    :try_start_1
    new-instance v2, Lcom/oculus/localmedia/server/LocalMediaServer$2;

    invoke-direct {v2, p0, p2, v4, v5}, Lcom/oculus/localmedia/server/LocalMediaServer$2;-><init>(Lcom/oculus/localmedia/server/LocalMediaServer;Ljava/io/File;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 360
    :try_start_2
    invoke-virtual {v2, p4, p5}, Ljava/io/InputStream;->skip(J)J

    .line 362
    const-string v0, "HTTP/1.0 206 OK"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 363
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content-Type: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 364
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content-Length: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 365
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Content-Range: bytes "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4, p5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6, p7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 366
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ETag: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/oculus/localmedia/server/LocalMediaServer;->getEtag(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 367
    invoke-virtual {p1}, Ljava/io/PrintStream;->println()V

    .line 369
    const/16 v0, 0x2000

    new-array v0, v0, [B

    .line 371
    :goto_2
    const/4 v1, -0x1

    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-eq v1, v3, :cond_4

    .line 372
    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1, v3}, Ljava/io/PrintStream;->write([BII)V

    .line 373
    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_2

    .line 378
    :catch_0
    move-exception v0

    move-object v1, v2

    .line 379
    :goto_3
    :try_start_3
    sget-object v2, Lcom/oculus/localmedia/server/LocalMediaServer;->TAG:Ljava/lang/String;

    const-string v3, "Web Server error "

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 381
    if-eqz v1, :cond_0

    .line 382
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    .line 376
    :cond_3
    :try_start_4
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/localmedia/server/LocalMediaServer;->outputContent(Ljava/io/PrintStream;Ljava/io/File;Ljava/lang/String;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v2, v1

    .line 381
    :cond_4
    if-eqz v2, :cond_0

    .line 382
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto/16 :goto_0

    .line 381
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_5

    .line 382
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    :cond_5
    throw v0

    .line 381
    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object v2, v1

    goto :goto_4

    .line 378
    :catch_1
    move-exception v0

    goto :goto_3

    :cond_6
    move-wide v4, v2

    goto/16 :goto_1
.end method

.method private static final safeClose(Ljava/net/Socket;)V
    .locals 4

    .prologue
    .line 149
    if-eqz p0, :cond_0

    .line 151
    :try_start_0
    invoke-virtual {p0}, Ljava/net/Socket;->close()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 156
    :cond_0
    :goto_0
    return-void

    .line 152
    :catch_0
    move-exception v0

    .line 153
    sget-object v1, Lcom/oculus/localmedia/server/LocalMediaServer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected error when closing socket :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private writeServerError(Ljava/io/PrintStream;)V
    .locals 1

    .prologue
    .line 297
    const-string v0, "HTTP/1.0 500 Internal Server Error"

    invoke-virtual {p1, v0}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 298
    invoke-virtual {p1}, Ljava/io/PrintStream;->flush()V

    .line 299
    return-void
.end method


# virtual methods
.method public getAddress()Ljava/lang/String;
    .locals 5

    .prologue
    .line 77
    invoke-virtual {p0}, Lcom/oculus/localmedia/server/LocalMediaServer;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Lcom/oculus/localmedia/server/LocalMediaServer;->getPort()I

    move-result v1

    .line 79
    if-eqz v0, :cond_0

    if-lez v1, :cond_0

    .line 80
    const-string v2, "%s:%d"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 82
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getHostAddress()Ljava/lang/String;
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/oculus/localmedia/server/LocalMediaServer;->mLocalAddress:Ljava/net/InetAddress;

    if-eqz v0, :cond_0

    .line 71
    iget-object v0, p0, Lcom/oculus/localmedia/server/LocalMediaServer;->mLocalAddress:Ljava/net/InetAddress;

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 73
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getPort()I
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/oculus/localmedia/server/LocalMediaServer;->mServerSocket:Ljava/net/ServerSocket;

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oculus/localmedia/server/LocalMediaServer;->mIsRunning:Z

    if-eqz v0, :cond_0

    .line 64
    iget-object v0, p0, Lcom/oculus/localmedia/server/LocalMediaServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->getLocalPort()I

    move-result v0

    .line 66
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getThumbnailUrl(Lcom/oculus/localmedia/MediaItem;)Ljava/net/URL;
    .locals 6

    .prologue
    .line 172
    :try_start_0
    invoke-virtual {p1}, Lcom/oculus/localmedia/MediaItem;->getThumbnailFilePath()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oculus/localmedia/MediaProviderUtils;->getFileExtension(Ljava/lang/String;Z)Ljava/lang/String;

    move-result-object v1

    .line 173
    new-instance v0, Ljava/net/URL;

    const-string v2, "http://%s/%s/%d/thumb%s"

    const/4 v3, 0x4

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/oculus/localmedia/server/LocalMediaServer;->getAddress()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {p1}, Lcom/oculus/localmedia/MediaItem;->getType()Lcom/oculus/localmedia/MediaType;

    move-result-object v5

    invoke-virtual {v5}, Lcom/oculus/localmedia/MediaType;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x2

    invoke-virtual {p1}, Lcom/oculus/localmedia/MediaItem;->getId()I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x3

    aput-object v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 177
    :goto_0
    return-object v0

    .line 174
    :catch_0
    move-exception v0

    .line 175
    sget-object v1, Lcom/oculus/localmedia/server/LocalMediaServer;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unexpected error when generating thumbnail url :"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public run()V
    .locals 6

    .prologue
    .line 113
    :try_start_0
    iget-object v0, p0, Lcom/oculus/localmedia/server/LocalMediaServer;->mListener:Lcom/oculus/localmedia/server/LocalMediaServerListener;

    if-eqz v0, :cond_0

    .line 114
    iget-object v0, p0, Lcom/oculus/localmedia/server/LocalMediaServer;->mListener:Lcom/oculus/localmedia/server/LocalMediaServerListener;

    invoke-interface {v0}, Lcom/oculus/localmedia/server/LocalMediaServerListener;->onWebServerStarted()V

    .line 116
    :cond_0
    new-instance v0, Ljava/net/ServerSocket;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/net/ServerSocket;-><init>(I)V

    iput-object v0, p0, Lcom/oculus/localmedia/server/LocalMediaServer;->mServerSocket:Ljava/net/ServerSocket;

    .line 117
    sget-object v0, Lcom/oculus/localmedia/server/LocalMediaServer;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Web server running: http://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oculus/localmedia/server/LocalMediaServer;->getAddress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 118
    :goto_0
    iget-boolean v0, p0, Lcom/oculus/localmedia/server/LocalMediaServer;->mIsRunning:Z

    if-eqz v0, :cond_1

    .line 119
    iget-object v0, p0, Lcom/oculus/localmedia/server/LocalMediaServer;->mServerSocket:Ljava/net/ServerSocket;

    invoke-virtual {v0}, Ljava/net/ServerSocket;->accept()Ljava/net/Socket;

    move-result-object v0

    .line 120
    invoke-virtual {v0}, Ljava/net/Socket;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    .line 121
    if-nez v1, :cond_3

    .line 122
    invoke-static {v0}, Lcom/oculus/localmedia/server/LocalMediaServer;->safeClose(Ljava/net/Socket;)V
    :try_end_0
    .catch Ljava/net/SocketException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 136
    :catch_0
    move-exception v0

    .line 138
    sget-object v1, Lcom/oculus/localmedia/server/LocalMediaServer;->TAG:Ljava/lang/String;

    const-string v2, "Web server was stopped :"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 142
    :cond_1
    :goto_1
    iget-object v0, p0, Lcom/oculus/localmedia/server/LocalMediaServer;->mListener:Lcom/oculus/localmedia/server/LocalMediaServerListener;

    if-eqz v0, :cond_2

    .line 143
    iget-object v0, p0, Lcom/oculus/localmedia/server/LocalMediaServer;->mListener:Lcom/oculus/localmedia/server/LocalMediaServerListener;

    invoke-interface {v0}, Lcom/oculus/localmedia/server/LocalMediaServerListener;->onWebServerStopped()V

    .line 144
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/localmedia/server/LocalMediaServer;->mListener:Lcom/oculus/localmedia/server/LocalMediaServerListener;

    .line 146
    :cond_2
    return-void

    .line 124
    :cond_3
    :try_start_1
    new-instance v1, Ljava/lang/Thread;

    new-instance v2, Lcom/oculus/localmedia/server/LocalMediaServer$1;

    invoke-direct {v2, p0, v0}, Lcom/oculus/localmedia/server/LocalMediaServer$1;-><init>(Lcom/oculus/localmedia/server/LocalMediaServer;Ljava/net/Socket;)V

    invoke-direct {v1, v2}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 131
    const/4 v0, 0x1

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setDaemon(Z)V

    .line 132
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Webserver #"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-wide v2, p0, Lcom/oculus/localmedia/server/LocalMediaServer;->mRequestCount:J

    const-wide/16 v4, 0x1

    add-long/2addr v2, v4

    iput-wide v2, p0, Lcom/oculus/localmedia/server/LocalMediaServer;->mRequestCount:J

    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 133
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V
    :try_end_1
    .catch Ljava/net/SocketException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_0

    .line 139
    :catch_1
    move-exception v0

    .line 140
    sget-object v1, Lcom/oculus/localmedia/server/LocalMediaServer;->TAG:Ljava/lang/String;

    const-string v2, "Web server error."

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
