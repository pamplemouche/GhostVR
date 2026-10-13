.class Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService$4;
.super Ljava/lang/Object;
.source "CloudStorageIntentService.java"

# interfaces
.implements Lbolts/Continuation;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;->runSynchronousResolveConflict(Ljava/lang/String;Lcom/oculus/cloudstoragehelper/CloudStorageHelper$ResolutionType;Lcom/oculus/ipc/common/ParcelableCallbackReceiver;)V
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
.field final synthetic this$0:Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;

.field final synthetic val$latch:Ljava/util/concurrent/CountDownLatch;

.field final synthetic val$receiver:Lcom/oculus/ipc/common/ParcelableCallbackReceiver;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;Lcom/oculus/ipc/common/ParcelableCallbackReceiver;Ljava/util/concurrent/CountDownLatch;)V
    .locals 0

    .prologue
    .line 196
    iput-object p1, p0, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService$4;->this$0:Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService;

    iput-object p2, p0, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService$4;->val$receiver:Lcom/oculus/ipc/common/ParcelableCallbackReceiver;

    iput-object p3, p0, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService$4;->val$latch:Ljava/util/concurrent/CountDownLatch;

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
    .line 196
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService$4;->then(Lbolts/Task;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public then(Lbolts/Task;)Ljava/lang/Void;
    .locals 2
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
    .line 199
    invoke-virtual {p1}, Lbolts/Task;->isFaulted()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService$4;->val$receiver:Lcom/oculus/ipc/common/ParcelableCallbackReceiver;

    invoke-virtual {p1}, Lbolts/Task;->getError()Ljava/lang/Exception;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/oculus/cloudstoragehelper/CloudStorageResult;->forFailure(Ljava/lang/String;)Lcom/oculus/cloudstoragehelper/CloudStorageResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/ipc/common/ParcelableCallbackReceiver;->sendResult(Landroid/os/Parcelable;)V

    .line 204
    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService$4;->val$latch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 205
    const/4 v0, 0x0

    return-object v0

    .line 202
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/cloudstorage2/CloudStorageIntentService$4;->val$receiver:Lcom/oculus/ipc/common/ParcelableCallbackReceiver;

    invoke-static {}, Lcom/oculus/cloudstoragehelper/CloudStorageResult;->forSuccess()Lcom/oculus/cloudstoragehelper/CloudStorageResult;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/ipc/common/ParcelableCallbackReceiver;->sendResult(Landroid/os/Parcelable;)V

    goto :goto_0
.end method
