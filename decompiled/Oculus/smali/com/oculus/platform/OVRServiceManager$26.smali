.class Lcom/oculus/platform/OVRServiceManager$26;
.super Ljava/lang/Object;
.source "OVRServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/platform/OVRServiceManager;->sendCommandToMediaService(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/platform/OVRServiceManager;

.field final synthetic val$argsBundle:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Lcom/oculus/platform/OVRServiceManager;Landroid/os/Bundle;)V
    .locals 0

    .prologue
    .line 1617
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceManager$26;->this$0:Lcom/oculus/platform/OVRServiceManager;

    iput-object p2, p0, Lcom/oculus/platform/OVRServiceManager$26;->val$argsBundle:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 1620
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager$26;->this$0:Lcom/oculus/platform/OVRServiceManager;

    iget-object v0, v0, Lcom/oculus/platform/OVRServiceManager;->mOVRMediaServiceSync:Lcom/oculus/platform/OVRServiceSynchronous;

    .line 1621
    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceSynchronous;->waitForConnect()Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v0

    .line 1622
    iget-object v1, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    if-eqz v1, :cond_0

    .line 1631
    :goto_0
    return-void

    .line 1627
    :cond_0
    :try_start_0
    iget-object v0, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mServiceInterface:Landroid/os/IInterface;

    check-cast v0, Lcom/oculus/aidl/OVRMediaServiceInterface;

    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager$26;->val$argsBundle:Landroid/os/Bundle;

    invoke-interface {v0, v1}, Lcom/oculus/aidl/OVRMediaServiceInterface;->sendCommandToMediaService(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1628
    :catch_0
    move-exception v0

    .line 1629
    invoke-static {}, Lcom/oculus/platform/OVRServiceManager;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error calling doInBackground()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
