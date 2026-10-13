.class Lcom/oculus/appmanager/downloader/progress/OculusDownloadProgressTracker$DownloadsObserver;
.super Landroid/database/ContentObserver;
.source "OculusDownloadProgressTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/appmanager/downloader/progress/OculusDownloadProgressTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DownloadsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/appmanager/downloader/progress/OculusDownloadProgressTracker;


# direct methods
.method public constructor <init>(Lcom/oculus/appmanager/downloader/progress/OculusDownloadProgressTracker;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 417
    iput-object p1, p0, Lcom/oculus/appmanager/downloader/progress/OculusDownloadProgressTracker$DownloadsObserver;->this$0:Lcom/oculus/appmanager/downloader/progress/OculusDownloadProgressTracker;

    .line 418
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 419
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .prologue
    .line 423
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/oculus/appmanager/downloader/progress/OculusDownloadProgressTracker$DownloadsObserver;->onChange(ZLandroid/net/Uri;)V

    .line 424
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 4

    .prologue
    .line 428
    invoke-static {p2}, Lcom/oculus/appmanager/downloader/progress/OculusDownloadProgressTracker;->access$000(Landroid/net/Uri;)J

    move-result-wide v0

    .line 429
    const-wide/16 v2, -0x1

    cmp-long v2, v0, v2

    if-eqz v2, :cond_0

    .line 430
    iget-object v2, p0, Lcom/oculus/appmanager/downloader/progress/OculusDownloadProgressTracker$DownloadsObserver;->this$0:Lcom/oculus/appmanager/downloader/progress/OculusDownloadProgressTracker;

    invoke-static {v2, v0, v1}, Lcom/oculus/appmanager/downloader/progress/OculusDownloadProgressTracker;->access$100(Lcom/oculus/appmanager/downloader/progress/OculusDownloadProgressTracker;J)V

    .line 432
    :cond_0
    return-void
.end method
