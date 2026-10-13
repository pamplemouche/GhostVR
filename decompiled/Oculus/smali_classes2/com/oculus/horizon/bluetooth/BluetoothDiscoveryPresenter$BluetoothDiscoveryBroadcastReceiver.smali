.class Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenter$BluetoothDiscoveryBroadcastReceiver;
.super Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;
.source "BluetoothDiscoveryPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "BluetoothDiscoveryBroadcastReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenter;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenter;)V
    .locals 3

    .prologue
    .line 47
    iput-object p1, p0, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenter$BluetoothDiscoveryBroadcastReceiver;->this$0:Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenter;

    .line 48
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.bluetooth.adapter.action.STATE_CHANGED"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 49
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/secure/receiver/BroadcastReceiverLike;)V
    .locals 6

    .prologue
    const/4 v2, -0x1

    .line 53
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 54
    const-string v1, "android.bluetooth.adapter.action.STATE_CHANGED"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 55
    const-string v0, "android.bluetooth.adapter.extra.STATE"

    invoke-virtual {p2, v0, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 56
    const-string v1, "android.bluetooth.adapter.extra.PREVIOUS_STATE"

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 57
    const-string v2, "BluetoothDiscoveryPresenter"

    const-string v3, "onBluetoothStateChanged: %s %s"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2, v3, v4, v5}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 59
    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenter$BluetoothDiscoveryBroadcastReceiver;->this$0:Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenter;

    invoke-static {v2}, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenter;->access$000(Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenter;)Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenter$View;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenter$View;->onBluetoothStateChanged(II)V

    .line 61
    :cond_0
    return-void
.end method
