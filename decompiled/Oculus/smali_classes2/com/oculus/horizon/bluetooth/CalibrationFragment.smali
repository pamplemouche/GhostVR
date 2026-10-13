.class public Lcom/oculus/horizon/bluetooth/CalibrationFragment;
.super Lcom/oculus/horizon/bluetooth/BluetoothBaseFragment;
.source "CalibrationFragment.java"

# interfaces
.implements Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment$Listener;
.implements Lcom/oculus/horizon/bluetooth/CalibrationPresenter$View;
.implements Lcom/oculus/horizon/bluetooth/CalibrationStepFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/bluetooth/CalibrationFragment$Listener;
    }
.end annotation


# instance fields
.field mPresenter:Lcom/oculus/horizon/bluetooth/CalibrationPresenter;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/bluetooth/CalibrationFragment;)V
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/bluetooth/CalibrationFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/bluetooth/CalibrationFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/bluetooth/CalibrationFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/bluetooth/CalibrationFragment;)V
    .locals 1

    .prologue
    .line 32
    invoke-static {p0}, Lcom/oculus/horizon/bluetooth/CalibrationPresenter;->$ul_$xXXcom_oculus_horizon_bluetooth_CalibrationPresenter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/bluetooth/CalibrationPresenter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/bluetooth/CalibrationFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/CalibrationPresenter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/oculus/horizon/bluetooth/BluetoothBaseFragment;-><init>()V

    return-void
.end method

.method public static newInstance(Landroid/bluetooth/BluetoothDevice;)Landroidx/fragment/app/Fragment;
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/oculus/horizon/bluetooth/CalibrationFragment;->newInstance(Landroid/bluetooth/BluetoothDevice;Z)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static newInstance(Landroid/bluetooth/BluetoothDevice;Z)Landroidx/fragment/app/Fragment;
    .locals 3

    .prologue
    .line 48
    new-instance v0, Lcom/oculus/horizon/bluetooth/CalibrationFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/bluetooth/CalibrationFragment;-><init>()V

    .line 50
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 51
    const-string v2, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 52
    const-string v2, "skippable"

    invoke-virtual {v1, v2, p1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 53
    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 55
    return-object v0
.end method


# virtual methods
.method public findGyroStepFragment()Landroidx/fragment/app/Fragment;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 184
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/CalibrationFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "gyro"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public findIntroFragment()Landroidx/fragment/app/Fragment;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/CalibrationFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "intro"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public findMagStepFragment()Landroidx/fragment/app/Fragment;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 178
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/CalibrationFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    const-string v1, "mag"

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;
    .locals 2

    .prologue
    .line 159
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/CalibrationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    return-object v0
.end method

.method public getListener()Lcom/oculus/horizon/bluetooth/CalibrationFragment$Listener;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 146
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/CalibrationFragment;->getParentFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 147
    instance-of v1, v0, Lcom/oculus/horizon/bluetooth/CalibrationFragment$Listener;

    if-eqz v1, :cond_0

    .line 148
    check-cast v0, Lcom/oculus/horizon/bluetooth/CalibrationFragment$Listener;

    .line 151
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->BLUETOOTH_CALIBRATION:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public isSkippable()Z
    .locals 2

    .prologue
    .line 155
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/CalibrationFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "skippable"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public onComplete()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 230
    sget v0, Lcom/oculus/horizon/R$string;->bluetooth_toast_calibrate_complete:I

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 231
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/CalibrationFragment;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/oculus/horizon/bluetooth/CalibrationFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 232
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/CalibrationFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 234
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/CalibrationFragment;->getListener()Lcom/oculus/horizon/bluetooth/CalibrationFragment$Listener;

    move-result-object v0

    .line 235
    if-eqz v0, :cond_0

    .line 236
    invoke-interface {v0}, Lcom/oculus/horizon/bluetooth/CalibrationFragment$Listener;->onCalibrationComplete()V

    .line 241
    :goto_0
    return-void

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/CalibrationFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 68
    invoke-super {p0, p1}, Lcom/oculus/horizon/bluetooth/BluetoothBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/CalibrationFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/bluetooth/CalibrationFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/bluetooth/CalibrationFragment;)V

    .line 71
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/bluetooth/CalibrationFragment;->setHasOptionsMenu(Z)V

    .line 73
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/CalibrationPresenter;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/bluetooth/CalibrationPresenter;->setView(Lcom/oculus/horizon/bluetooth/CalibrationPresenter$View;)V

    .line 74
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/CalibrationPresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/bluetooth/CalibrationPresenter;->onCreate()V

    .line 75
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 106
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/bluetooth/BluetoothBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 107
    sget v0, Lcom/oculus/horizon/R$menu;->bluetooth_calibration:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 108
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
    .line 80
    sget v0, Lcom/oculus/horizon/R$layout;->bluetooth_calibration_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onError(Lcom/oculus/horizon/bluetooth/CalibrationPresenter$Reason;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 207
    sget-object v0, Lcom/oculus/horizon/bluetooth/CalibrationFragment$1;->$SwitchMap$com$oculus$horizon$bluetooth$CalibrationPresenter$Reason:[I

    invoke-virtual {p1}, Lcom/oculus/horizon/bluetooth/CalibrationPresenter$Reason;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 218
    :goto_0
    return-void

    .line 210
    :pswitch_0
    sget v0, Lcom/oculus/horizon/R$string;->bluetooth_toast_connect_error:I

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 211
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/CalibrationFragment;->getBluetoothDevice()Landroid/bluetooth/BluetoothDevice;

    move-result-object v3

    invoke-virtual {v3}, Landroid/bluetooth/BluetoothDevice;->getName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/oculus/horizon/bluetooth/CalibrationFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 212
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/CalibrationFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 207
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public onGyroStepComplete()V
    .locals 1

    .prologue
    .line 263
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/CalibrationPresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/bluetooth/CalibrationPresenter;->showNextCalibrationStep()V

    .line 264
    return-void
.end method

.method public onIntroComplete()V
    .locals 1

    .prologue
    .line 249
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/CalibrationPresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/bluetooth/CalibrationPresenter;->onIntroComplete()V

    .line 250
    return-void
.end method

.method public onMagStepComplete()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/CalibrationPresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/bluetooth/CalibrationPresenter;->showNextCalibrationStep()V

    .line 259
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 123
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 124
    sget v1, Lcom/oculus/horizon/R$id;->skip:I

    if-ne v1, v0, :cond_0

    .line 125
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/CalibrationPresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/bluetooth/CalibrationPresenter;->skip()V

    .line 126
    const/4 v0, 0x1

    .line 128
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
    .line 100
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/CalibrationPresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/bluetooth/CalibrationPresenter;->onPause()V

    .line 101
    invoke-super {p0}, Lcom/oculus/horizon/bluetooth/BluetoothBaseFragment;->onPause()V

    .line 102
    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0, p1}, Lcom/oculus/horizon/bluetooth/BluetoothBaseFragment;->onPrepareOptionsMenu(Landroid/view/Menu;)V

    .line 114
    sget v0, Lcom/oculus/horizon/R$id;->skip:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 116
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/CalibrationFragment;->isSkippable()Z

    move-result v1

    if-nez v1, :cond_0

    .line 117
    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 119
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 92
    invoke-super {p0}, Lcom/oculus/horizon/bluetooth/BluetoothBaseFragment;->onResume()V

    .line 93
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/CalibrationFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->bluetooth_calibration_title:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    .line 95
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/CalibrationFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/CalibrationPresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/bluetooth/CalibrationPresenter;->onResume()V

    .line 96
    return-void
.end method

.method public onSkip()V
    .locals 1

    .prologue
    .line 222
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/CalibrationFragment;->getListener()Lcom/oculus/horizon/bluetooth/CalibrationFragment$Listener;

    move-result-object v0

    .line 223
    if-eqz v0, :cond_0

    .line 224
    invoke-interface {v0}, Lcom/oculus/horizon/bluetooth/CalibrationFragment$Listener;->onCalibrationSkip()V

    .line 226
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 85
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/bluetooth/BluetoothBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 86
    invoke-static {}, Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment;->newInstance()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 87
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/CalibrationFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$id;->frame:I

    const-string v3, "intro"

    invoke-virtual {v1, v2, v0, v3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 88
    return-void
.end method

.method public setTargetFragment(Landroidx/fragment/app/Fragment;I)V
    .locals 2

    .prologue
    .line 133
    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/oculus/horizon/bluetooth/CalibrationFragment$Listener;

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string v1, "Target fragment should be an instance of Listener to receive callbacks"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 136
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/bluetooth/BluetoothBaseFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 137
    return-void

    .line 133
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public showGyroStepFragment()V
    .locals 4

    .prologue
    .line 201
    invoke-static {}, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;->newGyroStepFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 202
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/CalibrationFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$id;->frame:I

    const-string v3, "gyro"

    invoke-virtual {v1, v2, v0, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 203
    return-void
.end method

.method public showIntroStepFragment()V
    .locals 4

    .prologue
    .line 189
    invoke-static {}, Lcom/oculus/horizon/bluetooth/CalibrationIntroFragment;->newInstance()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 190
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/CalibrationFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$id;->frame:I

    const-string v3, "intro"

    invoke-virtual {v1, v2, v0, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 191
    return-void
.end method

.method public showMagStepFragment()V
    .locals 4

    .prologue
    .line 195
    invoke-static {}, Lcom/oculus/horizon/bluetooth/CalibrationStepFragment;->newMagStepFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 196
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/CalibrationFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$id;->frame:I

    const-string v3, "mag"

    invoke-virtual {v1, v2, v0, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 197
    return-void
.end method
