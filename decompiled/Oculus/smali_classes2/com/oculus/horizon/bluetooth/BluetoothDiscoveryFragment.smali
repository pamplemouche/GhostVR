.class public Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;
.super Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;
.source "BluetoothDiscoveryFragment.java"

# interfaces
.implements Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenter$View;


# instance fields
.field private mActionPanel:Landroid/widget/FrameLayout;

.field private mBtEnable:Landroid/widget/Button;

.field private mController:Landroid/widget/TextView;

.field private mHandednessOptions:Landroid/widget/RadioGroup;

.field mPresenter:Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mTutorial:Landroid/view/View;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;)V
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;)V
    .locals 1

    .prologue
    .line 27
    invoke-static {p0}, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenter;->$ul_$xXXcom_oculus_horizon_bluetooth_BluetoothDiscoveryPresenter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;-><init>()V

    return-void
.end method

.method public static newInstance()Landroidx/fragment/app/Fragment;
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic getActivity()Landroid/app/Activity;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .prologue
    .line 27
    invoke-super {p0}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 27
    invoke-super {p0}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    return-object v0
.end method

.method public getFragment()Landroidx/fragment/app/Fragment;
    .locals 0

    .prologue
    .line 153
    return-object p0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 148
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->BLUETOOTH_DISCOVERY:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 142
    invoke-super {p0, p1, p2, p3}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 143
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenter;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenter;->onActivityResult(IILandroid/content/Intent;)V

    .line 144
    return-void
.end method

.method public onBack()V
    .locals 1

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    .line 190
    return-void
.end method

.method public onBluetoothStateChanged(II)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 158
    and-int/lit8 v0, p1, 0xc

    const/16 v2, 0xc

    if-ne v0, v2, :cond_1

    const/4 v0, 0x1

    .line 160
    :goto_0
    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->mTutorial:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->setEnabled(Z)V

    .line 161
    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->mActionPanel:Landroid/widget/FrameLayout;

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    :cond_0
    invoke-virtual {v2, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 162
    return-void

    :cond_1
    move v0, v1

    .line 158
    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 44
    invoke-super {p0, p1}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;)V

    .line 47
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->setHasOptionsMenu(Z)V

    .line 48
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
    .line 53
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenter;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenter;->setView(Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenter$View;)V

    .line 54
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->getThemedInflater(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$layout;->bluetooth_discovery_fragment:I

    const/4 v2, 0x0

    .line 55
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 127
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 129
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/oculus/horizon/util/ThemeUtils;->getWindowBackground(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 132
    :cond_0
    iput-object v2, p0, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->mHandednessOptions:Landroid/widget/RadioGroup;

    .line 133
    iput-object v2, p0, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->mController:Landroid/widget/TextView;

    .line 134
    iput-object v2, p0, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->mTutorial:Landroid/view/View;

    .line 135
    iput-object v2, p0, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->mBtEnable:Landroid/widget/Button;

    .line 136
    iput-object v2, p0, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->mActionPanel:Landroid/widget/FrameLayout;

    .line 137
    invoke-super {p0}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->onDestroyView()V

    .line 138
    return-void
.end method

.method public onHandedness(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 166
    const-string v0, "left"

    .line 167
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Lcom/oculus/horizon/R$id;->option_left:I

    .line 170
    :goto_0
    iget-object v1, p0, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->mHandednessOptions:Landroid/widget/RadioGroup;

    invoke-virtual {v1, v0}, Landroid/widget/RadioGroup;->check(I)V

    .line 171
    return-void

    .line 167
    :cond_0
    sget v0, Lcom/oculus/horizon/R$id;->option_right:I

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenter;->onPause()V

    .line 122
    invoke-super {p0}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->onPause()V

    .line 123
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 112
    invoke-super {p0}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->onResume()V

    .line 114
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->bluetooth_discovery_title:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    .line 116
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->mPresenter:Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryPresenter;->onResume()V

    .line 117
    return-void
.end method

.method public onSelectedBluetoothDevice(Ljava/lang/String;Z)V
    .locals 6

    .prologue
    .line 175
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->mController:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->mController:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 177
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->mController:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 178
    if-eqz p2, :cond_0

    .line 180
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v2, Lcom/oculus/horizon/R$drawable;->bluetooth_device_update:I

    .line 181
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/res/Resources;->getDrawable(ILandroid/content/res/Resources$Theme;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 183
    :goto_0
    iget-object v2, p0, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->mController:Landroid/widget/TextView;

    const/4 v3, 0x1

    aget-object v3, v1, v3

    const/4 v4, 0x2

    aget-object v4, v1, v4

    const/4 v5, 0x3

    aget-object v1, v1, v5

    invoke-virtual {v2, v0, v3, v4, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 185
    return-void

    .line 181
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 60
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/bluetooth/MalibuBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 62
    sget v0, Lcom/oculus/horizon/R$id;->handedness_options:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RadioGroup;

    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->mHandednessOptions:Landroid/widget/RadioGroup;

    .line 63
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->mHandednessOptions:Landroid/widget/RadioGroup;

    new-instance v1, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment$1;-><init>(Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/RadioGroup;->setOnCheckedChangeListener(Landroid/widget/RadioGroup$OnCheckedChangeListener;)V

    .line 78
    sget v0, Lcom/oculus/horizon/R$id;->controller:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->mController:Landroid/widget/TextView;

    .line 79
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->mController:Landroid/widget/TextView;

    new-instance v1, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment$2;-><init>(Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    sget v0, Lcom/oculus/horizon/R$id;->tutorial:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->mTutorial:Landroid/view/View;

    .line 87
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->mTutorial:Landroid/view/View;

    new-instance v1, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment$3;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment$3;-><init>(Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    sget v0, Lcom/oculus/horizon/R$id;->action_panel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->mActionPanel:Landroid/widget/FrameLayout;

    .line 95
    sget v0, Lcom/oculus/horizon/R$id;->bt_enable:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->mBtEnable:Landroid/widget/Button;

    .line 96
    iget-object v0, p0, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->mBtEnable:Landroid/widget/Button;

    new-instance v1, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment$4;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment$4;-><init>(Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    invoke-virtual {p1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 106
    invoke-virtual {p0}, Lcom/oculus/horizon/bluetooth/BluetoothDiscoveryFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 108
    :cond_0
    return-void
.end method
