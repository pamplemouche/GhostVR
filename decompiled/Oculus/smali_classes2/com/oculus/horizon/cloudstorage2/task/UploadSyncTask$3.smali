.class Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$3;
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
        "Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;",
        "Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

.field final synthetic val$app:Lcom/oculus/library/model/App;

.field final synthetic val$patterns:Lbolts/Capture;

.field final synthetic val$uploadVerifierProvider:Lcom/oculus/horizon/cloudstorage2/callable/UploadVerifierProvider;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;Lcom/oculus/horizon/cloudstorage2/callable/UploadVerifierProvider;Lcom/oculus/library/model/App;Lbolts/Capture;)V
    .locals 0

    .prologue
    .line 318
    iput-object p1, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$3;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    iput-object p2, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$3;->val$uploadVerifierProvider:Lcom/oculus/horizon/cloudstorage2/callable/UploadVerifierProvider;

    iput-object p3, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$3;->val$app:Lcom/oculus/library/model/App;

    iput-object p4, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$3;->val$patterns:Lbolts/Capture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;",
            ">;)",
            "Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 322
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$3;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;->VALIDATE_UPLOAD:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;->onProgress(Ljava/lang/Enum;)V

    .line 324
    iget-object v2, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$3;->val$uploadVerifierProvider:Lcom/oculus/horizon/cloudstorage2/callable/UploadVerifierProvider;

    iget-object v3, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$3;->val$app:Lcom/oculus/library/model/App;

    .line 325
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;

    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$3;->val$patterns:Lbolts/Capture;

    invoke-virtual {v1}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$3;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    invoke-static {v4}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v4

    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/oculus/horizon/cloudstorage2/callable/UploadVerifierProvider;->get(Lcom/oculus/library/model/App;Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;[Ljava/lang/String;Lcom/oculus/horizon/cloudstorage2/Reporter;)Lcom/oculus/horizon/cloudstorage2/callable/UploadVerifier;

    move-result-object v0

    .line 326
    invoke-virtual {v0}, Lcom/oculus/horizon/cloudstorage2/callable/UploadVerifier;->call()Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;

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
    .line 318
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$3;->then(Lbolts/Task;)Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;

    move-result-object v0

    return-object v0
.end method
