.class public Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;
.super Landroid/app/IntentService;
.source "CloudStorageIntentService.java"


# static fields
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

.field private mDownloadSyncTaskProvider:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTaskProvider;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mResolveConflictTaskProvider:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTaskProvider;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mSignatureChecker:Lcom/oculus/signature/inject/SignatureChecker;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;)V
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;)V
    .locals 1

    .prologue
    .line 32
    invoke-static {p0}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;->$ul_$xXXcom_oculus_horizon_cloudstorage2_task_DownloadSyncTaskProvider$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTaskProvider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;->mDownloadSyncTaskProvider:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTaskProvider;

    invoke-static {p0}, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;->$ul_$xXXcom_oculus_horizon_cloudstorage2_task_ResolveConflictTaskProvider$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTaskProvider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;->mResolveConflictTaskProvider:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTaskProvider;

    invoke-static {p0}, Lcom/oculus/signature/inject/SignatureChecker;->$ul_$xXXcom_oculus_signature_inject_SignatureChecker$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/signature/inject/SignatureChecker;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;->mSignatureChecker:Lcom/oculus/signature/inject/SignatureChecker;

    invoke-static {p0}, Lcom/oculus/horizon/cloudstorage2/CloudStorageLogger;->$ul_$xXXcom_oculus_horizon_cloudstorage2_CloudStorageLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/cloudstorage2/CloudStorageLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;->mCloudStorageLogger:Lcom/oculus/horizon/cloudstorage2/CloudStorageLogger;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;

    sput-object v0, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;->TAG:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 42
    sget-object v0, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;->TAG:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 43
    return-void
.end method

.method private onHandleIntentWithThrows(Landroid/content/Intent;)V
    .locals 8
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 65
    if-nez p1, :cond_0

    .line 66
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Empty intent received!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 69
    :cond_0
    invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v0

    .line 71
    const-string v1, "app_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 72
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Application ID was not provided!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 75
    :cond_1
    const-string v1, "work_type"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 76
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Work type was not provided!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_2
    const-string v1, "callback_receiver"

    .line 80
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    .line 82
    if-nez v1, :cond_3

    .line 83
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Result callback was not provided!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 86
    :cond_3
    const-string v1, "app_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 88
    const-string v2, "work_type"

    .line 90
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 89
    invoke-static {v2}, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;->valueOf(Ljava/lang/String;)Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;

    move-result-object v2

    .line 92
    new-instance v3, Lcom/oculus/ipc/common/ParcelableCallbackReceiver;

    const-string v4, "callback_receiver"

    .line 94
    invoke-virtual {v0, v4}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/oculus/ipc/common/ParcelableCallbackReceiver;-><init>(Landroid/os/Parcelable;)V

    .line 97
    :try_start_0
    new-instance v4, Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;

    invoke-direct {v4}, Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;-><init>()V

    invoke-virtual {v4, v0}, Lcom/oculus/ipc/service/CallerIdentityHandshakeServer;->getCallingUid(Landroid/os/Bundle;)I

    move-result v4

    .line 98
    sget-object v5, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;->TAG:Ljava/lang/Class;

    const-string v6, "Handshake complete, checking package signature for uid %d"

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-static {v5, v6, v7}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 99
    iget-object v5, p0, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;->mSignatureChecker:Lcom/oculus/signature/inject/SignatureChecker;

    invoke-virtual {v5, v4}, Lcom/oculus/signature/inject/SignatureChecker;->throwIfNotFirstParty(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 104
    sget-object v4, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService$5;->$SwitchMap$com$oculus$cloudstoragehelper$CloudStorageHelper$RunType:[I

    invoke-virtual {v2}, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$RunType;->ordinal()I

    move-result v2

    aget v2, v4, v2

    packed-switch v2, :pswitch_data_0

    .line 121
    :goto_0
    return-void

    .line 100
    :catch_0
    move-exception v0

    .line 101
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Calling identity could not be verified!"

    invoke-direct {v1, v2, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 106
    :pswitch_0
    invoke-direct {p0, v1, v3}, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;->runSynchronousLaunchSync(Ljava/lang/String;Lcom/oculus/ipc/common/ParcelableCallbackReceiver;)V

    goto :goto_0

    .line 109
    :pswitch_1
    const-string v2, "conflict_resolution"

    invoke-virtual {v0, v2}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 110
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Conflict resolution option was not provided!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 113
    :cond_4
    const-string v2, "conflict_resolution"

    .line 115
    invoke-virtual {v0, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 114
    invoke-static {v0}, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;->valueOf(Ljava/lang/String;)Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;

    move-result-object v0

    .line 117
    sget-object v2, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;->TAG:Ljava/lang/Class;

    const-string v4, "Resolve a conflict for %s with option %s"

    invoke-static {v2, v4, v1, v0}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 118
    invoke-direct {p0, v1, v0, v3}, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;->runSynchronousResolveConflict(Ljava/lang/String;Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;Lcom/oculus/ipc/common/ParcelableCallbackReceiver;)V

    goto :goto_0

    .line 104
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private runSynchronousLaunchSync(Ljava/lang/String;Lcom/oculus/ipc/common/ParcelableCallbackReceiver;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/ipc/common/ParcelableCallbackReceiver",
            "<",
            "Lcom/oculus/cloudstoragehelper/CloudStorageCallback;",
            "Lcom/oculus/cloudstoragehelper/CloudStorageResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 126
    sget-object v0, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;->TAG:Ljava/lang/Class;

    const-string v1, "Run a launch sync for app %s"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 127
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;->mCloudStorageLogger:Lcom/oculus/horizon/cloudstorage2/CloudStorageLogger;

    const-string v1, "launch_sync"

    invoke-virtual {v0, p1, v1}, Lcom/oculus/horizon/cloudstorage2/CloudStorageLogger;->reportServiceOperation(Ljava/lang/String;Ljava/lang/String;)V

    .line 131
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 133
    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;->mDownloadSyncTaskProvider:Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTaskProvider;

    invoke-virtual {v1, p1}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTaskProvider;->get(Ljava/lang/String;)Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;

    move-result-object v1

    .line 134
    new-instance v2, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService$1;

    invoke-direct {v2, p0, p2}, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService$1;-><init>(Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;Lcom/oculus/ipc/common/ParcelableCallbackReceiver;)V

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;->setProgressListener(Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter$ProgressListener;)V

    .line 143
    invoke-virtual {v1}, Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;->run()Lbolts/Task;

    move-result-object v2

    new-instance v3, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService$2;

    invoke-direct {v3, p0, v1, p2, v0}, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService$2;-><init>(Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;Lcom/oculus/horizon/cloudstorage2/task/DownloadSyncTask;Lcom/oculus/ipc/common/ParcelableCallbackReceiver;Ljava/util/concurrent/CountDownLatch;)V

    .line 144
    invoke-virtual {v2, v3}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    .line 168
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 172
    :goto_0
    return-void

    .line 169
    :catch_0
    move-exception v0

    .line 170
    sget-object v1, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;->TAG:Ljava/lang/Class;

    const-string v2, "Launch sync latch was interrupted!"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private runSynchronousResolveConflict(Ljava/lang/String;Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;Lcom/oculus/ipc/common/ParcelableCallbackReceiver;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;",
            "Lcom/oculus/ipc/common/ParcelableCallbackReceiver",
            "<",
            "Lcom/oculus/cloudstoragehelper/CloudStorageCallback;",
            "Lcom/oculus/cloudstoragehelper/CloudStorageResult;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 178
    sget-object v0, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;->TAG:Ljava/lang/Class;

    const-string v1, "Run a resolve conflict for app %s"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 179
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;->mCloudStorageLogger:Lcom/oculus/horizon/cloudstorage2/CloudStorageLogger;

    invoke-virtual {p2}, Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/oculus/horizon/cloudstorage2/CloudStorageLogger;->reportServiceOperation(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    .line 183
    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;->mResolveConflictTaskProvider:Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTaskProvider;

    .line 184
    invoke-static {p2}, Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;->from(Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;)Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTaskProvider;->get(Ljava/lang/String;Lcom/oculus/horizon/cloudstorage2/model/CloudStorage2ResolutionPolicy;)Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;

    move-result-object v1

    .line 185
    new-instance v2, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService$3;

    invoke-direct {v2, p0, p3}, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService$3;-><init>(Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;Lcom/oculus/ipc/common/ParcelableCallbackReceiver;)V

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;->setProgressListener(Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter$ProgressListener;)V

    .line 194
    invoke-virtual {v1}, Lcom/oculus/horizon/cloudstorage2/task/ResolveConflictTask;->run()Lbolts/Task;

    move-result-object v1

    new-instance v2, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService$4;

    invoke-direct {v2, p0, p3, v0}, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService$4;-><init>(Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;Lcom/oculus/ipc/common/ParcelableCallbackReceiver;Ljava/util/concurrent/CountDownLatch;)V

    .line 195
    invoke-virtual {v1, v2}, Lbolts/Task;->continueWith(Lbolts/Continuation;)Lbolts/Task;

    .line 210
    :try_start_0
    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 214
    :goto_0
    return-void

    .line 211
    :catch_0
    move-exception v0

    .line 212
    sget-object v1, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;->TAG:Ljava/lang/Class;

    const-string v2, "Resolve conflict latch was interrupted!"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method


# virtual methods
.method public onCreate()V
    .locals 0

    .prologue
    .line 47
    invoke-super {p0}, Landroid/app/IntentService;->onCreate()V

    .line 32
    invoke-static {p0, p0}, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;)V

    .line 49
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 3
    .param p1    # Landroid/content/Intent;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "CatchGeneralException"
        }
    .end annotation

    .prologue
    .line 54
    sget-object v0, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;->TAG:Ljava/lang/Class;

    const-string v1, "onHandleIntent"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->v(Ljava/lang/Class;Ljava/lang/String;)V

    .line 56
    :try_start_0
    invoke-direct {p0, p1}, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;->onHandleIntentWithThrows(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 62
    :goto_0
    return-void

    .line 57
    :catch_0
    move-exception v0

    .line 59
    sget-object v1, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;->TAG:Ljava/lang/Class;

    const-string v2, "Failed to start cloud storage action!"

    invoke-static {v1, v2, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 60
    iget-object v1, p0, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;->mCloudStorageLogger:Lcom/oculus/horizon/cloudstorage2/CloudStorageLogger;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/cloudstorage2/CloudStorageLogger;->reportServiceError(Ljava/lang/Exception;)V

    goto :goto_0
.end method
