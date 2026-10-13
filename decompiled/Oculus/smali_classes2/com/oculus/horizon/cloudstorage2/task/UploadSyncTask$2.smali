.class Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$2;
.super Ljava/lang/Object;
.source "UploadSyncTask.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->run()Lbolts/Task;
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
        "Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;",
        "Ljava/io/File;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

.field final synthetic val$app:Lcom/oculus/library/model/App;

.field final synthetic val$writeMetadataToFileProvider:Lcom/oculus/horizon/cloudstorage2/callable/WriteMetadataToFileProvider;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;Lcom/oculus/horizon/cloudstorage2/callable/WriteMetadataToFileProvider;Lcom/oculus/library/model/App;)V
    .locals 0

    .prologue
    .line 332
    iput-object p1, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$2;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    iput-object p2, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$2;->val$writeMetadataToFileProvider:Lcom/oculus/horizon/cloudstorage2/callable/WriteMetadataToFileProvider;

    iput-object p3, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$2;->val$app:Lcom/oculus/library/model/App;

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
            "Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;",
            ">;)",
            "Ljava/io/File;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 335
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$2;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;->WRITE_LOCAL_META:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;->onProgress(Ljava/lang/Enum;)V

    .line 337
    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$2;->val$writeMetadataToFileProvider:Lcom/oculus/horizon/cloudstorage2/callable/WriteMetadataToFileProvider;

    iget-object v2, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$2;->val$app:Lcom/oculus/library/model/App;

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;

    iget-object v3, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$2;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    invoke-static {v3}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v3

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
    .line 332
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$2;->then(Lbolts/Task;)Ljava/io/File;

    move-result-object v0

    return-object v0
.end method
