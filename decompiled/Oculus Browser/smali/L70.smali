.class public LL70;
.super LkW;
.source "PG"


# instance fields
.field public final synthetic a:Lorg/chromium/chrome/browser/download/DownloadInfo;

.field public final synthetic b:Ljava/lang/String;

.field public final synthetic c:Ljava/lang/String;

.field public final synthetic d:LM70;


# direct methods
.method public constructor <init>(LM70;Lorg/chromium/chrome/browser/download/DownloadInfo;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, LL70;->d:LM70;

    iput-object p2, p0, LL70;->a:Lorg/chromium/chrome/browser/download/DownloadInfo;

    iput-object p3, p0, LL70;->b:Ljava/lang/String;

    iput-object p4, p0, LL70;->c:Ljava/lang/String;

    invoke-direct {p0}, LkW;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-static {v1}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;

    move-result-object v1

    .line 3
    invoke-virtual {v1}, Ljava/io/File;->mkdir()Z

    move-result v2

    if-nez v2, :cond_0

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v1, 0x0

    .line 4
    :cond_0
    new-instance v2, Landroid/util/Pair;

    invoke-direct {v2, v0, v1}, Landroid/util/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Landroid/util/Pair;

    .line 2
    iget-object v0, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    .line 3
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/io/File;

    .line 4
    iget-object v1, p0, LL70;->d:LM70;

    iget-object v2, p0, LL70;->a:Lorg/chromium/chrome/browser/download/DownloadInfo;

    const/4 v3, 0x0

    if-eqz v1, :cond_6

    const/16 v1, 0x3ef

    const-string v4, "Download failed: no SD card"

    const-string v5, "Download"

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-nez p1, :cond_0

    new-array p1, v6, [Ljava/lang/Object;

    .line 5
    invoke-static {v5, v4, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 6
    new-instance p1, Lorg/chromium/chrome/browser/download/DownloadItem;

    invoke-direct {p1, v6, v2}, Lorg/chromium/chrome/browser/download/DownloadItem;-><init>(ZLorg/chromium/chrome/browser/download/DownloadInfo;)V

    .line 7
    invoke-static {}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->f()Lorg/chromium/chrome/browser/download/DownloadManagerService;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Lorg/chromium/chrome/browser/download/DownloadItem;I)V

    goto :goto_1

    :cond_0
    const-string p1, "mounted"

    .line 8
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    const-string p1, "shared"

    .line 9
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    new-array p1, v6, [Ljava/lang/Object;

    const-string v0, "Download failed: SD card unavailable"

    .line 10
    invoke-static {v5, v0, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    const/16 v1, 0x3e9

    goto :goto_0

    :cond_1
    new-array p1, v6, [Ljava/lang/Object;

    .line 11
    invoke-static {v5, v4, p1}, LLT;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 12
    :goto_0
    new-instance p1, Lorg/chromium/chrome/browser/download/DownloadItem;

    invoke-direct {p1, v6, v2}, Lorg/chromium/chrome/browser/download/DownloadItem;-><init>(ZLorg/chromium/chrome/browser/download/DownloadInfo;)V

    .line 13
    invoke-static {}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->f()Lorg/chromium/chrome/browser/download/DownloadManagerService;

    move-result-object v0

    invoke-virtual {v0, p1, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Lorg/chromium/chrome/browser/download/DownloadItem;I)V

    goto :goto_1

    :cond_2
    const/4 v6, 0x1

    :goto_1
    if-nez v6, :cond_3

    goto :goto_2

    .line 14
    :cond_3
    iget-object p1, p0, LL70;->d:LM70;

    iget-object v0, p0, LL70;->a:Lorg/chromium/chrome/browser/download/DownloadInfo;

    if-eqz p1, :cond_5

    .line 15
    iget-object p1, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->a:Ljava/lang/String;

    if-nez p1, :cond_4

    goto :goto_2

    .line 16
    :cond_4
    invoke-static {v0}, Ln80;->a(Lorg/chromium/chrome/browser/download/DownloadInfo;)Ln80;

    move-result-object v0

    .line 17
    iput-object p1, v0, Ln80;->a:Ljava/lang/String;

    .line 18
    iget-object v1, p0, LL70;->b:Ljava/lang/String;

    .line 19
    iput-object v1, v0, Ln80;->c:Ljava/lang/String;

    .line 20
    iput-object p1, v0, Ln80;->f:Ljava/lang/String;

    .line 21
    iget-object p1, p0, LL70;->c:Ljava/lang/String;

    .line 22
    iput-object p1, v0, Ln80;->e:Ljava/lang/String;

    .line 23
    iput-boolean v7, v0, Ln80;->l:Z

    .line 24
    invoke-virtual {v0}, Ln80;->a()Lorg/chromium/chrome/browser/download/DownloadInfo;

    move-result-object p1

    .line 25
    invoke-static {p1}, Lorg/chromium/chrome/browser/download/DownloadController;->a(Lorg/chromium/chrome/browser/download/DownloadInfo;)V

    .line 26
    iget-object p1, p0, LL70;->d:LM70;

    .line 27
    iget-object p1, p1, LM70;->w:Lorg/chromium/chrome/browser/tab/Tab;

    .line 28
    invoke-static {p1}, Lorg/chromium/chrome/browser/download/DownloadController;->closeTabIfBlank(Lorg/chromium/chrome/browser/tab/Tab;)Z

    :goto_2
    return-void

    .line 29
    :cond_5
    throw v3

    .line 30
    :cond_6
    throw v3
.end method
