.class Lcom/oculus/ocms/library/provider/LibraryDownloadListener$1;
.super Ljava/lang/Object;
.source "LibraryDownloadListener.java"

# interfaces
.implements Lcom/oculus/downloader/progress/DownloadProgressChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/ocms/library/provider/LibraryDownloadListener;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/ocms/library/provider/LibraryDownloadListener;

.field final synthetic val$eventBus:Lcom/oculus/appmanager/installer/events/InstallerEventBus;


# direct methods
.method constructor <init>(Lcom/oculus/ocms/library/provider/LibraryDownloadListener;Lcom/oculus/appmanager/installer/events/InstallerEventBus;)V
    .locals 0

    .prologue
    .line 27
    iput-object p1, p0, Lcom/oculus/ocms/library/provider/LibraryDownloadListener$1;->this$0:Lcom/oculus/ocms/library/provider/LibraryDownloadListener;

    iput-object p2, p0, Lcom/oculus/ocms/library/provider/LibraryDownloadListener$1;->val$eventBus:Lcom/oculus/appmanager/installer/events/InstallerEventBus;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/oculus/downloader/progress/model/DownloadProgressUnit;)V
    .locals 4

    .prologue
    .line 31
    new-instance v0, Lcom/oculus/appmanager/installer/events/DownloadProgressResponse;

    invoke-direct {v0}, Lcom/oculus/appmanager/installer/events/DownloadProgressResponse;-><init>()V

    .line 32
    invoke-virtual {p1}, Lcom/oculus/downloader/progress/model/DownloadProgressUnit;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/oculus/appmanager/installer/events/DownloadProgressResponse;->mPackageName:Ljava/lang/String;

    .line 33
    invoke-virtual {p1}, Lcom/oculus/downloader/progress/model/DownloadProgressUnit;->getCurrentBytes()J

    move-result-wide v2

    iput-wide v2, v0, Lcom/oculus/appmanager/installer/events/DownloadProgressResponse;->downloadingBytes:J

    .line 34
    iget-object v1, p0, Lcom/oculus/ocms/library/provider/LibraryDownloadListener$1;->val$eventBus:Lcom/oculus/appmanager/installer/events/InstallerEventBus;

    invoke-virtual {v1, v0}, Lcom/oculus/appmanager/installer/events/InstallerEventBus;->post(Ljava/lang/Object;)V

    .line 35
    return-void
.end method
