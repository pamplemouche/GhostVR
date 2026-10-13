.class Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$3;
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
        "<[",
        "Ljava/lang/String;",
        "Lbolts/Task",
        "<",
        "Ljava/lang/Void;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;

.field final synthetic val$app:Lcom/oculus/library/model/App;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;Lcom/oculus/library/model/App;)V
    .locals 0

    .prologue
    .line 129
    iput-object p1, p0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$3;->this$0:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;

    iput-object p2, p0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$3;->val$app:Lcom/oculus/library/model/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public then(Lbolts/Task;)Lbolts/Task;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/Task",
            "<[",
            "Ljava/lang/String;",
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
    const/4 v3, 0x0

    .line 132
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$3;->this$0:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;->EXISTING_CONFLICT_CHECK:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;->onProgress(Ljava/lang/Enum;)V

    .line 134
    sget v0, Lcom/oculus/horizon/cloudstorage2/Cloudstorage2Module$UL_id;->$ul_$xXXcom_oculus_horizon_cloudstorage2_CloudStorageManager$xXXBINDING_ID:I

    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$3;->this$0:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;

    invoke-static {v1}, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;->access$200(Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;)Lcom/facebook/inject/InjectionContext;

    move-result-object v1

    invoke-static {v3, v0, v1}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;

    iget-object v2, p0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$3;->val$app:Lcom/oculus/library/model/App;

    invoke-virtual {p1}, Lbolts/Task;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;->getLocalStateJson(Lcom/oculus/library/model/App;[Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 136
    sget v0, Lcom/oculus/horizon/cloudstorage2/Cloudstorage2Module$UL_id;->$ul_$xXXcom_oculus_horizon_cloudstorage2_CloudStorageManager$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$3;->this$0:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;

    invoke-static {v2}, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;->access$200(Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v3, v0, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;

    iget-object v2, p0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$3;->val$app:Lcom/oculus/library/model/App;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;->readLocalMetadata(Lcom/oculus/library/model/App;)Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2Metadata;

    move-result-object v0

    .line 138
    iget-object v2, p0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$3;->this$0:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;

    .line 140
    invoke-static {v2}, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;->access$300(Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;)Lcom/google/gson/Gson;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/google/gson/Gson;->toJson(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 139
    invoke-static {v0, v1}, Lcom/oculus/horizon/platformplugin/PlatformPluginManager;->nativeGetCloudStorage2DownloadConflictFiles(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 142
    array-length v0, v0

    if-nez v0, :cond_0

    .line 143
    invoke-static {}, Lbolts/Task;->cancelled()Lbolts/Task;

    move-result-object v0

    .line 146
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Lbolts/Task;->forResult(Ljava/lang/Object;)Lbolts/Task;

    move-result-object v0

    goto :goto_0
.end method

.method public bridge synthetic then(Lbolts/Task;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 129
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$3;->then(Lbolts/Task;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
