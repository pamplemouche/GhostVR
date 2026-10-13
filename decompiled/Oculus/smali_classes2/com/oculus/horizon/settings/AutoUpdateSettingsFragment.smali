.class public Lcom/oculus/horizon/settings/AutoUpdateSettingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "AutoUpdateSettingsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field private mAutoUpdatesSetting:Lcom/oculus/horizon/widget/SwitchSetting;

.field private mContext:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/AutoUpdateSettingsFragment;)V
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/settings/AutoUpdateSettingsFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/AutoUpdateSettingsFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/settings/AutoUpdateSettingsFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/AutoUpdateSettingsFragment;)V
    .locals 1

    .prologue
    .line 28
    invoke-static {p0}, Lcom/oculus/horizon/profile/UserProfileHelper;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/AutoUpdateSettingsFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/AutoUpdateSettingsFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/AutoUpdateSettingsFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private setAutoUpdatesSettingEnabled(Z)V
    .locals 3
    .annotation build Landroidx/annotation/RequiresPermission;
        value = "android.permission.WRITE_EXTERNAL_STORAGE"
    .end annotation

    .prologue
    .line 101
    if-eqz p1, :cond_0

    .line 102
    iget-object v0, p0, Lcom/oculus/horizon/settings/AutoUpdateSettingsFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-virtual {v0}, Lcom/oculus/horizon/logging/OculusLogger;->reportUserEnabledAutoUpdates()V

    .line 106
    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/settings/AutoUpdateSettingsFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->edit()Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->setUseAutoUpdates(Z)Lcom/oculus/horizon/profile/UserProfileHelper$Editor;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper$Editor;->apply()V

    .line 107
    iget-object v0, p0, Lcom/oculus/horizon/settings/AutoUpdateSettingsFragment;->mAutoUpdatesSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/widget/SwitchSetting;->setChecked(Z)V

    .line 108
    iget-object v1, p0, Lcom/oculus/horizon/settings/AutoUpdateSettingsFragment;->mAutoUpdatesSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    .line 109
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/AutoUpdateSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p1, :cond_1

    sget v0, Lcom/oculus/horizon/R$string;->setting_enabled:I

    :goto_1
    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 108
    invoke-virtual {v1, v0}, Lcom/oculus/horizon/widget/SwitchSetting;->setSubtitle(Ljava/lang/String;)V

    .line 110
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/settings/AutoUpdateSettingsFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-virtual {v0}, Lcom/oculus/horizon/logging/OculusLogger;->reportUserDisabledAutoUpdates()V

    goto :goto_0

    .line 109
    :cond_1
    sget v0, Lcom/oculus/horizon/R$string;->setting_disabled:I

    goto :goto_1
.end method

.method private syncSetting()V
    .locals 1

    .prologue
    .line 113
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/AutoUpdateSettingsFragment;->isAutoUpdatesSettingEnabled()Z

    move-result v0

    .line 115
    invoke-direct {p0, v0}, Lcom/oculus/horizon/settings/AutoUpdateSettingsFragment;->setAutoUpdatesSettingEnabled(Z)V

    .line 116
    return-void
.end method


# virtual methods
.method public isAutoUpdatesSettingEnabled()Z
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/oculus/horizon/settings/AutoUpdateSettingsFragment;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    invoke-static {v0, v1}, Landroidx/core/content/ContextCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const/4 v0, 0x0

    .line 123
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/settings/AutoUpdateSettingsFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/profile/UserProfileHelper;->useAutoUpdates()Z

    move-result v0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 80
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/AutoUpdateSettingsFragment;->isAutoUpdatesSettingEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    .line 82
    :goto_0
    if-nez v0, :cond_1

    .line 85
    invoke-direct {p0, v1}, Lcom/oculus/horizon/settings/AutoUpdateSettingsFragment;->setAutoUpdatesSettingEnabled(Z)V

    .line 97
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 80
    goto :goto_0

    .line 90
    :cond_1
    new-instance v0, Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;

    .line 91
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/AutoUpdateSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 92
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;->setPermission(Ljava/lang/String;)Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_permission_title:I

    .line 93
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;->setTitle(I)Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_permission_write_external_storage_message:I

    .line 94
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;->setMessage(I)Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;

    move-result-object v0

    .line 95
    invoke-virtual {v0}, Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;->build()Landroidx/fragment/app/DialogFragment;

    move-result-object v0

    .line 96
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/AutoUpdateSettingsFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 39
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/AutoUpdateSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/settings/AutoUpdateSettingsFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/AutoUpdateSettingsFragment;)V

    .line 41
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
    .line 46
    sget v0, Lcom/oculus/horizon/R$layout;->auto_update_settings_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 67
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    aget-object v1, p2, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 68
    aget v0, p3, v2

    if-nez v0, :cond_0

    .line 70
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oculus/horizon/settings/AutoUpdateSettingsFragment;->setAutoUpdatesSettingEnabled(Z)V

    .line 75
    :cond_0
    :goto_0
    return-void

    .line 74
    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/Fragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 60
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 61
    invoke-direct {p0}, Lcom/oculus/horizon/settings/AutoUpdateSettingsFragment;->syncSetting()V

    .line 62
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 53
    sget v0, Lcom/oculus/horizon/R$id;->auto_updates_toggle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/SwitchSetting;

    iput-object v0, p0, Lcom/oculus/horizon/settings/AutoUpdateSettingsFragment;->mAutoUpdatesSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    .line 54
    invoke-direct {p0}, Lcom/oculus/horizon/settings/AutoUpdateSettingsFragment;->syncSetting()V

    .line 55
    iget-object v0, p0, Lcom/oculus/horizon/settings/AutoUpdateSettingsFragment;->mAutoUpdatesSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/widget/SwitchSetting;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    return-void
.end method
