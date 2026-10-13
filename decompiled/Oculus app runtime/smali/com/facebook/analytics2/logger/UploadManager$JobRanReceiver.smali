.class Lcom/facebook/analytics2/logger/UploadManager$JobRanReceiver;
.super Landroid/content/BroadcastReceiver;
.source "UploadManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/analytics2/logger/UploadManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "JobRanReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/facebook/analytics2/logger/UploadManager;


# direct methods
.method private constructor <init>(Lcom/facebook/analytics2/logger/UploadManager;)V
    .locals 0

    .line 391
    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadManager$JobRanReceiver;->this$0:Lcom/facebook/analytics2/logger/UploadManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/analytics2/logger/UploadManager;Lcom/facebook/analytics2/logger/UploadManager$1;)V
    .locals 0

    .line 391
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/UploadManager$JobRanReceiver;-><init>(Lcom/facebook/analytics2/logger/UploadManager;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    .line 394
    new-instance p1, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object p2

    invoke-direct {p1, p2}, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;-><init>(Landroid/os/Bundle;)V

    .line 395
    iget p2, p1, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->jobId:I

    iget-object v0, p0, Lcom/facebook/analytics2/logger/UploadManager$JobRanReceiver;->this$0:Lcom/facebook/analytics2/logger/UploadManager;

    iget v0, v0, Lcom/facebook/analytics2/logger/UploadManager;->mJobId:I

    if-eq p2, v0, :cond_0

    return-void

    .line 398
    :cond_0
    iget p2, p1, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->jobId:I

    .line 401
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    iget-boolean v0, p1, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->willRetry:Z

    .line 402
    invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p1, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->action:Ljava/lang/String;

    const-string v2, "UploadManager"

    const-string v3, "Job completed with jobId=%d (retrying=%s) with action: %s"

    .line 398
    invoke-static {v2, v3, p2, v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 405
    iget-object p2, p1, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->action:Ljava/lang/String;

    if-eqz p2, :cond_1

    .line 408
    iget-object p2, p0, Lcom/facebook/analytics2/logger/UploadManager$JobRanReceiver;->this$0:Lcom/facebook/analytics2/logger/UploadManager;

    iget-object v0, p1, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->action:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/facebook/analytics2/logger/UploadManager;->access$100(Lcom/facebook/analytics2/logger/UploadManager;Ljava/lang/String;)V

    .line 409
    iget-boolean p2, p1, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->willRetry:Z

    if-nez p2, :cond_1

    .line 410
    iget-object p2, p0, Lcom/facebook/analytics2/logger/UploadManager$JobRanReceiver;->this$0:Lcom/facebook/analytics2/logger/UploadManager;

    iget-object v0, p1, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->action:Ljava/lang/String;

    invoke-static {p2, v0}, Lcom/facebook/analytics2/logger/UploadManager;->access$200(Lcom/facebook/analytics2/logger/UploadManager;Ljava/lang/String;)V

    .line 414
    :cond_1
    iget-boolean p2, p1, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->willRetry:Z

    if-nez p2, :cond_4

    .line 415
    iget-object p2, p1, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->action:Ljava/lang/String;

    if-nez p2, :cond_2

    .line 417
    iget-object p2, p0, Lcom/facebook/analytics2/logger/UploadManager$JobRanReceiver;->this$0:Lcom/facebook/analytics2/logger/UploadManager;

    invoke-static {p2}, Lcom/facebook/analytics2/logger/UploadManager;->access$300(Lcom/facebook/analytics2/logger/UploadManager;)V

    .line 420
    :cond_2
    invoke-static {}, Lcom/facebook/crudolib/processname/ProcessNameHelper;->getMyFullProcessName()Ljava/lang/String;

    move-result-object p2

    .line 421
    iget-object v0, p1, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->perProcessSuccessfulJobs:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {v0, p2}, Landroid/support/v4/util/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result p2

    if-ltz p2, :cond_4

    .line 424
    iget-object p1, p1, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->perProcessSuccessfulJobs:Landroid/support/v4/util/SimpleArrayMap;

    invoke-virtual {p1, p2}, Landroid/support/v4/util/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/io/File;

    .line 426
    :try_start_0
    iget-object p2, p0, Lcom/facebook/analytics2/logger/UploadManager$JobRanReceiver;->this$0:Lcom/facebook/analytics2/logger/UploadManager;

    invoke-static {p2, p1}, Lcom/facebook/analytics2/logger/UploadManager;->access$400(Lcom/facebook/analytics2/logger/UploadManager;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 430
    invoke-virtual {p1}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object p2

    const-string v0, "Attempt to invoke virtual method \'int com.android.server.job.controllers.JobStatus.getUid()\' on a null object reference"

    .line 435
    invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x0

    .line 436
    new-array p2, p2, [Ljava/lang/Object;

    const-string v0, "system error while performing catch-up scheduling"

    invoke-static {v2, p1, v0, p2}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0

    .line 438
    :cond_3
    throw p1

    :cond_4
    :goto_0
    return-void
.end method
