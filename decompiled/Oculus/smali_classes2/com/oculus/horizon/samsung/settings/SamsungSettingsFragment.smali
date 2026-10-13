.class public Lcom/oculus/horizon/samsung/settings/SamsungSettingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "SamsungSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAutoUpdates:Lcom/oculus/horizon/widget/SwitchSetting;

.field mVRHelper:Lcom/oculus/horizon/samsung/settingsapi/VRHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/samsung/settings/SamsungSettingsFragment;)V
    .locals 1

    .prologue
    .line 18
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/samsung/settings/SamsungSettingsFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/samsung/settings/SamsungSettingsFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/samsung/settings/SamsungSettingsFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/samsung/settings/SamsungSettingsFragment;)V
    .locals 1

    .prologue
    .line 18
    invoke-static {p0}, Lcom/oculus/horizon/samsung/settingsapi/VRHelper;->$ul_$xXXcom_oculus_horizon_samsung_settingsapi_VRHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/samsung/settingsapi/VRHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/samsung/settings/SamsungSettingsFragment;->mVRHelper:Lcom/oculus/horizon/samsung/settingsapi/VRHelper;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private autoUpdatesEnabled()Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 52
    iget-object v1, p0, Lcom/oculus/horizon/samsung/settings/SamsungSettingsFragment;->mVRHelper:Lcom/oculus/horizon/samsung/settingsapi/VRHelper;

    iget-object v1, v1, Lcom/oculus/horizon/samsung/settingsapi/VRHelper;->Public:Lcom/oculus/horizon/samsung/settingsapi/SamsungSettings$Provider;

    .line 54
    invoke-virtual {p0}, Lcom/oculus/horizon/samsung/settings/SamsungSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "initial_app_auto_update"

    .line 53
    invoke-virtual {v1, v2, v3, v0}, Lcom/oculus/horizon/samsung/settingsapi/SamsungSettings$Provider;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 57
    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private setAutoUpdatesEnabled(Z)V
    .locals 4

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oculus/horizon/samsung/settings/SamsungSettingsFragment;->mVRHelper:Lcom/oculus/horizon/samsung/settingsapi/VRHelper;

    iget-object v1, v0, Lcom/oculus/horizon/samsung/settingsapi/VRHelper;->Public:Lcom/oculus/horizon/samsung/settingsapi/SamsungSettings$Provider;

    .line 62
    invoke-virtual {p0}, Lcom/oculus/horizon/samsung/settings/SamsungSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "initial_app_auto_update"

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 61
    :goto_0
    invoke-virtual {v1, v2, v3, v0}, Lcom/oculus/horizon/samsung/settingsapi/SamsungSettings$Provider;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)V

    .line 65
    return-void

    .line 62
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oculus/horizon/samsung/settings/SamsungSettingsFragment;->mAutoUpdates:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/SwitchSetting;->isChecked()Z

    move-result v0

    .line 70
    invoke-direct {p0, v0}, Lcom/oculus/horizon/samsung/settings/SamsungSettingsFragment;->setAutoUpdatesEnabled(Z)V

    .line 71
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 27
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 18
    invoke-virtual {p0}, Lcom/oculus/horizon/samsung/settings/SamsungSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/samsung/settings/SamsungSettingsFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/samsung/settings/SamsungSettingsFragment;)V

    .line 29
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
    .line 34
    sget v0, Lcom/oculus/horizon/R$layout;->samsung_settings_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 46
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 48
    iget-object v0, p0, Lcom/oculus/horizon/samsung/settings/SamsungSettingsFragment;->mAutoUpdates:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-direct {p0}, Lcom/oculus/horizon/samsung/settings/SamsungSettingsFragment;->autoUpdatesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/SwitchSetting;->setChecked(Z)V

    .line 49
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 39
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 40
    sget v0, Lcom/oculus/horizon/R$id;->auto_updates:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/SwitchSetting;

    iput-object v0, p0, Lcom/oculus/horizon/samsung/settings/SamsungSettingsFragment;->mAutoUpdates:Lcom/oculus/horizon/widget/SwitchSetting;

    .line 41
    iget-object v0, p0, Lcom/oculus/horizon/samsung/settings/SamsungSettingsFragment;->mAutoUpdates:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/widget/SwitchSetting;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    return-void
.end method
