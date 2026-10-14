.class Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;
.super Ljava/lang/Thread;


# instance fields
.field private final a:Ljava/util/concurrent/BlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;",
            ">;"
        }
    .end annotation
.end field

.field private volatile b:Z

.field private c:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/g;

.field private d:I

.field private e:J

.field private f:Z

.field private g:J

.field private h:Ljava/util/Timer;


# direct methods
.method constructor <init>(Ljava/util/concurrent/BlockingQueue;Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/BlockingQueue<",
            "Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;",
            ">;",
            "Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/g;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->b:Z

    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->d:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->f:Z

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->g:J

    iput-object p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->a:Ljava/util/concurrent/BlockingQueue;

    iput-object p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->c:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/g;

    return-void
.end method

.method private a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;Ljava/net/HttpURLConnection;I)I
    .locals 5

    const-string v0, "Transfer-Encoding"

    invoke-virtual {p2, v0}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, -0x1

    iput-wide v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->e:J

    if-nez v0, :cond_1

    const/16 p1, 0xc8

    const-string v3, "Content-Length"

    if-ne p3, p1, :cond_0

    invoke-direct {p0, p2, v3, v1, v2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->a(Ljava/net/URLConnection;Ljava/lang/String;J)J

    move-result-wide p1

    goto :goto_0

    :cond_0
    invoke-direct {p0, p2, v3, v1, v2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->a(Ljava/net/URLConnection;Ljava/lang/String;J)J

    move-result-wide p1

    iget-wide v3, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->g:J

    add-long/2addr p1, v3

    :goto_0
    iput-wide p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->e:J

    goto :goto_1

    :cond_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Ignoring Content-Length since Transfer-Encoding is also defined for Downloaded Id "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->c()I

    move-result p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/a/a;->a(Ljava/lang/String;)I

    :goto_1
    iget-wide p1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->e:J

    const/4 p3, 0x1

    cmp-long v3, p1, v1

    if-eqz v3, :cond_2

    return p3

    :cond_2
    if-eqz v0, :cond_4

    const-string p1, "chunked"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    return p3

    :cond_4
    :goto_2
    const/4 p1, -0x1

    return p1
.end method

.method private a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;[BLjava/io/InputStream;)I
    .locals 0

    :try_start_0
    invoke-virtual {p3, p2}, Ljava/io/InputStream;->read([B)I

    move-result p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string p2, "unexpected end of stream"

    invoke-virtual {p2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, -0x1

    return p1

    :cond_0
    const/high16 p1, -0x80000000

    return p1
.end method

.method private a(Ljava/net/URLConnection;Ljava/lang/String;J)J
    .locals 0

    :try_start_0
    invoke-virtual {p1, p2}, Ljava/net/URLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return-wide p1

    :catch_0
    return-wide p3
.end method

.method static synthetic a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;Ljava/lang/String;)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;)V
    .locals 5

    const/16 v0, 0x80

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;I)V

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->b()Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/n;

    move-result-object v0

    :try_start_0
    invoke-interface {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/n;->c()V

    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->h:Ljava/util/Timer;

    new-instance v2, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/c;

    invoke-direct {v2, p0, p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/c;-><init>(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;)V

    invoke-interface {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/n;->b()I

    move-result v0

    int-to-long v3, v0

    invoke-virtual {v1, v2, v3, v4}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V
    :try_end_0
    .catch Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/m; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/16 v0, 0x3f1

    const-string v1, "Connection time out after maximum retires attempted"

    invoke-direct {p0, p1, v0, v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;ILjava/lang/String;)V

    :goto_0
    return-void
.end method

.method private a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;I)V
    .locals 0

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->b(I)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;IJ)V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->c:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/g;

    iget-wide v2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->e:J

    move-object v1, p1

    move-wide v4, p3

    move v6, p2

    invoke-virtual/range {v0 .. v6}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/g;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;JJI)V

    return-void
.end method

.method private a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;ILjava/lang/String;)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->g:J

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->f:Z

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->b(I)V

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-direct {p0, p1, v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;Z)V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->c:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/g;

    invoke-virtual {v0, p1, p2, p3}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/g;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;ILjava/lang/String;)V

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->m()V

    return-void
.end method

.method private a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;Ljava/io/InputStream;Ljava/io/RandomAccessFile;)V
    .locals 12

    const/16 v0, 0x1000

    new-array v0, v0, [B

    iget-wide v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->g:J

    const/16 v3, 0x8

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->b(I)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Content Length: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v4, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->e:J

    invoke-virtual {v3, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v4, " for Download Id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "DownloadDispatcher"

    invoke-static {v4, v3}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v5

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->k()Z

    move-result v3

    if-eqz v3, :cond_0

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Stopping the download as Download Request is cancelled for Downloaded Id "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->c()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v4, p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->m()V

    const/16 p2, 0x3f0

    const-string p3, "Download cancelled"

    :goto_1
    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;ILjava/lang/String;)V

    return-void

    :cond_0
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;[BLjava/io/InputStream;)I

    move-result v3

    iget-wide v7, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->e:J

    const-wide/16 v9, -0x1

    cmp-long v11, v7, v9

    if-eqz v11, :cond_1

    const-wide/16 v9, 0x0

    cmp-long v11, v7, v9

    if-lez v11, :cond_1

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    invoke-virtual {v7}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    sub-long/2addr v7, v5

    const-wide/16 v9, 0x258

    cmp-long v11, v7, v9

    if-lez v11, :cond_1

    const-wide/16 v5, 0x64

    mul-long v5, v5, v1

    iget-wide v7, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->e:J

    div-long/2addr v5, v7

    long-to-int v6, v5

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v7

    invoke-direct {p0, p1, v6, v1, v2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;IJ)V

    move-wide v5, v7

    :cond_1
    const/4 v7, -0x1

    if-ne v3, v7, :cond_2

    invoke-direct {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;)V

    return-void

    :cond_2
    const/high16 v7, -0x80000000

    if-ne v3, v7, :cond_3

    invoke-direct {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;)V

    return-void

    :cond_3
    invoke-direct {p0, p1, v0, v3, p3}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;[BILjava/io/RandomAccessFile;)Z

    move-result v7

    if-eqz v7, :cond_4

    int-to-long v7, v3

    add-long/2addr v1, v7

    goto :goto_0

    :cond_4
    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->m()V

    const/16 p2, 0x3e9

    const-string p3, "Failed writing file"

    goto :goto_1
.end method

.method private a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;Ljava/lang/String;)V
    .locals 6

    const-string v0, "DownloadDispatcher"

    :try_start_0
    new-instance v1, Ljava/net/URL;

    invoke-direct {v1, p2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_6

    const/4 p2, 0x0

    :try_start_1
    invoke-virtual {v1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v1

    check-cast v1, Ljava/net/HttpURLConnection;
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_1 .. :try_end_1} :catch_4
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_3
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->g()Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p2, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p2}, Ljava/io/File;->length()J

    move-result-wide v2

    long-to-int p2, v2

    int-to-long v2, p2

    iput-wide v2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->g:J

    :cond_0
    const-string p2, "Range"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "bytes="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v3, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->g:J

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, p2, v2}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Existing file mDownloadedCacheSize: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->g:J

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p2, 0x0

    invoke-virtual {v1, p2}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->b()Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/n;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/n;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->b()Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/n;

    move-result-object v2

    invoke-interface {v2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/n;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/4 v2, 0x4

    invoke-direct {p0, p1, v2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;I)V

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Response code obtained for downloaded Id "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->c()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, " : httpResponse Code "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    const/16 v3, 0xc8

    const/4 v4, 0x1

    if-eq v2, v3, :cond_8

    const/16 v3, 0xce

    if-eq v2, v3, :cond_8

    const/16 p2, 0x133

    if-eq v2, p2, :cond_4

    const/16 p2, 0x1a0

    if-eq v2, p2, :cond_3

    const/16 p2, 0x1f4

    if-eq v2, p2, :cond_2

    const/16 p2, 0x1f7

    if-eq v2, p2, :cond_1

    packed-switch v2, :pswitch_data_0

    const/16 p2, 0x3ea

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled HTTP response:"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, " message:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;ILjava/lang/String;)V

    goto :goto_2

    :cond_1
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_2
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_3
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->getResponseMessage()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_4
    :goto_1
    :pswitch_0
    iget p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->d:I

    const/4 v2, 0x5

    if-ge p2, v2, :cond_5

    iget-boolean p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->f:Z

    if-eqz p2, :cond_5

    iget p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->d:I

    add-int/2addr p2, v4

    iput p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->d:I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Redirect for downloaded Id "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->c()I

    move-result v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/a/a;->a(Ljava/lang/String;Ljava/lang/String;)I

    const-string p2, "Location"

    invoke-virtual {v1, p2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    iget p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->d:I

    if-le p2, v2, :cond_7

    iget-boolean p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->f:Z

    if-eqz p2, :cond_7

    const/16 p2, 0x3ed

    const-string v0, "Too many redirects, giving up"

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;ILjava/lang/String;)V
    :try_end_2
    .catch Ljava/net/SocketTimeoutException; {:try_start_2 .. :try_end_2} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v1, :cond_6

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_6
    return-void

    :cond_7
    :goto_2
    if-eqz v1, :cond_c

    goto/16 :goto_7

    :cond_8
    :try_start_3
    iput-boolean p2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->f:Z

    invoke-direct {p0, p1, v1, v2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;Ljava/net/HttpURLConnection;I)I

    move-result p2

    if-ne p2, v4, :cond_a

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Existing mDownloadedCacheSize: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->g:J

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "File mContentLength: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->e:J

    invoke-virtual {p2, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->g:J

    iget-wide v4, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->e:J

    cmp-long p2, v2, v4

    if-nez p2, :cond_9

    invoke-direct {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;)V

    const-string p2, "Download Completed"

    invoke-static {v0, p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/a/a;->b(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_3

    :cond_9
    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;Ljava/net/HttpURLConnection;)V

    goto :goto_3

    :cond_a
    const/16 p2, 0x3ee

    const-string v0, "Transfer-Encoding not found as well as can\'t know size of download, giving up"

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/net/SocketTimeoutException; {:try_start_3 .. :try_end_3} :catch_2
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :goto_3
    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_b
    return-void

    :catch_0
    move-exception p2

    goto :goto_4

    :catch_1
    move-exception p2

    goto :goto_5

    :catch_2
    move-exception p2

    goto :goto_6

    :catchall_0
    move-exception p1

    move-object v1, p2

    goto :goto_8

    :catch_3
    move-exception v0

    move-object v1, p2

    move-object p2, v0

    :goto_4
    :try_start_4
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;)V

    if-eqz v1, :cond_c

    goto :goto_7

    :catch_4
    move-exception v0

    move-object v1, p2

    move-object p2, v0

    :goto_5
    invoke-virtual {p2}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;)V

    if-eqz v1, :cond_c

    goto :goto_7

    :catch_5
    move-exception v0

    move-object v1, p2

    move-object p2, v0

    :goto_6
    invoke-virtual {p2}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-eqz v1, :cond_c

    :goto_7
    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c
    return-void

    :catchall_1
    move-exception p1

    :goto_8
    if-eqz v1, :cond_d

    invoke-virtual {v1}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_d
    throw p1

    :catch_6
    const/16 p2, 0x3ef

    const-string v0, "MalformedURLException: URI passed is malformed."

    invoke-direct {p0, p1, p2, v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;ILjava/lang/String;)V

    return-void

    :pswitch_data_0
    .packed-switch 0x12d
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;Ljava/net/HttpURLConnection;)V
    .locals 8

    const-string v0, "Error in creating destination file"

    const/4 v1, 0x0

    invoke-direct {p0, p1, v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;Z)V

    const/4 v2, 0x0

    :try_start_0
    new-instance v3, Ljava/io/BufferedInputStream;

    invoke-virtual {p2}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p2

    invoke-direct {v3, p2}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    move-object v3, v2

    goto/16 :goto_c

    :catch_0
    move-exception p2

    :try_start_1
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v3, v2

    :goto_0
    :try_start_2
    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->g()Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v4}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    invoke-direct {p2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_3

    const/4 v5, 0x1

    const/16 v6, 0x3e9

    if-nez v4, :cond_1

    :try_start_3
    invoke-virtual {p2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->exists()Z

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {v4}, Ljava/io/File;->mkdirs()Z

    :cond_0
    invoke-virtual {p2}, Ljava/io/File;->createNewFile()Z

    move-result v4

    if-nez v4, :cond_2

    invoke-direct {p0, p1, v6, v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;ILjava/lang/String;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    goto :goto_1

    :catch_1
    move-exception v1

    :try_start_4
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    invoke-direct {p0, p1, v6, v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;ILjava/lang/String;)V

    :goto_1
    const/4 v1, 0x1

    goto :goto_2

    :cond_1
    if-eqz v3, :cond_2

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->l()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :cond_2
    :goto_2
    if-nez v1, :cond_5

    :try_start_5
    new-instance v0, Ljava/io/RandomAccessFile;

    const-string v1, "rw"

    invoke-direct {v0, p2, v1}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :try_start_6
    iget-wide v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->g:J

    invoke-virtual {v0, v1, v2}, Ljava/io/RandomAccessFile;->seek(J)V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_2
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    move-object v2, v0

    goto :goto_4

    :catchall_1
    move-exception p1

    move-object v2, v0

    goto :goto_c

    :catch_2
    move-exception p2

    move-object v2, v0

    goto :goto_3

    :catch_3
    move-exception p2

    :goto_3
    :try_start_7
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :goto_4
    if-nez v3, :cond_3

    const-string p2, "Error in creating input stream"

    :goto_5
    invoke-direct {p0, p1, v6, p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;ILjava/lang/String;)V

    goto :goto_6

    :cond_3
    if-nez v2, :cond_4

    const-string p2, "Error in writing download contents to the destination file"

    goto :goto_5

    :cond_4
    invoke-direct {p0, p1, v3, v2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;Ljava/io/InputStream;Ljava/io/RandomAccessFile;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :cond_5
    :goto_6
    if-eqz v3, :cond_6

    :try_start_8
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_8} :catch_4

    goto :goto_7

    :catch_4
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_6
    :goto_7
    if-eqz v2, :cond_8

    :try_start_9
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_9
    .catch Ljava/io/IOException; {:try_start_9 .. :try_end_9} :catch_5
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    goto :goto_a

    :catchall_2
    move-exception p1

    goto :goto_8

    :catch_5
    move-exception p1

    :try_start_a
    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_2

    if-eqz v2, :cond_9

    :try_start_b
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_b
    .catch Ljava/io/IOException; {:try_start_b .. :try_end_b} :catch_7

    goto :goto_b

    :goto_8
    if-eqz v2, :cond_7

    :try_start_c
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_c
    .catch Ljava/io/IOException; {:try_start_c .. :try_end_c} :catch_6

    goto :goto_9

    :catch_6
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_7
    :goto_9
    throw p1

    :cond_8
    :goto_a
    if-eqz v2, :cond_9

    :try_start_d
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_d
    .catch Ljava/io/IOException; {:try_start_d .. :try_end_d} :catch_7

    goto :goto_b

    :catch_7
    move-exception p1

    invoke-virtual {p1}, Ljava/io/IOException;->printStackTrace()V

    :cond_9
    :goto_b
    return-void

    :catchall_3
    move-exception p1

    :goto_c
    if-eqz v3, :cond_a

    :try_start_e
    invoke-virtual {v3}, Ljava/io/BufferedInputStream;->close()V
    :try_end_e
    .catch Ljava/io/IOException; {:try_start_e .. :try_end_e} :catch_8

    goto :goto_d

    :catch_8
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_a
    :goto_d
    if-eqz v2, :cond_c

    :try_start_f
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_f
    .catch Ljava/io/IOException; {:try_start_f .. :try_end_f} :catch_9
    .catchall {:try_start_f .. :try_end_f} :catchall_4

    goto :goto_10

    :catchall_4
    move-exception p1

    goto :goto_e

    :catch_9
    move-exception p2

    :try_start_10
    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    if-eqz v2, :cond_d

    :try_start_11
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_11 .. :try_end_11} :catch_b

    goto :goto_11

    :goto_e
    if-eqz v2, :cond_b

    :try_start_12
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_12
    .catch Ljava/io/IOException; {:try_start_12 .. :try_end_12} :catch_a

    goto :goto_f

    :catch_a
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_b
    :goto_f
    throw p1

    :cond_c
    :goto_10
    if-eqz v2, :cond_d

    :try_start_13
    invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_13 .. :try_end_13} :catch_b

    goto :goto_11

    :catch_b
    move-exception p2

    invoke-virtual {p2}, Ljava/io/IOException;->printStackTrace()V

    :cond_d
    :goto_11
    throw p1
.end method

.method private a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;Z)V
    .locals 1

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->i()Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_1

    :cond_0
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "cleanupDestination() deleting "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->g()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/a/a;->b(Ljava/lang/String;)I

    new-instance p2, Ljava/io/File;

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->g()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Ljava/io/File;->exists()Z

    move-result p1

    if-eqz p1, :cond_1

    invoke-virtual {p2}, Ljava/io/File;->delete()Z

    :cond_1
    return-void
.end method

.method private a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;[BILjava/io/RandomAccessFile;)Z
    .locals 2

    const/16 v0, 0x3e9

    const/4 v1, 0x0

    :try_start_0
    invoke-virtual {p4, p2, v1, p3}, Ljava/io/RandomAccessFile;->write([BII)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v1, 0x1

    goto :goto_1

    :catch_0
    const-string p2, "Exception when writing download contents to the destination file"

    goto :goto_0

    :catch_1
    const-string p2, "IOException when writing download contents to the destination file"

    :goto_0
    invoke-direct {p0, p1, v0, p2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;ILjava/lang/String;)V

    :goto_1
    return v1
.end method

.method private b(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;)V
    .locals 2

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->g:J

    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->c:Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/g;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/g;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;)V

    const/16 v0, 0x10

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->b(I)V

    invoke-virtual {p1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->m()V

    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->b:Z

    invoke-virtual {p0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 3

    const/16 v0, 0xa

    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->h:Ljava/util/Timer;

    :cond_0
    :goto_0
    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->a:Ljava/util/concurrent/BlockingQueue;

    invoke-interface {v1}, Ljava/util/concurrent/BlockingQueue;->take()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    const/4 v0, 0x0

    :try_start_1
    iput v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->d:I

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->f:Z

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Download initiated for "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->c()I

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/a/a;->a(Ljava/lang/String;)I

    const/4 v0, 0x2

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;I)V

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->f()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    :catch_0
    nop

    goto :goto_1

    :catch_1
    move-object v1, v0

    :goto_1
    iget-boolean v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->b:Z

    if-eqz v0, :cond_0

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->m()V

    invoke-virtual {v1}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;->d()I

    move-result v0

    const/16 v2, 0x10

    if-eq v0, v2, :cond_1

    const/16 v0, 0x3f0

    const-string v2, "Download cancelled"

    invoke-direct {p0, v1, v0, v2}, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->a(Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/d;ILjava/lang/String;)V

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/vrsetupwizard/system/setupwizard/a/b;->h:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    return-void
.end method
