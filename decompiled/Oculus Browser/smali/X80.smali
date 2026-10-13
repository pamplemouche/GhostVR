.class public abstract LX80;
.super Ljava/lang/Object;
.source "PG"


# static fields
.field public static a:Ljava/util/List;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-string v0, "org.chromium.chrome.browser.download.DOWNLOAD_PAUSE"

    const-string v1, "org.chromium.chrome.browser.download.DOWNLOAD_RESUME"

    const-string v2, "android.intent.action.DOWNLOAD_NOTIFICATION_CLICKED"

    const-string v3, "org.chromium.chrome.browser.download.DOWNLOAD_OPEN"

    const-string v4, "org.chromium.chrome.browser.download.DOWNLOAD_CANCEL"

    .line 1
    filled-new-array {v2, v3, v4, v0, v1}, [Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, LX80;->a:Ljava/util/List;

    return-void
.end method

.method public static a(I)V
    .locals 2

    const-string v0, "MobileDownload.Background"

    const/4 v1, 0x5

    .line 11
    invoke-static {v0, p0, v1}, LfV;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public static a(II)V
    .locals 2

    const-string v0, "MobileDownload.Background.FirstDownload"

    const/4 v1, 0x5

    .line 12
    invoke-static {v0, p0, v1}, LfV;->a(Ljava/lang/String;II)V

    const/4 v0, 0x4

    if-eq p0, v0, :cond_0

    if-eqz p0, :cond_0

    const-string p0, "MobileDownload.FirstBackground.InterruptionCount"

    .line 13
    invoke-static {p0, p1}, LfV;->c(Ljava/lang/String;I)V

    :cond_0
    return-void
.end method

.method public static a(IZ)V
    .locals 1

    .line 7
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->h:Lorg/chromium/base/library_loader/LibraryLoader;

    .line 8
    iget-boolean v0, v0, Lorg/chromium/base/library_loader/LibraryLoader;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x5

    if-eqz p1, :cond_1

    const-string p1, "Android.DownloadManager.ServiceStopped.DownloadForeground"

    .line 9
    invoke-static {p1, p0, v0}, LfV;->a(Ljava/lang/String;II)V

    goto :goto_0

    :cond_1
    const-string p1, "Android.DownloadManager.ServiceStopped.DownloadNotification"

    .line 10
    invoke-static {p1, p0, v0}, LfV;->a(Ljava/lang/String;II)V

    :goto_0
    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .locals 2

    .line 1
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->h:Lorg/chromium/base/library_loader/LibraryLoader;

    .line 2
    iget-boolean v0, v0, Lorg/chromium/base/library_loader/LibraryLoader;->a:Z

    if-nez v0, :cond_0

    return-void

    .line 3
    :cond_0
    sget-object v0, LX80;->a:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p0

    const/4 v0, -0x1

    if-ne p0, v0, :cond_1

    return-void

    .line 4
    :cond_1
    sget-object v0, LX80;->a:Ljava/util/List;

    .line 5
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const-string v1, "Android.DownloadManager.NotificationInteraction"

    .line 6
    invoke-static {v1, p0, v0}, LfV;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public static b(I)V
    .locals 2

    const-string v0, "MobileDownload.DownloadResumption"

    const/4 v1, 0x7

    .line 1
    invoke-static {v0, p0, v1}, LfV;->a(Ljava/lang/String;II)V

    return-void
.end method

.method public static c(I)V
    .locals 2

    .line 1
    sget-object v0, Lorg/chromium/base/library_loader/LibraryLoader;->h:Lorg/chromium/base/library_loader/LibraryLoader;

    .line 2
    iget-boolean v0, v0, Lorg/chromium/base/library_loader/LibraryLoader;->a:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    const-string v0, "Android.DownloadManager.ForegroundServiceLifecycle"

    const/4 v1, 0x3

    .line 3
    invoke-static {v0, p0, v1}, LfV;->a(Ljava/lang/String;II)V

    return-void
.end method
