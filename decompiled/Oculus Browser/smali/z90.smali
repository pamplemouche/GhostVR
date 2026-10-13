.class public Lz90;
.super LkW;
.source "PG"


# instance fields
.field public final a:Lx90;

.field public final b:Lorg/chromium/chrome/browser/download/DownloadInfo;

.field public final c:Ljava/lang/String;

.field public final d:J

.field public final synthetic e:LB90;


# direct methods
.method public constructor <init>(LB90;Lx90;Lorg/chromium/chrome/browser/download/DownloadInfo;JLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lz90;->e:LB90;

    invoke-direct {p0}, LkW;-><init>()V

    .line 2
    iput-object p2, p0, Lz90;->a:Lx90;

    .line 3
    iput-object p3, p0, Lz90;->b:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 4
    iput-object p6, p0, Lz90;->c:Ljava/lang/String;

    .line 5
    iput-wide p4, p0, Lz90;->d:J

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 15

    const-string v0, "Cannot connect to server."

    const-string v1, "PostStatusTask"

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1
    :try_start_0
    new-instance v5, Ljava/net/URL;

    iget-object v6, p0, Lz90;->a:Lx90;

    const-string v7, "installNotifyURI"

    .line 2
    iget-object v6, v6, Lx90;->a:Ljava/util/Map;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    .line 3
    invoke-direct {v5, v6}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v5}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v5

    check-cast v5, Ljava/net/HttpURLConnection;
    :try_end_0
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_4
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {v5, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V

    .line 6
    invoke-virtual {v5, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    const-string v3, "POST"

    .line 7
    invoke-virtual {v5, v3}, Ljava/net/HttpURLConnection;->setRequestMethod(Ljava/lang/String;)V

    .line 8
    iget-object v3, p0, Lz90;->b:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 9
    iget-object v3, v3, Lorg/chromium/chrome/browser/download/DownloadInfo;->b:Ljava/lang/String;

    .line 10
    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 11
    invoke-static {}, LJ/N;->M5LbL2nl()Ljava/lang/String;

    move-result-object v3

    :cond_0
    const-string v6, "User-Agent"

    .line 12
    invoke-virtual {v5, v6, v3}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "cookie"

    .line 13
    iget-object v6, p0, Lz90;->b:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 14
    iget-object v6, v6, Lorg/chromium/chrome/browser/download/DownloadInfo;->d:Ljava/lang/String;

    .line 15
    invoke-virtual {v5, v3, v6}, Ljava/net/HttpURLConnection;->setRequestProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 16
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getOutputStream()Ljava/io/OutputStream;

    move-result-object v6

    invoke-direct {v3, v6}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V
    :try_end_1
    .catch Ljava/net/MalformedURLException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 17
    :try_start_2
    iget-object v6, p0, Lz90;->c:Ljava/lang/String;

    invoke-virtual {v3, v6}, Ljava/io/DataOutputStream;->writeBytes(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->flush()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v6

    goto :goto_2

    :catch_0
    move-exception v6

    :try_start_3
    const-string v7, "Cannot write status message."

    new-array v8, v2, [Ljava/lang/Object;

    aput-object v6, v8, v4

    .line 19
    invoke-static {v1, v7, v8}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 20
    :goto_0
    :try_start_4
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 21
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->getResponseCode()I

    move-result v0
    :try_end_4
    .catch Ljava/net/MalformedURLException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_4 .. :try_end_4} :catch_1
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    const/16 v3, 0xc8

    if-eq v0, v3, :cond_2

    const/4 v3, -0x1

    if-ne v0, v3, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    .line 22
    :cond_2
    :goto_1
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_8

    .line 23
    :goto_2
    :try_start_5
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    throw v6
    :try_end_5
    .catch Ljava/net/MalformedURLException; {:try_start_5 .. :try_end_5} :catch_3
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_5 .. :try_end_5} :catch_1
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    :catch_1
    move-exception v3

    goto :goto_3

    :catch_2
    move-exception v3

    goto :goto_4

    :catch_3
    move-exception v0

    move-object v3, v5

    goto :goto_6

    :catchall_1
    move-exception v0

    move-object v5, v3

    goto/16 :goto_b

    :catch_4
    move-exception v5

    move-object v14, v5

    move-object v5, v3

    move-object v3, v14

    :goto_3
    :try_start_6
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v4

    .line 24
    invoke-static {v1, v0, v2}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    if-eqz v5, :cond_3

    goto :goto_5

    :catch_5
    move-exception v5

    move-object v14, v5

    move-object v5, v3

    move-object v3, v14

    :goto_4
    new-array v2, v2, [Ljava/lang/Object;

    aput-object v3, v2, v4

    .line 25
    invoke-static {v1, v0, v2}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    if-eqz v5, :cond_3

    .line 26
    :goto_5
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    goto :goto_7

    :catchall_2
    move-exception v0

    goto/16 :goto_b

    :catch_6
    move-exception v0

    :goto_6
    :try_start_7
    const-string v5, "Invalid notification URL."

    new-array v2, v2, [Ljava/lang/Object;

    aput-object v0, v2, v4

    .line 27
    invoke-static {v1, v5, v2}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_1

    if-eqz v3, :cond_3

    .line 28
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    :goto_7
    const/4 v2, 0x0

    :goto_8
    if-eqz v2, :cond_a

    .line 29
    iget-object v0, p0, Lz90;->b:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 30
    iget-object v0, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->g:Ljava/lang/String;

    .line 31
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_a

    .line 32
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 33
    invoke-static {}, Lorg/chromium/base/BuildInfo;->a()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 34
    iget-object v3, p0, Lz90;->b:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 35
    iget-object v5, v3, Lorg/chromium/chrome/browser/download/DownloadInfo;->e:Ljava/lang/String;

    .line 36
    iget-object v6, v3, Lorg/chromium/chrome/browser/download/DownloadInfo;->c:Ljava/lang/String;

    .line 37
    iget-object v7, v3, Lorg/chromium/chrome/browser/download/DownloadInfo;->i:Ljava/lang/String;

    .line 38
    iget-object v3, v3, Lorg/chromium/chrome/browser/download/DownloadInfo;->h:Ljava/lang/String;

    .line 39
    invoke-static {v5, v6, v7, v3}, Lorg/chromium/components/download/DownloadCollectionBridge;->createIntermediateUriForPublish(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 40
    invoke-static {v0, v3}, Lorg/chromium/components/download/DownloadCollectionBridge;->copyFileToIntermediateUri(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 41
    invoke-static {v3}, Lorg/chromium/components/download/DownloadCollectionBridge;->publishDownload(Ljava/lang/String;)Ljava/lang/String;

    .line 42
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    goto :goto_9

    .line 43
    :cond_4
    invoke-static {v3}, Lorg/chromium/components/download/DownloadCollectionBridge;->deleteIntermediateUri(Ljava/lang/String;)V

    goto :goto_9

    .line 44
    :cond_5
    invoke-virtual {v2}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v6

    .line 45
    iget-object v0, p0, Lz90;->e:LB90;

    .line 46
    iget-object v0, v0, LB90;->a:Landroid/content/Context;

    const-string v3, "download"

    .line 47
    invoke-virtual {v0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    move-object v5, v0

    check-cast v5, Landroid/app/DownloadManager;

    .line 48
    new-instance v0, Ljava/io/File;

    sget-object v3, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v3}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    invoke-direct {v0, v3, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 49
    invoke-virtual {v2, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 50
    iget-object v7, p0, Lz90;->b:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 51
    iget-object v8, v7, Lorg/chromium/chrome/browser/download/DownloadInfo;->f:Ljava/lang/String;

    const/4 v9, 0x0

    .line 52
    iget-object v10, v7, Lorg/chromium/chrome/browser/download/DownloadInfo;->c:Ljava/lang/String;

    .line 53
    invoke-virtual {v0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v0

    iget-object v7, p0, Lz90;->b:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 54
    iget-wide v11, v7, Lorg/chromium/chrome/browser/download/DownloadInfo;->j:J

    const/4 v13, 0x1

    move-object v7, v8

    move v8, v9

    move-object v9, v10

    move-object v10, v0

    .line 55
    invoke-virtual/range {v5 .. v13}, Landroid/app/DownloadManager;->addCompletedDownload(Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;JZ)J

    :cond_6
    move v0, v3

    :goto_9
    if-nez v0, :cond_b

    .line 56
    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    move-result v2

    if-eqz v2, :cond_8

    .line 57
    invoke-static {}, Lorg/chromium/base/BuildInfo;->a()Z

    move-result v2

    if-eqz v2, :cond_7

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "Failed to publish the downloaded file."

    .line 58
    invoke-static {v1, v3, v2}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    :cond_7
    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "Failed to rename the file."

    .line 59
    invoke-static {v1, v3, v2}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    .line 60
    :cond_8
    invoke-static {}, Lorg/chromium/base/BuildInfo;->a()Z

    move-result v2

    if-eqz v2, :cond_9

    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "Failed to publish and delete the file."

    .line 61
    invoke-static {v1, v3, v2}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    :cond_9
    new-array v2, v4, [Ljava/lang/Object;

    const-string v3, "Failed to rename and delete the file."

    .line 62
    invoke-static {v1, v3, v2}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_a

    :cond_a
    move v0, v2

    .line 63
    :cond_b
    :goto_a
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0

    :goto_b
    if-eqz v5, :cond_c

    .line 64
    invoke-virtual {v5}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_c
    throw v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 4

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lz90;->e:LB90;

    iget-object v0, p0, Lz90;->a:Lx90;

    .line 4
    invoke-virtual {p1, v0}, LB90;->a(Lx90;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-wide v0, p0, Lz90;->d:J

    const-wide/16 v2, -0x1

    cmp-long p1, v0, v2

    if-eqz p1, :cond_1

    .line 6
    iget-object p1, p0, Lz90;->e:LB90;

    .line 7
    iget-object p1, p1, LB90;->a:Landroid/content/Context;

    const-string v0, "download"

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/DownloadManager;

    const/4 v0, 0x1

    new-array v0, v0, [J

    const/4 v1, 0x0

    iget-wide v2, p0, Lz90;->d:J

    aput-wide v2, v0, v1

    .line 9
    invoke-virtual {p1, v0}, Landroid/app/DownloadManager;->remove([J)I

    :cond_1
    :goto_0
    return-void
.end method
