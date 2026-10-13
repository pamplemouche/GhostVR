.class public Lcom/oculus/horizon/cloudstorage2/task/UploadMutationTask;
.super Lcom/oculus/horizon/cloudstorage2/task/AsyncWork;
.source "UploadMutationTask.java"


# annotations
.annotation runtime Lcom/facebook/ultralight/Dependencies;
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/cloudstorage2/task/AsyncWork",
        "<",
        "Lcom/oculus/horizon/api/cloudstorage2/UploadAndRemoveUserCloudFilesResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private $ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

.field private final mAppGroupingId:Ljava/lang/String;

.field private final mRemoves:[Lcom/oculus/horizon/api/cloudstorage2/RemoveUserCloudFile;

.field private final mUploads:[Lcom/oculus/horizon/api/cloudstorage2/UploadUserCloudFile;


# direct methods
.method public constructor <init>(Lcom/facebook/inject/InjectorLike;Ljava/lang/String;[Lcom/oculus/horizon/api/cloudstorage2/UploadUserCloudFile;[Lcom/oculus/horizon/api/cloudstorage2/RemoveUserCloudFile;Lcom/oculus/horizon/cloudstorage2/Reporter;)V
    .locals 2
    .param p2    # Ljava/lang/String;
        .annotation runtime Lcom/facebook/inject/Assisted;
        .end annotation
    .end param
    .param p3    # [Lcom/oculus/horizon/api/cloudstorage2/UploadUserCloudFile;
        .annotation runtime Lcom/facebook/inject/Assisted;
        .end annotation
    .end param
    .param p4    # [Lcom/oculus/horizon/api/cloudstorage2/RemoveUserCloudFile;
        .annotation runtime Lcom/facebook/inject/Assisted;
        .end annotation
    .end param
    .param p5    # Lcom/oculus/horizon/cloudstorage2/Reporter;
        .annotation runtime Lcom/facebook/inject/Assisted;
        .end annotation
    .end param
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation

    .prologue
    .line 35
    invoke-direct {p0, p5}, Lcom/oculus/horizon/cloudstorage2/task/AsyncWork;-><init>(Lcom/oculus/horizon/cloudstorage2/Reporter;)V

    .line 30
    new-instance v0, Lcom/facebook/inject/InjectionContext;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p1}, Lcom/facebook/inject/InjectionContext;-><init>(ILcom/facebook/inject/InjectorLike;)V

    iput-object v0, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadMutationTask;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    .line 37
    iput-object p2, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadMutationTask;->mAppGroupingId:Ljava/lang/String;

    .line 38
    iput-object p3, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadMutationTask;->mUploads:[Lcom/oculus/horizon/api/cloudstorage2/UploadUserCloudFile;

    .line 39
    iput-object p4, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadMutationTask;->mRemoves:[Lcom/oculus/horizon/api/cloudstorage2/RemoveUserCloudFile;

    .line 40
    return-void
.end method


# virtual methods
.method public run()Lbolts/Task;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Lcom/oculus/horizon/api/cloudstorage2/UploadAndRemoveUserCloudFilesResponse;",
            ">;"
        }
    .end annotation

    .prologue
    .line 44
    new-instance v1, Lbolts/TaskCompletionSource;

    invoke-direct {v1}, Lbolts/TaskCompletionSource;-><init>()V

    .line 47
    const/4 v0, 0x0

    sget v2, Lcom/oculus/horizon/api/ApiModule$UL_id;->$ul_$xXXcom_oculus_horizon_api_ApiRequestManager$xXXBINDING_ID:I

    iget-object v3, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadMutationTask;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v2, v3}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/ApiRequestManager;

    new-instance v2, Lcom/oculus/horizon/api/cloudstorage2/UploadAndRemoveUserCloudFilesRequest;

    iget-object v3, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadMutationTask;->mAppGroupingId:Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadMutationTask;->mUploads:[Lcom/oculus/horizon/api/cloudstorage2/UploadUserCloudFile;

    iget-object v5, p0, Lcom/oculus/horizon/cloudstorage2/task/UploadMutationTask;->mRemoves:[Lcom/oculus/horizon/api/cloudstorage2/RemoveUserCloudFile;

    invoke-direct {v2, v3, v4, v5}, Lcom/oculus/horizon/api/cloudstorage2/UploadAndRemoveUserCloudFilesRequest;-><init>(Ljava/lang/String;[Lcom/oculus/horizon/api/cloudstorage2/UploadUserCloudFile;[Lcom/oculus/horizon/api/cloudstorage2/RemoveUserCloudFile;)V

    new-instance v3, Lcom/oculus/horizon/cloudstorage2/task/UploadMutationTask$1;

    invoke-direct {v3, p0, v1}, Lcom/oculus/horizon/cloudstorage2/task/UploadMutationTask$1;-><init>(Lcom/oculus/horizon/cloudstorage2/task/UploadMutationTask;Lbolts/TaskCompletionSource;)V

    invoke-virtual {v0, v2, v3}, Lcom/oculus/horizon/api/ApiRequestManager;->post(Lcom/oculus/http/core/base/ApiRequest;Lcom/oculus/http/core/base/ApiCallback;)V

    .line 61
    invoke-virtual {v1}, Lbolts/TaskCompletionSource;->getTask()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method
