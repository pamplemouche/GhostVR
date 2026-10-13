.class Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;
.super Ljava/lang/Object;
.source "FileDownloadTask.java"

# interfaces
.implements Lcom/oculus/downloader/OculusDownloadListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "CloudFileDownloadManager"
.end annotation


# instance fields
.field private final downloadedToFinalDestination:Ljava/util/Map;
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

.field private final mCompletionSource:Lbolts/TaskCompletionSource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lbolts/TaskCompletionSource",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mRequestedDownloads:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestedFiles:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;


# direct methods
.method private constructor <init>(Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;)V
    .locals 1

    .prologue
    .line 49
    iput-object p1, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;->this$0:Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 54
    new-instance v0, Lbolts/TaskCompletionSource;

    invoke-direct {v0}, Lbolts/TaskCompletionSource;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;->mCompletionSource:Lbolts/TaskCompletionSource;

    .line 56
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;->mRequestedFiles:Ljava/util/Set;

    .line 57
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;->mRequestedDownloads:Ljava/util/Set;

    .line 58
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;->downloadedToFinalDestination:Ljava/util/Map;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$1;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;-><init>(Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;)V

    return-void
.end method

.method private abortAll(Ljava/lang/Exception;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 196
    sget v0, Lcom/oculus/appmanager/downloader/OculusDownloaderModule$UL_id;->$ul_$xXXcom_oculus_appmanager_downloader_OculusFileDownloader$xXXBINDING_ID:I

    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;->this$0:Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;

    invoke-static {v1}, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;)Lcom/facebook/inject/InjectionContext;

    move-result-object v1

    invoke-static {v6, v0, v1}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/appmanager/downloader/OculusFileDownloader;

    invoke-virtual {v0, p0}, Lcom/oculus/appmanager/downloader/OculusFileDownloader;->removeListener(Lcom/oculus/downloader/OculusDownloadListener;)V

    .line 197
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;->mCompletionSource:Lbolts/TaskCompletionSource;

    invoke-virtual {v0, p1}, Lbolts/TaskCompletionSource;->trySetError(Ljava/lang/Exception;)Z

    .line 200
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;->mRequestedDownloads:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    .line 201
    sget v1, Lcom/oculus/appmanager/downloader/OculusDownloaderModule$UL_id;->$ul_$xXXcom_oculus_appmanager_downloader_OculusFileDownloader$xXXBINDING_ID:I

    iget-object v3, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;->this$0:Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;

    invoke-static {v3}, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;)Lcom/facebook/inject/InjectionContext;

    move-result-object v3

    invoke-static {v6, v1, v3}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/appmanager/downloader/OculusFileDownloader;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-virtual {v1, v4, v5}, Lcom/oculus/appmanager/downloader/OculusFileDownloader;->remove(J)Z

    goto :goto_0

    .line 203
    :cond_0
    return-void
.end method

.method private enqueue(Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$FileRequest;)V
    .locals 11

    .prologue
    const/4 v10, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x2

    const/4 v9, 0x1

    .line 80
    new-instance v0, Lcom/oculus/extras/ExtrasBuilder;

    invoke-direct {v0}, Lcom/oculus/extras/ExtrasBuilder;-><init>()V

    const-string v1, "request_id"

    iget-object v2, p1, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$FileRequest;->id:Ljava/lang/String;

    .line 82
    invoke-virtual {v0, v1, v2}, Lcom/oculus/extras/ExtrasBuilder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/extras/ExtrasBuilder;

    move-result-object v0

    const-string v1, "relative_path"

    iget-object v2, p1, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$FileRequest;->relativePath:Ljava/lang/String;

    .line 83
    invoke-virtual {v0, v1, v2}, Lcom/oculus/extras/ExtrasBuilder;->putString(Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/extras/ExtrasBuilder;

    move-result-object v0

    .line 84
    invoke-virtual {v0}, Lcom/oculus/extras/ExtrasBuilder;->build()Lcom/oculus/extras/Extras;

    move-result-object v8

    .line 87
    iget-object v0, p1, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$FileRequest;->cloudFileUri:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 89
    :try_start_0
    invoke-direct {p0, v8}, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;->getEmptyFileDownload(Lcom/oculus/extras/Extras;)Lcom/oculus/downloader/model/DownloadInfo;

    move-result-object v0

    .line 90
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;->onDownloadComplete(Lcom/oculus/downloader/model/DownloadInfo;)V

    .line 91
    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;->this$0:Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;

    const-string v2, "Zero byte file created for %d, Path: %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, v0, Lcom/oculus/downloader/model/DownloadInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget-object v4, p1, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$FileRequest;->relativePath:Ljava/lang/String;

    aput-object v4, v3, v0

    invoke-virtual {v1, v2, v3}, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;->report(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 113
    :goto_0
    return-void

    .line 92
    :catch_0
    move-exception v0

    .line 93
    invoke-direct {p0, v0}, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;->abortAll(Ljava/lang/Exception;)V

    goto :goto_0

    .line 97
    :cond_0
    const/4 v4, 0x3

    .line 99
    new-instance v0, Lcom/oculus/downloader/model/DownloadConfig;

    iget-object v1, p1, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$FileRequest;->cloudFileUri:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v6, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;->this$0:Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;

    .line 102
    invoke-static {v6}, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;->access$100(Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v6, p1, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$FileRequest;->id:Ljava/lang/String;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v6, v3

    move-object v7, v3

    invoke-direct/range {v0 .. v7}, Lcom/oculus/downloader/model/DownloadConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;Ljava/lang/String;)V

    .line 109
    sget v1, Lcom/oculus/appmanager/downloader/OculusDownloaderModule$UL_id;->$ul_$xXXcom_oculus_appmanager_downloader_OculusFileDownloader$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;->this$0:Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;

    invoke-static {v2}, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v9, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/appmanager/downloader/OculusFileDownloader;

    invoke-virtual {v1, v0, v8}, Lcom/oculus/appmanager/downloader/OculusFileDownloader;->enqueue(Lcom/oculus/downloader/model/DownloadConfig;Lcom/oculus/extras/Extras;)J

    move-result-wide v0

    .line 110
    iget-object v2, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;->this$0:Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;

    const-string v3, "Download enqueued for %d, Path: %s"

    new-array v4, v5, [Ljava/lang/Object;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v10

    iget-object v5, p1, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$FileRequest;->relativePath:Ljava/lang/String;

    aput-object v5, v4, v9

    invoke-virtual {v2, v3, v4}, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;->report(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 111
    iget-object v2, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;->mRequestedDownloads:Ljava/util/Set;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_0
.end method

.method private getEmptyFileDownload(Lcom/oculus/extras/Extras;)Lcom/oculus/downloader/model/DownloadInfo;
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const-wide/16 v6, 0x0

    const/4 v5, 0x0

    .line 116
    sget v0, Lcom/facebook/inject/BundledAndroidModule$UL_id;->$ul_$xXXandroid_content_Context$xXXcom_facebook_inject_ForAppContext$xXXBINDING_ID:I

    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;->this$0:Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;

    invoke-static {v1}, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;)Lcom/facebook/inject/InjectionContext;

    move-result-object v1

    invoke-static {v5, v0, v1}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;

    move-result-object v0

    .line 117
    new-instance v1, Ljava/util/Random;

    invoke-direct {v1}, Ljava/util/Random;-><init>()V

    invoke-virtual {v1}, Ljava/util/Random;->nextLong()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, ".temp"

    invoke-static {v1, v2, v0}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v0

    .line 119
    new-instance v1, Lcom/oculus/downloader/model/DownloadInfo;

    const-wide/16 v2, -0x1

    const/16 v4, 0x8

    .line 125
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v10

    .line 126
    invoke-static {}, Lcom/google/common/base/Optional;->absent()Lcom/google/common/base/Optional;

    move-result-object v11

    move-wide v8, v6

    move-object v12, p1

    invoke-direct/range {v1 .. v12}, Lcom/oculus/downloader/model/DownloadInfo;-><init>(JIIJJLcom/google/common/base/Optional;Lcom/google/common/base/Optional;Lcom/oculus/extras/Extras;)V

    return-object v1
.end method

.method private getLocalUri(Lcom/oculus/downloader/model/DownloadInfo;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/oculus/horizon/cloudstorage2/DownloadFailureException;
        }
    .end annotation

    .prologue
    .line 177
    iget v0, p1, Lcom/oculus/downloader/model/DownloadInfo;->status:I

    const/16 v1, 0x8

    if-eq v0, v1, :cond_0

    .line 178
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/DownloadFailureException;

    const-string v1, "Status not successful"

    invoke-direct {v0, v1, p1}, Lcom/oculus/horizon/cloudstorage2/DownloadFailureException;-><init>(Ljava/lang/String;Lcom/oculus/downloader/model/DownloadInfo;)V

    throw v0

    .line 181
    :cond_0
    iget-object v0, p1, Lcom/oculus/downloader/model/DownloadInfo;->localUri:Lcom/google/common/base/Optional;

    invoke-virtual {v0}, Lcom/google/common/base/Optional;->orNull()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 183
    if-nez v0, :cond_1

    .line 184
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/DownloadFailureException;

    const-string v1, "No localUri"

    invoke-direct {v0, v1, p1}, Lcom/oculus/horizon/cloudstorage2/DownloadFailureException;-><init>(Ljava/lang/String;Lcom/oculus/downloader/model/DownloadInfo;)V

    throw v0

    .line 187
    :cond_1
    iget-object v1, p1, Lcom/oculus/downloader/model/DownloadInfo;->extras:Lcom/oculus/extras/Extras;

    const-string v2, "relative_path"

    invoke-virtual {v1, v2}, Lcom/oculus/extras/Extras;->hasKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 188
    new-instance v0, Lcom/oculus/horizon/cloudstorage2/DownloadFailureException;

    const-string v1, "No relativePath"

    invoke-direct {v0, v1, p1}, Lcom/oculus/horizon/cloudstorage2/DownloadFailureException;-><init>(Ljava/lang/String;Lcom/oculus/downloader/model/DownloadInfo;)V

    throw v0

    .line 191
    :cond_2
    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;->this$0:Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;

    const-string v2, "Download successful for %d!"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-wide v6, p1, Lcom/oculus/downloader/model/DownloadInfo;->id:J

    invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;->report(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 192
    return-object v0
.end method


# virtual methods
.method public download([Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$FileRequest;)V
    .locals 5

    .prologue
    const/4 v0, 0x0

    .line 61
    array-length v1, p1

    if-nez v1, :cond_1

    .line 62
    const/4 v0, 0x1

    sget v1, Lcom/oculus/appmanager/downloader/OculusDownloaderModule$UL_id;->$ul_$xXXcom_oculus_appmanager_downloader_OculusFileDownloader$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;->this$0:Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;

    invoke-static {v2}, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/appmanager/downloader/OculusFileDownloader;

    invoke-virtual {v0, p0}, Lcom/oculus/appmanager/downloader/OculusFileDownloader;->removeListener(Lcom/oculus/downloader/OculusDownloadListener;)V

    .line 63
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;->mCompletionSource:Lbolts/TaskCompletionSource;

    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    .line 77
    :cond_0
    return-void

    .line 68
    :cond_1
    array-length v2, p1

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_2

    aget-object v3, p1, v1

    .line 69
    iget-object v4, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;->mRequestedFiles:Ljava/util/Set;

    iget-object v3, v3, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$FileRequest;->id:Ljava/lang/String;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 68
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 74
    :cond_2
    array-length v1, p1

    :goto_1
    if-ge v0, v1, :cond_0

    aget-object v2, p1, v0

    .line 75
    invoke-direct {p0, v2}, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;->enqueue(Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$FileRequest;)V

    .line 74
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public getTask()Lbolts/Task;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 206
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;->mCompletionSource:Lbolts/TaskCompletionSource;

    invoke-virtual {v0}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method public onDownloadComplete(Lcom/oculus/downloader/model/DownloadInfo;)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 132
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;->this$0:Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;

    const-string v1, "Download complete for %d"

    new-array v2, v6, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-wide v4, p1, Lcom/oculus/downloader/model/DownloadInfo;->id:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;->report(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 134
    iget-object v0, p1, Lcom/oculus/downloader/model/DownloadInfo;->extras:Lcom/oculus/extras/Extras;

    const-string v1, "request_id"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Lcom/oculus/extras/Extras;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 137
    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;->mRequestedFiles:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 174
    :cond_0
    :goto_0
    return-void

    .line 141
    :cond_1
    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;->mRequestedFiles:Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 145
    iget-wide v2, p1, Lcom/oculus/downloader/model/DownloadInfo;->id:J

    const-wide/16 v4, -0x1

    cmp-long v1, v2, v4

    if-eqz v1, :cond_3

    .line 146
    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;->mRequestedDownloads:Ljava/util/Set;

    iget-wide v2, p1, Lcom/oculus/downloader/model/DownloadInfo;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 147
    new-instance v1, Lcom/oculus/horizon/cloudstorage2/DownloadFailureException;

    const-string v2, "File request (%s) does not have a matching requested download!"

    .line 149
    invoke-static {v2, v0}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lcom/oculus/horizon/cloudstorage2/DownloadFailureException;-><init>(Ljava/lang/String;Lcom/oculus/downloader/model/DownloadInfo;)V

    .line 147
    invoke-direct {p0, v1}, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;->abortAll(Ljava/lang/Exception;)V

    goto :goto_0

    .line 155
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;->mRequestedDownloads:Ljava/util/Set;

    iget-wide v2, p1, Lcom/oculus/downloader/model/DownloadInfo;->id:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 161
    :cond_3
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;->getLocalUri(Lcom/oculus/downloader/model/DownloadInfo;)Ljava/lang/String;

    move-result-object v0

    .line 162
    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;->downloadedToFinalDestination:Ljava/util/Map;

    iget-object v2, p1, Lcom/oculus/downloader/model/DownloadInfo;->extras:Lcom/oculus/extras/Extras;

    const-string v3, "relative_path"

    const-string v4, ""

    .line 163
    invoke-virtual {v2, v3, v4}, Lcom/oculus/extras/Extras;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 162
    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Lcom/oculus/horizon/cloudstorage2/DownloadFailureException; {:try_start_0 .. :try_end_0} :catch_0

    .line 170
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;->mRequestedFiles:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    sget v0, Lcom/oculus/appmanager/downloader/OculusDownloaderModule$UL_id;->$ul_$xXXcom_oculus_appmanager_downloader_OculusFileDownloader$xXXBINDING_ID:I

    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;->this$0:Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;

    invoke-static {v1}, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask;)Lcom/facebook/inject/InjectionContext;

    move-result-object v1

    invoke-static {v6, v0, v1}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/appmanager/downloader/OculusFileDownloader;

    invoke-virtual {v0, p0}, Lcom/oculus/appmanager/downloader/OculusFileDownloader;->removeListener(Lcom/oculus/downloader/OculusDownloadListener;)V

    .line 172
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;->mCompletionSource:Lbolts/TaskCompletionSource;

    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;->downloadedToFinalDestination:Ljava/util/Map;

    invoke-virtual {v0, v1}, Lbolts/TaskCompletionSource;->setResult(Ljava/lang/Object;)V

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .line 165
    invoke-direct {p0, v0}, Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$CloudFileDownloadManager;->abortAll(Ljava/lang/Exception;)V

    goto :goto_0
.end method
