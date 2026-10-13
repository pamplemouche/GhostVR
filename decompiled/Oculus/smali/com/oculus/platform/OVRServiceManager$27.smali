.class Lcom/oculus/platform/OVRServiceManager$27;
.super Ljava/lang/Object;
.source "OVRServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/platform/OVRServiceManager;->handleLivestreamingAPI(Lcom/oculus/platform/callback/OVRStringCallback;Landroid/os/Bundle;Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/platform/OVRServiceManager;

.field final synthetic val$callback:Lcom/oculus/platform/callback/OVRStringCallback;

.field final synthetic val$messageType:Ljava/lang/String;

.field final synthetic val$origBundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRStringCallback;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1653
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceManager$27;->this$0:Lcom/oculus/platform/OVRServiceManager;

    iput-object p2, p0, Lcom/oculus/platform/OVRServiceManager$27;->val$callback:Lcom/oculus/platform/callback/OVRStringCallback;

    iput-object p3, p0, Lcom/oculus/platform/OVRServiceManager$27;->val$messageType:Ljava/lang/String;

    iput-object p4, p0, Lcom/oculus/platform/OVRServiceManager$27;->val$origBundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1656
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager$27;->this$0:Lcom/oculus/platform/OVRServiceManager;

    iget-object v0, v0, Lcom/oculus/platform/OVRServiceManager;->mOVRMediaServiceSync:Lcom/oculus/platform/OVRServiceSynchronous;

    .line 1657
    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceSynchronous;->waitForConnect()Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v0

    .line 1658
    iget-object v1, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    if-eqz v1, :cond_0

    .line 1659
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager$27;->this$0:Lcom/oculus/platform/OVRServiceManager;

    invoke-static {v1}, Lcom/oculus/platform/OVRServiceManager;->access$400(Lcom/oculus/platform/OVRServiceManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/platform/OVRServiceManager$27;->val$callback:Lcom/oculus/platform/callback/OVRStringCallback;

    iget-object v0, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    invoke-static {v1, v2, v0}, Lcom/oculus/platform/util/Util;->handleClientError(Landroid/os/Handler;Lcom/oculus/platform/callback/OVRStringCallback;Lcom/oculus/platform/util/OVRError;)V

    .line 1677
    :goto_0
    return-void

    .line 1664
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager$27;->this$0:Lcom/oculus/platform/OVRServiceManager;

    invoke-static {v1}, Lcom/oculus/platform/OVRServiceManager;->access$000(Lcom/oculus/platform/OVRServiceManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/platform/OVRServiceManager$27;->this$0:Lcom/oculus/platform/OVRServiceManager;

    invoke-static {v2}, Lcom/oculus/platform/OVRServiceManager;->access$100(Lcom/oculus/platform/OVRServiceManager;)I

    move-result v2

    iget-object v3, p0, Lcom/oculus/platform/OVRServiceManager$27;->this$0:Lcom/oculus/platform/OVRServiceManager;

    .line 1665
    invoke-static {v3}, Lcom/oculus/platform/OVRServiceManager;->access$200(Lcom/oculus/platform/OVRServiceManager;)I

    move-result v3

    .line 1664
    invoke-static {v1, v2, v3}, Lcom/oculus/platform/util/Util;->generateArgsBundle(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v1

    .line 1666
    const-string v2, "message_type"

    iget-object v3, p0, Lcom/oculus/platform/OVRServiceManager$27;->val$messageType:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1669
    iget-object v2, p0, Lcom/oculus/platform/OVRServiceManager$27;->val$origBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1671
    iget-object v0, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mServiceInterface:Landroid/os/IInterface;

    check-cast v0, Lcom/oculus/aidl/OVRMediaServiceInterface;

    invoke-interface {v0, v1}, Lcom/oculus/aidl/OVRMediaServiceInterface;->sendCommandToMediaService(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1672
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager$27;->val$callback:Lcom/oculus/platform/callback/OVRStringCallback;

    invoke-static {v0}, Lcom/oculus/platform/OVRServiceManager;->getJsonStringFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oculus/platform/callback/OVRStringCallback;->onSuccess(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1673
    :catch_0
    move-exception v0

    .line 1674
    invoke-static {}, Lcom/oculus/platform/OVRServiceManager;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error calling doInBackground()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1675
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager$27;->this$0:Lcom/oculus/platform/OVRServiceManager;

    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager$27;->val$callback:Lcom/oculus/platform/callback/OVRStringCallback;

    sget-object v2, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/OVRServiceManager;->access$600(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRStringCallback;Lcom/oculus/platform/util/OVRError;)V

    goto :goto_0
.end method
