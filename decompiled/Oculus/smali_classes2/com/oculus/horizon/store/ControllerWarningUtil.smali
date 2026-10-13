.class public Lcom/oculus/horizon/store/ControllerWarningUtil;
.super Ljava/lang/Object;
.source "ControllerWarningUtil.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBestInputDeviceName(Lcom/oculus/library/model/InputDevice;Landroid/content/Context;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 23
    iget-object v0, p0, Lcom/oculus/library/model/InputDevice;->tag:Ljava/lang/String;

    .line 24
    invoke-static {v0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;->from(Ljava/lang/String;)Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;

    move-result-object v0

    .line 25
    if-eqz v0, :cond_0

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;->stringResourceId:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oculus/library/model/InputDevice;->name:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getPrioritySortedInputDeviceList(Ljava/util/List;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/library/model/InputDevice;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/library/model/InputDevice;",
            ">;"
        }
    .end annotation

    .prologue
    .line 58
    new-instance v0, Lcom/oculus/horizon/store/ControllerWarningUtil$2;

    invoke-direct {v0}, Lcom/oculus/horizon/store/ControllerWarningUtil$2;-><init>()V

    invoke-static {p0, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 74
    return-object p0
.end method

.method public static getSupportedDevicesSequence(Ljava/util/List;ILandroid/content/Context;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/library/model/InputDevice;",
            ">;I",
            "Landroid/content/Context;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 35
    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/model/InputDevice;

    invoke-static {v0, p2}, Lcom/oculus/horizon/store/ControllerWarningUtil;->getBestInputDeviceName(Lcom/oculus/library/model/InputDevice;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 36
    const/4 v1, 0x1

    .line 39
    invoke-interface {p0}, Ljava/util/List;->size()I

    move-result v2

    invoke-interface {p0, v1, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v1

    new-instance v2, Lcom/oculus/horizon/store/ControllerWarningUtil$1;

    invoke-direct {v2, p2, p1}, Lcom/oculus/horizon/store/ControllerWarningUtil$1;-><init>(Landroid/content/Context;I)V

    .line 37
    invoke-static {v0, v1, v2}, Lcom/oculus/util/collection/CollectionUtil;->foldL(Ljava/lang/Object;Ljava/util/List;Lcom/oculus/util/collection/CollectionUtil$Folder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 49
    return-object v0
.end method

.method public static hasPairedDevice(Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;Lcom/oculus/horizon/samsung/GearVRControllerHelper;Landroid/bluetooth/BluetoothAdapter;Lcom/oculus/horizon/bluetooth/InputDeviceHelper;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 82
    const-string v2, "Leah"

    const-string v3, "Grabbed bluetooth from native module"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 83
    sget-object v2, Lcom/oculus/horizon/store/ControllerWarningUtil$3;->$SwitchMap$com$oculus$horizon$pdp$ApplicationPdpFragment$InputDeviceTag:[I

    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    move v0, v1

    .line 96
    :cond_0
    :goto_0
    :pswitch_0
    return v0

    .line 85
    :pswitch_1
    invoke-virtual {p1}, Lcom/oculus/horizon/samsung/GearVRControllerHelper;->getController()Ljava/lang/String;

    move-result-object v2

    .line 86
    invoke-static {v2}, Landroid/bluetooth/BluetoothAdapter;->checkBluetoothAddress(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 87
    invoke-virtual {p2, v2}, Landroid/bluetooth/BluetoothAdapter;->getRemoteDevice(Ljava/lang/String;)Landroid/bluetooth/BluetoothDevice;

    move-result-object v2

    .line 88
    invoke-virtual {v2}, Landroid/bluetooth/BluetoothDevice;->getBondState()I

    move-result v2

    const/16 v3, 0xc

    if-eq v2, v3, :cond_0

    move v0, v1

    goto :goto_0

    :cond_1
    move v0, v1

    .line 90
    goto :goto_0

    .line 92
    :pswitch_2
    invoke-virtual {p3}, Lcom/oculus/horizon/bluetooth/InputDeviceHelper;->hasPairedGameController()Z

    move-result v0

    goto :goto_0

    .line 83
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method
