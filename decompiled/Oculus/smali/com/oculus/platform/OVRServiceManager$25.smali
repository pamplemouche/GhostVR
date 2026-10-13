.class Lcom/oculus/platform/OVRServiceManager$25;
.super Ljava/lang/Object;
.source "OVRServiceManager.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/platform/OVRServiceManager;->broadcastLivestreamingSurface(Ljava/lang/String;Landroid/view/Surface;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/platform/OVRServiceManager;

.field final synthetic val$errorCode:I

.field final synthetic val$surface:Landroid/view/Surface;

.field final synthetic val$targetPackage:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/oculus/platform/OVRServiceManager;Landroid/view/Surface;Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 1591
    iput-object p1, p0, Lcom/oculus/platform/OVRServiceManager$25;->this$0:Lcom/oculus/platform/OVRServiceManager;

    iput-object p2, p0, Lcom/oculus/platform/OVRServiceManager$25;->val$surface:Landroid/view/Surface;

    iput-object p3, p0, Lcom/oculus/platform/OVRServiceManager$25;->val$targetPackage:Ljava/lang/String;

    iput p4, p0, Lcom/oculus/platform/OVRServiceManager$25;->val$errorCode:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 1594
    iget-object v0, p0, Lcom/oculus/platform/OVRServiceManager$25;->this$0:Lcom/oculus/platform/OVRServiceManager;

    iget-object v0, v0, Lcom/oculus/platform/OVRServiceManager;->mOVRMediaServiceSync:Lcom/oculus/platform/OVRServiceSynchronous;

    .line 1595
    invoke-virtual {v0}, Lcom/oculus/platform/OVRServiceSynchronous;->waitForConnect()Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;

    move-result-object v0

    .line 1596
    iget-object v1, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mBindError:Lcom/oculus/platform/util/OVRError;

    if-eqz v1, :cond_0

    .line 1612
    :goto_0
    return-void

    .line 1601
    :cond_0
    :try_start_0
    iget-object v1, p0, Lcom/oculus/platform/OVRServiceManager$25;->this$0:Lcom/oculus/platform/OVRServiceManager;

    invoke-static {v1}, Lcom/oculus/platform/OVRServiceManager;->access$000(Lcom/oculus/platform/OVRServiceManager;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/platform/OVRServiceManager$25;->this$0:Lcom/oculus/platform/OVRServiceManager;

    invoke-static {v2}, Lcom/oculus/platform/OVRServiceManager;->access$100(Lcom/oculus/platform/OVRServiceManager;)I

    move-result v2

    iget-object v3, p0, Lcom/oculus/platform/OVRServiceManager$25;->this$0:Lcom/oculus/platform/OVRServiceManager;

    .line 1602
    invoke-static {v3}, Lcom/oculus/platform/OVRServiceManager;->access$200(Lcom/oculus/platform/OVRServiceManager;)I

    move-result v3

    .line 1601
    invoke-static {v1, v2, v3}, Lcom/oculus/platform/util/Util;->generateArgsBundle(Ljava/lang/String;II)Landroid/os/Bundle;

    move-result-object v1

    .line 1603
    const-string v2, "message_type"

    const-string v3, "broadcast_surface"

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1604
    const-string/jumbo v2, "surface"

    iget-object v3, p0, Lcom/oculus/platform/OVRServiceManager$25;->val$surface:Landroid/view/Surface;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1605
    const-string v2, "package_name"

    iget-object v3, p0, Lcom/oculus/platform/OVRServiceManager$25;->val$targetPackage:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 1606
    const-string v2, "error_code"

    iget v3, p0, Lcom/oculus/platform/OVRServiceManager$25;->val$errorCode:I

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 1608
    iget-object v0, v0, Lcom/oculus/platform/OVRServiceSynchronous$ServiceBindResult;->mServiceInterface:Landroid/os/IInterface;

    check-cast v0, Lcom/oculus/aidl/OVRMediaServiceInterface;

    invoke-interface {v0, v1}, Lcom/oculus/aidl/OVRMediaServiceInterface;->sendCommandToMediaService(Landroid/os/Bundle;)Landroid/os/Bundle;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1609
    :catch_0
    move-exception v0

    .line 1610
    invoke-static {}, Lcom/oculus/platform/OVRServiceManager;->access$300()Ljava/lang/String;

    move-result-object v1

    const-string v2, "Error calling doInBackground()"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
