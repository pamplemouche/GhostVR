.class public LW41;
.super LkW;
.source "PG"


# instance fields
.field public final a:Ljava/lang/String;

.field public b:Ljava/io/File;

.field public final synthetic c:Lorg/chromium/media/MediaPlayerBridge;


# direct methods
.method public constructor <init>(Lorg/chromium/media/MediaPlayerBridge;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, LW41;->c:Lorg/chromium/media/MediaPlayerBridge;

    invoke-direct {p0}, LkW;-><init>()V

    .line 2
    iput-object p2, p0, LW41;->a:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 3

    .line 1
    iget-object v0, p0, LW41;->b:Ljava/io/File;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Failed to delete temporary file: "

    .line 3
    invoke-static {v0}, LZi;->a(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, LW41;->b:Ljava/io/File;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "cr.media"

    invoke-static {v2, v0, v1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_1
    return-void
.end method

.method public doInBackground()Ljava/lang/Object;
    .locals 6

    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    const-string v2, "decoded"

    const-string v3, "mediadata"

    .line 1
    invoke-static {v2, v3}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;)Ljava/io/File;

    move-result-object v2

    iput-object v2, p0, LW41;->b:Ljava/io/File;

    .line 2
    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, LW41;->b:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3
    :try_start_1
    new-instance v1, Ljava/io/ByteArrayInputStream;

    iget-object v3, p0, LW41;->a:Ljava/lang/String;

    .line 4
    invoke-static {v3}, LdT;->a(Ljava/lang/String;)[B

    move-result-object v3

    invoke-direct {v1, v3}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 5
    new-instance v3, Landroid/util/Base64InputStream;

    invoke-direct {v3, v1, v0}, Landroid/util/Base64InputStream;-><init>(Ljava/io/InputStream;I)V

    const/16 v1, 0x400

    new-array v1, v1, [B

    .line 6
    :goto_0
    invoke-virtual {v3, v1}, Landroid/util/Base64InputStream;->read([B)I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    .line 7
    invoke-virtual {v2, v1, v0, v4}, Ljava/io/FileOutputStream;->write([BII)V

    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v3}, Landroid/util/Base64InputStream;->close()V

    const/4 v1, 0x1

    .line 9
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 10
    invoke-static {v2}, LpU;->a(Ljava/io/Closeable;)V

    goto :goto_2

    :catchall_0
    move-exception v0

    goto :goto_3

    :catch_0
    move-object v1, v2

    goto :goto_1

    :catchall_1
    move-exception v0

    move-object v2, v1

    goto :goto_3

    .line 11
    :catch_1
    :goto_1
    :try_start_2
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 12
    invoke-static {v1}, LpU;->a(Ljava/io/Closeable;)V

    :goto_2
    return-object v0

    :goto_3
    invoke-static {v2}, LpU;->a(Ljava/io/Closeable;)V

    throw v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p0}, LkW;->isCancelled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p0}, LW41;->c()V

    goto :goto_1

    .line 4
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    :try_start_0
    iget-object v0, p0, LW41;->c:Lorg/chromium/media/MediaPlayerBridge;

    invoke-virtual {v0}, Lorg/chromium/media/MediaPlayerBridge;->b()Landroid/media/MediaPlayer;

    move-result-object v0

    .line 6
    sget-object v1, LzT;->a:Landroid/content/Context;

    .line 7
    iget-object v2, p0, LW41;->b:Ljava/io/File;

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v2

    .line 8
    invoke-virtual {v0, v1, v2}, Landroid/media/MediaPlayer;->setDataSource(Landroid/content/Context;Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const/4 p1, 0x0

    .line 9
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    .line 10
    :cond_1
    :goto_0
    invoke-virtual {p0}, LW41;->c()V

    .line 11
    iget-object v0, p0, LW41;->c:Lorg/chromium/media/MediaPlayerBridge;

    .line 12
    iget-wide v1, v0, Lorg/chromium/media/MediaPlayerBridge;->c:J

    .line 13
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 14
    invoke-static {v1, v2, v0, p1}, LJ/N;->Mo4Rd8TE(JLjava/lang/Object;Z)V

    :goto_1
    return-void
.end method
