.class public Lcom/oculus/horizon/cloudstorage2/callable/UploadVerifier;
.super Lcom/oculus/horizon/cloudstorage2/callable/SyncWork;
.source "UploadVerifier.java"


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

.field private mPatterns:[Ljava/lang/String;

.field private final mRemote:Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;


# direct methods
.method public constructor <init>(Lcom/facebook/inject/InjectorLike;Lcom/oculus/library/model/App;Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;[Ljava/lang/String;Lcom/oculus/horizon/cloudstorage2/Reporter;)V
    .locals 1
    .param p2    # Lcom/oculus/library/model/App;
        .annotation runtime Lcom/facebook/inject/Assisted;
        .end annotation
    .end param
    .param p3    # Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;
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

    .prologue
    .line 38
    invoke-direct {p0, p5}, Lcom/oculus/horizon/cloudstorage2/callable/SyncWork;-><init>(Lcom/oculus/horizon/cloudstorage2/Reporter;)V

    .line 33
    invoke-static {p1}, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;->$ul_$xXXcom_oculus_horizon_cloudstorage2_CloudStorageManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/cloudstorage2/callable/UploadVerifier;->mCloudStorageManager:Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;

    .line 40
    iput-object p2, p0, Lcom/oculus/horizon/cloudstorage2/callable/UploadVerifier;->mApp:Lcom/oculus/library/model/App;

    .line 41
    iput-object p3, p0, Lcom/oculus/horizon/cloudstorage2/callable/UploadVerifier;->mRemote:Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;

    .line 42
    iput-object p4, p0, Lcom/oculus/horizon/cloudstorage2/callable/UploadVerifier;->mPatterns:[Ljava/lang/String;

    .line 43
    return-void
.end method


# virtual methods
.method public call()Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 47
    new-instance v1, Lcom/google/gson/Gson;

    invoke-direct {v1}, Lcom/google/gson/Gson;-><init>()V

    .line 49
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/callable/UploadVerifier;->mRemote:Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;->fromGraphQL(Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;)Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;

    move-result-object v2

    .line 51
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/callable/UploadVerifier;->mCloudStorageManager:Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;

    iget-object v4, p0, Lcom/oculus/horizon/cloudstorage2/callable/UploadVerifier;->mApp:Lcom/oculus/library/model/App;

    iget-object v5, p0, Lcom/oculus/horizon/cloudstorage2/callable/UploadVerifier;->mPatterns:[Ljava/lang/String;

    invoke-virtual {v0, v4, v5}, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;->getLocalStateJson(Lcom/oculus/library/model/App;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 52
    const-class v4, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;

    invoke-virtual {v1, v0, v4}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;

    .line 56
    invoke-virtual {v1, v2}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 55
    invoke-static {v4, v1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeGetCloudStorage2UploadConflictFiles(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    .line 58
    array-length v1, v4

    if-eqz v1, :cond_3

    .line 59
    invoke-virtual {v2}, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;->toMap()Ljava/util/Map;

    move-result-object v5

    .line 60
    invoke-virtual {v0}, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;->toMap()Ljava/util/Map;

    move-result-object v6

    .line 62
    array-length v7, v4

    move v2, v3

    :goto_0
    if-ge v2, v7, :cond_2

    aget-object v8, v4, v2

    .line 63
    invoke-interface {v5, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileMetadata;

    .line 64
    invoke-interface {v6, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileMetadata;

    .line 65
    const-string v9, "File verification failed for %s [local: %s, remote: %s]"

    const/4 v10, 0x3

    new-array v10, v10, [Ljava/lang/Object;

    aput-object v8, v10, v3

    const/4 v8, 0x1

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_1
    aput-object v1, v10, v8

    const/4 v1, 0x2

    if-nez v0, :cond_1

    const-string v0, ""

    :goto_2
    aput-object v0, v10, v1

    invoke-virtual {p0, v9, v10}, Lcom/oculus/horizon/cloudstorage2/callable/UploadVerifier;->report(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 62
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_0

    .line 65
    :cond_0
    iget-object v1, v1, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileMetadata;->sha1:Ljava/lang/String;

    goto :goto_1

    :cond_1
    iget-object v0, v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileMetadata;->sha1:Ljava/lang/String;

    goto :goto_2

    .line 72
    :cond_2
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Upload verification failed!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_3
    return-object v2
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
    invoke-virtual {p0}, Lcom/oculus/horizon/cloudstorage2/callable/UploadVerifier;->call()Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;

    move-result-object v0

    return-object v0
.end method
