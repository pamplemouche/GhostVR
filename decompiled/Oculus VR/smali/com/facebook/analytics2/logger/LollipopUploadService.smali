.class public Lcom/facebook/analytics2/logger/LollipopUploadService;
.super Landroid/app/job/JobService;
.source "LollipopUploadService.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/analytics2/logger/LollipopUploadService$JobFinishedJobFinishedNotifier;
    }
.end annotation


# instance fields
.field mUploadServiceLogic:Lcom/facebook/analytics2/logger/UploadServiceLogic;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method private static isJobVersionCodeValid(Landroid/os/PersistableBundle;)Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 88
    if-nez p0, :cond_0

    .line 89
    const-string v1, "PostLolliopUploadService"

    const-string v2, "Job with no version code, cancelling job"

    invoke-static {v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 109
    :goto_0
    return v0

    .line 94
    :cond_0
    :try_start_0
    const-string v1, "__VERSION_CODE"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 101
    invoke-static {}, Lcom/facebook/common/build/BuildConstants;->getVersionCode()I

    move-result v2

    if-eq v2, v1, :cond_1

    .line 106
    const-string v2, "PostLolliopUploadService"

    const-string v3, "Job with old version code: %d, cancelling job"

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_0

    .line 95
    :catch_0
    move-exception v1

    .line 98
    const-string v2, "PostLolliopUploadService"

    const-string v3, "Corrupt bundle, cancelling job"

    invoke-static {v2, v1, v3}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/Throwable;Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .prologue
    .line 26
    invoke-static {p0}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadServiceLogic;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/LollipopUploadService;->mUploadServiceLogic:Lcom/facebook/analytics2/logger/UploadServiceLogic;

    .line 27
    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/facebook/analytics2/logger/LollipopUploadService;->mUploadServiceLogic:Lcom/facebook/analytics2/logger/UploadServiceLogic;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/UploadServiceLogic;

    new-instance v1, Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceCallback;

    invoke-direct {v1, p0, p3}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceCallback;-><init>(Landroid/app/Service;I)V

    const/4 v2, 0x0

    .line 62
    invoke-virtual {v0, p1, v1, v2}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->runJobFromService(Landroid/content/Intent;Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceCallback;I)I

    move-result v0

    return v0
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 32
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/analytics2/logger/LollipopUploadService;->isJobVersionCodeValid(Landroid/os/PersistableBundle;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 33
    const-string v0, "PostLolliopUploadService"

    const-string v1, "Stale job parameters, cancelling jobId: %d"

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    move v0, v6

    .line 47
    :goto_0
    return v0

    .line 37
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/LollipopUploadService;->mUploadServiceLogic:Lcom/facebook/analytics2/logger/UploadServiceLogic;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/UploadServiceLogic;

    .line 39
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    .line 40
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v2

    const-string v3, "action"

    invoke-virtual {v2, v3}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/facebook/analytics2/logger/UploadJobConfig;

    new-instance v4, Landroid/os/Bundle;

    .line 41
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v5

    invoke-direct {v4, v5}, Landroid/os/Bundle;-><init>(Landroid/os/PersistableBundle;)V

    invoke-direct {v3, v4}, Lcom/facebook/analytics2/logger/UploadJobConfig;-><init>(Landroid/os/Bundle;)V

    new-instance v4, Lcom/facebook/analytics2/logger/LollipopUploadService$JobFinishedJobFinishedNotifier;

    invoke-direct {v4, p0, p1}, Lcom/facebook/analytics2/logger/LollipopUploadService$JobFinishedJobFinishedNotifier;-><init>(Lcom/facebook/analytics2/logger/LollipopUploadService;Landroid/app/job/JobParameters;)V

    const/4 v5, 0x0

    .line 38
    invoke-virtual/range {v0 .. v5}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->runScheduledJob(ILjava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;Lcom/facebook/analytics2/logger/UploadServiceLogic$JobFinishedNotifier;I)V
    :try_end_0
    .catch Lcom/facebook/analytics2/logger/IllegalRemoteArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 44
    const/4 v0, 0x1

    goto :goto_0

    .line 45
    :catch_0
    move-exception v0

    .line 46
    const-string v1, "PostLolliopUploadService"

    const-string v2, "Misunderstood job service extras: %s"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    move v0, v6

    .line 47
    goto :goto_0
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Lcom/facebook/analytics2/logger/LollipopUploadService;->mUploadServiceLogic:Lcom/facebook/analytics2/logger/UploadServiceLogic;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/UploadServiceLogic;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->stopScheduledJob(I)V

    .line 55
    const/4 v0, 0x1

    return v0
.end method
