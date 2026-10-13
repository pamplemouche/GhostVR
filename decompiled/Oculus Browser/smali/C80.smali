.class public LC80;
.super LkW;
.source "PG"


# instance fields
.field public final a:Ly80;

.field public final b:Lorg/chromium/base/Callback;

.field public c:J

.field public d:I

.field public e:J

.field public f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ly80;Lorg/chromium/base/Callback;)V
    .locals 0

    .line 1
    invoke-direct {p0}, LkW;-><init>()V

    .line 2
    iput-object p1, p0, LC80;->a:Ly80;

    .line 3
    iput-object p2, p0, LC80;->b:Lorg/chromium/base/Callback;

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 8

    const-string v0, "Cannot create download directory"

    const-string v1, "DownloadDelegate"

    const/4 v2, 0x0

    .line 1
    :try_start_0
    new-instance v3, Landroid/app/DownloadManager$Request;

    iget-object v4, p0, LC80;->a:Ly80;

    iget-object v4, v4, Ly80;->a:Ljava/lang/String;

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-direct {v3, v4}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_3

    .line 2
    iget-object v4, p0, LC80;->a:Ly80;

    iget-object v4, v4, Ly80;->d:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/app/DownloadManager$Request;->setMimeType(Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    const/16 v4, 0x3e9

    .line 3
    :try_start_1
    iget-object v5, p0, LC80;->a:Ly80;

    iget-boolean v5, v5, Ly80;->h:Z

    if-eqz v5, :cond_0

    .line 4
    iget-object v5, p0, LC80;->a:Ly80;

    iget-object v5, v5, Ly80;->b:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 5
    sget-object v5, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    iget-object v6, p0, LC80;->a:Ly80;

    iget-object v6, v6, Ly80;->b:Ljava/lang/String;

    invoke-virtual {v3, v5, v6}, Landroid/app/DownloadManager$Request;->setDestinationInExternalPublicDir(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    goto :goto_1

    .line 6
    :cond_0
    new-instance v5, Ljava/io/File;

    invoke-static {}, Lorg/chromium/chrome/browser/download/DownloadManagerBridge;->a()Landroid/content/Context;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v6

    const-string v7, "Download"

    invoke-direct {v5, v6, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v5}, Ljava/io/File;->mkdir()Z

    move-result v6

    if-nez v6, :cond_2

    invoke-virtual {v5}, Ljava/io/File;->isDirectory()Z

    move-result v6

    if-eqz v6, :cond_1

    goto :goto_0

    :cond_1
    new-array v3, v2, [Ljava/lang/Object;

    .line 8
    invoke-static {v1, v0, v3}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 9
    iput v4, p0, LC80;->d:I

    .line 10
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto/16 :goto_3

    .line 11
    :cond_2
    :goto_0
    new-instance v6, Ljava/io/File;

    iget-object v7, p0, LC80;->a:Ly80;

    iget-object v7, v7, Ly80;->b:Ljava/lang/String;

    invoke-direct {v6, v5, v7}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 12
    invoke-virtual {v6}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    iput-object v5, p0, LC80;->f:Ljava/lang/String;

    .line 13
    invoke-static {v6}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v5

    invoke-virtual {v3, v5}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_2

    .line 14
    :cond_3
    :goto_1
    iget-object v0, p0, LC80;->a:Ly80;

    iget-boolean v0, v0, Ly80;->h:Z

    const/4 v5, 0x1

    if-eqz v0, :cond_4

    .line 15
    invoke-virtual {v3}, Landroid/app/DownloadManager$Request;->allowScanningByMediaScanner()V

    .line 16
    invoke-virtual {v3, v5}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    goto :goto_2

    .line 17
    :cond_4
    invoke-virtual {v3, v2}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    .line 18
    :goto_2
    iget-object v0, p0, LC80;->a:Ly80;

    iget-object v0, v0, Ly80;->c:Ljava/lang/String;

    .line 19
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 20
    iget-object v0, p0, LC80;->a:Ly80;

    iget-object v0, v0, Ly80;->b:Ljava/lang/String;

    .line 21
    :cond_5
    invoke-virtual {v3, v0}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 22
    iget-object v0, p0, LC80;->a:Ly80;

    iget-object v0, v0, Ly80;->b:Ljava/lang/String;

    invoke-virtual {v3, v0}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    .line 23
    iget-object v0, p0, LC80;->a:Ly80;

    iget-object v0, v0, Ly80;->e:Ljava/lang/String;

    const-string v6, "Cookie"

    invoke-virtual {v3, v6, v0}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 24
    iget-object v0, p0, LC80;->a:Ly80;

    iget-object v0, v0, Ly80;->f:Ljava/lang/String;

    const-string v6, "referrer"

    invoke-virtual {v3, v6, v0}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 25
    iget-object v0, p0, LC80;->a:Ly80;

    iget-object v0, v0, Ly80;->g:Ljava/lang/String;

    const-string v6, "User-Agent"

    invoke-virtual {v3, v6, v0}, Landroid/app/DownloadManager$Request;->addRequestHeader(Ljava/lang/String;Ljava/lang/String;)Landroid/app/DownloadManager$Request;

    .line 26
    invoke-static {}, Lorg/chromium/chrome/browser/download/DownloadManagerBridge;->a()Landroid/content/Context;

    move-result-object v0

    const-string v6, "download"

    invoke-virtual {v0, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 27
    :try_start_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    iput-wide v6, p0, LC80;->e:J

    .line 28
    invoke-virtual {v0, v3}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v6

    iput-wide v6, p0, LC80;->c:J
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    .line 29
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3

    :catch_0
    move-exception v0

    .line 30
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Failed to create target file on the external storage: "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    iput v4, p0, LC80;->d:I

    .line 32
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3

    :catch_1
    move-exception v0

    .line 33
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Download failed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v1, v0, v3}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x3e8

    .line 34
    iput v0, p0, LC80;->d:I

    .line 35
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3

    :catch_2
    new-array v3, v2, [Ljava/lang/Object;

    .line 36
    invoke-static {v1, v0, v3}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 37
    iput v4, p0, LC80;->d:I

    .line 38
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_3

    :catch_3
    new-array v0, v2, [Ljava/lang/Object;

    const-string v3, "Cannot download non http or https scheme"

    .line 39
    invoke-static {v1, v3, v0}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v0, 0x3ea

    .line 40
    iput v0, p0, LC80;->d:I

    .line 41
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    :goto_3
    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    new-instance v0, Lz80;

    invoke-direct {v0}, Lz80;-><init>()V

    .line 3
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iput-boolean p1, v0, Lz80;->b:Z

    .line 4
    iget p1, p0, LC80;->d:I

    iput p1, v0, Lz80;->c:I

    .line 5
    iget-wide v1, p0, LC80;->c:J

    iput-wide v1, v0, Lz80;->a:J

    .line 6
    iget-wide v1, p0, LC80;->e:J

    iput-wide v1, v0, Lz80;->d:J

    .line 7
    iget-object p1, p0, LC80;->f:Ljava/lang/String;

    iput-object p1, v0, Lz80;->e:Ljava/lang/String;

    .line 8
    iget-object p1, p0, LC80;->b:Lorg/chromium/base/Callback;

    invoke-interface {p1, v0}, Lorg/chromium/base/Callback;->onResult(Ljava/lang/Object;)V

    return-void
.end method
