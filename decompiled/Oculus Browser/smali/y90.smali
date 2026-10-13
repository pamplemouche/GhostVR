.class public Ly90;
.super LkW;
.source "PG"


# instance fields
.field public final a:Lorg/chromium/chrome/browser/download/DownloadInfo;

.field public final b:J

.field public c:J

.field public final synthetic d:LB90;


# direct methods
.method public constructor <init>(LB90;Lorg/chromium/chrome/browser/download/DownloadInfo;J)V
    .locals 0

    .line 1
    iput-object p1, p0, Ly90;->d:LB90;

    invoke-direct {p0}, LkW;-><init>()V

    .line 2
    iput-object p2, p0, Ly90;->a:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 3
    iput-wide p3, p0, Ly90;->b:J

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 9

    .line 1
    iget-object v0, p0, Ly90;->d:LB90;

    .line 2
    iget-object v0, v0, LB90;->a:Landroid/content/Context;

    const-string v1, "download"

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/DownloadManager;

    .line 4
    iget-wide v1, p0, Ly90;->b:J

    const-wide/16 v3, -0x1

    const/4 v5, 0x1

    const/4 v6, 0x0

    cmp-long v7, v1, v3

    if-nez v7, :cond_0

    iget-object v1, p0, Ly90;->a:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 5
    iget-object v1, v1, Lorg/chromium/chrome/browser/download/DownloadInfo;->g:Ljava/lang/String;

    .line 6
    invoke-static {v1}, Lorg/chromium/base/ContentUriUtils;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "OMADownloadHandler"

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 7
    :try_start_0
    iget-object v0, p0, Ly90;->a:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 8
    iget-object v0, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->g:Ljava/lang/String;

    .line 9
    invoke-static {v0}, Lorg/chromium/base/ContentUriUtils;->openContentUriForRead(Ljava/lang/String;)I

    move-result v0

    if-lez v0, :cond_1

    .line 10
    invoke-static {v0}, Landroid/os/ParcelFileDescriptor;->fromFd(I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    goto :goto_1

    :cond_1
    move-object v0, v3

    goto :goto_1

    .line 11
    :cond_2
    iget-wide v7, p0, Ly90;->b:J

    invoke-virtual {v0, v7, v8}, Landroid/app/DownloadManager;->openDownloadedFile(J)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    :goto_1
    if-eqz v0, :cond_3

    .line 12
    new-instance v4, Ljava/io/FileInputStream;

    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;

    move-result-object v7

    invoke-direct {v4, v7}, Ljava/io/FileInputStream;-><init>(Ljava/io/FileDescriptor;)V

    invoke-static {v4}, LB90;->a(Ljava/io/InputStream;)Lx90;

    move-result-object v3

    .line 13
    invoke-virtual {v0}, Landroid/os/ParcelFileDescriptor;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v0

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v6

    const-string v0, "Cannot read file."

    .line 14
    invoke-static {v2, v0, v4}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_2

    :catch_1
    move-exception v0

    new-array v4, v5, [Ljava/lang/Object;

    aput-object v0, v4, v6

    const-string v0, "File not found."

    .line 15
    invoke-static {v2, v0, v4}, LLT;->c(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    :cond_3
    :goto_2
    if-eqz v1, :cond_4

    .line 16
    iget-object v0, p0, Ly90;->a:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 17
    iget-object v0, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->g:Ljava/lang/String;

    .line 18
    invoke-static {v0}, Lorg/chromium/base/ContentUriUtils;->delete(Ljava/lang/String;)Z

    .line 19
    :cond_4
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/File;->getUsableSpace()J

    move-result-wide v0

    iput-wide v0, p0, Ly90;->c:J

    .line 20
    iget-object v0, p0, Ly90;->a:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 21
    iget-object v0, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->c:Ljava/lang/String;

    .line 22
    invoke-static {v5, v0}, LT80;->a(ILjava/lang/String;)V

    return-object v3
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 9

    .line 1
    check-cast p1, Lx90;

    const-string v0, "UseDownloadOfflineContentProvider"

    .line 2
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v1

    const/4 v6, 0x0

    if-eqz v1, :cond_0

    .line 3
    invoke-static {}, Laa0;->a()LeU0;

    move-result-object v0

    iget-object v1, p0, Ly90;->a:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 4
    iget-object v1, v1, Lorg/chromium/chrome/browser/download/DownloadInfo;->y:LbU0;

    .line 5
    invoke-interface {v0, v1}, LeU0;->d(LbU0;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-static {}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->f()Lorg/chromium/chrome/browser/download/DownloadManagerService;

    move-result-object v1

    iget-object v2, p0, Ly90;->a:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 7
    iget-object v3, v2, Lorg/chromium/chrome/browser/download/DownloadInfo;->l:Ljava/lang/String;

    .line 8
    iget-boolean v2, v2, Lorg/chromium/chrome/browser/download/DownloadInfo;->t:Z

    .line 9
    iget-object v4, v1, Lorg/chromium/chrome/browser/download/DownloadManagerService;->A:Landroid/os/Handler;

    new-instance v5, LI80;

    invoke-direct {v5, v1, v3, v2}, LI80;-><init>(Lorg/chromium/chrome/browser/download/DownloadManagerService;Ljava/lang/String;Z)V

    invoke-virtual {v4, v5}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 10
    invoke-static {v0}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_0

    .line 11
    :cond_1
    invoke-static {v3, v6}, Lorg/chromium/chrome/browser/download/DownloadManagerBridge;->removeCompletedDownload(Ljava/lang/String;Z)V

    :goto_0
    if-nez p1, :cond_2

    goto/16 :goto_2

    .line 12
    :cond_2
    iget-object v0, p1, Lx90;->b:Ljava/util/List;

    .line 13
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    invoke-static {p1}, LB90;->c(Lx90;)J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_7

    .line 14
    iget-object v0, p1, Lx90;->a:Ljava/util/Map;

    const-string v1, "objectURI"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_3

    goto/16 :goto_1

    .line 16
    :cond_3
    iget-object v0, p1, Lx90;->a:Ljava/util/Map;

    const-string v1, "DDVersion"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_4

    const-string v1, "1."

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 18
    iget-object v0, p0, Ly90;->d:LB90;

    iget-object v2, p0, Ly90;->a:Lorg/chromium/chrome/browser/download/DownloadInfo;

    const-wide/16 v3, -0x1

    const-string v5, "951 Invalid DDVersion \n\r"

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, LB90;->a(Lx90;Lorg/chromium/chrome/browser/download/DownloadInfo;JLjava/lang/String;)Z

    goto/16 :goto_2

    .line 19
    :cond_4
    iget-wide v0, p0, Ly90;->c:J

    invoke-static {p1}, LB90;->c(Lx90;)J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_5

    .line 20
    iget-object v0, p0, Ly90;->d:LB90;

    const v1, 0x7f130447

    iget-object v2, p0, Ly90;->a:Lorg/chromium/chrome/browser/download/DownloadInfo;

    const-string v3, "901 insufficient memory \n\r"

    .line 21
    invoke-virtual {v0, v1, p1, v2, v3}, LB90;->a(ILx90;Lorg/chromium/chrome/browser/download/DownloadInfo;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 22
    :cond_5
    invoke-static {p1}, LB90;->b(Lx90;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_6

    .line 23
    iget-object v0, p0, Ly90;->d:LB90;

    const v1, 0x7f130449

    iget-object v2, p0, Ly90;->a:Lorg/chromium/chrome/browser/download/DownloadInfo;

    const-string v3, "953 Non-Acceptable Content \n\r"

    .line 24
    invoke-virtual {v0, v1, p1, v2, v3}, LB90;->a(ILx90;Lorg/chromium/chrome/browser/download/DownloadInfo;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 25
    :cond_6
    iget-object v1, p0, Ly90;->d:LB90;

    iget-wide v2, p0, Ly90;->b:J

    iget-object v4, p0, Ly90;->a:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 26
    iget-object v0, v1, LB90;->a:Landroid/content/Context;

    const-string v5, "layout_inflater"

    .line 27
    invoke-virtual {v0, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v5, 0x7f0e005e

    const/4 v7, 0x0

    .line 28
    invoke-virtual {v0, v5, v7}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v7

    const v0, 0x7f0b02ea

    .line 29
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 30
    iget-object v5, p1, Lx90;->a:Ljava/util/Map;

    const-string v8, "name"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 31
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b02ed

    .line 32
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 33
    iget-object v5, p1, Lx90;->a:Ljava/util/Map;

    const-string v8, "vendor"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 34
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b02eb

    .line 35
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 36
    iget-object v5, p1, Lx90;->a:Ljava/util/Map;

    const-string v8, "size"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 37
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b02ec

    .line 38
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 39
    invoke-static {p1}, LB90;->b(Lx90;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v0, 0x7f0b02e9

    .line 40
    invoke-virtual {v7, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 41
    iget-object v5, p1, Lx90;->a:Ljava/util/Map;

    const-string v8, "description"

    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 42
    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 43
    new-instance v8, Lq90;

    move-object v0, v8

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lq90;-><init>(LB90;JLorg/chromium/chrome/browser/download/DownloadInfo;Lx90;)V

    .line 44
    new-instance p1, LO8;

    .line 45
    sget-object v0, Lorg/chromium/base/ApplicationStatus;->e:Landroid/app/Activity;

    const v1, 0x7f140245

    .line 46
    invoke-direct {p1, v0, v1}, LO8;-><init>(Landroid/content/Context;I)V

    const v0, 0x7f13050b

    .line 47
    invoke-virtual {p1, v0}, LO8;->b(I)LO8;

    const v0, 0x7f130443

    .line 48
    invoke-virtual {p1, v0, v8}, LO8;->b(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    const v0, 0x7f1301d4

    .line 49
    invoke-virtual {p1, v0, v8}, LO8;->a(ILandroid/content/DialogInterface$OnClickListener;)LO8;

    .line 50
    iget-object v0, p1, LO8;->a:LK8;

    iput-object v7, v0, LK8;->u:Landroid/view/View;

    .line 51
    iput v6, v0, LK8;->t:I

    .line 52
    iput-boolean v6, v0, LK8;->v:Z

    .line 53
    iput-boolean v6, v0, LK8;->m:Z

    .line 54
    invoke-virtual {p1}, LO8;->b()LP8;

    goto :goto_2

    .line 55
    :cond_7
    :goto_1
    iget-object v0, p0, Ly90;->d:LB90;

    iget-object v2, p0, Ly90;->a:Lorg/chromium/chrome/browser/download/DownloadInfo;

    const-wide/16 v3, -0x1

    const-string v5, "906 Invalid descriptor \n\r"

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, LB90;->a(Lx90;Lorg/chromium/chrome/browser/download/DownloadInfo;JLjava/lang/String;)Z

    :goto_2
    return-void
.end method
