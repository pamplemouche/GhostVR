.class public Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;
.super Lcom/oculus/horizon/bluetooth/BluetoothBaseFragment;
.source "BluetoothDeviceFragment.java"

# interfaces
.implements Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter$View;


# instance fields
.field private mAddress:Landroid/widget/TextView;

.field private mBattery:Landroid/widget/TextView;

.field mPresenter:Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mUpdate:Landroid/widget/TextView;

.field private mVersion:Landroid/widget/TextView;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;)V
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;)V
    .locals 1

    .prologue
    .line 29
    invoke-static {p0}, Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter;->$ul_$xXXcom_oculus_horizon_bluetooth_BluetoothDevicePresenter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Lcom/oculus/horizon/bluetooth/BluetoothBaseFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/bluetooth/BluetoothDevice;)Landroidx/fragment/app/Fragment;
    .locals 3

    .prologue
    .line 33
    new-instance v0, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;-><init>()V

    .line 35
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 36
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 37
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 39
    return-object v0
.end method


# virtual methods
.method public getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .prologue
    .line 135
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getFragment()Landroidx/fragment/app/Fragment;
    .locals 0

    .prologue
    .line 130
    return-object p0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 125
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->BLUETOOTH_DEVICE:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0, p1, p2, p3}, Lcom/oculus/horizon/bluetooth/BluetoothBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 104
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter;->onActivityResult(IILandroid/content/Intent;)V

    .line 105
    return-void
.end method

.method public onBluetoothConnectionStateChange(II)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 156
    if-nez p2, :cond_0

    .line 164
    :goto_0
    return-void

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 161
    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter;

    invoke-virtual {v1}, Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 162
    sget v2, Lcom/oculus/horizon/R$string;->bluetooth_toast_connected:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 163
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method

.method public onBluetoothDevice(Landroid/bluetooth/BluetoothDevice;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 140
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 142
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 144
    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->mAddress:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->mAddress:Landroid/widget/TextView;

    sget v2, Lcom/oculus/horizon/R$string;->bluetooth_device_address:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/bluetooth/BluetoothDevice;->getAddress()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 147
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter;->isUpdateAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 148
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->mUpdate:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 151
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter;->connect()V

    .line 152
    return-void
.end method

.method public onBluetoothDeviceCharacteristics(ZLjava/lang/String;Ljava/lang/String;I)V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v1, 0x0

    .line 169
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 171
    if-lez p4, :cond_0

    .line 172
    sget v0, Lcom/oculus/horizon/R$string;->bluetooth_device_battery:I

    new-array v3, v5, [Ljava/lang/Object;

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {v2, v0, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 176
    :goto_0
    iget-object v3, p0, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->mBattery:Landroid/widget/TextView;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    iget-object v3, p0, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->mBattery:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 179
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->mVersion:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 180
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->mVersion:Landroid/widget/TextView;

    sget v3, Lcom/oculus/horizon/R$string;->bluetooth_device_firmware:I

    new-array v4, v5, [Ljava/lang/Object;

    aput-object p2, v4, v1

    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 182
    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->mUpdate:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 183
    return-void

    .line 174
    :cond_0
    sget v0, Lcom/oculus/horizon/R$string;->common_unknown:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 182
    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/oculus/horizon/bluetooth/BluetoothBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;)V

    .line 54
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->setHasOptionsMenu(Z)V

    .line 55
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 109
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/bluetooth/BluetoothBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 110
    sget v0, Lcom/oculus/horizon/R$menu;->bluetooth_device:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 111
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 60
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter;->setView(Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter$View;)V

    .line 61
    sget v0, Lcom/oculus/horizon/R$layout;->bluetooth_device_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 94
    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->mBattery:Landroid/widget/TextView;

    .line 95
    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->mAddress:Landroid/widget/TextView;

    .line 96
    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->mVersion:Landroid/widget/TextView;

    .line 97
    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->mUpdate:Landroid/widget/TextView;

    .line 98
    invoke-super {p0}, Lcom/oculus/horizon/bluetooth/BluetoothBaseFragment;->onDestroyView()V

    .line 99
    return-void
.end method

.method public onError(Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter$Reason;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 187
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 188
    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter;

    invoke-virtual {v1}, Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v1

    .line 189
    sget-object v2, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment$2;->$SwitchMap$com$oculus$horizon$bluetooth$BluetoothDevicePresenter$Reason:[I

    invoke-virtual {p1}, Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter$Reason;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 199
    :goto_0
    return-void

    .line 192
    :pswitch_0
    sget v2, Lcom/oculus/horizon/R$string;->bluetooth_toast_connect_error:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {v1}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v1

    aput-object v1, v3, v4

    invoke-virtual {v0, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 193
    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 196
    :pswitch_1
    sget v1, Lcom/oculus/horizon/R$string;->bluetooth_toast_calibrate_non_selected:I

    invoke-static {v0, v1, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 197
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 189
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 115
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 116
    sget v1, Lcom/oculus/horizon/R$id;->calibrate:I

    if-ne v1, v0, :cond_0

    .line 117
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter;

    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter;->startCalibrationFragment(Landroidx/fragment/app/FragmentManager;)V

    .line 118
    const/4 v0, 0x1

    .line 120
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/oculus/horizon/bluetooth/BluetoothBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter;->onPause()V

    .line 89
    invoke-super {p0}, Lcom/oculus/horizon/bluetooth/BluetoothBaseFragment;->onPause()V

    .line 90
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 82
    invoke-super {p0}, Lcom/oculus/horizon/bluetooth/BluetoothBaseFragment;->onResume()V

    .line 83
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/bluetooth/BluetoothDevicePresenter;->onResume()V

    .line 84
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 66
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/bluetooth/BluetoothBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 67
    sget v0, Lcom/oculus/horizon/R$id;->device_battery:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->mBattery:Landroid/widget/TextView;

    .line 68
    sget v0, Lcom/oculus/horizon/R$id;->device_address:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->mAddress:Landroid/widget/TextView;

    .line 69
    sget v0, Lcom/oculus/horizon/R$id;->device_version:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->mVersion:Landroid/widget/TextView;

    .line 70
    sget v0, Lcom/oculus/horizon/R$id;->update:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->mUpdate:Landroid/widget/TextView;

    .line 71
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;->mUpdate:Landroid/widget/TextView;

    new-instance v1, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment$1;-><init>(Lcom/oculus/horizon/bluetooth/BluetoothDeviceFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 78
    return-void
.end method
