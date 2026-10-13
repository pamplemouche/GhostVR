.class public LL80;
.super LkW;
.source "PG"


# instance fields
.field public final synthetic a:Lorg/chromium/chrome/browser/download/DownloadItem;

.field public final synthetic b:Lorg/chromium/chrome/browser/download/DownloadInfo;

.field public final synthetic c:Z

.field public final synthetic d:Lorg/chromium/chrome/browser/download/DownloadManagerService;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/download/DownloadManagerService;Lorg/chromium/chrome/browser/download/DownloadItem;Lorg/chromium/chrome/browser/download/DownloadInfo;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, LL80;->d:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    iput-object p2, p0, LL80;->a:Lorg/chromium/chrome/browser/download/DownloadItem;

    iput-object p3, p0, LL80;->b:Lorg/chromium/chrome/browser/download/DownloadInfo;

    iput-boolean p4, p0, LL80;->c:Z

    invoke-direct {p0}, LkW;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 12

    .line 1
    iget-object v0, p0, LL80;->d:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    .line 2
    iget-boolean v0, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->P:Z

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, LL80;->a:Lorg/chromium/chrome/browser/download/DownloadItem;

    .line 4
    iget-object v0, v0, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 5
    iget-object v0, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->g:Ljava/lang/String;

    .line 6
    invoke-static {v0}, Lorg/chromium/base/ContentUriUtils;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_3

    const-string v3, "UseDownloadOfflineContentProvider"

    .line 7
    invoke-static {v3}, LJ/N;->MPiSwAE4(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 8
    iget-object v0, p0, LL80;->b:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 9
    iget-object v3, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->e:Ljava/lang/String;

    .line 10
    iget-object v4, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->f:Ljava/lang/String;

    .line 11
    iget-object v5, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->c:Ljava/lang/String;

    .line 12
    iget-object v6, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->g:Ljava/lang/String;

    .line 13
    iget-wide v7, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->j:J

    .line 14
    iget-object v9, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->i:Ljava/lang/String;

    .line 15
    iget-object v10, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->h:Ljava/lang/String;

    .line 16
    iget-object v11, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->l:Ljava/lang/String;

    .line 17
    invoke-static/range {v3 .. v11}, Lorg/chromium/chrome/browser/download/DownloadManagerBridge;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)J

    move-result-wide v3

    const-wide/16 v5, -0x1

    cmp-long v0, v3, v5

    if-eqz v0, :cond_2

    const/4 v0, 0x1

    goto :goto_2

    :cond_2
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_3

    .line 18
    iget-object v5, p0, LL80;->a:Lorg/chromium/chrome/browser/download/DownloadItem;

    invoke-virtual {v5, v3, v4}, Lorg/chromium/chrome/browser/download/DownloadItem;->a(J)V

    :cond_3
    if-eqz v0, :cond_4

    .line 19
    iget-object v3, p0, LL80;->a:Lorg/chromium/chrome/browser/download/DownloadItem;

    .line 20
    iget-object v3, v3, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 21
    iget-object v3, v3, Lorg/chromium/chrome/browser/download/DownloadInfo;->c:Ljava/lang/String;

    .line 22
    invoke-static {v3}, Lorg/chromium/chrome/browser/download/DownloadUtils;->c(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_5

    iget-object v3, p0, LL80;->a:Lorg/chromium/chrome/browser/download/DownloadItem;

    iget-boolean v4, p0, LL80;->c:Z

    .line 23
    invoke-static {v3, v4}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Lorg/chromium/chrome/browser/download/DownloadItem;Z)Z

    move-result v3

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    const/4 v1, 0x0

    .line 24
    :cond_5
    :goto_3
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 9

    .line 1
    check-cast p1, Landroid/util/Pair;

    .line 2
    iget-object v0, p0, LL80;->a:Lorg/chromium/chrome/browser/download/DownloadItem;

    .line 3
    iget-object v0, v0, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 4
    iget-object v1, p1, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    .line 5
    iget-object v1, p0, LL80;->d:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    .line 6
    iget-object v1, v1, Lorg/chromium/chrome/browser/download/DownloadManagerService;->y:LY80;

    .line 7
    iget-object v3, p0, LL80;->a:Lorg/chromium/chrome/browser/download/DownloadItem;

    .line 8
    iget-wide v3, v3, Lorg/chromium/chrome/browser/download/DownloadItem;->d:J

    .line 9
    iget-object p1, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    iget-boolean v5, p0, LL80;->c:Z

    .line 10
    check-cast v1, LG90;

    if-eqz v1, :cond_1

    .line 11
    new-instance v6, LF90;

    const/4 v7, 0x2

    const/4 v8, 0x0

    invoke-direct {v6, v7, v0, v8}, LF90;-><init>(ILorg/chromium/chrome/browser/download/DownloadInfo;I)V

    .line 12
    iput-wide v3, v6, LF90;->f:J

    .line 13
    iput-boolean p1, v6, LF90;->g:Z

    .line 14
    iput-boolean v5, v6, LF90;->h:Z

    .line 15
    invoke-virtual {v1, v6}, LG90;->a(LF90;)V

    .line 16
    iget-object p1, p0, LL80;->d:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    .line 17
    iget-object p1, p1, Lorg/chromium/chrome/browser/download/DownloadManagerService;->F:LWT;

    invoke-virtual {p1}, LWT;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, LQ80;

    .line 18
    invoke-interface {v1, v0}, LQ80;->a(Lorg/chromium/chrome/browser/download/DownloadInfo;)V

    goto :goto_0

    .line 19
    :cond_0
    iget-object p1, p0, LL80;->d:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    .line 20
    iget-object v0, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->l:Ljava/lang/String;

    .line 21
    invoke-virtual {p1, v2, v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(ILjava/lang/String;)V

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 22
    throw p1

    .line 23
    :cond_2
    invoke-static {v0}, Ln80;->a(Lorg/chromium/chrome/browser/download/DownloadInfo;)Ln80;

    move-result-object p1

    .line 24
    iput v2, p1, Ln80;->E:I

    .line 25
    invoke-virtual {p1}, Ln80;->a()Lorg/chromium/chrome/browser/download/DownloadInfo;

    move-result-object p1

    .line 26
    iget-object v0, p0, LL80;->d:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    .line 27
    iget-object v0, v0, Lorg/chromium/chrome/browser/download/DownloadManagerService;->y:LY80;

    .line 28
    check-cast v0, LG90;

    invoke-virtual {v0, p1}, LG90;->a(Lorg/chromium/chrome/browser/download/DownloadInfo;)V

    .line 29
    iget-object v0, p0, LL80;->d:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    const/4 v1, 0x3

    .line 30
    iget-object p1, p1, Lorg/chromium/chrome/browser/download/DownloadInfo;->l:Ljava/lang/String;

    .line 31
    invoke-virtual {v0, v1, p1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(ILjava/lang/String;)V

    :goto_1
    return-void
.end method
