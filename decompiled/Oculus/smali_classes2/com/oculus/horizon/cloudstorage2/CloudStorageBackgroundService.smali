.class public Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService;
.super Landroid/app/job/JobService;
.source "CloudStorageBackgroundService.java"


# static fields
.field public static final JOB_ID:I

.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private mCloudStorageLogger:Lcom/oculus/horizon/cloudstorage2/CloudStorageLogger;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mUploadSyncTaskProvider:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTaskProvider;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService;)V
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService;)V
    .locals 1

    .prologue
    .line 28
    invoke-static {p0}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->$ul_$xXXcom_oculus_horizon_cloudstorage2_task_UploadSyncTaskProvider$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTaskProvider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService;->mUploadSyncTaskProvider:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTaskProvider;

    invoke-static {p0}, Lcom/oculus/horizon/cloudstorage2/CloudStorageLogger;->$ul_$xXXcom_oculus_horizon_cloudstorage2_CloudStorageLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/cloudstorage2/CloudStorageLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService;->mCloudStorageLogger:Lcom/oculus/horizon/cloudstorage2/CloudStorageLogger;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-class v0, Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService;

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService;->TAG:Ljava/lang/Class;

    .line 32
    const-class v0, Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    sput v0, Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService;->JOB_ID:I

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/app/job/JobService;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService;->TAG:Ljava/lang/Class;

    return-object v0
.end method

.method private static schedule(Landroid/content/Context;Landroid/os/PersistableBundle;)V
    .locals 5

    .prologue
    .line 49
    const-string v0, "jobscheduler"

    .line 50
    invoke-virtual {p0, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/job/JobScheduler;

    .line 52
    new-instance v1, Landroid/app/job/JobInfo$Builder;

    sget v2, Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService;->JOB_ID:I

    new-instance v3, Landroid/content/ComponentName;

    const-class v4, Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService;

    invoke-direct {v3, p0, v4}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-direct {v1, v2, v3}, Landroid/app/job/JobInfo$Builder;-><init>(ILandroid/content/ComponentName;)V

    const/4 v2, 0x1

    .line 54
    invoke-virtual {v1, v2}, Landroid/app/job/JobInfo$Builder;->setRequiredNetworkType(I)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 55
    invoke-virtual {v1, p1}, Landroid/app/job/JobInfo$Builder;->setExtras(Landroid/os/PersistableBundle;)Landroid/app/job/JobInfo$Builder;

    move-result-object v1

    .line 56
    invoke-virtual {v1}, Landroid/app/job/JobInfo$Builder;->build()Landroid/app/job/JobInfo;

    move-result-object v1

    .line 52
    invoke-virtual {v0, v1}, Landroid/app/job/JobScheduler;->schedule(Landroid/app/job/JobInfo;)I

    .line 57
    return-void
.end method

.method public static scheduleUpload(Landroid/content/Context;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 39
    sget-object v0, Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService;->TAG:Ljava/lang/Class;

    const-string v1, "Queue service for an upload sync."

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;)V

    .line 40
    new-instance v0, Landroid/os/PersistableBundle;

    invoke-direct {v0}, Landroid/os/PersistableBundle;-><init>()V

    .line 41
    const-string v1, "work_type"

    sget-object v2, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$JobType;->UPLOAD:Lcom/oculus/cloudstoragehelper/CloudStorageHelper$JobType;

    .line 42
    invoke-virtual {v2}, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$JobType;->name()Ljava/lang/String;

    move-result-object v2

    .line 41
    invoke-virtual {v0, v1, v2}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    const-string v1, "app_id"

    invoke-virtual {v0, v1, p1}, Landroid/os/PersistableBundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    invoke-static {p0, v0}, Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService;->schedule(Landroid/content/Context;Landroid/os/PersistableBundle;)V

    .line 46
    return-void
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 61
    invoke-super {p0}, Landroid/app/job/JobService;->onCreate()V

    .line 28
    invoke-static {p0, p0}, Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService;)V

    .line 63
    return-void
.end method

.method public onStartJob(Landroid/app/job/JobParameters;)Z
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 67
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 69
    const-string v1, "app_id"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 70
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Application ID was not provided!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 73
    :cond_0
    const-string v1, "work_type"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 74
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Work type was not provided!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 77
    :cond_1
    const-string v1, "app_id"

    invoke-virtual {v0, v1}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 78
    const-string v2, "work_type"

    .line 80
    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 79
    invoke-static {v0}, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$JobType;->valueOf(Ljava/lang/String;)Lcom/oculus/cloudstoragehelper/CloudStorageHelper$JobType;

    move-result-object v0

    .line 82
    sget-object v2, Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService$2;->$SwitchMap$com$oculus$cloudstoragehelper$CloudStorageHelper$JobType:[I

    invoke-virtual {v0}, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$JobType;->ordinal()I

    move-result v0

    aget v0, v2, v0

    packed-switch v0, :pswitch_data_0

    .line 112
    :goto_0
    return v3

    .line 84
    :pswitch_0
    sget-object v0, Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService;->TAG:Ljava/lang/Class;

    const-string v2, "Run an upload sync for app %s"

    invoke-static {v0, v2, v1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 85
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService;->mCloudStorageLogger:Lcom/oculus/horizon/cloudstorage2/CloudStorageLogger;

    const-string v2, "background_upload"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/cloudstorage2/CloudStorageLogger;->reportServiceOperation(Ljava/lang/String;Ljava/lang/String;)V

    .line 87
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService;->mUploadSyncTaskProvider:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTaskProvider;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTaskProvider;->get(Ljava/lang/String;)Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    move-result-object v0

    .line 89
    invoke-virtual {v0}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->run()Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService$1;-><init>(Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService;Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;Landroid/app/job/JobParameters;)V

    .line 90
    invoke-virtual {v1, v2}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    goto :goto_0

    .line 109
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Download sync for background service is not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onStopJob(Landroid/app/job/JobParameters;)Z
    .locals 6

    .prologue
    const/4 v5, 0x1

    .line 117
    invoke-virtual {p1}, Landroid/app/job/JobParameters;->getExtras()Landroid/os/PersistableBundle;

    move-result-object v0

    .line 121
    invoke-static {}, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$JobType;->values()[Lcom/oculus/cloudstoragehelper/CloudStorageHelper$JobType;

    move-result-object v1

    const-string v2, "work_type"

    const/4 v3, -0x1

    .line 122
    invoke-virtual {v0, v2, v3}, Landroid/os/PersistableBundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    aget-object v1, v1, v2

    .line 123
    const-string v2, "app_id"

    invoke-virtual {v0, v2}, Landroid/os/PersistableBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 125
    sget-object v2, Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService$2;->$SwitchMap$com$oculus$cloudstoragehelper$CloudStorageHelper$JobType:[I

    invoke-virtual {v1}, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$JobType;->ordinal()I

    move-result v1

    aget v1, v2, v1

    packed-switch v1, :pswitch_data_0

    .line 134
    :goto_0
    return v5

    .line 127
    :pswitch_0
    sget-object v1, Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService;->TAG:Ljava/lang/Class;

    const-string v2, "Upload sync for app %s was interrupted."

    new-array v3, v5, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    invoke-static {v1, v2, v3}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 128
    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/CloudStorageBackgroundService;->mUploadSyncTaskProvider:Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTaskProvider;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTaskProvider;->get(Ljava/lang/String;)Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/cloudstorage2/task/UploadSyncTask;->onInterrupted()V

    goto :goto_0

    .line 131
    :pswitch_1
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Download sync for background service is not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 125
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
