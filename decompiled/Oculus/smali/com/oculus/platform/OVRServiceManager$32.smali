.class Lcom/oculus/platform/OVRServiceManager$32;
.super Ljava/lang/Object;
.source "OVRServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/platform/OVRServiceManager;->setRichPresence(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/platform/OVRServiceManager;

.field final synthetic val$richPresenceJSON:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/platform/OVRServiceManager;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1838
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceManager$32;->this$0:Lcom/oculus/platform/OVRServiceManager;

    iput-object p2, p0, Lcom/oculus/platform/OVRServiceManager$32;->val$richPresenceJSON:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1841
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager$32;->this$0:Lcom/oculus/platform/OVRServiceManager;

    iget-object v0, v0, Lcom/oculus/platform/OVRServiceManager;->mOVRServiceSync:Lcom/oculus/platform/OVRServiceSynchronous;

    .line 1842
    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceSynchronous;->waitForConnect()Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v0

    .line 1843
    iget-object v1, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    if-eqz v1, :cond_1

    .line 1844
    invoke-static {}, Lcom/oculus/platform/OVRServiceManager;->access$300()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Unable to bind to the Horizon Service."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1864
    :cond_0
    :goto_0
    return-void

    .line 1849
    :cond_1
    :try_start_0
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager$32;->this$0:Lcom/oculus/platform/OVRServiceManager;

    .line 1850
    invoke-static {v1}, Lcom/oculus/platform/OVRServiceManager;->access$000(Lcom/oculus/platform/OVRServiceManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/platform/OVRServiceManager$32;->this$0:Lcom/oculus/platform/OVRServiceManager;

    .line 1851
    invoke-static {v2}, Lcom/oculus/platform/OVRServiceManager;->access$100(Lcom/oculus/platform/OVRServiceManager;)I

    move-result v2

    iget-object v3, p0, Lcom/oculus/platform/OVRServiceManager$32;->this$0:Lcom/oculus/platform/OVRServiceManager;

    .line 1852
    invoke-static {v3}, Lcom/oculus/platform/OVRServiceManager;->access$200(Lcom/oculus/platform/OVRServiceManager;)I

    move-result v3

    .line 1849
    invoke-static {v1, v2, v3}, Lcom/oculus/platform/util/Util;->generateArgsBundle(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v1

    .line 1855
    const-string/jumbo v2, "rich_presence_json"

    iget-object v3, p0, Lcom/oculus/platform/OVRServiceManager$32;->val$richPresenceJSON:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1857
    iget-object v0, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mServiceInterface:Landroid/os/IInterface;

    check-cast v0, Lcom/oculus/aidl/OVRServiceInterface;

    invoke-interface {v0, v1}, Lcom/oculus/aidl/OVRServiceInterface;->setRichPresence(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v0

    .line 1858
    invoke-static {v0}, Lcom/oculus/platform/util/Util;->isServiceError(Landroid/os/Bundle;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1859
    invoke-static {}, Lcom/oculus/platform/OVRServiceManager;->access$300()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Service error calling setRichPresence: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v0}, Lcom/oculus/platform/util/Util;->getServiceError(Landroid/os/Bundle;)Lcom/oculus/platform/util/OVRError;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1861
    :catch_0
    move-exception v0

    .line 1862
    invoke-static {}, Lcom/oculus/platform/OVRServiceManager;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error calling setRichPresence"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
