.class Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService$3;
.super Ljava/lang/Object;
.source "CloudStorageIntentService.java"

# interfaces
.implements Lcom/oculus/horizon/cloudstorage2/TaskProgressReporter$ProgressListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;->runSynchronousResolveConflict(Ljava/lang/String;Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;Lcom/oculus/ipc/common/ParcelableCallbackReceiver;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;

.field final synthetic val$receiver:Lcom/oculus/ipc/common/ParcelableCallbackReceiver;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;Lcom/oculus/ipc/common/ParcelableCallbackReceiver;)V
    .locals 0

    .prologue
    .line 186
    iput-object p1, p0, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService$3;->this$0:Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;

    iput-object p2, p0, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService$3;->val$receiver:Lcom/oculus/ipc/common/ParcelableCallbackReceiver;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onProgress(F)V
    .locals 2

    .prologue
    .line 189
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService$3;->val$receiver:Lcom/oculus/ipc/common/ParcelableCallbackReceiver;

    invoke-static {p1}, Lcom/oculus/cloudstoragehelper/CloudStorageResult;->forProgress(F)Lcom/oculus/cloudstoragehelper/CloudStorageResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/ipc/common/ParcelableCallbackReceiver;->sendResult(Landroid/os/Parcelable;)V

    .line 190
    return-void
.end method
