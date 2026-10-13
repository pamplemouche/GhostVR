.class Lcom/oculus/cache/library/LibraryCacheDownloaderListener$1;
.super Ljava/lang/Object;
.source "LibraryCacheDownloaderListener.java"

# interfaces
.implements Lcom/oculus/downloader/progress/DownloadProgressChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/cache/library/LibraryCacheDownloaderListener;->init()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/cache/library/LibraryCacheDownloaderListener;

.field final synthetic val$libraryMemoryCacheManager:Lcom/oculus/cache/library/LibraryMemoryCacheManager;


# direct methods
.method constructor <init>(Lcom/oculus/cache/library/LibraryCacheDownloaderListener;Lcom/oculus/cache/library/LibraryMemoryCacheManager;)V
    .locals 0

    .prologue
    .line 26
    iput-object p1, p0, Lcom/oculus/cache/library/LibraryCacheDownloaderListener$1;->this$0:Lcom/oculus/cache/library/LibraryCacheDownloaderListener;

    iput-object p2, p0, Lcom/oculus/cache/library/LibraryCacheDownloaderListener$1;->val$libraryMemoryCacheManager:Lcom/oculus/cache/library/LibraryMemoryCacheManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/oculus/downloader/progress/model/DownloadProgressUnit;)V
    .locals 2

    .prologue
    .line 29
    invoke-virtual {p1}, Lcom/oculus/downloader/progress/model/DownloadProgressUnit;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 30
    iget-object v1, p0, Lcom/oculus/cache/library/LibraryCacheDownloaderListener$1;->val$libraryMemoryCacheManager:Lcom/oculus/cache/library/LibraryMemoryCacheManager;

    invoke-virtual {v1, v0}, Lcom/oculus/cache/library/LibraryMemoryCacheManager;->getEntry(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v0

    .line 31
    if-eqz v0, :cond_0

    .line 33
    iget-object v1, p0, Lcom/oculus/cache/library/LibraryCacheDownloaderListener$1;->val$libraryMemoryCacheManager:Lcom/oculus/cache/library/LibraryMemoryCacheManager;

    invoke-virtual {v1, v0}, Lcom/oculus/cache/library/LibraryMemoryCacheManager;->insertOrUpdateEntry(Lcom/oculus/library/model/App;)V

    .line 35
    :cond_0
    return-void
.end method
