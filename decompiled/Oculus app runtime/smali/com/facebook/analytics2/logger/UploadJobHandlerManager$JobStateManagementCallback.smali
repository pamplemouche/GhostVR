.class Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobStateManagementCallback;
.super Ljava/lang/Object;
.source "UploadJobHandlerManager.java"

# interfaces
.implements Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/UploadJobHandlerManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JobStateManagementCallback"
.end annotation


# instance fields
.field private final mCallback:Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;

.field private final mJobId:I

.field final synthetic this$0:Lcom/facebook/analytics2/logger/UploadJobHandlerManager;


# direct methods
.method public constructor <init>(Lcom/facebook/analytics2/logger/UploadJobHandlerManager;ILcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;)V
    .locals 0

    .line 192
    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobStateManagementCallback;->this$0:Lcom/facebook/analytics2/logger/UploadJobHandlerManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 193
    iput p2, p0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobStateManagementCallback;->mJobId:I

    .line 194
    iput-object p3, p0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobStateManagementCallback;->mCallback:Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;

    return-void
.end method


# virtual methods
.method public onExit()V
    .locals 3

    .line 205
    iget v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobStateManagementCallback;->mJobId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "UploadJobHandlerManager"

    const-string v2, "onExit jobId: %d"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 207
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobStateManagementCallback;->this$0:Lcom/facebook/analytics2/logger/UploadJobHandlerManager;

    monitor-enter v0

    .line 208
    :try_start_0
    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobStateManagementCallback;->this$0:Lcom/facebook/analytics2/logger/UploadJobHandlerManager;

    invoke-static {v1}, Lcom/facebook/analytics2/logger/UploadJobHandlerManager;->access$200(Lcom/facebook/analytics2/logger/UploadJobHandlerManager;)Landroid/util/SparseArray;

    move-result-object v1

    iget v2, p0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobStateManagementCallback;->mJobId:I

    invoke-virtual {v1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobState;

    if-eqz v1, :cond_0

    .line 209
    invoke-virtual {v1}, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobState;->getCurrentJobHandler()Lcom/facebook/analytics2/logger/UploadJobHandler;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x0

    .line 212
    invoke-virtual {v1, v2}, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobState;->setCurrentJobHandler(Lcom/facebook/analytics2/logger/UploadJobHandler;)V

    .line 214
    invoke-virtual {v1}, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobState;->processNextJob()V

    .line 216
    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobStateManagementCallback;->mCallback:Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;

    invoke-interface {v1}, Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;->onExit()V

    .line 217
    monitor-exit v0

    return-void

    .line 210
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "There was not a running job when onExit was called"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :catchall_0
    move-exception v1

    .line 217
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public onVoluntaryCompletion(Z)V
    .locals 3

    .line 199
    iget v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobStateManagementCallback;->mJobId:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v1, "UploadJobHandlerManager"

    const-string v2, "onVoluntaryCompletion jobId: %d"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadJobHandlerManager$JobStateManagementCallback;->mCallback:Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;

    invoke-interface {v0, p1}, Lcom/facebook/analytics2/logger/UploadJobHandler$UploadJobHandlerCallback;->onVoluntaryCompletion(Z)V

    return-void
.end method
