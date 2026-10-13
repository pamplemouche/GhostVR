.class Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$7;
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
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

.field final synthetic val$actionMapCapture:Lbolts/Capture;

.field final synthetic val$localActualJson:Lbolts/Capture;

.field final synthetic val$remoteJson:Lbolts/Capture;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;Lbolts/Capture;Lbolts/Capture;Lbolts/Capture;)V
    .locals 0

    .prologue
    .line 241
    iput-object p1, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$7;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    iput-object p2, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$7;->val$localActualJson:Lbolts/Capture;

    iput-object p3, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$7;->val$remoteJson:Lbolts/Capture;

    iput-object p4, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$7;->val$actionMapCapture:Lbolts/Capture;

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
    .line 241
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$7;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .prologue
    .line 244
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$7;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;->BUILD_ACTION_MAP:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;->onProgress(Ljava/lang/Enum;)V

    .line 246
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$7;->val$localActualJson:Lbolts/Capture;

    .line 248
    invoke-virtual {v0}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$7;->val$remoteJson:Lbolts/Capture;

    invoke-virtual {v1}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 247
    invoke-static {v0, v1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeGetCloudStorage2SyncFileActions(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 250
    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$7;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    .line 251
    invoke-static {v1}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->access$400(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;)Lcom/google/gson/Gson;

    move-result-object v1

    const-class v2, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ActionMap;

    invoke-virtual {v1, v0, v2}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ActionMap;

    .line 253
    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$7;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    invoke-static {v1}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Action map: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$7;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    invoke-static {v3}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->access$400(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;)Lcom/google/gson/Gson;

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

    .line 255
    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$7;->val$actionMapCapture:Lbolts/Capture;

    invoke-virtual {v1, v0}, Lbolts/Capture;->set(Ljava/lang/Object;)V

    .line 257
    const/4 v0, 0x0

    return-object v0
.end method
