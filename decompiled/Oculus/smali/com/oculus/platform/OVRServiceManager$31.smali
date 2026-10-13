.class Lcom/oculus/platform/OVRServiceManager$31;
.super Ljava/lang/Object;
.source "OVRServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/platform/OVRServiceManager;->launchOtherApp(JLjava/lang/String;Lcom/oculus/platform/callback/OVRStringCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/platform/OVRServiceManager;

.field final synthetic val$appID:J

.field final synthetic val$callback:Lcom/oculus/platform/callback/OVRStringCallback;

.field final synthetic val$jsonOptions:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRStringCallback;JLjava/lang/String;)V
    .locals 1

    .prologue
    .line 1803
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceManager$31;->this$0:Lcom/oculus/platform/OVRServiceManager;

    iput-object p2, p0, Lcom/oculus/platform/OVRServiceManager$31;->val$callback:Lcom/oculus/platform/callback/OVRStringCallback;

    iput-wide p3, p0, Lcom/oculus/platform/OVRServiceManager$31;->val$appID:J

    iput-object p5, p0, Lcom/oculus/platform/OVRServiceManager$31;->val$jsonOptions:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 1806
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager$31;->this$0:Lcom/oculus/platform/OVRServiceManager;

    iget-object v0, v0, Lcom/oculus/platform/OVRServiceManager;->mOVRServiceSync:Lcom/oculus/platform/OVRServiceSynchronous;

    .line 1807
    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceSynchronous;->waitForConnect()Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v0

    .line 1808
    iget-object v1, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    if-eqz v1, :cond_0

    .line 1809
    invoke-static {}, Lcom/oculus/platform/OVRServiceManager;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Unable to bind to the Horizon Service."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1810
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager$31;->this$0:Lcom/oculus/platform/OVRServiceManager;

    invoke-static {v1}, Lcom/oculus/platform/OVRServiceManager;->access$400(Lcom/oculus/platform/OVRServiceManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/platform/OVRServiceManager$31;->val$callback:Lcom/oculus/platform/callback/OVRStringCallback;

    iget-object v0, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    invoke-static {v1, v2, v0}, Lcom/oculus/platform/util/Util;->handleClientError(Landroid/os/Handler;Lcom/oculus/platform/callback/OVRStringCallback;Lcom/oculus/platform/util/OVRError;)V

    .line 1833
    :goto_0
    return-void

    .line 1815
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager$31;->this$0:Lcom/oculus/platform/OVRServiceManager;

    .line 1816
    invoke-static {v1}, Lcom/oculus/platform/OVRServiceManager;->access$000(Lcom/oculus/platform/OVRServiceManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/platform/OVRServiceManager$31;->this$0:Lcom/oculus/platform/OVRServiceManager;

    .line 1817
    invoke-static {v2}, Lcom/oculus/platform/OVRServiceManager;->access$100(Lcom/oculus/platform/OVRServiceManager;)I

    move-result v2

    iget-object v3, p0, Lcom/oculus/platform/OVRServiceManager$31;->this$0:Lcom/oculus/platform/OVRServiceManager;

    .line 1818
    invoke-static {v3}, Lcom/oculus/platform/OVRServiceManager;->access$200(Lcom/oculus/platform/OVRServiceManager;)I

    move-result v3

    .line 1815
    invoke-static {v1, v2, v3}, Lcom/oculus/platform/util/Util;->generateArgsBundle(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v1

    .line 1819
    const-string/jumbo v2, "target_app_id"

    iget-wide v4, p0, Lcom/oculus/platform/OVRServiceManager$31;->val$appID:J

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1820
    const-string v2, "deeplink_options"

    iget-object v3, p0, Lcom/oculus/platform/OVRServiceManager$31;->val$jsonOptions:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1822
    iget-object v0, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mServiceInterface:Landroid/os/IInterface;

    check-cast v0, Lcom/oculus/aidl/OVRServiceInterface;

    invoke-interface {v0, v1}, Lcom/oculus/aidl/OVRServiceInterface;->launchOtherApp(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1824
    invoke-static {v0}, Lcom/oculus/platform/util/Util;->isServiceError(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1825
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager$31;->this$0:Lcom/oculus/platform/OVRServiceManager;

    invoke-static {v1}, Lcom/oculus/platform/OVRServiceManager;->access$400(Lcom/oculus/platform/OVRServiceManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/platform/OVRServiceManager$31;->val$callback:Lcom/oculus/platform/callback/OVRStringCallback;

    invoke-static {v0}, Lcom/oculus/platform/util/Util;->getServiceError(Landroid/os/Bundle;)Lcom/oculus/platform/util/OVRError;

    move-result-object v0

    invoke-static {v1, v2, v0}, Lcom/oculus/platform/util/Util;->handleClientError(Landroid/os/Handler;Lcom/oculus/platform/callback/OVRStringCallback;Lcom/oculus/platform/util/OVRError;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1829
    :catch_0
    move-exception v0

    .line 1830
    invoke-static {}, Lcom/oculus/platform/OVRServiceManager;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error calling launchOtherApp"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1831
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager$31;->this$0:Lcom/oculus/platform/OVRServiceManager;

    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager$31;->val$callback:Lcom/oculus/platform/callback/OVRStringCallback;

    sget-object v2, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/OVRServiceManager;->access$600(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRStringCallback;Lcom/oculus/platform/util/OVRError;)V

    goto :goto_0

    .line 1827
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager$31;->val$callback:Lcom/oculus/platform/callback/OVRStringCallback;

    invoke-static {v0}, Lcom/oculus/platform/OVRServiceManager;->getJsonStringFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oculus/platform/callback/OVRStringCallback;->onSuccess(Ljava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
