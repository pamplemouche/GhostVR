.class Lcom/oculus/horizon/bluetooth/UpdateService$1;
.super Lcom/oculus/horizon/samsung/GearVRInputService$Callbacks;
.source "UpdateService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/bluetooth/UpdateService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/bluetooth/UpdateService;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/bluetooth/UpdateService;)V
    .locals 0

    .prologue
    .line 100
    iput-object p1, p0, Lcom/oculus/horizon/bluetooth/UpdateService$1;->this$0:Lcom/oculus/horizon/bluetooth/UpdateService;

    invoke-direct {p0}, Lcom/oculus/horizon/samsung/GearVRInputService$Callbacks;-><init>()V

    return-void
.end method


# virtual methods
.method public onBluetoothDeviceCharacteristics(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .prologue
    .line 123
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService$1;->this$0:Lcom/oculus/horizon/bluetooth/UpdateService;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-static/range {v0 .. v5}, Lcom/oculus/horizon/bluetooth/UpdateService;->access$300(Lcom/oculus/horizon/bluetooth/UpdateService;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    .line 125
    return-void
.end method

.method public onBluetoothDeviceStateChange(Landroid/bluetooth/BluetoothDevice;I)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService$1;->this$0:Lcom/oculus/horizon/bluetooth/UpdateService;

    invoke-static {v0, p1, p2}, Lcom/oculus/horizon/bluetooth/UpdateService;->access$000(Lcom/oculus/horizon/bluetooth/UpdateService;Landroid/bluetooth/BluetoothDevice;I)V

    .line 104
    return-void
.end method

.method public onBluetoothDeviceUpdateComplete(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService$1;->this$0:Lcom/oculus/horizon/bluetooth/UpdateService;

    invoke-static {v0, p1}, Lcom/oculus/horizon/bluetooth/UpdateService;->access$200(Lcom/oculus/horizon/bluetooth/UpdateService;Ljava/lang/String;)V

    .line 114
    return-void
.end method

.method public onBluetoothDeviceUpdateProgress(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 108
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/UpdateService$1;->this$0:Lcom/oculus/horizon/bluetooth/UpdateService;

    invoke-static {v0, p1, p2}, Lcom/oculus/horizon/bluetooth/UpdateService;->access$100(Lcom/oculus/horizon/bluetooth/UpdateService;Ljava/lang/String;I)V

    .line 109
    return-void
.end method
