.class Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$5;
.super Ljava/lang/Object;
.source "ResolveConflictTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


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
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;

.field final synthetic val$app:Lcom/oculus/library/model/App;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;Lcom/oculus/library/model/App;)V
    .locals 0

    .prologue
    .line 85
    iput-object p1, p0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$5;->this$0:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;

    iput-object p2, p0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$5;->val$app:Lcom/oculus/library/model/App;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$5;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 88
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$5;->this$0:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;->PREFLIGHT_CHECK:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$Step;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;->onProgress(Ljava/lang/Enum;)V

    .line 90
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$5;->val$app:Lcom/oculus/library/model/App;

    if-nez v0, :cond_0

    .line 91
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "App was not found in library!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 94
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$5;->this$0:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$5;->val$app:Lcom/oculus/library/model/App;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;->setApp(Lcom/oculus/library/model/App;)V

    .line 96
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$5;->this$0:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v0

    const-string v1, "Cloud storage status is %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$5;->val$app:Lcom/oculus/library/model/App;

    iget-object v3, v3, Lcom/oculus/library/model/App;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    invoke-virtual {v3}, Lcom/oculus/library/model/CloudStorageStatus;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;->report(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 98
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$5;->val$app:Lcom/oculus/library/model/App;

    iget-object v0, v0, Lcom/oculus/library/model/App;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    invoke-static {v0}, Lcom/oculus/library/model/CloudStorageStatus;->isEnabled(Lcom/oculus/library/model/CloudStorageStatus;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 99
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cloud syncing is not enabled for this app!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 102
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$5;->val$app:Lcom/oculus/library/model/App;

    iget-object v0, v0, Lcom/oculus/library/model/App;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    invoke-static {v0}, Lcom/oculus/library/model/CloudStorageStatus;->isSyncing(Lcom/oculus/library/model/CloudStorageStatus;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 103
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is an existing sync running for this app!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 107
    :cond_2
    sget v0, Lcom/oculus/horizon/cloudstorage2/Cloudstorage2Module$UL_id;->$ul_$xXXcom_oculus_horizon_cloudstorage2_CloudStorageManager$xXXBINDING_ID:I

    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask$5;->this$0:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;

    invoke-static {v1}, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;->access$200(Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;)Lcom/facebook/inject/InjectionContext;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;->hasExternalStoragePermission()Z

    move-result v0

    if-nez v0, :cond_3

    .line 108
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "External storage permission needs to be granted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 112
    :cond_3
    const/4 v0, 0x0

    return-object v0
.end method
