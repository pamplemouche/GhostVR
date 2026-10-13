.class Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$3;
.super Ljava/lang/Object;
.source "DownloadSyncTask.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;->runWithOptions(Z)Lbolts/Task;
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
        "Ljava/util/Map",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;

.field final synthetic val$actionMapCapture:Lbolts/Capture;

.field final synthetic val$app:Lcom/oculus/library/model/App;

.field final synthetic val$updateAndRemoveFilesProvider:Lcom/oculus/horizon/cloudstorage2/callable/UpdateAndRemoveFilesProvider;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;Lcom/oculus/horizon/cloudstorage2/callable/UpdateAndRemoveFilesProvider;Lcom/oculus/library/model/App;Lbolts/Capture;)V
    .locals 0

    .prologue
    .line 328
    iput-object p1, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$3;->this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;

    iput-object p2, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$3;->val$updateAndRemoveFilesProvider:Lcom/oculus/horizon/cloudstorage2/callable/UpdateAndRemoveFilesProvider;

    iput-object p3, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$3;->val$app:Lcom/oculus/library/model/App;

    iput-object p4, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$3;->val$actionMapCapture:Lbolts/Capture;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 328
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$3;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 331
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$3;->this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;->MOVE_FILES:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;->onProgress(Ljava/lang/Enum;)V

    .line 333
    iget-object v2, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$3;->val$updateAndRemoveFilesProvider:Lcom/oculus/horizon/cloudstorage2/callable/UpdateAndRemoveFilesProvider;

    iget-object v3, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$3;->val$app:Lcom/oculus/library/model/App;

    .line 336
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$3;->val$actionMapCapture:Lbolts/Capture;

    .line 337
    invoke-virtual {v1}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ActionMap;

    sget-object v4, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;->REMOVE:Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2FileAction;

    invoke-virtual {v1, v4}, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ActionMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$3;->this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;

    .line 338
    invoke-static {v4}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v4

    .line 334
    invoke-virtual {v2, v3, v0, v1, v4}, Lcom/oculus/horizon/cloudstorage2/callable/UpdateAndRemoveFilesProvider;->get(Lcom/oculus/library/model/App;Ljava/util/Map;[Ljava/lang/String;Lcom/oculus/horizon/cloudstorage2/Reporter;)Lcom/oculus/horizon/cloudstorage2/callable/UpdateAndRemoveFiles;

    move-result-object v0

    .line 339
    invoke-virtual {v0}, Lcom/oculus/horizon/cloudstorage2/callable/UpdateAndRemoveFiles;->call()Ljava/lang/Void;

    .line 340
    const/4 v0, 0x0

    return-object v0
.end method
