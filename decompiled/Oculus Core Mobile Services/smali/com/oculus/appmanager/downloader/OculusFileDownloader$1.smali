.class Lcom/oculus/appmanager/downloader/OculusFileDownloader$1;
.super Ljava/lang/Object;
.source "OculusFileDownloader.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/appmanager/downloader/OculusFileDownloader;->remove(J)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/appmanager/downloader/OculusFileDownloader;

.field final synthetic val$downloadId:J


# direct methods
.method constructor <init>(Lcom/oculus/appmanager/downloader/OculusFileDownloader;J)V
    .locals 0

    .prologue
    .line 224
    iput-object p1, p0, Lcom/oculus/appmanager/downloader/OculusFileDownloader$1;->this$0:Lcom/oculus/appmanager/downloader/OculusFileDownloader;

    iput-wide p2, p0, Lcom/oculus/appmanager/downloader/OculusFileDownloader$1;->val$downloadId:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 227
    iget-object v0, p0, Lcom/oculus/appmanager/downloader/OculusFileDownloader$1;->this$0:Lcom/oculus/appmanager/downloader/OculusFileDownloader;

    invoke-static {v0}, Lcom/oculus/appmanager/downloader/OculusFileDownloader;->access$000(Lcom/oculus/appmanager/downloader/OculusFileDownloader;)Landroid/app/DownloadManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [J

    const/4 v2, 0x0

    iget-wide v4, p0, Lcom/oculus/appmanager/downloader/OculusFileDownloader$1;->val$downloadId:J

    aput-wide v4, v1, v2

    invoke-virtual {v0, v1}, Landroid/app/DownloadManager;->remove([J)I

    .line 228
    return-void
.end method
