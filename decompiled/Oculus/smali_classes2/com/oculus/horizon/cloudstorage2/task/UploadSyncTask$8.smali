.class Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$8;
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
        "<[",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

.field final synthetic val$app:Lcom/oculus/library/model/App;

.field final synthetic val$localActualJson:Lbolts/Capture;

.field final synthetic val$localActualMeta:Lbolts/Capture;

.field final synthetic val$localCachedMeta:Lbolts/Capture;

.field final synthetic val$patterns:Lbolts/Capture;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;Lbolts/Capture;Lcom/oculus/library/model/App;Lbolts/Capture;Lbolts/Capture;Lbolts/Capture;)V
    .locals 0

    .prologue
    .line 217
    iput-object p1, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$8;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    iput-object p2, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$8;->val$patterns:Lbolts/Capture;

    iput-object p3, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$8;->val$app:Lcom/oculus/library/model/App;

    iput-object p4, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$8;->val$localActualJson:Lbolts/Capture;

    iput-object p5, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$8;->val$localActualMeta:Lbolts/Capture;

    iput-object p6, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$8;->val$localCachedMeta:Lbolts/Capture;

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
    .line 217
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$8;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<[",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Void;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 220
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$8;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;->READ_LOCAL_STATE:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;->onProgress(Ljava/lang/Enum;)V

    .line 222
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$8;->val$patterns:Lbolts/Capture;

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Lbolts/Capture;->set(Ljava/lang/Object;)V

    .line 224
    sget v0, Lcom/oculus/horizon/cloudstorage2/Cloudstorage2Module$UL_id;->$ul_$xXXcom_oculus_horizon_cloudstorage2_CloudStorageManager$xXXBINDING_ID:I

    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$8;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    invoke-static {v1}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->access$500(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;)Lcom/facebook/inject/InjectionContext;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;

    iget-object v2, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$8;->val$app:Lcom/oculus/library/model/App;

    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$8;->val$patterns:Lbolts/Capture;

    invoke-virtual {v1}, Lbolts/Capture;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;->getLocalStateJson(Lcom/oculus/library/model/App;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 225
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$8;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    .line 226
    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->access$400(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;)Lcom/google/gson/Gson;

    move-result-object v0

    const-class v1, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;

    invoke-virtual {v0, v2, v1}, Lcom/google/gson/Gson;->fromJson(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;

    .line 228
    sget v1, Lcom/oculus/horizon/cloudstorage2/Cloudstorage2Module$UL_id;->$ul_$xXXcom_oculus_horizon_cloudstorage2_CloudStorageManager$xXXBINDING_ID:I

    iget-object v3, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$8;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    invoke-static {v3}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->access$500(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;)Lcom/facebook/inject/InjectionContext;

    move-result-object v3

    invoke-static {v4, v1, v3}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;

    iget-object v3, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$8;->val$app:Lcom/oculus/library/model/App;

    invoke-virtual {v1, v3}, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;->readLocalMetadata(Lcom/oculus/library/model/App;)Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;

    move-result-object v1

    .line 230
    iget-object v3, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$8;->val$localActualJson:Lbolts/Capture;

    invoke-virtual {v3, v2}, Lbolts/Capture;->set(Ljava/lang/Object;)V

    .line 231
    iget-object v2, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$8;->val$localActualMeta:Lbolts/Capture;

    invoke-virtual {v2, v0}, Lbolts/Capture;->set(Ljava/lang/Object;)V

    .line 233
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$8;->val$localCachedMeta:Lbolts/Capture;

    invoke-virtual {v0, v1}, Lbolts/Capture;->set(Ljava/lang/Object;)V

    .line 235
    const/4 v0, 0x0

    return-object v0
.end method
