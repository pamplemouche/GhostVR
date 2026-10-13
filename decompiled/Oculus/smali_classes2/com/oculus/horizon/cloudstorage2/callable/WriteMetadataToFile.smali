.class public Lcom/oculus/horizon/cloudstorage2/callable/WriteMetadataToFile;
.super Lcom/oculus/horizon/cloudstorage2/callable/SyncWork;
.source "WriteMetadataToFile.java"


# annotations
.annotation runtime Lcom/facebook/ultralight/Dependencies;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/cloudstorage2/callable/SyncWork",
        "<",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private $ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

.field private final mApp:Lcom/oculus/library/model/App;

.field private final mMetadata:Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 22
    const-class v0, Lcom/oculus/horizon/cloudstorage2/callable/WriteMetadataToFile;

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/callable/WriteMetadataToFile;->TAG:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/inject/InjectorLike;Lcom/oculus/library/model/App;Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;Lcom/oculus/horizon/cloudstorage2/Reporter;)V
    .locals 2
    .param p2    # Lcom/oculus/library/model/App;
        .annotation runtime Lcom/facebook/inject/Assisted;
        .end annotation
    .end param
    .param p3    # Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;
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

    .line 30
    new-instance v0, Lcom/facebook/inject/InjectionContext;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/facebook/inject/InjectionContext;-><init>(ILcom/facebook/inject/InjectorLike;)V

    iput-object v0, p0, Lcom/oculus/horizon/cloudstorage2/callable/WriteMetadataToFile;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    .line 36
    iput-object p2, p0, Lcom/oculus/horizon/cloudstorage2/callable/WriteMetadataToFile;->mApp:Lcom/oculus/library/model/App;

    .line 37
    iput-object p3, p0, Lcom/oculus/horizon/cloudstorage2/callable/WriteMetadataToFile;->mMetadata:Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;

    .line 38
    return-void
.end method


# virtual methods
.method public call()Ljava/io/File;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 42
    sget v0, Lcom/oculus/horizon/cloudstorage2/Cloudstorage2Module$UL_id;->$ul_$xXXcom_oculus_horizon_cloudstorage2_CloudStorageManager$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/cloudstorage2/callable/WriteMetadataToFile;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v4, v0, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;

    iget-object v2, p0, Lcom/oculus/horizon/cloudstorage2/callable/WriteMetadataToFile;->mApp:Lcom/oculus/library/model/App;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;->getRootDir(Lcom/oculus/library/model/App;)Ljava/lang/String;

    move-result-object v2

    .line 43
    sget v0, Lcom/oculus/horizon/cloudstorage2/Cloudstorage2Module$UL_id;->$ul_$xXXcom_oculus_horizon_cloudstorage2_CloudStorageManager$xXXBINDING_ID:I

    iget-object v3, p0, Lcom/oculus/horizon/cloudstorage2/callable/WriteMetadataToFile;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v4, v0, v3}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;->getLocalTargetMetaFile(Ljava/lang/String;)Ljava/io/File;

    move-result-object v3

    .line 49
    :try_start_0
    new-instance v0, Ljava/io/FileWriter;

    invoke-direct {v0, v3}, Ljava/io/FileWriter;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 51
    :try_start_1
    new-instance v2, Lcom/google/gson/Gson;

    invoke-direct {v2}, Lcom/google/gson/Gson;-><init>()V

    iget-object v4, p0, Lcom/oculus/horizon/cloudstorage2/callable/WriteMetadataToFile;->mMetadata:Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;

    invoke-virtual {v2, v4}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/FileWriter;->write(Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 56
    if-eqz v0, :cond_0

    .line 58
    :try_start_2
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 72
    :cond_0
    :goto_0
    if-eqz v1, :cond_2

    .line 73
    throw v1

    .line 59
    :catch_0
    move-exception v0

    .line 60
    sget-object v2, Lcom/oculus/horizon/cloudstorage2/callable/WriteMetadataToFile;->TAG:Ljava/lang/Class;

    const-string v4, "Failed to close FileWriter."

    invoke-static {v2, v4, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    if-nez v1, :cond_5

    :goto_1
    move-object v1, v0

    .line 66
    goto :goto_0

    .line 52
    :catch_1
    move-exception v2

    move-object v0, v1

    .line 53
    :goto_2
    :try_start_3
    sget-object v4, Lcom/oculus/horizon/cloudstorage2/callable/WriteMetadataToFile;->TAG:Ljava/lang/Class;

    const-string v5, "Failed to write meta data file."

    invoke-static {v4, v5, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 56
    if-eqz v0, :cond_4

    .line 58
    :try_start_4
    invoke-virtual {v0}, Ljava/io/FileWriter;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    move-object v1, v2

    .line 66
    goto :goto_0

    .line 59
    :catch_2
    move-exception v0

    .line 60
    sget-object v1, Lcom/oculus/horizon/cloudstorage2/callable/WriteMetadataToFile;->TAG:Ljava/lang/Class;

    const-string v4, "Failed to close FileWriter."

    invoke-static {v1, v4, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    if-nez v2, :cond_3

    :goto_3
    move-object v1, v0

    .line 66
    goto :goto_0

    .line 56
    :catchall_0
    move-exception v0

    move-object v2, v1

    :goto_4
    if-eqz v2, :cond_1

    .line 58
    :try_start_5
    invoke-virtual {v2}, Ljava/io/FileWriter;->close()V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_3

    .line 66
    :cond_1
    :goto_5
    throw v0

    .line 59
    :catch_3
    move-exception v2

    .line 60
    sget-object v3, Lcom/oculus/horizon/cloudstorage2/callable/WriteMetadataToFile;->TAG:Ljava/lang/Class;

    const-string v4, "Failed to close FileWriter."

    invoke-static {v3, v4, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 63
    if-nez v1, :cond_1

    goto :goto_5

    .line 76
    :cond_2
    return-object v3

    .line 56
    :catchall_1
    move-exception v2

    move-object v6, v2

    move-object v2, v0

    move-object v0, v6

    goto :goto_4

    .line 52
    :catch_4
    move-exception v2

    goto :goto_2

    :cond_3
    move-object v0, v2

    goto :goto_3

    :cond_4
    move-object v1, v2

    goto :goto_0

    :cond_5
    move-object v0, v1

    goto :goto_1
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
    invoke-virtual {p0}, Lcom/oculus/horizon/cloudstorage2/callable/WriteMetadataToFile;->call()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
