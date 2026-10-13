.class public Lcom/oculus/horizon/bluetooth/TutorialFragment;
.super Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;
.source "TutorialFragment.java"

# interfaces
.implements Lcom/oculus/horizon/bluetooth/CalibrationFragment$Listener;
.implements Lcom/oculus/horizon/bluetooth/HandednessFragment$Listener;
.implements Lcom/oculus/horizon/bluetooth/MalibuFragment$Listener;
.implements Lcom/oculus/horizon/bluetooth/UpdateFragment$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/bluetooth/TutorialFragment$Listener;
    }
.end annotation


# instance fields
.field private mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

.field mGearVRInputService:Lcom/oculus/horizon/samsung/GearVRInputService;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/bluetooth/TutorialFragment;)V
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/bluetooth/TutorialFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/bluetooth/TutorialFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/bluetooth/TutorialFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/bluetooth/TutorialFragment;)V
    .locals 1

    .prologue
    .line 25
    invoke-static {p0}, Lcom/oculus/horizon/samsung/GearVRInputService;->$ul_$xXXcom_oculus_horizon_samsung_GearVRInputService$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/samsung/GearVRInputService;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/bluetooth/TutorialFragment;->mGearVRInputService:Lcom/oculus/horizon/samsung/GearVRInputService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;-><init>()V

    return-void
.end method

.method private getListener()Lcom/oculus/horizon/bluetooth/TutorialFragment$Listener;
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/TutorialFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 113
    instance-of v1, v0, Lcom/oculus/horizon/bluetooth/TutorialFragment$Listener;

    if-eqz v1, :cond_0

    .line 114
    check-cast v0, Lcom/oculus/horizon/bluetooth/TutorialFragment$Listener;

    .line 120
    :goto_0
    return-object v0

    .line 116
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/TutorialFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    .line 117
    instance-of v1, v0, Lcom/oculus/horizon/bluetooth/TutorialFragment$Listener;

    if-eqz v1, :cond_1

    .line 118
    check-cast v0, Lcom/oculus/horizon/bluetooth/TutorialFragment$Listener;

    goto :goto_0

    .line 120
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance()Landroidx/fragment/app/Fragment;
    .locals 1

    .prologue
    .line 34
    new-instance v0, Lcom/oculus/horizon/bluetooth/TutorialFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/bluetooth/TutorialFragment;-><init>()V

    return-object v0
.end method

.method public static newInstance(Z)Landroidx/fragment/app/Fragment;
    .locals 2

    .prologue
    .line 38
    invoke-static {}, Lcom/oculus/horizon/bluetooth/TutorialFragment;->newInstance()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 39
    invoke-static {p0}, Lcom/oculus/horizon/bluetooth/TutorialFragment;->createArguments(Z)Landroid/os/Bundle;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 40
    return-object v0
.end method

.method private onComplete()V
    .locals 2

    .prologue
    .line 139
    invoke-direct {p0}, Lcom/oculus/horizon/bluetooth/TutorialFragment;->getListener()Lcom/oculus/horizon/bluetooth/TutorialFragment$Listener;

    move-result-object v0

    .line 140
    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/oculus/horizon/bluetooth/TutorialFragment$Listener;->onComplete()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 147
    :goto_0
    return-void

    .line 144
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/TutorialFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    .line 145
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    .line 146
    new-instance v1, Lcom/oculus/horizon/navigation/FragmentNavigator;

    invoke-direct {v1, v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-static {}, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->newInstance()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    goto :goto_0
.end method

.method private showCalibrationFragment()V
    .locals 4

    .prologue
    .line 129
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/TutorialFragment;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oculus/horizon/bluetooth/CalibrationFragment;->newInstance(Landroid/bluetooth/BluetoothDevice;Z)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 130
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/TutorialFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$id;->frame:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 131
    return-void
.end method

.method private showHandednessFragment()V
    .locals 4

    .prologue
    .line 134
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/TutorialFragment;->isFromNux()Z

    move-result v0

    invoke-static {v0}, Lcom/oculus/horizon/bluetooth/HandednessFragment;->newInstance(Z)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 135
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/TutorialFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$id;->frame:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 136
    return-void
.end method

.method private showUpdateFragment()V
    .locals 4

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/TutorialFragment;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/oculus/horizon/bluetooth/UpdateFragment;->newInstance(Landroid/bluetooth/BluetoothDevice;Z)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 125
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/TutorialFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$id;->frame:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroidx/fragment/app/FragmentTransaction;->replace(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 126
    return-void
.end method


# virtual methods
.method public bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 97
    invoke-super {p0, p1, p2, p3}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 98
    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 99
    if-nez p2, :cond_0

    .line 100
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/TutorialFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    .line 103
    :cond_0
    return-void
.end method

.method public onCalibrationComplete()V
    .locals 0

    .prologue
    .line 197
    invoke-direct {p0}, Lcom/oculus/horizon/bluetooth/TutorialFragment;->showHandednessFragment()V

    .line 198
    return-void
.end method

.method public onCalibrationSkip()V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0}, Lcom/oculus/horizon/bluetooth/TutorialFragment;->showHandednessFragment()V

    .line 203
    return-void
.end method

.method public onContinueClick()V
    .locals 0

    .prologue
    .line 211
    invoke-direct {p0}, Lcom/oculus/horizon/bluetooth/TutorialFragment;->onComplete()V

    .line 212
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 59
    invoke-super {p0, p1}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/TutorialFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/bluetooth/TutorialFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/bluetooth/TutorialFragment;)V

    .line 62
    if-eqz p1, :cond_0

    .line 63
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/bluetooth/BluetoothDevice;

    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/TutorialFragment;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 65
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p2    # Landroid/view/ViewGroup;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 70
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/bluetooth/TutorialFragment;->getThemedInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$layout;->bluetooth_tutorial_fragment:I

    const/4 v2, 0x0

    .line 71
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPairComplete(Landroid/bluetooth/BluetoothDevice;)V
    .locals 1

    .prologue
    .line 158
    iput-object p1, p0, Lcom/oculus/horizon/bluetooth/TutorialFragment;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    .line 160
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/TutorialFragment;->mGearVRInputService:Lcom/oculus/horizon/samsung/GearVRInputService;

    invoke-virtual {v0}, Lcom/oculus/horizon/samsung/GearVRInputService;->isGearVRInputServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 162
    invoke-direct {p0}, Lcom/oculus/horizon/bluetooth/TutorialFragment;->showHandednessFragment()V

    .line 167
    :goto_0
    return-void

    .line 166
    :cond_0
    invoke-direct {p0}, Lcom/oculus/horizon/bluetooth/TutorialFragment;->showUpdateFragment()V

    goto :goto_0
.end method

.method public onPairSkip()V
    .locals 0

    .prologue
    .line 153
    invoke-direct {p0}, Lcom/oculus/horizon/bluetooth/TutorialFragment;->onComplete()V

    .line 154
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 83
    invoke-super {p0}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->onResume()V

    .line 84
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/TutorialFragment;->mGearVRInputService:Lcom/oculus/horizon/samsung/GearVRInputService;

    invoke-virtual {v0}, Lcom/oculus/horizon/samsung/GearVRInputService;->isGearVRInputServiceAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    .line 85
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/TutorialFragment;->mGearVRInputService:Lcom/oculus/horizon/samsung/GearVRInputService;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/oculus/horizon/samsung/GearVRInputService;->showErrorDialogFragment(Landroidx/fragment/app/Fragment;I)V

    .line 87
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 92
    const-string v0, "android.bluetooth.device.extra.DEVICE"

    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/TutorialFragment;->mBluetoothDevice:Landroid/bluetooth/BluetoothDevice;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 93
    return-void
.end method

.method public onUpdateComplete()Z
    .locals 1

    .prologue
    .line 181
    invoke-direct {p0}, Lcom/oculus/horizon/bluetooth/TutorialFragment;->showCalibrationFragment()V

    .line 182
    const/4 v0, 0x1

    return v0
.end method

.method public onUpdateNotAvailable()Z
    .locals 1

    .prologue
    .line 175
    invoke-direct {p0}, Lcom/oculus/horizon/bluetooth/TutorialFragment;->showCalibrationFragment()V

    .line 176
    const/4 v0, 0x1

    return v0
.end method

.method public onUpdateSkip()Z
    .locals 1

    .prologue
    .line 187
    invoke-direct {p0}, Lcom/oculus/horizon/bluetooth/TutorialFragment;->showCalibrationFragment()V

    .line 188
    const/4 v0, 0x1

    return v0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 77
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/TutorialFragment;->isFromNux()Z

    move-result v0

    invoke-static {v0}, Lcom/oculus/horizon/bluetooth/MalibuFragment;->newInstance(Z)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 78
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/TutorialFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$id;->frame:I

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 79
    return-void
.end method
