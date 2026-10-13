.class Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$12;
.super Ljava/lang/Object;
.source "UploadSyncTask.java"

# interfaces
.implements Ljava/util/concurrent/Callable;


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
        "Ljava/util/concurrent/Callable",
        "<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

.field final synthetic val$app:Lcom/oculus/library/model/App;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;Lcom/oculus/library/model/App;)V
    .locals 0

    .prologue
    .line 130
    iput-object p1, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$12;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    iput-object p2, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$12;->val$app:Lcom/oculus/library/model/App;

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
    .line 130
    invoke-virtual {p0}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$12;->call()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public call()Ljava/lang/Void;
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 133
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$12;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;->PREFLIGHT_CHECK:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$Step;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;->onProgress(Ljava/lang/Enum;)V

    .line 135
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$12;->val$app:Lcom/oculus/library/model/App;

    if-nez v0, :cond_0

    .line 136
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$12;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    invoke-static {v0, v4}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->access$602(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;Z)Z

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "App was not found in library!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$12;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$12;->val$app:Lcom/oculus/library/model/App;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;->setApp(Lcom/oculus/library/model/App;)V

    .line 142
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$12;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    invoke-static {v0}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->access$000(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;)Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;

    move-result-object v0

    const-string v1, "Cloud storage status is %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$12;->val$app:Lcom/oculus/library/model/App;

    iget-object v3, v3, Lcom/oculus/library/model/App;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    invoke-virtual {v3}, Lcom/oculus/library/model/CloudStorageStatus;->name()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter;->report(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 144
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$12;->val$app:Lcom/oculus/library/model/App;

    iget-object v0, v0, Lcom/oculus/library/model/App;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    invoke-static {v0}, Lcom/oculus/library/model/CloudStorageStatus;->isEnabled(Lcom/oculus/library/model/CloudStorageStatus;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 145
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$12;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    invoke-static {v0, v4}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->access$602(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;Z)Z

    .line 146
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cloud syncing is not enabled for this app!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 149
    :cond_1
    const/4 v0, 0x2

    sget v1, Lcom/oculus/processtokentracker/ProcesstokentrackerModule$UL_id;->$ul_$xXXcom_oculus_processtokentracker_ProcessTokenTracker$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$12;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    invoke-static {v2}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->access$500(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;)Lcom/facebook/inject/InjectionContext;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/processtokentracker/ProcessTokenTracker;

    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$12;->val$app:Lcom/oculus/library/model/App;

    iget-object v1, v1, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/processtokentracker/ProcessTokenTracker;->containsAny(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 150
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "App process is currently running!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 153
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$12;->val$app:Lcom/oculus/library/model/App;

    iget-object v0, v0, Lcom/oculus/library/model/App;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    invoke-static {v0}, Lcom/oculus/library/model/CloudStorageStatus;->isSyncing(Lcom/oculus/library/model/CloudStorageStatus;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 154
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "There is an existing sync running for this app!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 158
    :cond_3
    sget v0, Lcom/oculus/horizon/cloudstorage2/Cloudstorage2Module$UL_id;->$ul_$xXXcom_oculus_horizon_cloudstorage2_CloudStorageManager$xXXBINDING_ID:I

    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$12;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    invoke-static {v1}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->access$500(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;)Lcom/facebook/inject/InjectionContext;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;->hasExternalStoragePermission()Z

    move-result v0

    if-nez v0, :cond_4

    .line 159
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$12;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    invoke-static {v0, v4}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->access$602(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;Z)Z

    .line 160
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "External storage permission needs to be granted"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 164
    :cond_4
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$12;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$12;->val$app:Lcom/oculus/library/model/App;

    iget-object v1, v1, Lcom/oculus/library/model/App;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    invoke-static {v1}, Lcom/google/common/base/Optional;->of(Ljava/lang/Object;)Lcom/google/common/base/Optional;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->access$702(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;Lcom/google/common/base/Optional;)Lcom/google/common/base/Optional;

    .line 165
    sget v0, Lcom/oculus/horizon/cloudstorage2/Cloudstorage2Module$UL_id;->$ul_$xXXcom_oculus_horizon_cloudstorage2_CloudStorageManager$xXXBINDING_ID:I

    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$12;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    invoke-static {v1}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->access$500(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;)Lcom/facebook/inject/InjectionContext;

    move-result-object v1

    invoke-static {v4, v0, v1}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;

    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask$12;->this$0:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    invoke-static {v1}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->access$800(Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/oculus/library/model/CloudStorageStatus;->UPLOAD_SYNCING:Lcom/oculus/library/model/CloudStorageStatus;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/cloudstorage2/CloudStorageManager;->setAppStatus(Ljava/lang/String;Lcom/oculus/library/model/CloudStorageStatus;)I

    .line 167
    const/4 v0, 0x0

    return-object v0
.end method
