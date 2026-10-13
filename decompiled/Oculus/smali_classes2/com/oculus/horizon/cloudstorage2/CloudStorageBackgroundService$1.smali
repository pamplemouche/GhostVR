.class Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService$1;
.super Ljava/lang/Object;
.source "CloudStorageBackgroundService.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService;->onStartJob(Landroid/app/job/JobParameters;)Z
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
.field final synthetic this$0:Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService;

.field final synthetic val$jobParameters:Landroid/app/job/JobParameters;

.field final synthetic val$uploadTask:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService;Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;Landroid/app/job/JobParameters;)V
    .locals 0

    .prologue
    .line 91
    iput-object p1, p0, Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService$1;->this$0:Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService;

    iput-object p2, p0, Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService$1;->val$uploadTask:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    iput-object p3, p0, Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService$1;->val$jobParameters:Landroid/app/job/JobParameters;

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
    .line 91
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService$1;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 3
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
    .line 94
    const/4 v0, 0x0

    .line 95
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 96
    invoke-static {}, Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService;->access$000()Ljava/lang/Class;

    move-result-object v0

    const-string v1, "Upload failed D:"

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 97
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService$1;->val$uploadTask:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    invoke-virtual {v0}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->shouldRetryOnFailure()Z

    move-result v0

    .line 103
    :goto_0
    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService$1;->this$0:Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService;

    iget-object v2, p0, Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService$1;->val$jobParameters:Landroid/app/job/JobParameters;

    invoke-virtual {v1, v2, v0}, Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService;->jobFinished(Landroid/app/job/JobParameters;Z)V

    .line 104
    const/4 v0, 0x0

    return-object v0

    .line 100
    :cond_0
    invoke-static {}, Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService;->access$000()Ljava/lang/Class;

    move-result-object v1

    const-string v2, "Upload success :D"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    goto :goto_0
.end method
