.class Lcom/oculus/horizon/bluetooth/BluetoothHelper$1;
.super Lcom/oculus/security/basecomponent/OculusSystemSecureBroadcastReceiver;
.source "BluetoothHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/bluetooth/BluetoothHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/bluetooth/BluetoothHelper;


# direct methods
.method varargs constructor <init>(Lcom/oculus/horizon/bluetooth/BluetoothHelper;[Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 30
    iput-object p1, p0, Lcom/oculus/horizon/bluetooth/BluetoothHelper$1;->this$0:Lcom/oculus/horizon/bluetooth/BluetoothHelper;

    invoke-direct {p0, p2}, Lcom/oculus/security/basecomponent/OculusSystemSecureBroadcastReceiver;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/secure/receiver/BroadcastReceiverLike;)V
    .locals 9

    .prologue
    const/4 v2, -0x1

    .line 33
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 34
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 35
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 36
    const-string v1, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 37
    const-string v2, "BluetoothHelper"

    const-string v3, "onBluetoothStateChanged: %s %s"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 39
    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/BluetoothHelper$1;->this$0:Lcom/oculus/horizon/bluetooth/BluetoothHelper;

    invoke-static {v2}, Lcom/oculus/horizon/bluetooth/BluetoothHelper;->access$000(Lcom/oculus/horizon/bluetooth/BluetoothHelper;)Lcom/oculus/horizon/bluetooth/BluetoothHelper$Callbacks;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/oculus/horizon/bluetooth/BluetoothHelper$Callbacks;->onBluetoothStateChanged(II)V

    .line 55
    :cond_0
    :goto_0
    return-void

    .line 40
    :cond_1
    const-string v1, "android.bluetooth.device.action.BOND_STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 41
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    move-object v6, v0

    check-cast v6, Landroid/bluetooth/BluetoothDevice;

    .line 42
    const-string v0, "android.bluetooth.device.extra.BOND_STATE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v7

    .line 43
    const-string v0, "android.bluetooth.device.extra.PREVIOUS_BOND_STATE"

    .line 44
    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    .line 45
    const-string v0, "BluetoothHelper"

    const-string v1, "Bond state changed: %s %s %d %d"

    .line 48
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v2

    .line 49
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v3

    .line 50
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    .line 51
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 45
    invoke-static/range {v0 .. v5}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 53
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothHelper$1;->this$0:Lcom/oculus/horizon/bluetooth/BluetoothHelper;

    invoke-static {v0}, Lcom/oculus/horizon/bluetooth/BluetoothHelper;->access$000(Lcom/oculus/horizon/bluetooth/BluetoothHelper;)Lcom/oculus/horizon/bluetooth/BluetoothHelper$Callbacks;

    move-result-object v0

    invoke-interface {v0, v6, v7, v8}, Lcom/oculus/horizon/bluetooth/BluetoothHelper$Callbacks;->onBluetoothDeviceBondStateChanged(Landroid/bluetooth/BluetoothDevice;II)V

    goto :goto_0
.end method
