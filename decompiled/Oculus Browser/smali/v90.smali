.class public Lv90;
.super LkW;
.source "PG"


# instance fields
.field public final synthetic a:Lorg/chromium/chrome/browser/download/DownloadItem;

.field public final synthetic b:LA80;

.field public final synthetic c:J

.field public final synthetic d:Ljava/lang/String;

.field public final synthetic e:LB90;


# direct methods
.method public constructor <init>(LB90;Lorg/chromium/chrome/browser/download/DownloadItem;LA80;JLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lv90;->e:LB90;

    iput-object p2, p0, Lv90;->a:Lorg/chromium/chrome/browser/download/DownloadItem;

    iput-object p3, p0, Lv90;->b:LA80;

    iput-wide p4, p0, Lv90;->c:J

    iput-object p6, p0, Lv90;->d:Ljava/lang/String;

    invoke-direct {p0}, LkW;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lv90;->a:Lorg/chromium/chrome/browser/download/DownloadItem;

    iget-object v1, p0, Lv90;->b:LA80;

    iget-object v1, v1, LA80;->c:Ljava/lang/String;

    .line 2
    invoke-static {v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->f(Ljava/lang/String;)Z

    move-result v1

    .line 3
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Lorg/chromium/chrome/browser/download/DownloadItem;Z)Z

    move-result v0

    .line 4
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 9

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    iget-object p1, p0, Lv90;->b:LA80;

    iget v0, p1, LA80;->a:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    .line 3
    iget-object p1, p0, Lv90;->e:LB90;

    iget-object v0, p0, Lv90;->a:Lorg/chromium/chrome/browser/download/DownloadItem;

    .line 4
    iget-object v4, v0, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 5
    iget-wide v0, p0, Lv90;->c:J

    iget-object v2, p0, Lv90;->d:Ljava/lang/String;

    .line 6
    iget-object v3, p1, LB90;->d:Landroid/util/LongSparseArray;

    invoke-virtual {v3, v0, v1}, Landroid/util/LongSparseArray;->get(J)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lx90;

    if-nez v3, :cond_0

    .line 7
    new-instance v3, Lx90;

    invoke-direct {v3}, Lx90;-><init>()V

    const-string v5, "installNotifyURI"

    .line 8
    invoke-virtual {v3, v5, v2}, Lx90;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    move-object v8, v3

    const-string v7, "900 Success \n\r"

    move-object v2, p1

    move-object v3, v8

    move-wide v5, v0

    .line 9
    invoke-virtual/range {v2 .. v7}, LB90;->a(Lx90;Lorg/chromium/chrome/browser/download/DownloadInfo;JLjava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_1

    .line 10
    invoke-virtual {p1, v8}, LB90;->a(Lx90;)V

    .line 11
    :cond_1
    iget-object p1, p1, LB90;->d:Landroid/util/LongSparseArray;

    invoke-virtual {p1, v0, v1}, Landroid/util/LongSparseArray;->remove(J)V

    .line 12
    iget-object p1, p0, Lv90;->e:LB90;

    iget-wide v0, p0, Lv90;->c:J

    invoke-static {p1, v0, v1}, LB90;->a(LB90;J)V

    .line 13
    iget-object p1, p0, Lv90;->e:LB90;

    iget-object v0, p0, Lv90;->a:Lorg/chromium/chrome/browser/download/DownloadItem;

    iget-object v1, p0, Lv90;->b:LA80;

    iget v1, v1, LA80;->a:I

    invoke-static {p1, v0, v1}, LB90;->a(LB90;Lorg/chromium/chrome/browser/download/DownloadItem;I)V

    goto :goto_0

    :cond_2
    const/4 v1, 0x2

    if-ne v0, v1, :cond_3

    .line 14
    iget-object v2, p0, Lv90;->e:LB90;

    iget-object v0, p0, Lv90;->a:Lorg/chromium/chrome/browser/download/DownloadItem;

    .line 15
    iget-object v3, v0, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 16
    iget-wide v4, p0, Lv90;->c:J

    iget v6, p1, LA80;->h:I

    iget-object v7, p0, Lv90;->d:Ljava/lang/String;

    .line 17
    invoke-virtual/range {v2 .. v7}, LB90;->a(Lorg/chromium/chrome/browser/download/DownloadInfo;JILjava/lang/String;)V

    .line 18
    iget-object p1, p0, Lv90;->e:LB90;

    iget-wide v0, p0, Lv90;->c:J

    invoke-static {p1, v0, v1}, LB90;->a(LB90;J)V

    .line 19
    iget-object p1, p0, Lv90;->e:LB90;

    iget-object v0, p0, Lv90;->a:Lorg/chromium/chrome/browser/download/DownloadItem;

    iget-object v1, p0, Lv90;->b:LA80;

    iget v1, v1, LA80;->a:I

    invoke-static {p1, v0, v1}, LB90;->a(LB90;Lorg/chromium/chrome/browser/download/DownloadItem;I)V

    :cond_3
    :goto_0
    return-void
.end method
