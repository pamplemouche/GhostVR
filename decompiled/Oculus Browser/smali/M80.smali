.class public LM80;
.super LkW;
.source "PG"


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:J

.field public final synthetic c:Z

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:Ljava/lang/String;

.field public final synthetic f:Ljava/lang/String;

.field public final synthetic g:Landroid/content/Context;

.field public final synthetic h:I

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;ILjava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, LM80;->a:Ljava/lang/String;

    iput-wide p2, p0, LM80;->b:J

    iput-boolean p4, p0, LM80;->c:Z

    iput-object p5, p0, LM80;->d:Ljava/lang/String;

    iput-object p6, p0, LM80;->e:Ljava/lang/String;

    iput-object p7, p0, LM80;->f:Ljava/lang/String;

    iput-object p8, p0, LM80;->g:Landroid/content/Context;

    iput p9, p0, LM80;->h:I

    iput-object p10, p0, LM80;->i:Ljava/lang/String;

    iput-boolean p11, p0, LM80;->j:Z

    invoke-direct {p0}, LkW;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 7

    .line 1
    iget-object v0, p0, LM80;->a:Ljava/lang/String;

    iget-wide v1, p0, LM80;->b:J

    iget-boolean v3, p0, LM80;->c:Z

    iget-object v4, p0, LM80;->d:Ljava/lang/String;

    iget-object v5, p0, LM80;->e:Ljava/lang/String;

    iget-object v6, p0, LM80;->f:Ljava/lang/String;

    invoke-static/range {v0 .. v6}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Ljava/lang/String;JZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Landroid/content/Intent;

    const/4 v0, 0x1

    if-eqz p1, :cond_0

    .line 2
    invoke-static {p1, v0}, Lwa0;->a(Landroid/content/Intent;Z)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, LM80;->g:Landroid/content/Context;

    .line 3
    invoke-static {v1, p1}, Lorg/chromium/chrome/browser/download/DownloadUtils;->a(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    .line 4
    iget-object p1, p0, LM80;->g:Landroid/content/Context;

    iget v0, p0, LM80;->h:I

    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Landroid/content/Context;I)V

    goto :goto_1

    :cond_1
    if-eqz v0, :cond_2

    .line 5
    invoke-static {}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->g()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-static {}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->f()Lorg/chromium/chrome/browser/download/DownloadManagerService;

    move-result-object p1

    iget-object v0, p0, LM80;->i:Ljava/lang/String;

    iget-boolean v1, p0, LM80;->j:Z

    invoke-virtual {p1, v0, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->b(Ljava/lang/String;Z)V

    .line 7
    iget-object p1, p0, LM80;->g:Landroid/content/Context;

    const-string v0, "download"

    .line 8
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/DownloadManager;

    .line 9
    iget-wide v0, p0, LM80;->b:J

    invoke-virtual {p1, v0, v1}, Landroid/app/DownloadManager;->getMimeTypeForDownloadedFile(J)Ljava/lang/String;

    move-result-object p1

    .line 10
    iget v0, p0, LM80;->h:I

    invoke-static {v0, p1}, LT80;->a(ILjava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method
