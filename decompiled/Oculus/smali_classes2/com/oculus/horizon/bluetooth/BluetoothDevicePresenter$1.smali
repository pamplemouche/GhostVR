.class Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter$1;
.super Lcom/oculus/horizon/samsung/GearVRInputService$Callbacks;
.source "BluetoothDevicePresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter;)V
    .locals 0

    .prologue
    .line 56
    iput-object p1, p0, Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter$1;->this$0:Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter;

    invoke-direct {p0}, Lcom/oculus/horizon/samsung/GearVRInputService$Callbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothDeviceCharacteristics(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter$1;->this$0:Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter;->access$100(Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 71
    return-void
.end method

.method public onBluetoothDeviceStateChange(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter$1;->this$0:Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter;

    invoke-static {v0, p2}, Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter;->access$000(Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter;I)V

    .line 60
    return-void
.end method
