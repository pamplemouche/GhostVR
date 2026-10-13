.class Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$2;
.super Ljava/lang/Object;
.source "ResolveConflictTask.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;->run()Lbolts/Task;
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
        "Ljava/lang/Void;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;

.field final synthetic val$app:Lcom/oculus/library/model/App;

.field final synthetic val$downloadMetadataToFileTaskProvider:Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataToFileTaskProvider;

.field final synthetic val$downloadSyncTaskProvider:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTaskProvider;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTaskProvider;Lcom/oculus/library/model/App;Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataToFileTaskProvider;)V
    .locals 0

    .prologue
    .line 152
    iput-object p1, p0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$2;->this$0:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;

    iput-object p2, p0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$2;->val$downloadSyncTaskProvider:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTaskProvider;

    iput-object p3, p0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$2;->val$app:Lcom/oculus/library/model/App;

    iput-object p4, p0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$2;->val$downloadMetadataToFileTaskProvider:Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataToFileTaskProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x1

    .line 155
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$2;->this$0:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;->EXECUTE_POLICY:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;->onProgress(Ljava/lang/Enum;)V

    .line 157
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$2;->this$0:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v0

    const-string v1, "Chosen Resolution Policy: %s"

    new-array v2, v5, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$2;->this$0:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;

    invoke-static {v4}, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;->access$100(Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;)Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;->report(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 159
    sget-object v0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$6;->$SwitchMap$com$oculus$horizon$cloudstorage2$model$CloudStorage2ResolutionPolicy:[I

    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$2;->this$0:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;

    invoke-static {v1}, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;->access$100(Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;)Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 176
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unknown resolution policy: %s"

    iget-object v2, p0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$2;->this$0:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;

    .line 178
    invoke-static {v2}, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;->access$100(Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;)Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;

    move-result-object v2

    .line 177
    invoke-static {v1, v2}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 161
    :pswitch_0
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$2;->val$downloadSyncTaskProvider:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTaskProvider;

    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$2;->val$app:Lcom/oculus/library/model/App;

    iget-object v1, v1, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTaskProvider;->get(Ljava/lang/String;)Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;->runWithOptions(Z)Lbolts/Task;

    move-result-object v0

    .line 166
    :goto_0
    return-object v0

    .line 163
    :pswitch_1
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$2;->val$downloadMetadataToFileTaskProvider:Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataToFileTaskProvider;

    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$2;->val$app:Lcom/oculus/library/model/App;

    iget-object v2, p0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$2;->this$0:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;

    .line 164
    invoke-static {v2}, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataToFileTaskProvider;->get(Lcom/oculus/library/model/App;Lcom/oculus/horizon/cloudstorage2/Reporter;)Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataToFileTask;

    move-result-object v0

    .line 165
    invoke-virtual {v0}, Lcom/oculus/horizon/cloudstorage2/task/DownloadMetadataToFileTask;->run()Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$2$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$2$1;-><init>(Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$2;)V

    .line 174
    invoke-static {}, Lcom/oculus/executors/OculusThreadExecutor;->getInstance()Lcom/oculus/executors/OculusThreadExecutor;

    move-result-object v2

    .line 166
    invoke-virtual {v0, v1, v2}, Lbolts/Task;->onSuccess(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    goto :goto_0

    .line 159
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 152
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$2;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
