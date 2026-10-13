.class public Lcom/oculus/horizon/cloudstorage2/callable/GetFileDownloadRequests;
.super Lcom/oculus/horizon/cloudstorage2/callable/SyncWork;
.source "GetFileDownloadRequests.java"


# annotations
.annotation runtime Lcom/facebook/ultralight/Dependencies;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/cloudstorage2/callable/SyncWork",
        "<[",
        "Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$FileRequest;",
        ">;"
    }
.end annotation


# instance fields
.field private final mActionMap:Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ActionMap;

.field private final mFileRequests:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$FileRequest;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ActionMap;Lcom/oculus/horizon/cloudstorage2/Reporter;)V
    .locals 11
    .param p1    # Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;
        .annotation runtime Lcom/facebook/inject/Assisted;
        .end annotation
    .end param
    .param p2    # Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ActionMap;
        .annotation runtime Lcom/facebook/inject/Assisted;
        .end annotation
    .end param
    .param p3    # Lcom/oculus/horizon/cloudstorage2/Reporter;
        .annotation runtime Lcom/facebook/inject/Assisted;
        .end annotation
    .end param
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 26
    invoke-direct {p0, p3}, Lcom/oculus/horizon/cloudstorage2/callable/SyncWork;-><init>(Lcom/oculus/horizon/cloudstorage2/Reporter;)V

    .line 28
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/cloudstorage2/callable/GetFileDownloadRequests;->mFileRequests:Ljava/util/Map;

    .line 29
    invoke-virtual {p1}, Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;->getUserCloudFiles()[Lcom/oculus/horizon/api/cloudstorage2/UserCloudFile;

    move-result-object v2

    .line 30
    if-eqz v2, :cond_0

    .line 31
    array-length v3, v2

    move v0, v1

    :goto_0
    if-ge v0, v3, :cond_0

    aget-object v4, v2, v0

    .line 32
    iget-object v5, p0, Lcom/oculus/horizon/cloudstorage2/callable/GetFileDownloadRequests;->mFileRequests:Ljava/util/Map;

    iget-object v6, v4, Lcom/oculus/horizon/api/cloudstorage2/UserCloudFile;->relative_path:Ljava/lang/String;

    new-instance v7, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$FileRequest;

    iget-object v8, v4, Lcom/oculus/horizon/api/cloudstorage2/UserCloudFile;->id:Ljava/lang/String;

    iget-object v9, v4, Lcom/oculus/horizon/api/cloudstorage2/UserCloudFile;->cloud_file_uri:Ljava/lang/String;

    iget-object v10, v4, Lcom/oculus/horizon/api/cloudstorage2/UserCloudFile;->relative_path:Ljava/lang/String;

    invoke-direct {v7, v8, v9, v10}, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$FileRequest;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 35
    const-string v5, "Found file: %s"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v4, v4, Lcom/oculus/horizon/api/cloudstorage2/UserCloudFile;->relative_path:Ljava/lang/String;

    aput-object v4, v6, v1

    invoke-virtual {p0, v5, v6}, Lcom/oculus/horizon/cloudstorage2/callable/GetFileDownloadRequests;->report(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 31
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 39
    :cond_0
    iput-object p2, p0, Lcom/oculus/horizon/cloudstorage2/callable/GetFileDownloadRequests;->mActionMap:Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ActionMap;

    .line 40
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
    .line 16
    invoke-virtual {p0}, Lcom/oculus/horizon/cloudstorage2/callable/GetFileDownloadRequests;->call()[Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$FileRequest;

    move-result-object v0

    return-object v0
.end method

.method public call()[Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$FileRequest;
    .locals 8

    .prologue
    const/4 v3, 0x0

    .line 48
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/callable/GetFileDownloadRequests;->mActionMap:Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ActionMap;

    .line 49
    invoke-virtual {v0}, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ActionMap;->sizeAddedAndUpdatedFileActions()I

    move-result v0

    new-array v5, v0, [Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$FileRequest;

    .line 50
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/callable/GetFileDownloadRequests;->mActionMap:Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ActionMap;

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;->ADD:Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ActionMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 51
    if-eqz v0, :cond_2

    .line 52
    array-length v6, v0

    move v4, v3

    move v2, v3

    :goto_0
    if-ge v4, v6, :cond_0

    aget-object v1, v0, v4

    .line 53
    iget-object v7, p0, Lcom/oculus/horizon/cloudstorage2/callable/GetFileDownloadRequests;->mFileRequests:Ljava/util/Map;

    invoke-interface {v7, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$FileRequest;

    aput-object v1, v5, v2

    .line 54
    add-int/lit8 v2, v2, 0x1

    .line 52
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_0

    :cond_0
    move v1, v2

    .line 57
    :goto_1
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/callable/GetFileDownloadRequests;->mActionMap:Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ActionMap;

    sget-object v2, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;->UPDATE:Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ActionMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 58
    if-eqz v0, :cond_1

    .line 59
    array-length v4, v0

    move v2, v1

    :goto_2
    if-ge v3, v4, :cond_1

    aget-object v1, v0, v3

    .line 60
    iget-object v6, p0, Lcom/oculus/horizon/cloudstorage2/callable/GetFileDownloadRequests;->mFileRequests:Ljava/util/Map;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$FileRequest;

    aput-object v1, v5, v2

    .line 61
    add-int/lit8 v1, v2, 0x1

    .line 59
    add-int/lit8 v3, v3, 0x1

    move v2, v1

    goto :goto_2

    .line 65
    :cond_1
    return-object v5

    :cond_2
    move v1, v3

    goto :goto_1
.end method
