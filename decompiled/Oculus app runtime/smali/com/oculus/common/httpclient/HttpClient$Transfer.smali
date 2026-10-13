.class public Lcom/oculus/common/httpclient/HttpClient$Transfer;
.super Ljava/lang/Object;
.source "HttpClient.java"

# interfaces
.implements Ljava/io/Closeable;
.implements Lokhttp3/Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/common/httpclient/HttpClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Transfer"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/common/httpclient/HttpClient$Transfer$ReadResult;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBytesRead:J

.field private mCall:Lokhttp3/Call;

.field private mComplete:Z

.field private mFailed:Z

.field private mResponse:Lokhttp3/Response;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 50
    const-class v0, Lcom/oculus/common/httpclient/HttpClient$Transfer;

    invoke-static {v0}, Lcom/oculus/common/logutilities/LoggingUtil;->tag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/common/httpclient/HttpClient$Transfer;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lokhttp3/Call;)V
    .locals 2

    .line 52
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 53
    iput-object p1, p0, Lcom/oculus/common/httpclient/HttpClient$Transfer;->mCall:Lokhttp3/Call;

    const-wide/16 v0, 0x0

    .line 54
    iput-wide v0, p0, Lcom/oculus/common/httpclient/HttpClient$Transfer;->mBytesRead:J

    const/4 p1, 0x0

    .line 55
    iput-boolean p1, p0, Lcom/oculus/common/httpclient/HttpClient$Transfer;->mFailed:Z

    .line 56
    iput-boolean p1, p0, Lcom/oculus/common/httpclient/HttpClient$Transfer;->mComplete:Z

    return-void
.end method


# virtual methods
.method public declared-synchronized close()V
    .locals 1

    monitor-enter p0

    const/4 v0, 0x1

    .line 65
    :try_start_0
    iput-boolean v0, p0, Lcom/oculus/common/httpclient/HttpClient$Transfer;->mFailed:Z

    .line 67
    iget-object v0, p0, Lcom/oculus/common/httpclient/HttpClient$Transfer;->mCall:Lokhttp3/Call;

    invoke-interface {v0}, Lokhttp3/Call;->cancel()V

    .line 69
    iget-object v0, p0, Lcom/oculus/common/httpclient/HttpClient$Transfer;->mResponse:Lokhttp3/Response;

    if-eqz v0, :cond_0

    .line 70
    iget-object v0, p0, Lcom/oculus/common/httpclient/HttpClient$Transfer;->mResponse:Lokhttp3/Response;

    invoke-virtual {v0}, Lokhttp3/Response;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 72
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized isComplete()Z
    .locals 1

    monitor-enter p0

    .line 81
    :try_start_0
    iget-boolean v0, p0, Lcom/oculus/common/httpclient/HttpClient$Transfer;->mComplete:Z

    if-eqz v0, :cond_0

    iget-boolean v0, p0, Lcom/oculus/common/httpclient/HttpClient$Transfer;->mFailed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    monitor-exit p0

    return v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized onFailure(Lokhttp3/Call;Ljava/io/IOException;)V
    .locals 4

    monitor-enter p0

    .line 142
    :try_start_0
    sget-object p1, Lcom/oculus/common/httpclient/HttpClient$Transfer;->TAG:Ljava/lang/String;

    const-string v0, "onFailure: IOException: %s"

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p2, v2, v3

    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    iput-boolean v1, p0, Lcom/oculus/common/httpclient/HttpClient$Transfer;->mFailed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 144
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized onResponse(Lokhttp3/Call;Lokhttp3/Response;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    monitor-enter p0

    .line 148
    :try_start_0
    iput-object p2, p0, Lcom/oculus/common/httpclient/HttpClient$Transfer;->mResponse:Lokhttp3/Response;

    .line 150
    iget-object p1, p0, Lcom/oculus/common/httpclient/HttpClient$Transfer;->mResponse:Lokhttp3/Response;

    invoke-virtual {p1}, Lokhttp3/Response;->isSuccessful()Z

    move-result p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    .line 151
    iput-boolean p1, p0, Lcom/oculus/common/httpclient/HttpClient$Transfer;->mFailed:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 153
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized read()Lcom/oculus/common/httpclient/HttpClient$Transfer$ReadResult;
    .locals 9

    monitor-enter p0

    .line 96
    :try_start_0
    new-instance v0, Lcom/oculus/common/httpclient/HttpClient$Transfer$ReadResult;

    invoke-direct {v0}, Lcom/oculus/common/httpclient/HttpClient$Transfer$ReadResult;-><init>()V

    .line 98
    iget-boolean v1, p0, Lcom/oculus/common/httpclient/HttpClient$Transfer;->mFailed:Z

    const/4 v2, -0x1

    if-nez v1, :cond_5

    iget-boolean v1, p0, Lcom/oculus/common/httpclient/HttpClient$Transfer;->mComplete:Z

    if-eqz v1, :cond_0

    goto/16 :goto_2

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/oculus/common/httpclient/HttpClient$Transfer;->mResponse:Lokhttp3/Response;

    const/4 v3, 0x0

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/oculus/common/httpclient/HttpClient$Transfer;->mResponse:Lokhttp3/Response;

    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 110
    :cond_1
    iget-object v1, p0, Lcom/oculus/common/httpclient/HttpClient$Transfer;->mResponse:Lokhttp3/Response;

    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v1

    invoke-interface {v1}, Lokio/BufferedSource;->buffer()Lokio/Buffer;

    move-result-object v1

    invoke-virtual {v1}, Lokio/Buffer;->size()J

    move-result-wide v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-wide/32 v6, 0x7fffffff

    cmp-long v1, v4, v6

    if-lez v1, :cond_2

    move-wide v4, v6

    :cond_2
    long-to-int v1, v4

    const/4 v4, 0x1

    .line 117
    :try_start_1
    new-array v1, v1, [B

    iput-object v1, v0, Lcom/oculus/common/httpclient/HttpClient$Transfer$ReadResult;->buffer:[B

    .line 118
    iget-object v1, p0, Lcom/oculus/common/httpclient/HttpClient$Transfer;->mResponse:Lokhttp3/Response;

    invoke-virtual {v1}, Lokhttp3/Response;->body()Lokhttp3/ResponseBody;

    move-result-object v1

    invoke-virtual {v1}, Lokhttp3/ResponseBody;->source()Lokio/BufferedSource;

    move-result-object v1

    iget-object v5, v0, Lcom/oculus/common/httpclient/HttpClient$Transfer$ReadResult;->buffer:[B

    invoke-interface {v1, v5}, Lokio/BufferedSource;->read([B)I

    move-result v1

    iput v1, v0, Lcom/oculus/common/httpclient/HttpClient$Transfer$ReadResult;->bytesRead:I

    .line 119
    iget-wide v5, p0, Lcom/oculus/common/httpclient/HttpClient$Transfer;->mBytesRead:J

    iget v1, v0, Lcom/oculus/common/httpclient/HttpClient$Transfer$ReadResult;->bytesRead:I

    int-to-long v7, v1

    add-long/2addr v5, v7

    iput-wide v5, p0, Lcom/oculus/common/httpclient/HttpClient$Transfer;->mBytesRead:J

    .line 121
    sget-object v1, Lcom/oculus/common/httpclient/HttpClient$Transfer;->TAG:Ljava/lang/String;

    const-string v5, "new readResult, last buffer size %d, last bytes read %d, total bytes read %d"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v0, Lcom/oculus/common/httpclient/HttpClient$Transfer$ReadResult;->buffer:[B

    array-length v7, v7

    .line 125
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    iget v3, v0, Lcom/oculus/common/httpclient/HttpClient$Transfer$ReadResult;->bytesRead:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v6, v4

    const/4 v3, 0x2

    iget-wide v7, p0, Lcom/oculus/common/httpclient/HttpClient$Transfer;->mBytesRead:J

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    aput-object v7, v6, v3

    .line 123
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    .line 121
    invoke-static {v1, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    iget v1, v0, Lcom/oculus/common/httpclient/HttpClient$Transfer$ReadResult;->bytesRead:I

    if-ne v1, v2, :cond_3

    .line 128
    iput-boolean v4, p0, Lcom/oculus/common/httpclient/HttpClient$Transfer;->mComplete:Z
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception v1

    .line 131
    :try_start_2
    sget-object v3, Lcom/oculus/common/httpclient/HttpClient$Transfer;->TAG:Ljava/lang/String;

    invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 133
    iput-boolean v4, p0, Lcom/oculus/common/httpclient/HttpClient$Transfer;->mFailed:Z

    .line 134
    iput v2, v0, Lcom/oculus/common/httpclient/HttpClient$Transfer$ReadResult;->bytesRead:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 137
    :cond_3
    :goto_0
    monitor-exit p0

    return-object v0

    .line 106
    :cond_4
    :goto_1
    :try_start_3
    iput v3, v0, Lcom/oculus/common/httpclient/HttpClient$Transfer$ReadResult;->bytesRead:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 107
    monitor-exit p0

    return-object v0

    .line 100
    :cond_5
    :goto_2
    :try_start_4
    iput v2, v0, Lcom/oculus/common/httpclient/HttpClient$Transfer$ReadResult;->bytesRead:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 101
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
