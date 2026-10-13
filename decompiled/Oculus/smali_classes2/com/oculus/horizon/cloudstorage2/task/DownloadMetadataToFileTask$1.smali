.class Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataToFileTask$1;
.super Ljava/lang/Object;
.source "DownloadMetadataToFileTask.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataToFileTask;->run()Lbolts/Task;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lbolts/Continuation",
        "<",
        "Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataToFileTask;

.field final synthetic val$writeProvider:Lcom/oculus/horizon/cloudstorage2/callable/WriteMetadataToFileProvider;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataToFileTask;Lcom/oculus/horizon/cloudstorage2/callable/WriteMetadataToFileProvider;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataToFileTask$1;->this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataToFileTask;

    iput-object p2, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataToFileTask$1;->val$writeProvider:Lcom/oculus/horizon/cloudstorage2/callable/WriteMetadataToFileProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Ljava/io/File;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 44
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;->fromGraphQL(Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;)Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;

    move-result-object v0

    .line 45
    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataToFileTask$1;->val$writeProvider:Lcom/oculus/horizon/cloudstorage2/callable/WriteMetadataToFileProvider;

    iget-object v2, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataToFileTask$1;->this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataToFileTask;

    invoke-static {v2}, Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataToFileTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataToFileTask;)Lcom/oculus/library/model/App;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataToFileTask$1;->this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataToFileTask;

    invoke-virtual {v1, v2, v0, v3}, Lcom/oculus/horizon/cloudstorage2/callable/WriteMetadataToFileProvider;->get(Lcom/oculus/library/model/App;Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;Lcom/oculus/horizon/cloudstorage2/Reporter;)Lcom/oculus/horizon/cloudstorage2/callable/WriteMetadataToFile;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/cloudstorage2/callable/WriteMetadataToFile;->call()Ljava/io/File;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 40
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataToFileTask$1;->then(Lbolts/Task;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
