.class public Lcom/oculus/horizon/cloudstorage2/callable/UpdateAndRemoveFiles;
.super Lcom/oculus/horizon/cloudstorage2/callable/SyncWork;
.source "UpdateAndRemoveFiles.java"


# annotations
.annotation runtime Lcom/facebook/ultralight/Dependencies;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/cloudstorage2/callable/SyncWork",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final mApp:Lcom/oculus/library/model/App;

.field private final mCloudStorageManager:Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private final mMoveFiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mRemoveFiles:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/facebook/inject/InjectorLike;Lcom/oculus/library/model/App;Ljava/util/Map;[Ljava/lang/String;Lcom/oculus/horizon/cloudstorage2/Reporter;)V
    .locals 1
    .param p2    # Lcom/oculus/library/model/App;
        .annotation runtime Lcom/facebook/inject/Assisted;
        .end annotation
    .end param
    .param p3    # Ljava/util/Map;
        .annotation runtime Lcom/facebook/inject/Assisted;
        .end annotation
    .end param
    .param p4    # [Ljava/lang/String;
        .annotation runtime Lcom/facebook/inject/Assisted;
        .end annotation
    .end param
    .param p5    # Lcom/oculus/horizon/cloudstorage2/Reporter;
        .annotation runtime Lcom/facebook/inject/Assisted;
        .end annotation
    .end param
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/inject/InjectorLike;",
            "Lcom/oculus/library/model/App;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;[",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/cloudstorage2/Reporter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 32
    invoke-direct {p0, p5}, Lcom/oculus/horizon/cloudstorage2/callable/SyncWork;-><init>(Lcom/oculus/horizon/cloudstorage2/Reporter;)V

    .line 27
    invoke-static {p1}, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;->$ul_$xXXcom_oculus_horizon_cloudstorage2_CloudStorageManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/cloudstorage2/callable/UpdateAndRemoveFiles;->mCloudStorageManager:Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;

    .line 34
    iput-object p2, p0, Lcom/oculus/horizon/cloudstorage2/callable/UpdateAndRemoveFiles;->mApp:Lcom/oculus/library/model/App;

    .line 35
    iput-object p3, p0, Lcom/oculus/horizon/cloudstorage2/callable/UpdateAndRemoveFiles;->mMoveFiles:Ljava/util/Map;

    .line 36
    iput-object p4, p0, Lcom/oculus/horizon/cloudstorage2/callable/UpdateAndRemoveFiles;->mRemoveFiles:[Ljava/lang/String;

    .line 37
    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 17
    invoke-virtual {p0}, Lcom/oculus/horizon/cloudstorage2/callable/UpdateAndRemoveFiles;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 42
    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/callable/UpdateAndRemoveFiles;->mCloudStorageManager:Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;

    iget-object v2, p0, Lcom/oculus/horizon/cloudstorage2/callable/UpdateAndRemoveFiles;->mApp:Lcom/oculus/library/model/App;

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;->getRootSyncDir(Lcom/oculus/library/model/App;)Ljava/lang/String;

    move-result-object v1

    .line 44
    iget-object v2, p0, Lcom/oculus/horizon/cloudstorage2/callable/UpdateAndRemoveFiles;->mCloudStorageManager:Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;

    invoke-virtual {v2, v1}, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;->makeRootSyncDirIfNeeded(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 45
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Failed to create root sync directory [%s]"

    .line 46
    invoke-static {v2, v1}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 50
    :cond_0
    const-string v2, "Adding/Updating %d files & removing %d files"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/oculus/horizon/cloudstorage2/callable/UpdateAndRemoveFiles;->mMoveFiles:Ljava/util/Map;

    .line 52
    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/oculus/horizon/cloudstorage2/callable/UpdateAndRemoveFiles;->mRemoveFiles:[Ljava/lang/String;

    if-eqz v5, :cond_1

    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/callable/UpdateAndRemoveFiles;->mRemoveFiles:[Ljava/lang/String;

    array-length v0, v0

    :cond_1
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    aput-object v0, v3, v4

    .line 50
    invoke-virtual {p0, v2, v3}, Lcom/oculus/horizon/cloudstorage2/callable/UpdateAndRemoveFiles;->report(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 54
    invoke-virtual {p0, v1}, Lcom/oculus/horizon/cloudstorage2/callable/UpdateAndRemoveFiles;->updateFiles(Ljava/lang/String;)Ljava/lang/Void;

    .line 55
    invoke-virtual {p0, v1}, Lcom/oculus/horizon/cloudstorage2/callable/UpdateAndRemoveFiles;->removeFiles(Ljava/lang/String;)Ljava/lang/Void;

    .line 57
    const/4 v0, 0x0

    return-object v0
.end method

.method public removeFiles(Ljava/lang/String;)Ljava/lang/Void;
    .locals 7

    .prologue
    const/4 v1, 0x0

    .line 87
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/callable/UpdateAndRemoveFiles;->mRemoveFiles:[Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 88
    iget-object v2, p0, Lcom/oculus/horizon/cloudstorage2/callable/UpdateAndRemoveFiles;->mRemoveFiles:[Ljava/lang/String;

    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 89
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, p1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 91
    const-string v4, "Removing %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    aput-object v5, v6, v1

    invoke-virtual {p0, v4, v6}, Lcom/oculus/horizon/cloudstorage2/callable/UpdateAndRemoveFiles;->report(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 94
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 88
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 98
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public updateFiles(Ljava/lang/String;)Ljava/lang/Void;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 62
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/callable/UpdateAndRemoveFiles;->mMoveFiles:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 63
    new-instance v3, Ljava/io/File;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v3, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 64
    new-instance v1, Ljava/io/File;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v1, p1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 65
    invoke-virtual {v1}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    .line 67
    const-string v4, "Updating %s with %s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v1, v5, v6

    const/4 v6, 0x1

    aput-object v3, v5, v6

    invoke-virtual {p0, v4, v5}, Lcom/oculus/horizon/cloudstorage2/callable/UpdateAndRemoveFiles;->report(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 69
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_1

    .line 70
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Failed to create destination directory for file %s"

    .line 71
    invoke-static {v2, v1}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    invoke-virtual {v3, v1}, Ljava/io/File;->renameTo(Ljava/io/File;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 76
    new-instance v0, Ljava/io/IOException;

    const-string v2, "Failed to move downloaded file from %s to %s"

    .line 77
    invoke-static {v2, v3, v1}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_2
    const/4 v0, 0x0

    return-object v0
.end method
