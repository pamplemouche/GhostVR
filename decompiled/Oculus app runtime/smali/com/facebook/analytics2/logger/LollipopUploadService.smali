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


# static fields
.field private static final TAG:Ljava/lang/String; = "PostLolliopUploadService"


# instance fields
.field mUploadServiceLogic:Lcom/facebook/analytics2/logger/UploadServiceLogic;
    .annotation build Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 18
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method private static isJobVersionCodeValid(Landroid/os/PersistableBundle;)Z
    .locals 3

    const-string v0, "PostLolliopUploadService"

    const/4 v1, 0x0

    if-nez p0, :cond_0

    const-string p0, "Job with no version code, cancelling job"

    .line 88
    invoke-static {v0, p0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    return v1

    :cond_0
    const-string v2, "__VERSION_CODE"

    .line 91
    invoke-virtual {p0, v2, v1}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result p0

    if-nez p0, :cond_1

    .line 97
    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    const-string v2, "Job with old version code: %d, cancelling job"

    invoke-static {v0, v2, p0}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    :cond_1
    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method public onCreate()V
    .locals 1

    .line 25
    invoke-static {p0}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->getInstance(Landroid/content/Context;)Lcom/facebook/analytics2/logger/UploadServiceLogic;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/analytics2/logger/LollipopUploadService;->mUploadServiceLogic:Lcom/facebook/analytics2/logger/UploadServiceLogic;

    return-void
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 1

    .line 60
    iget-object p2, p0, Lcom/facebook/analytics2/logger/LollipopUploadService;->mUploadServiceLogic:Lcom/facebook/analytics2/logger/UploadServiceLogic;

    invoke-static {p2}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/analytics2/logger/UploadServiceLogic;

    new-instance v0, Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceCallback;

    invoke-direct {v0, p0, p3}, Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceCallback;-><init>(Landroid/app/Service;I)V

    const/4 p3, 0x0

    .line 61
    invoke-virtual {p2, p1, v0, p3}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->runJobFromService(Landroid/content/Intent;Lcom/facebook/analytics2/logger/UploadServiceLogic$StopServiceCallback;I)I

    move-result p1

    return p1
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 9

    .line 31
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/analytics2/logger/LollipopUploadService;->isJobVersionCodeValid(Landroid/os/PersistableBundle;)Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "PostLolliopUploadService"

    if-nez v0, :cond_0

    .line 32
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const-string v0, "Stale job parameters, cancelling jobId: %d"

    invoke-static {v2, v0, p1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return v1

    .line 36
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/facebook/analytics2/logger/LollipopUploadService;->mUploadServiceLogic:Lcom/facebook/analytics2/logger/UploadServiceLogic;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    move-object v3, v0

    check-cast v3, Lcom/facebook/analytics2/logger/UploadServiceLogic;

    .line 38
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result v4

    .line 39
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    const-string v5, "action"

    invoke-virtual {v0, v5}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Lcom/facebook/analytics2/logger/UploadJobConfig;

    new-instance v0, Landroid/os/Bundle;

    .line 40
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v7

    invoke-direct {v0, v7}, Landroid/os/Bundle;-><init>(Landroid/os/PersistableBundle;)V

    invoke-direct {v6, v0}, Lcom/facebook/analytics2/logger/UploadJobConfig;-><init>(Landroid/os/Bundle;)V

    new-instance v7, Lcom/facebook/analytics2/logger/LollipopUploadService$JobFinishedJobFinishedNotifier;

    invoke-direct {v7, p0, p1}, Lcom/facebook/analytics2/logger/LollipopUploadService$JobFinishedJobFinishedNotifier;-><init>(Lcom/facebook/analytics2/logger/LollipopUploadService;Landroid/app/job/JobParameters;)V

    const/4 v8, 0x0

    .line 37
    invoke-virtual/range {v3 .. v8}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->runScheduledJob(ILjava/lang/String;Lcom/facebook/analytics2/logger/UploadJobConfig;Lcom/facebook/analytics2/logger/UploadServiceLogic$JobFinishedNotifier;I)V
    :try_end_0
    .catch Lcom/facebook/analytics2/logger/IllegalRemoteArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    const/4 p1, 0x1

    return p1

    :catch_0
    move-exception p1

    const-string v0, "Misunderstood job service extras: %s"

    .line 45
    invoke-static {v2, v0, p1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    return v1
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 1

    .line 53
    iget-object v0, p0, Lcom/facebook/analytics2/logger/LollipopUploadService;->mUploadServiceLogic:Lcom/facebook/analytics2/logger/UploadServiceLogic;

    invoke-static {v0}, Lcom/facebook/infer/annotation/Assertions;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/analytics2/logger/UploadServiceLogic;

    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getJobId()I

    move-result p1

    invoke-virtual {v0, p1}, Lcom/facebook/analytics2/logger/UploadServiceLogic;->stopScheduledJob(I)V

    const/4 p1, 0x1

    return p1
.end method
