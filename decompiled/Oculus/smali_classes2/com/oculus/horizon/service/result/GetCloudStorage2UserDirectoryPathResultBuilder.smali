.class public Lcom/oculus/horizon/service/result/GetCloudStorage2UserDirectoryPathResultBuilder;
.super Lcom/oculus/horizon/service/result/ResultBuilder;
.source "GetCloudStorage2UserDirectoryPathResultBuilder.java"


# annotations
.annotation runtime Lcom/facebook/ultralight/Dependencies;
.end annotation


# instance fields
.field private final mCloudStorageManager:Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private final mOVRLibrary:Lcom/oculus/libraryapi/OVRLibrary;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/service/OVRService;)V
    .locals 1
    .param p2    # Lcom/oculus/horizon/service/OVRService;
        .annotation runtime Lcom/facebook/inject/Assisted;
        .end annotation
    .end param
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation

    .prologue
    .line 26
    invoke-direct {p0, p2}, Lcom/oculus/horizon/service/result/ResultBuilder;-><init>(Lcom/oculus/horizon/service/OVRService;)V

    .line 25
    invoke-static {p1}, Lcom/oculus/libraryapi/OVRLibraryModule;->$ul_$xXXcom_oculus_libraryapi_OVRLibrary$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/libraryapi/OVRLibrary;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service/result/GetCloudStorage2UserDirectoryPathResultBuilder;->mOVRLibrary:Lcom/oculus/libraryapi/OVRLibrary;

    invoke-static {p1}, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;->$ul_$xXXcom_oculus_horizon_cloudstorage2_CloudStorageManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/service/result/GetCloudStorage2UserDirectoryPathResultBuilder;->mCloudStorageManager:Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;

    .line 27
    return-void
.end method


# virtual methods
.method public getResult(Landroid/os/Bundle;Ljava/lang/String;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 31
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 32
    iget-object v2, p0, Lcom/oculus/horizon/service/result/GetCloudStorage2UserDirectoryPathResultBuilder;->mOVRLibrary:Lcom/oculus/libraryapi/OVRLibrary;

    invoke-virtual {v2, p2}, Lcom/oculus/libraryapi/OVRLibrary;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v2

    .line 33
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 35
    if-nez v2, :cond_0

    .line 36
    new-instance v0, Lcom/oculus/horizon/service/ExternalPlatformLocal$PackageNotInLibraryException;

    invoke-direct {v0, p2}, Lcom/oculus/horizon/service/ExternalPlatformLocal$PackageNotInLibraryException;-><init>(Ljava/lang/String;)V

    const-string v1, "User does not have app in library"

    sget-object v2, Lcom/oculus/platform/util/OVRError;->PERMISSIONS_FAILURE:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/oculus/horizon/service/result/GetCloudStorage2UserDirectoryPathResultBuilder;->setError(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    .line 51
    :goto_0
    return-object v0

    .line 43
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/service/result/GetCloudStorage2UserDirectoryPathResultBuilder;->mCloudStorageManager:Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;->getRootSyncDir(Lcom/oculus/library/model/App;)Ljava/lang/String;

    move-result-object v1

    .line 44
    iget-object v0, p0, Lcom/oculus/horizon/service/result/GetCloudStorage2UserDirectoryPathResultBuilder;->mCloudStorageManager:Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;->makeRootSyncDirIfNeeded(Ljava/lang/String;)Z

    .line 46
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 48
    const-string v2, "result"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 50
    :catch_0
    move-exception v0

    .line 51
    const-string v1, "Unable to resolve storage directory"

    sget-object v2, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v2, v2, Lcom/oculus/platform/util/OVRError;->mCode:I

    invoke-virtual {p0, v0, v1, v2}, Lcom/oculus/horizon/service/result/GetCloudStorage2UserDirectoryPathResultBuilder;->setError(Ljava/lang/Throwable;Ljava/lang/String;I)Landroid/os/Bundle;

    move-result-object v0

    goto :goto_0
.end method
