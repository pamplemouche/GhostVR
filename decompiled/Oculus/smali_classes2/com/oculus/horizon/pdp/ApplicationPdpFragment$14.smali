.class Lcom/oculus/horizon/pdp/ApplicationPdpFragment$14;
.super Ljava/lang/Object;
.source "ApplicationPdpFragment.java"

# interfaces
.implements Lcom/oculus/util/collection/CollectionUtil$Folder;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->maybeShowControllerWarningAndStartPurchaseAndInstallationProcess()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/oculus/util/collection/CollectionUtil$Folder",
        "<",
        "Lcom/oculus/library/model/InputDevice;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/pdp/ApplicationPdpFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/pdp/ApplicationPdpFragment;)V
    .locals 0

    .prologue
    .line 1018
    iput-object p1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$14;->this$0:Lcom/oculus/horizon/pdp/ApplicationPdpFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public function(Lcom/oculus/library/model/InputDevice;Ljava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 4

    .prologue
    .line 1021
    iget-object v0, p1, Lcom/oculus/library/model/InputDevice;->tag:Ljava/lang/String;

    invoke-static {v0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;->from(Ljava/lang/String;)Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;

    move-result-object v0

    .line 1022
    if-nez v0, :cond_0

    .line 1025
    :goto_0
    return-object p2

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$14;->this$0:Lcom/oculus/horizon/pdp/ApplicationPdpFragment;

    .line 1028
    invoke-static {v1}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->access$700(Lcom/oculus/horizon/pdp/ApplicationPdpFragment;)Lcom/oculus/horizon/samsung/GearVRControllerHelper;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$14;->this$0:Lcom/oculus/horizon/pdp/ApplicationPdpFragment;

    .line 1029
    invoke-static {v2}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->access$800(Lcom/oculus/horizon/pdp/ApplicationPdpFragment;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$14;->this$0:Lcom/oculus/horizon/pdp/ApplicationPdpFragment;

    .line 1030
    invoke-static {v3}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->access$900(Lcom/oculus/horizon/pdp/ApplicationPdpFragment;)Lcom/oculus/horizon/bluetooth/InputDeviceHelper;

    move-result-object v3

    .line 1026
    invoke-static {v0, v1, v2, v3}, Lcom/oculus/horizon/store/ControllerWarningUtil;->hasPairedDevice(Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;Lcom/oculus/horizon/samsung/GearVRControllerHelper;Landroid/bluetooth/BluetoothAdapter;Lcom/oculus/horizon/bluetooth/InputDeviceHelper;)Z

    move-result v0

    if-eqz v0, :cond_2

    :cond_1
    const/4 v0, 0x1

    .line 1025
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    goto :goto_0

    .line 1026
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public bridge synthetic function(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 1018
    check-cast p1, Lcom/oculus/library/model/InputDevice;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$14;->function(Lcom/oculus/library/model/InputDevice;Ljava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method
