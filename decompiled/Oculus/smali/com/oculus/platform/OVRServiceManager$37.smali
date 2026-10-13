.class Lcom/oculus/platform/OVRServiceManager$37;
.super Ljava/lang/Object;
.source "OVRServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/platform/OVRServiceManager;->shareMap(Ljava/lang/String;Lcom/oculus/platform/callback/OVRStringCallback;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/platform/OVRServiceManager;

.field final synthetic val$callback:Lcom/oculus/platform/callback/OVRStringCallback;

.field final synthetic val$uuid:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRStringCallback;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 1951
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceManager$37;->this$0:Lcom/oculus/platform/OVRServiceManager;

    iput-object p2, p0, Lcom/oculus/platform/OVRServiceManager$37;->val$callback:Lcom/oculus/platform/callback/OVRStringCallback;

    iput-object p3, p0, Lcom/oculus/platform/OVRServiceManager$37;->val$uuid:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .prologue
    .line 1954
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager$37;->this$0:Lcom/oculus/platform/OVRServiceManager;

    iget-object v0, v0, Lcom/oculus/platform/OVRServiceManager;->mOVRServiceSync:Lcom/oculus/platform/OVRServiceSynchronous;

    .line 1955
    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceSynchronous;->waitForConnect()Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v0

    .line 1956
    iget-object v1, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    if-eqz v1, :cond_0

    .line 1957
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager$37;->this$0:Lcom/oculus/platform/OVRServiceManager;

    invoke-static {v1}, Lcom/oculus/platform/OVRServiceManager;->access$400(Lcom/oculus/platform/OVRServiceManager;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/platform/OVRServiceManager$37;->val$callback:Lcom/oculus/platform/callback/OVRStringCallback;

    iget-object v0, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    invoke-static {v1, v2, v0}, Lcom/oculus/platform/util/Util;->handleClientError(Landroid/os/Handler;Lcom/oculus/platform/callback/OVRStringCallback;Lcom/oculus/platform/util/OVRError;)V

    .line 1977
    :goto_0
    return-void

    .line 1961
    :cond_0
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager$37;->this$0:Lcom/oculus/platform/OVRServiceManager;

    .line 1962
    invoke-static {v1}, Lcom/oculus/platform/OVRServiceManager;->access$000(Lcom/oculus/platform/OVRServiceManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/platform/OVRServiceManager$37;->this$0:Lcom/oculus/platform/OVRServiceManager;

    .line 1963
    invoke-static {v2}, Lcom/oculus/platform/OVRServiceManager;->access$100(Lcom/oculus/platform/OVRServiceManager;)I

    move-result v2

    iget-object v3, p0, Lcom/oculus/platform/OVRServiceManager$37;->this$0:Lcom/oculus/platform/OVRServiceManager;

    .line 1964
    invoke-static {v3}, Lcom/oculus/platform/OVRServiceManager;->access$200(Lcom/oculus/platform/OVRServiceManager;)I

    move-result v3

    .line 1961
    invoke-static {v1, v2, v3}, Lcom/oculus/platform/util/Util;->generateArgsBundle(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v1

    .line 1965
    const-string/jumbo v2, "uuid"

    iget-object v3, p0, Lcom/oculus/platform/OVRServiceManager$37;->val$uuid:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1968
    :try_start_0
    new-instance v2, Lcom/oculus/platform/receiver/OVRColocationCallback;

    iget-object v3, p0, Lcom/oculus/platform/OVRServiceManager$37;->val$callback:Lcom/oculus/platform/callback/OVRStringCallback;

    iget-object v4, p0, Lcom/oculus/platform/OVRServiceManager$37;->this$0:Lcom/oculus/platform/OVRServiceManager;

    invoke-static {v4}, Lcom/oculus/platform/OVRServiceManager;->access$400(Lcom/oculus/platform/OVRServiceManager;)Landroid/os/Handler;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/oculus/platform/receiver/OVRColocationCallback;-><init>(Lcom/oculus/platform/callback/OVRStringCallback;Landroid/os/Handler;)V

    .line 1969
    const-string/jumbo v3, "receiver_tag"

    new-instance v4, Lcom/oculus/platform/receiver/OVRPlatformResultReceiver;

    invoke-direct {v4, v2}, Lcom/oculus/platform/receiver/OVRPlatformResultReceiver;-><init>(Lcom/oculus/platform/receiver/OVRPlatformResultReceiver$Listener;)V

    invoke-static {v4}, Lcom/oculus/platform/OVRServiceManager;->access$1000(Landroid/os/ResultReceiver;)Landroid/os/ResultReceiver;

    move-result-object v2

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1971
    iget-object v0, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mServiceInterface:Landroid/os/IInterface;

    check-cast v0, Lcom/oculus/aidl/OVRServiceInterface;

    invoke-interface {v0, v1}, Lcom/oculus/aidl/OVRServiceInterface;->shareMap(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1973
    :catch_0
    move-exception v0

    .line 1974
    invoke-static {}, Lcom/oculus/platform/OVRServiceManager;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error calling shareMap"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1975
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager$37;->this$0:Lcom/oculus/platform/OVRServiceManager;

    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager$37;->val$callback:Lcom/oculus/platform/callback/OVRStringCallback;

    sget-object v2, Lcom/oculus/platform/util/OVRError;->UNKNOWN_ERROR:Lcom/oculus/platform/util/OVRError;

    invoke-static {v0, v1, v2}, Lcom/oculus/platform/OVRServiceManager;->access$600(Lcom/oculus/platform/OVRServiceManager;Lcom/oculus/platform/callback/OVRStringCallback;Lcom/oculus/platform/util/OVRError;)V

    goto :goto_0
.end method
