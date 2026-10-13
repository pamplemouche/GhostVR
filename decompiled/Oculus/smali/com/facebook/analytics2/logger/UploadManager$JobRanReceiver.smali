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

    .prologue
    .line 395
    iput-object p1, p0, Lcom/facebook/analytics2/logger/UploadManager$JobRanReceiver;->this$0:Lcom/facebook/analytics2/logger/UploadManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/facebook/analytics2/logger/UploadManager;Lcom/facebook/analytics2/logger/UploadManager$1;)V
    .locals 0

    .prologue
    .line 395
    invoke-direct {p0, p1}, Lcom/facebook/analytics2/logger/UploadManager$JobRanReceiver;-><init>(Lcom/facebook/analytics2/logger/UploadManager;)V

    return-void
.end method

.method private isTrustedIntent(Landroid/content/Context;Landroid/content/Intent;)Z
    .locals 3

    .prologue
    .line 399
    const-string/jumbo v0, "uploader_service_broadcast_auth_token"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    .line 400
    if-nez v0, :cond_0

    .line 401
    const/4 v0, 0x0

    .line 413
    :goto_0
    return v0

    .line 404
    :cond_0
    check-cast v0, Landroid/app/PendingIntent;

    .line 406
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x11

    if-lt v1, v2, :cond_1

    .line 407
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getCreatorPackage()Ljava/lang/String;

    move-result-object v0

    .line 413
    :goto_1
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_0

    .line 409
    :cond_1
    invoke-virtual {v0}, Landroid/app/PendingIntent;->getTargetPackage()Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    .prologue
    .line 418
    if-nez p2, :cond_1

    .line 475
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    invoke-direct {p0, p1, p2}, Lcom/facebook/analytics2/logger/UploadManager$JobRanReceiver;->isTrustedIntent(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 426
    new-instance v0, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;-><init>(Landroid/os/Bundle;)V

    .line 427
    iget v1, v0, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->jobId:I

    iget-object v2, p0, Lcom/facebook/analytics2/logger/UploadManager$JobRanReceiver;->this$0:Lcom/facebook/analytics2/logger/UploadManager;

    iget v2, v2, Lcom/facebook/analytics2/logger/UploadManager;->mJobId:I

    if-ne v1, v2, :cond_0

    .line 430
    const-string v1, "UploadManager"

    const-string v2, "Job completed with jobId=%d (retrying=%s) with action: %s"

    iget v3, v0, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->jobId:I

    .line 433
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    iget-boolean v4, v0, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->willRetry:Z

    .line 434
    invoke-static {v4}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->action:Ljava/lang/String;

    .line 430
    invoke-static {v1, v2, v3, v4, v5}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 437
    iget-object v1, v0, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->action:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 440
    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadManager$JobRanReceiver;->this$0:Lcom/facebook/analytics2/logger/UploadManager;

    iget-object v2, v0, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->action:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/facebook/analytics2/logger/UploadManager;->access$100(Lcom/facebook/analytics2/logger/UploadManager;Ljava/lang/String;)V

    .line 441
    iget-boolean v1, v0, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->willRetry:Z

    if-nez v1, :cond_2

    .line 442
    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadManager$JobRanReceiver;->this$0:Lcom/facebook/analytics2/logger/UploadManager;

    iget-object v2, v0, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->action:Ljava/lang/String;

    invoke-static {v1, v2}, Lcom/facebook/analytics2/logger/UploadManager;->access$200(Lcom/facebook/analytics2/logger/UploadManager;Ljava/lang/String;)V

    .line 446
    :cond_2
    iget-boolean v1, v0, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->willRetry:Z

    if-nez v1, :cond_0

    .line 447
    iget-object v1, v0, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->action:Ljava/lang/String;

    if-nez v1, :cond_3

    .line 449
    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadManager$JobRanReceiver;->this$0:Lcom/facebook/analytics2/logger/UploadManager;

    invoke-static {v1}, Lcom/facebook/analytics2/logger/UploadManager;->access$300(Lcom/facebook/analytics2/logger/UploadManager;)V

    .line 452
    :cond_3
    invoke-static {}, Lcom/facebook/crudolib/processname/ProcessNameHelper;->getMyFullProcessName()Ljava/lang/String;

    move-result-object v1

    .line 453
    iget-object v2, v0, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->perProcessSuccessfulJobs:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v2, v1}, Landroidx/collection/SimpleArrayMap;->indexOfKey(Ljava/lang/Object;)I

    move-result v1

    .line 454
    if-ltz v1, :cond_0

    .line 456
    iget-object v0, v0, Lcom/facebook/analytics2/logger/UploadServiceBus$JobRanResult;->perProcessSuccessfulJobs:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    .line 458
    :try_start_0
    iget-object v1, p0, Lcom/facebook/analytics2/logger/UploadManager$JobRanReceiver;->this$0:Lcom/facebook/analytics2/logger/UploadManager;

    invoke-static {v1, v0}, Lcom/facebook/analytics2/logger/UploadManager;->access$400(Lcom/facebook/analytics2/logger/UploadManager;Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 459
    :catch_0
    move-exception v0

    .line 462
    invoke-virtual {v0}, Ljava/lang/NullPointerException;->getMessage()Ljava/lang/String;

    move-result-object v1

    .line 463
    const-string v2, "Attempt to invoke virtual method \'int com.android.server.job.controllers.JobStatus.getUid()\' on a null object reference"

    .line 467
    invoke-virtual {v1, v2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 468
    const-string v1, "UploadManager"

    const-string/jumbo v2, "system error while performing catch-up scheduling"

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 470
    :cond_4
    throw v0
.end method
