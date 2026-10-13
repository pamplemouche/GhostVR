.class Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$11;
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
        "Ljava/lang/Void;",
        "Lbolts/Task",
        "<[",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;

.field final synthetic val$app:Lcom/oculus/library/model/App;

.field final synthetic val$downloadWildcardsProvider:Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTaskProvider;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTaskProvider;Lcom/oculus/library/model/App;)V
    .locals 0

    .prologue
    .line 174
    iput-object p1, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$11;->this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;

    iput-object p2, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$11;->val$downloadWildcardsProvider:Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTaskProvider;

    iput-object p3, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$11;->val$app:Lcom/oculus/library/model/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Lbolts/Task",
            "<[",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 177
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$11;->this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;->DOWNLOAD_PATTERNS:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;->onProgress(Ljava/lang/Enum;)V

    .line 179
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$11;->val$downloadWildcardsProvider:Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTaskProvider;

    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$11;->val$app:Lcom/oculus/library/model/App;

    iget-object v1, v1, Lcom/oculus/library/model/App;->applicationGroupingId:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$11;->this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;

    invoke-static {v2}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTaskProvider;->get(Ljava/lang/String;Lcom/oculus/horizon/cloudstorage2/Reporter;)Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/cloudstorage2/task/DownloadWildcardsTask;->run()Lbolts/Task;

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
    .line 174
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$11;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
