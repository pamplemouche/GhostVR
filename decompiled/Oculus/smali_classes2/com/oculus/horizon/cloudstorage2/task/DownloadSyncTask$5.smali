.class Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$5;
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
        "Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;",
        "[",
        "Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$FileRequest;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;

.field final synthetic val$actionMapCapture:Lbolts/Capture;

.field final synthetic val$getFileDownloadRequestsProvider:Lcom/oculus/horizon/cloudstorage2/callable/GetFileDownloadRequestsProvider;

.field final synthetic val$localJson:Lbolts/Capture;

.field final synthetic val$remoteJson:Lbolts/Capture;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;Lbolts/Capture;Lbolts/Capture;Lbolts/Capture;Lcom/oculus/horizon/cloudstorage2/callable/GetFileDownloadRequestsProvider;)V
    .locals 0

    .prologue
    .line 288
    iput-object p1, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$5;->this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;

    iput-object p2, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$5;->val$remoteJson:Lbolts/Capture;

    iput-object p3, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$5;->val$localJson:Lbolts/Capture;

    iput-object p4, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$5;->val$actionMapCapture:Lbolts/Capture;

    iput-object p5, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$5;->val$getFileDownloadRequestsProvider:Lcom/oculus/horizon/cloudstorage2/callable/GetFileDownloadRequestsProvider;

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
    .line 288
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$5;->then(Lbolts/Task;)[Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$FileRequest;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)[Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$FileRequest;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;",
            ">;)[",
            "Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$FileRequest;"
        }
    .end annotation

    .prologue
    .line 291
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$5;->this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;->BUILD_ACTION_MAP:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$Step;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;->onProgress(Ljava/lang/Enum;)V

    .line 293
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$5;->val$remoteJson:Lbolts/Capture;

    .line 295
    invoke-virtual {v0}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$5;->val$localJson:Lbolts/Capture;

    invoke-virtual {v1}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 294
    invoke-static {v0, v1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeGetCloudStorage2SyncFileActions(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 297
    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$5;->this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;

    .line 298
    invoke-static {v1}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;->access$300(Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;)Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ActionMap;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ActionMap;

    .line 300
    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$5;->this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;

    invoke-static {v1}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action map: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$5;->this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;

    invoke-static {v3}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;->access$300(Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;)Lcom/google/gson/Gson;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1, v2, v3}, Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;->report(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 302
    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$5;->val$actionMapCapture:Lbolts/Capture;

    invoke-virtual {v1, v0}, Lbolts/Capture;->set(Ljava/lang/Object;)V

    .line 304
    iget-object v2, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$5;->val$getFileDownloadRequestsProvider:Lcom/oculus/horizon/cloudstorage2/callable/GetFileDownloadRequestsProvider;

    .line 305
    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;

    iget-object v3, p0, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask$5;->this$0:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;

    invoke-static {v3}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v3

    invoke-virtual {v2, v1, v0, v3}, Lcom/oculus/horizon/cloudstorage2/callable/GetFileDownloadRequestsProvider;->get(Lcom/oculus/horizon/api/cloudstorage2/UserCloudFilesResponse;Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ActionMap;Lcom/oculus/horizon/cloudstorage2/Reporter;)Lcom/oculus/horizon/cloudstorage2/callable/GetFileDownloadRequests;

    move-result-object v0

    .line 306
    invoke-virtual {v0}, Lcom/oculus/horizon/cloudstorage2/callable/GetFileDownloadRequests;->call()[Lcom/oculus/horizon/cloudstorage2/task/FileDownloadTask$FileRequest;

    move-result-object v0

    return-object v0
.end method
