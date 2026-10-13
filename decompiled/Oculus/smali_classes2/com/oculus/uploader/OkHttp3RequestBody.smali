.class public Lcom/oculus/uploader/OkHttp3RequestBody;
.super Lokhttp3/RequestBody;
.source "OkHttp3RequestBody.java"


# static fields
.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private final mRequestBody:Lcom/facebook/fbuploader/HttpRequestExecutor$RequestBody;

.field private final mResponseHandler:Lcom/facebook/fbuploader/HttpRequestExecutor$HttpRequestResponseHandler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 18
    const-class v0, Lcom/oculus/uploader/OkHttp3RequestBody;

    sput-object v0, Lcom/oculus/uploader/OkHttp3RequestBody;->TAG:Ljava/lang/Class;

    return-void
.end method

.method private constructor <init>(Lcom/facebook/fbuploader/HttpRequestExecutor$RequestBody;Lcom/facebook/fbuploader/HttpRequestExecutor$HttpRequestResponseHandler;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lokhttp3/RequestBody;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/oculus/uploader/OkHttp3RequestBody;->mRequestBody:Lcom/facebook/fbuploader/HttpRequestExecutor$RequestBody;

    .line 38
    iput-object p2, p0, Lcom/oculus/uploader/OkHttp3RequestBody;->mResponseHandler:Lcom/facebook/fbuploader/HttpRequestExecutor$HttpRequestResponseHandler;

    .line 39
    return-void
.end method

.method public static build(Lcom/facebook/fbuploader/HttpRequestExecutor$RequestBody;Lcom/facebook/fbuploader/HttpRequestExecutor$HttpRequestResponseHandler;)Lcom/oculus/uploader/OkHttp3RequestBody;
    .locals 1
    .param p0    # Lcom/facebook/fbuploader/HttpRequestExecutor$RequestBody;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 27
    if-nez p0, :cond_0

    .line 28
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/oculus/uploader/OkHttp3RequestBody;

    invoke-direct {v0, p0, p1}, Lcom/oculus/uploader/OkHttp3RequestBody;-><init>(Lcom/facebook/fbuploader/HttpRequestExecutor$RequestBody;Lcom/facebook/fbuploader/HttpRequestExecutor$HttpRequestResponseHandler;)V

    goto :goto_0
.end method


# virtual methods
.method public contentLength()J
    .locals 4

    .prologue
    .line 48
    iget-object v0, p0, Lcom/oculus/uploader/OkHttp3RequestBody;->mRequestBody:Lcom/facebook/fbuploader/HttpRequestExecutor$RequestBody;

    iget-object v0, v0, Lcom/facebook/fbuploader/HttpRequestExecutor$RequestBody;->mContent:Lcom/facebook/fbuploader/Content;

    invoke-virtual {v0}, Lcom/facebook/fbuploader/Content;->getFile()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v0

    iget-object v2, p0, Lcom/oculus/uploader/OkHttp3RequestBody;->mRequestBody:Lcom/facebook/fbuploader/HttpRequestExecutor$RequestBody;

    iget-wide v2, v2, Lcom/facebook/fbuploader/HttpRequestExecutor$RequestBody;->mOffset:J

    sub-long/2addr v0, v2

    return-wide v0
.end method

.method public contentType()Lokhttp3/MediaType;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oculus/uploader/OkHttp3RequestBody;->mRequestBody:Lcom/facebook/fbuploader/HttpRequestExecutor$RequestBody;

    iget-object v0, v0, Lcom/facebook/fbuploader/HttpRequestExecutor$RequestBody;->mContent:Lcom/facebook/fbuploader/Content;

    invoke-virtual {v0}, Lcom/facebook/fbuploader/Content;->getMimeType()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v0

    return-object v0
.end method

.method public writeTo(Lokio/BufferedSink;)V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lcom/oculus/uploader/OkHttp3RequestBody;->mRequestBody:Lcom/facebook/fbuploader/HttpRequestExecutor$RequestBody;

    iget-object v0, v0, Lcom/facebook/fbuploader/HttpRequestExecutor$RequestBody;->mContent:Lcom/facebook/fbuploader/Content;

    invoke-virtual {v0}, Lcom/facebook/fbuploader/Content;->getFile()Ljava/io/File;

    move-result-object v0

    .line 54
    iget-object v1, p0, Lcom/oculus/uploader/OkHttp3RequestBody;->mRequestBody:Lcom/facebook/fbuploader/HttpRequestExecutor$RequestBody;

    iget-wide v2, v1, Lcom/facebook/fbuploader/HttpRequestExecutor$RequestBody;->mOffset:J

    .line 55
    sget-object v1, Lcom/oculus/uploader/OkHttp3RequestBody;->TAG:Ljava/lang/Class;

    const-string v4, "Writing %s from offset: %,d"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {v1, v4, v0, v5}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 56
    invoke-virtual {v0}, Ljava/io/File;->length()J

    move-result-wide v4

    cmp-long v1, v2, v4

    if-nez v1, :cond_1

    .line 57
    sget-object v0, Lcom/oculus/uploader/OkHttp3RequestBody;->TAG:Ljava/lang/Class;

    const-string v1, "Offset %,d equals file size, nothing to write"

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 74
    :cond_0
    :goto_0
    return-void

    .line 60
    :cond_1
    new-instance v4, Ljava/io/FileInputStream;

    invoke-direct {v4, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    const/4 v1, 0x0

    .line 61
    :try_start_0
    invoke-virtual {v4, v2, v3}, Ljava/io/FileInputStream;->skip(J)J

    move-result-wide v6

    cmp-long v0, v6, v2

    if-eqz v0, :cond_3

    .line 62
    new-instance v0, Ljava/io/IOException;

    const-string v5, "Failed to skip %d bytes"

    .line 63
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v5, v2}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 60
    :catch_0
    move-exception v0

    :try_start_1
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 73
    :catchall_0
    move-exception v1

    move-object v8, v1

    move-object v1, v0

    move-object v0, v8

    :goto_1
    if-eqz v4, :cond_2

    if-eqz v1, :cond_6

    :try_start_2
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_2

    :cond_2
    :goto_2
    throw v0

    .line 66
    :cond_3
    const/16 v0, 0x400

    :try_start_3
    new-array v2, v0, [B

    .line 67
    invoke-virtual {v4, v2}, Ljava/io/FileInputStream;->read([B)I

    move-result v0

    .line 68
    :goto_3
    const/4 v3, -0x1

    if-eq v0, v3, :cond_4

    .line 69
    const/4 v3, 0x0

    invoke-interface {p1, v2, v3, v0}, Lokio/BufferedSink;->write([BII)Lokio/BufferedSink;

    .line 70
    iget-object v3, p0, Lcom/oculus/uploader/OkHttp3RequestBody;->mResponseHandler:Lcom/facebook/fbuploader/HttpRequestExecutor$HttpRequestResponseHandler;

    invoke-virtual {v3, v0}, Lcom/facebook/fbuploader/HttpRequestExecutor$HttpRequestResponseHandler;->onProgress(I)V

    .line 71
    invoke-virtual {v4, v2}, Ljava/io/FileInputStream;->read([B)I
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-result v0

    goto :goto_3

    .line 73
    :cond_4
    if-eqz v4, :cond_0

    if-eqz v1, :cond_5

    :try_start_4
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_1

    goto :goto_0

    :catch_1
    move-exception v0

    invoke-virtual {v1, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_5
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    goto :goto_0

    :catch_2
    move-exception v2

    invoke-virtual {v1, v2}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_2

    :cond_6
    invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V

    goto :goto_2

    :catchall_1
    move-exception v0

    goto :goto_1
.end method
