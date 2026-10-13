.class Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$9;
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
        "[",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;

.field final synthetic val$app:Lcom/oculus/library/model/App;

.field final synthetic val$localJson:Lbolts/Capture;

.field final synthetic val$skipExistingConflictCheck:Z


# direct methods
.method constructor <init>(Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;ZLcom/oculus/library/model/App;Lbolts/Capture;)V
    .locals 0

    .prologue
    .line 205
    iput-object p1, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$9;->this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;

    iput-boolean p2, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$9;->val$skipExistingConflictCheck:Z

    iput-object p3, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$9;->val$app:Lcom/oculus/library/model/App;

    iput-object p4, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$9;->val$localJson:Lbolts/Capture;

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
    .line 205
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$9;->then(Lbolts/Task;)[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 208
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$9;->this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;->EXISTING_CONFLICT_CHECK:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;->onProgress(Ljava/lang/Enum;)V

    .line 210
    iget-boolean v0, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$9;->val$skipExistingConflictCheck:Z

    if-eqz v0, :cond_0

    .line 211
    const/4 v0, 0x0

    .line 220
    :goto_0
    return-object v0

    .line 214
    :cond_0
    const/4 v0, 0x0

    sget v1, Lcom/oculus/horizon/cloudstorage2/Cloudstorage2Module$UL_id;->$ul_$xXXcom_oculus_horizon_cloudstorage2_CloudStorageManager$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$9;->this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;

    invoke-static {v2}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;->access$200(Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;

    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$9;->val$app:Lcom/oculus/library/model/App;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;->readLocalMetadata(Lcom/oculus/library/model/App;)Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;

    move-result-object v0

    .line 216
    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$9;->this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;

    .line 218
    invoke-static {v1}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;->access$300(Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;)Lcom/google/gson/Gson;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$9;->val$localJson:Lbolts/Capture;

    invoke-virtual {v0}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 217
    invoke-static {v1, v0}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeGetCloudStorage2DownloadConflictFiles(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method
