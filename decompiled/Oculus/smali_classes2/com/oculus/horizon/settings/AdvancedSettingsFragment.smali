.class public Lcom/oculus/horizon/settings/AdvancedSettingsFragment;
.super Lcom/oculus/horizon/base/OculusBaseFragment;
.source "AdvancedSettingsFragment.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 17
    invoke-direct {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 50
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->SETTINGS_ADVANCED:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
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
    .line 22
    sget v0, Lcom/oculus/horizon/R$layout;->settings_advanced_settings_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 44
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onResume()V

    .line 45
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/AdvancedSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->advanced_settings_title:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    .line 46
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v0, 0x0

    .line 27
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/base/OculusBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 30
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/AdvancedSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 31
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/AdvancedSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "arg_from_deeplink_opt_in_ptc"

    .line 32
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 34
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/AdvancedSettingsFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 35
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$id;->content_frame:I

    new-instance v3, Lcom/oculus/horizon/settings/AutoUpdateSettingsFragment;

    invoke-direct {v3}, Lcom/oculus/horizon/settings/AutoUpdateSettingsFragment;-><init>()V

    .line 36
    invoke-virtual {v1, v2, v3}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$id;->content_frame:I

    .line 37
    invoke-static {v0}, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->getFragment(Z)Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v1, v2, v0}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$id;->content_frame:I

    new-instance v2, Lcom/oculus/horizon/samsung/settings/SamsungSettingsFragment;

    invoke-direct {v2}, Lcom/oculus/horizon/samsung/settings/SamsungSettingsFragment;-><init>()V

    .line 38
    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/FragmentTransaction;->add(ILandroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    .line 39
    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 40
    return-void
.end method
