.class public Lcom/oculus/horizon/cloudstorage2/callable/UploadConflictDetector;
.super Lcom/oculus/horizon/cloudstorage2/callable/SyncWork;
.source "UploadConflictDetector.java"


# annotations
.annotation runtime Lcom/facebook/ultralight/Dependencies;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/cloudstorage2/callable/SyncWork",
        "<",
        "Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;",
        ">;"
    }
.end annotation


# instance fields
.field private final mApp:Lcom/oculus/library/model/App;

.field private final mCloudStorageManager:Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private final mRemote:Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;


# direct methods
.method public constructor <init>(Lcom/facebook/inject/InjectorLike;Lcom/oculus/library/model/App;Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;Lcom/oculus/horizon/cloudstorage2/Reporter;)V
    .locals 1
    .param p2    # Lcom/oculus/library/model/App;
        .annotation runtime Lcom/facebook/inject/Assisted;
        .end annotation
    .end param
    .param p3    # Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;
        .annotation runtime Lcom/facebook/inject/Assisted;
        .end annotation
    .end param
    .param p4    # Lcom/oculus/horizon/cloudstorage2/Reporter;
        .annotation runtime Lcom/facebook/inject/Assisted;
        .end annotation
    .end param
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation

    .prologue
    .line 34
    invoke-direct {p0, p4}, Lcom/oculus/horizon/cloudstorage2/callable/SyncWork;-><init>(Lcom/oculus/horizon/cloudstorage2/Reporter;)V

    .line 32
    invoke-static {p1}, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;->$ul_$xXXcom_oculus_horizon_cloudstorage2_CloudStorageManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/cloudstorage2/callable/UploadConflictDetector;->mCloudStorageManager:Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;

    .line 36
    iput-object p2, p0, Lcom/oculus/horizon/cloudstorage2/callable/UploadConflictDetector;->mApp:Lcom/oculus/library/model/App;

    .line 37
    iput-object p3, p0, Lcom/oculus/horizon/cloudstorage2/callable/UploadConflictDetector;->mRemote:Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;

    .line 38
    return-void
.end method


# virtual methods
.method public call()Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 42
    new-instance v0, Lcom/google/gson/Gson;

    invoke-direct {v0}, Lcom/google/gson/Gson;-><init>()V

    .line 44
    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/callable/UploadConflictDetector;->mRemote:Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;

    invoke-static {v1}, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;->fromGraphQL(Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;)Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;

    move-result-object v1

    .line 46
    iget-object v2, p0, Lcom/oculus/horizon/cloudstorage2/callable/UploadConflictDetector;->mCloudStorageManager:Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;

    iget-object v3, p0, Lcom/oculus/horizon/cloudstorage2/callable/UploadConflictDetector;->mApp:Lcom/oculus/library/model/App;

    invoke-virtual {v2, v3}, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;->readLocalMetadata(Lcom/oculus/library/model/App;)Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;

    move-result-object v2

    .line 50
    invoke-virtual {v0, v1}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 49
    invoke-static {v3, v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeGetCloudStorage2UploadConflictFiles(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 52
    array-length v2, v0

    if-eqz v2, :cond_0

    .line 53
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Upload conflicts detected: %s"

    .line 55
    invoke-static {v0}, Ljava/util/Arrays;->toString([Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 54
    invoke-static {v2, v0}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 58
    :cond_0
    return-object v1
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 20
    invoke-virtual {p0}, Lcom/oculus/horizon/cloudstorage2/callable/UploadConflictDetector;->call()Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;

    move-result-object v0

    return-object v0
.end method
