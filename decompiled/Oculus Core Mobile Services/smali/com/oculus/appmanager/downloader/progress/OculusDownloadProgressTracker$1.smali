.class Lcom/oculus/appmanager/downloader/progress/OculusDownloadProgressTracker$1;
.super Ljava/lang/Object;
.source "OculusDownloadProgressTracker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/appmanager/downloader/progress/OculusDownloadProgressTracker;->startTrackingChangesIfNeeded()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/appmanager/downloader/progress/OculusDownloadProgressTracker;


# direct methods
.method constructor <init>(Lcom/oculus/appmanager/downloader/progress/OculusDownloadProgressTracker;)V
    .locals 0

    .prologue
    .line 149
    iput-object p1, p0, Lcom/oculus/appmanager/downloader/progress/OculusDownloadProgressTracker$1;->this$0:Lcom/oculus/appmanager/downloader/progress/OculusDownloadProgressTracker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/oculus/appmanager/downloader/progress/OculusDownloadProgressTracker$1;->this$0:Lcom/oculus/appmanager/downloader/progress/OculusDownloadProgressTracker;

    invoke-virtual {v0}, Lcom/oculus/appmanager/downloader/progress/OculusDownloadProgressTracker;->updateDownloads()V

    .line 154
    return-void
.end method
