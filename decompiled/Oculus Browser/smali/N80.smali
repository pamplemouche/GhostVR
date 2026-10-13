.class public LN80;
.super LkW;
.source "PG"


# instance fields
.field public final synthetic a:Lorg/chromium/chrome/browser/download/DownloadItem;

.field public final synthetic b:LA80;

.field public final synthetic c:Lorg/chromium/chrome/browser/download/DownloadManagerService;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/download/DownloadManagerService;Lorg/chromium/chrome/browser/download/DownloadItem;LA80;)V
    .locals 0

    .line 1
    iput-object p1, p0, LN80;->c:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    iput-object p2, p0, LN80;->a:Lorg/chromium/chrome/browser/download/DownloadItem;

    iput-object p3, p0, LN80;->b:LA80;

    invoke-direct {p0}, LkW;-><init>()V

    return-void
.end method


# virtual methods
.method public doInBackground()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, LN80;->a:Lorg/chromium/chrome/browser/download/DownloadItem;

    .line 2
    iget-object v1, v0, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 3
    iget-object v1, v1, Lorg/chromium/chrome/browser/download/DownloadInfo;->c:Ljava/lang/String;

    .line 4
    invoke-static {v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->f(Ljava/lang/String;)Z

    move-result v1

    .line 5
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Lorg/chromium/chrome/browser/download/DownloadItem;Z)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public onPostExecute(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    .line 2
    iget-object v0, p0, LN80;->b:LA80;

    iget-object v0, v0, LA80;->c:Ljava/lang/String;

    iget-object v1, p0, LN80;->a:Lorg/chromium/chrome/browser/download/DownloadItem;

    .line 3
    iget-object v1, v1, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 4
    iget-boolean v1, v1, Lorg/chromium/chrome/browser/download/DownloadInfo;->m:Z

    .line 5
    invoke-static {v0, v1}, Lorg/chromium/chrome/browser/download/DownloadUtils;->shouldAutoOpenDownload(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 7
    iget-object p1, p0, LN80;->c:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    iget-object v0, p0, LN80;->a:Lorg/chromium/chrome/browser/download/DownloadItem;

    invoke-static {p1, v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Lorg/chromium/chrome/browser/download/DownloadManagerService;Lorg/chromium/chrome/browser/download/DownloadItem;)V

    goto :goto_0

    .line 8
    :cond_0
    iget-object p1, p0, LN80;->c:Lorg/chromium/chrome/browser/download/DownloadManagerService;

    iget-object v0, p0, LN80;->a:Lorg/chromium/chrome/browser/download/DownloadItem;

    .line 9
    iget-object v0, v0, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 10
    iget-boolean v0, v0, Lorg/chromium/chrome/browser/download/DownloadInfo;->t:Z

    .line 11
    invoke-virtual {p1, v0}, Lorg/chromium/chrome/browser/download/DownloadManagerService;->a(Z)Lu80;

    move-result-object p1

    iget-object v0, p0, LN80;->a:Lorg/chromium/chrome/browser/download/DownloadItem;

    .line 12
    iget-object v0, v0, Lorg/chromium/chrome/browser/download/DownloadItem;->c:Lorg/chromium/chrome/browser/download/DownloadInfo;

    .line 13
    invoke-static {v0}, Lorg/chromium/chrome/browser/download/DownloadInfo;->a(Lorg/chromium/chrome/browser/download/DownloadInfo;)Lorg/chromium/components/offline_items_collection/OfflineItem;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lu80;->a(Lorg/chromium/components/offline_items_collection/OfflineItem;Lorg/chromium/components/offline_items_collection/UpdateDelta;)V

    :goto_0
    return-void
.end method
