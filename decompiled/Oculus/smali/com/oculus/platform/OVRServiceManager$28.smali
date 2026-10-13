.class Lcom/oculus/platform/OVRServiceManager$28;
.super Ljava/lang/Object;
.source "OVRServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/platform/OVRServiceManager;->startRecording(Lcom/oculus/platform/callback/OVRStringCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/platform/OVRServiceManager;

.field final synthetic val$callback:Lcom/oculus/platform/callback/OVRStringCallback;

.field final synthetic val$origBundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRStringCallback;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1685
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceManager$28;->this$0:Lcom/oculus/platform/OVRServiceManager;

    iput-object p2, p0, Lcom/oculus/platform/OVRServiceManager$28;->val$callback:Lcom/oculus/platform/callback/OVRStringCallback;

    iput-object p3, p0, Lcom/oculus/platform/OVRServiceManager$28;->val$origBundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1688
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager$28;->this$0:Lcom/oculus/platform/OVRServiceManager;

    iget-object v0, v0, Lcom/oculus/platform/OVRServiceManager;->mOVRMediaServiceSync:Lcom/oculus/platform/OVRServiceSynchronous;

    .line 1689
    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceSynchronous;->waitForConnect()Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v0

    .line 1690
    iget-object v1, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    if-eqz v1, :cond_0

    .line 1691
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager$28;->this$0:Lcom/oculus/platform/OVRServiceManager;

    invoke-static {v1}, Lcom/oculus/platform/OVRServiceManager;->access$400(Lcom/oculus/platform/OVRServiceManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/platform/OVRServiceManager$28;->val$callback:Lcom/oculus/platform/callback/OVRStringCallback;

    iget-object v0, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    invoke-static {v1, v2, v0}, Lcom/oculus/platform/util/Util;->handleClientError(Landroid/os/Handler;Lcom/oculus/platform/callback/OVRStringCallback;Lcom/oculus/platform/util/OVRError;)V

    .line 1723
    :goto_0
    return-void

    .line 1696
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager$28;->this$0:Lcom/oculus/platform/OVRServiceManager;

    invoke-static {v1}, Lcom/oculus/platform/OVRServiceManager;->access$000(Lcom/oculus/platform/OVRServiceManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/platform/OVRServiceManager$28;->this$0:Lcom/oculus/platform/OVRServiceManager;

    invoke-static {v2}, Lcom/oculus/platform/OVRServiceManager;->access$100(Lcom/oculus/platform/OVRServiceManager;)I

    move-result v2

    iget-object v3, p0, Lcom/oculus/platform/OVRServiceManager$28;->this$0:Lcom/oculus/platform/OVRServiceManager;

    .line 1697
    invoke-static {v3}, Lcom/oculus/platform/OVRServiceManager;->access$200(Lcom/oculus/platform/OVRServiceManager;)I

    move-result v3

    .line 1696
    invoke-static {v1, v2, v3}, Lcom/oculus/platform/util/Util;->generateArgsBundle(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v1

    .line 1698
    const-string v2, "message_type"

    const-string v3, "broadcast_abuse_capture_start"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1701
    iget-object v2, p0, Lcom/oculus/platform/OVRServiceManager$28;->val$origBundle:Landroid/os/Bundle;

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->putAll(Landroid/os/Bundle;)V

    .line 1703
    iget-object v0, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mServiceInterface:Landroid/os/IInterface;

    check-cast v0, Lcom/oculus/aidl/OVRMediaServiceInterface;

    invoke-interface {v0, v1}, Lcom/oculus/aidl/OVRMediaServiceInterface;->sendCommandToMediaService(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1704
    if-nez v0, :cond_1

    .line 1705
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager$28;->val$callback:Lcom/oculus/platform/callback/OVRStringCallback;

    sget-object v1, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    const-string v2, "Failed to start recording"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/platform/callback/OVRStringCallback;->onClientError(ILjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1718
    :catch_0
    move-exception v0

    .line 1719
    invoke-static {}, Lcom/oculus/platform/OVRServiceManager;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error while sending start abuse recording command to OVRMediaService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1721
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager$28;->this$0:Lcom/oculus/platform/OVRServiceManager;

    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager$28;->val$callback:Lcom/oculus/platform/callback/OVRStringCallback;

    sget-object v2, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/OVRServiceManager;->access$600(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRStringCallback;Lcom/oculus/platform/util/OVRError;)V

    goto :goto_0

    .line 1709
    :cond_1
    :try_start_1
    const-string/jumbo v1, "recording_command_status"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 1710
    const-string/jumbo v2, "recording_uuid"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1711
    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_2

    .line 1712
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 1713
    const-string/jumbo v2, "recording_uuid"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1714
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager$28;->val$callback:Lcom/oculus/platform/callback/OVRStringCallback;

    invoke-static {v1}, Lcom/oculus/platform/OVRServiceManager;->getJsonStringFromBundle(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/platform/callback/OVRStringCallback;->onSuccess(Ljava/lang/String;)V

    goto :goto_0

    .line 1716
    :cond_2
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager$28;->val$callback:Lcom/oculus/platform/callback/OVRStringCallback;

    sget-object v1, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    iget v1, v1, Lcom/oculus/platform/util/OVRError;->mCode:I

    const-string v2, "Failed to start recording"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/platform/callback/OVRStringCallback;->onClientError(ILjava/lang/String;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method
