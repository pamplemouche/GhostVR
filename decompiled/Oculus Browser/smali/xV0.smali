.class public LxV0;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static final a:Ljava/lang/Object;

.field public static b:LxV0;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, LxV0;->a:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()LxV0;
    .locals 2

    .line 1
    sget-object v0, LxV0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 2
    :try_start_0
    sget-object v1, LxV0;->b:LxV0;

    if-nez v1, :cond_0

    .line 3
    new-instance v1, LxV0;

    invoke-direct {v1}, LxV0;-><init>()V

    sput-object v1, LxV0;->b:LxV0;

    .line 4
    :cond_0
    sget-object v1, LxV0;->b:LxV0;

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    .line 5
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 53
    invoke-virtual {p1, p2}, Ljava/net/HttpURLConnection;->getHeaderField(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p1, ""

    return-object p1

    .line 54
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)LwV0;
    .locals 7

    const-string v0, "gzip"

    const-string v1, "VariationsSeedFetch"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 22
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v5

    .line 23
    invoke-virtual {p0, p1, p2, p3, p4}, LxV0;->b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;

    move-result-object v4

    const/16 p1, 0xbb8

    .line 24
    invoke-virtual {v4, p1}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    const/16 p1, 0x3e8

    .line 25
    invoke-virtual {v4, p1}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 26
    invoke-virtual {v4, v3}, Ljava/net/HttpURLConnection;->setDoInput(Z)V

    const-string p1, "A-IM"

    .line 27
    invoke-virtual {v4, p1, v0}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 28
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->connect()V

    .line 29
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result p1

    .line 30
    invoke-virtual {p0, p1}, LxV0;->a(I)V

    const/16 p2, 0xc8

    if-ne p1, p2, :cond_0

    .line 31
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p1

    sub-long/2addr p1, v5

    invoke-virtual {p0, p1, p2}, LxV0;->a(J)V

    .line 32
    new-instance p1, LwV0;

    invoke-direct {p1}, LwV0;-><init>()V

    .line 33
    invoke-virtual {p0, v4}, LxV0;->a(Ljava/net/HttpURLConnection;)[B

    move-result-object p2

    iput-object p2, p1, LwV0;->e:[B

    const-string p2, "X-Seed-Signature"

    .line 34
    invoke-virtual {p0, v4, p2}, LxV0;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, LwV0;->a:Ljava/lang/String;

    const-string p2, "X-Country"

    .line 35
    invoke-virtual {p0, v4, p2}, LxV0;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    iput-object p2, p1, LwV0;->b:Ljava/lang/String;

    .line 36
    new-instance p2, Ljava/util/Date;

    invoke-direct {p2}, Ljava/util/Date;-><init>()V

    invoke-virtual {p2}, Ljava/util/Date;->getTime()J

    move-result-wide p2

    iput-wide p2, p1, LwV0;->c:J

    const-string p2, "IM"

    .line 37
    invoke-virtual {p0, v4, p2}, LxV0;->a(Ljava/net/HttpURLConnection;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    iput-boolean p2, p1, LwV0;->d:Z

    .line 38
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide p2

    sub-long/2addr p2, v5

    invoke-virtual {p0, p2, p3}, LxV0;->b(J)V
    :try_end_0
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 39
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    return-object p1

    .line 40
    :cond_0
    :try_start_1
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "Non-OK response code = "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    new-array p2, v2, [Ljava/lang/Object;

    .line 41
    invoke-static {v1, p1, p2}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 42
    new-instance p2, Ljava/io/IOException;

    invoke-direct {p2, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p2
    :try_end_1
    .catch Ljava/net/SocketTimeoutException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/net/UnknownHostException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    const/4 p2, -0x1

    .line 43
    :try_start_2
    invoke-virtual {p0, p2}, LxV0;->a(I)V

    const-string p2, "IOException when fetching variations seed."

    new-array p3, v3, [Ljava/lang/Object;

    aput-object p1, p3, v2

    .line 44
    invoke-static {v1, p2, p3}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 45
    throw p1

    :catch_1
    move-exception p1

    const/4 p2, -0x3

    .line 46
    invoke-virtual {p0, p2}, LxV0;->a(I)V

    const-string p2, "UnknownHostException unknown host when fetching variations seed."

    new-array p3, v3, [Ljava/lang/Object;

    aput-object p1, p3, v2

    .line 47
    invoke-static {v1, p2, p3}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    throw p1

    :catch_2
    move-exception p1

    const/4 p2, -0x2

    .line 49
    invoke-virtual {p0, p2}, LxV0;->a(I)V

    const-string p2, "SocketTimeoutException timeout when fetching variations seed."

    new-array p3, v3, [Ljava/lang/Object;

    aput-object p1, p3, v2

    .line 50
    invoke-static {v1, p2, p3}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 51
    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :goto_0
    if-eqz v4, :cond_1

    .line 52
    invoke-virtual {v4}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_1
    throw p1
.end method

.method public final a(I)V
    .locals 2

    .line 18
    new-instance v0, LcV;

    const-string v1, "Variations.FirstRun.SeedFetchResult"

    invoke-direct {v0, v1}, LcV;-><init>(Ljava/lang/String;)V

    .line 19
    invoke-virtual {v0, p1}, LcV;->a(I)V

    return-void
.end method

.method public final a(J)V
    .locals 2

    .line 20
    new-instance v0, LdV;

    const-string v1, "Variations.FirstRun.SeedConnectTime"

    invoke-direct {v0, v1}, LdV;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v0, p1, p2}, LdV;->a(J)V

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 10

    .line 6
    sget-object v0, LxV0;->a:Ljava/lang/Object;

    monitor-enter v0

    .line 7
    :try_start_0
    sget-object v1, LyT;->a:Landroid/content/SharedPreferences;

    const-string v2, "variations_initialized"

    const/4 v3, 0x0

    .line 8
    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-nez v2, :cond_1

    .line 9
    sget-object v2, LyT;->a:Landroid/content/SharedPreferences;

    const-string v4, "variations_seed_native_stored"

    .line 10
    invoke-interface {v2, v4, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    const/4 v2, 0x1

    .line 11
    :try_start_1
    invoke-virtual {p0, v3, p1, p2, p3}, LxV0;->a(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)LwV0;

    move-result-object p1

    .line 12
    iget-object v4, p1, LwV0;->e:[B

    iget-object v5, p1, LwV0;->a:Ljava/lang/String;

    iget-object v6, p1, LwV0;->b:Ljava/lang/String;

    iget-wide v7, p1, LwV0;->c:J

    iget-boolean v9, p1, LwV0;->d:Z

    invoke-static/range {v4 .. v9}, Lorg/chromium/components/variations/firstrun/VariationsSeedBridge;->setVariationsFirstRunSeed([BLjava/lang/String;Ljava/lang/String;JZ)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p1

    :try_start_2
    const-string p2, "VariationsSeedFetch"

    const-string p3, "Exception when fetching variations seed."

    new-array v4, v2, [Ljava/lang/Object;

    aput-object p1, v4, v3

    .line 13
    invoke-static {p2, p3, v4}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 14
    :goto_0
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    const-string p2, "variations_initialized"

    invoke-interface {p1, p2, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 15
    monitor-exit v0

    return-void

    .line 16
    :cond_1
    :goto_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p1

    .line 17
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p1
.end method

.method public final a(Ljava/net/HttpURLConnection;)[B
    .locals 4

    .line 55
    :try_start_0
    invoke-virtual {p1}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 56
    :try_start_1
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    const/16 v1, 0x2000

    new-array v1, v1, [B

    .line 57
    :goto_0
    invoke-virtual {p1, v1}, Ljava/io/InputStream;->read([B)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    const/4 v3, 0x0

    .line 58
    invoke-virtual {v0, v1, v3, v2}, Ljava/io/OutputStream;->write([BII)V

    goto :goto_0

    :catchall_0
    move-exception v0

    goto :goto_1

    .line 59
    :cond_0
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 60
    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    return-object v0

    :catchall_1
    move-exception v0

    const/4 p1, 0x0

    :goto_1
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_1
    throw v0
.end method

.method public b(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/net/HttpURLConnection;
    .locals 2

    const-string v0, "https://clientservices.googleapis.com/chrome-variations/seed?osname="

    if-eqz p1, :cond_1

    const/4 v1, 0x1

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    const-string p1, "android_webview"

    .line 1
    invoke-static {v0, p1}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_1
    const-string p1, "android"

    .line 2
    invoke-static {v0, p1}, LZi;->b(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {p2}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "&restrict="

    .line 4
    invoke-static {v0, p1, p2}, LZi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_2
    if-eqz p3, :cond_3

    .line 5
    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_3

    const-string p1, "&milestone="

    .line 6
    invoke-static {v0, p1, p3}, LZi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :cond_3
    if-eqz p4, :cond_4

    .line 7
    invoke-virtual {p4}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-nez p1, :cond_4

    const-string p1, "&channel="

    .line 8
    invoke-static {v0, p1, p4}, LZi;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    :cond_4
    new-instance p1, Ljava/net/URL;

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 10
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object p1

    check-cast p1, Ljava/net/HttpURLConnection;

    return-object p1
.end method

.method public final b(J)V
    .locals 3

    .line 11
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Fetched first run seed in "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "VariationsSeedFetch"

    invoke-static {v2, v0, v1}, LLT;->b(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    new-instance v0, LdV;

    const-string v1, "Variations.FirstRun.SeedFetchTime"

    invoke-direct {v0, v1}, LdV;-><init>(Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0, p1, p2}, LdV;->a(J)V

    return-void
.end method
