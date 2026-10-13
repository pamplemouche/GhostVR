.class public abstract Lcom/oculus/horizon/samsung/GearVRInputService$Callbacks;
.super Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;
.source "GearVRInputService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/samsung/GearVRInputService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Callbacks"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 136
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "com.samsung.android.app.vr.input.service.receiver.action.BLUETOOTH_FWUPDATE_CONNECTION_STATUS"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "com.samsung.android.app.vr.input.service.receiver.action.BLUETOOTH_FWUPDATE_STATUS"

    aput-object v2, v0, v1

    invoke-direct {p0, v0}, Lcom/oculus/security/basecomponent/OculusPublicBroadcastReceiver;-><init>([Ljava/lang/String;)V

    .line 139
    return-void
.end method


# virtual methods
.method public abstract onBluetoothDeviceCharacteristics(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V
.end method

.method public abstract onBluetoothDeviceStateChange(Landroid/bluetooth/BluetoothDevice;I)V
.end method

.method public onBluetoothDeviceUpdateComplete(Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 158
    return-void
.end method

.method public onBluetoothDeviceUpdateProgress(Ljava/lang/String;I)V
    .locals 0

    .prologue
    .line 151
    return-void
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;Lcom/facebook/secure/receiver/BroadcastReceiverLike;)V
    .locals 12

    .prologue
    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v6, 0x0

    .line 176
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 177
    const-string v3, "com.samsung.android.app.vr.input.service.receiver.action.BLUETOOTH_FWUPDATE_CONNECTION_STATUS"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 178
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    .line 179
    invoke-virtual {p2, v0}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 180
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object v0, v1

    .line 181
    :goto_0
    const-string v2, "connection_state"

    .line 182
    invoke-virtual {p2, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    .line 185
    const-string v3, "GearVRInputService"

    const-string v4, "onBluetoothDeviceStateChange: %s %d"

    if-eqz v0, :cond_0

    .line 188
    invoke-virtual {v0}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v1

    .line 189
    :cond_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    .line 185
    invoke-static {v3, v4, v1, v5}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 191
    invoke-virtual {p0, v0, v2}, Lcom/oculus/horizon/samsung/GearVRInputService$Callbacks;->onBluetoothDeviceStateChange(Landroid/bluetooth/BluetoothDevice;I)V

    .line 232
    :cond_1
    :goto_1
    return-void

    .line 180
    :cond_2
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    goto :goto_0

    .line 192
    :cond_3
    const-string v1, "com.samsung.android.app.vr.input.service.receiver.action.BLUETOOTH_FWUPDATE_STATUS"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 193
    const-string v0, "deviceAddress"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 195
    const-string v0, "status"

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 196
    packed-switch v0, :pswitch_data_0

    goto :goto_1

    .line 226
    :pswitch_0
    const-string v0, "GearVRInputService"

    const-string v2, "onBluetoothDeviceUpdateComplete: %s"

    invoke-static {v0, v2, v1}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 228
    invoke-virtual {p0, v1}, Lcom/oculus/horizon/samsung/GearVRInputService$Callbacks;->onBluetoothDeviceUpdateComplete(Ljava/lang/String;)V

    goto :goto_1

    .line 198
    :pswitch_1
    const-string v0, "checkUpdate"

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 199
    const-string v3, "deviceVersion"

    invoke-virtual {p2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 200
    const-string v4, "updateVersion"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 201
    const-string v5, "batteryValueInt"

    const/4 v7, -0x1

    .line 202
    invoke-virtual {p2, v5, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    .line 204
    const-string v7, "GearVRInputService"

    const-string v8, "onBluetoothDeviceCharacteristics: %s %d %s %s %d"

    const/4 v9, 0x5

    new-array v9, v9, [Ljava/lang/Object;

    aput-object v1, v9, v6

    .line 208
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    aput-object v10, v9, v2

    const/4 v10, 0x2

    aput-object v3, v9, v10

    const/4 v10, 0x3

    aput-object v4, v9, v10

    const/4 v10, 0x4

    .line 211
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    .line 204
    invoke-static {v7, v8, v9}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 213
    if-ne v2, v0, :cond_4

    :goto_2
    move-object v0, p0

    .line 215
    invoke-virtual/range {v0 .. v5}, Lcom/oculus/horizon/samsung/GearVRInputService$Callbacks;->onBluetoothDeviceCharacteristics(Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_4
    move v2, v6

    .line 213
    goto :goto_2

    .line 219
    :pswitch_2
    const-string v0, "progress"

    invoke-virtual {p2, v0, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    .line 221
    const-string v2, "GearVRInputService"

    const-string v3, "onBluetoothDeviceUpdateProgress: %s %d"

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v3, v1, v4}, Lcom/facebook/debug/log/BLog;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 223
    invoke-virtual {p0, v1, v0}, Lcom/oculus/horizon/samsung/GearVRInputService$Callbacks;->onBluetoothDeviceUpdateProgress(Ljava/lang/String;I)V

    goto :goto_1

    .line 196
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
