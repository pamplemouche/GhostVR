.class public Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;
.super Landroidx/fragment/app/Fragment;
.source "OxygenSettingsFragment.java"

# interfaces
.implements Lcom/oculus/horizon/modal/AlertDialogFragment$OnCancelListener;
.implements Lcom/oculus/horizon/modal/AlertDialogFragment$OnClickListener;
.implements Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;


# instance fields
.field private mAutoUpdateSetting:Lcom/oculus/horizon/widget/SwitchSetting;

.field private mCancellationTokenSource:Lbolts/CancellationTokenSource;

.field private mFirstPartySettings:Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;

.field mFirstPartySettingsHelper:Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mMobileConfigFactory:Lcom/facebook/mobileconfig/factory/MobileConfig;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPublicTestChannelSetting:Lcom/oculus/horizon/widget/SwitchSetting;

.field private mRolloutTokenManager:Lcom/oculus/horizon/releasemanagement/RolloutTokenManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mUpdateAvailableSetting:Lcom/oculus/horizon/widget/SwitchSetting;

.field private mUpdateInstalledSetting:Lcom/oculus/horizon/widget/SwitchSetting;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;)V
    .locals 1

    .prologue
    .line 36
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;)V
    .locals 1

    .prologue
    .line 36
    invoke-static {p0}, Lcom/facebook/mobileconfig/factory/MobileConfigFactoryModule;->$ul_$xXXcom_facebook_mobileconfig_factory_MobileConfig$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/mobileconfig/factory/MobileConfig;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mMobileConfigFactory:Lcom/facebook/mobileconfig/factory/MobileConfig;

    invoke-static {p0}, Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper;->$ul_$xXXcom_oculus_horizon_oxygen_settings_util_FirstPartySettingsHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mFirstPartySettingsHelper:Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-static {p0}, Lcom/oculus/horizon/releasemanagement/RolloutTokenManager;->$ul_$xXXcom_oculus_horizon_releasemanagement_RolloutTokenManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/releasemanagement/RolloutTokenManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mRolloutTokenManager:Lcom/oculus/horizon/releasemanagement/RolloutTokenManager;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;)Lcom/oculus/horizon/widget/SwitchSetting;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mPublicTestChannelSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;)Lbolts/CancellationTokenSource;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mCancellationTokenSource:Lbolts/CancellationTokenSource;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->onFirstPartySettings(Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;)V

    return-void
.end method

.method public static getFragment(Z)Landroidx/fragment/app/Fragment;
    .locals 2

    .prologue
    .line 64
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    const-string v1, "arg_opt_in_ptc"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 66
    new-instance v1, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;

    invoke-direct {v1}, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;-><init>()V

    .line 67
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 68
    return-object v1
.end method

.method private onFirstPartySettings(Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 156
    iput-object p1, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mFirstPartySettings:Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;

    .line 158
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mAutoUpdateSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v0, v3}, Lcom/oculus/horizon/widget/SwitchSetting;->setOnCheckedChangeListener(Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;)V

    .line 159
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mAutoUpdateSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/SwitchSetting;->setEnabled(Z)V

    .line 160
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mAutoUpdateSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    iget-object v1, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mFirstPartySettings:Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;

    invoke-virtual {v1}, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->isAutoUpdatesEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/SwitchSetting;->setChecked(Z)V

    .line 161
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mAutoUpdateSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/widget/SwitchSetting;->setOnCheckedChangeListener(Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;)V

    .line 163
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mUpdateAvailableSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v0, v3}, Lcom/oculus/horizon/widget/SwitchSetting;->setOnCheckedChangeListener(Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;)V

    .line 164
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mUpdateAvailableSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/SwitchSetting;->setEnabled(Z)V

    .line 165
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mUpdateAvailableSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    iget-object v1, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mFirstPartySettings:Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;

    invoke-virtual {v1}, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->isUpdateAvailableNotifEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/SwitchSetting;->setChecked(Z)V

    .line 166
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mUpdateAvailableSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/widget/SwitchSetting;->setOnCheckedChangeListener(Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;)V

    .line 168
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mUpdateInstalledSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v0, v3}, Lcom/oculus/horizon/widget/SwitchSetting;->setOnCheckedChangeListener(Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;)V

    .line 169
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mUpdateInstalledSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/SwitchSetting;->setEnabled(Z)V

    .line 170
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mUpdateInstalledSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    iget-object v1, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mFirstPartySettings:Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;

    invoke-virtual {v1}, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->isUpdateInstalledNotifEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/SwitchSetting;->setChecked(Z)V

    .line 171
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mUpdateInstalledSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/widget/SwitchSetting;->setOnCheckedChangeListener(Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;)V

    .line 173
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mPublicTestChannelSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v0, v3}, Lcom/oculus/horizon/widget/SwitchSetting;->setOnCheckedChangeListener(Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;)V

    .line 174
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mPublicTestChannelSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/SwitchSetting;->setEnabled(Z)V

    .line 175
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mPublicTestChannelSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    const-string v1, "gear-ptc-rollout-token"

    iget-object v2, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mFirstPartySettings:Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;

    .line 176
    invoke-virtual {v2}, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->getRolloutToken()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    .line 175
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/SwitchSetting;->setChecked(Z)V

    .line 177
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mPublicTestChannelSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/widget/SwitchSetting;->setOnCheckedChangeListener(Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;)V

    .line 178
    return-void
.end method

.method private onRequestPTCDisable(I)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 237
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mFirstPartySettings:Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;

    invoke-virtual {v0, v3}, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->setRolloutToken(Ljava/lang/String;)V

    .line 240
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mFirstPartySettingsHelper:Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper;

    invoke-virtual {p0}, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mFirstPartySettings:Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper;->pushSettingsAsync(Landroid/content/Context;Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;)Lbolts/Task;

    .line 242
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mRolloutTokenManager:Lcom/oculus/horizon/releasemanagement/RolloutTokenManager;

    invoke-virtual {v0, v3}, Lcom/oculus/horizon/releasemanagement/RolloutTokenManager;->setRolloutToken(Ljava/lang/String;)V

    .line 243
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportGearVrPTCEnrollment(Z)V

    .line 250
    :goto_0
    return-void

    .line 247
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mPublicTestChannelSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v0, v3}, Lcom/oculus/horizon/widget/SwitchSetting;->setOnCheckedChangeListener(Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;)V

    .line 248
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mPublicTestChannelSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/SwitchSetting;->setChecked(Z)V

    .line 249
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mPublicTestChannelSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/widget/SwitchSetting;->setOnCheckedChangeListener(Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;)V

    goto :goto_0
.end method

.method private queryFirstPartySettingsAsync(Lbolts/CancellationToken;)Lbolts/Task;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbolts/CancellationToken;",
            ")",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mFirstPartySettingsHelper:Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper;

    .line 132
    invoke-virtual {p0}, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper;->querySettingsAsync(Landroid/content/Context;)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment$2;

    invoke-direct {v1, p0, p1}, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment$2;-><init>(Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;Lbolts/CancellationToken;)V

    sget-object v2, Lbolts/Task;->UI_THREAD_EXECUTOR:Ljava/util/concurrent/Executor;

    .line 133
    invoke-virtual {v0, v1, v2}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;Ljava/util/concurrent/Executor;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method private showPTCDisableModal()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 215
    new-instance v0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    invoke-virtual {p0}, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;-><init>(Landroid/content/res/Resources;)V

    sget v1, Lcom/oculus/horizon/R$string;->common_are_you_sure_title:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 216
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTitle(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->oxygen_setting_public_test_channel_disable_warning:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 217
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setMessage(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_confirm:I

    .line 218
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setPositiveButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_cancel:I

    .line 219
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setNegativeButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    const/4 v1, 0x1

    .line 220
    invoke-virtual {v0, p0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTargetFragment(Landroidx/fragment/app/Fragment;I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    .line 221
    invoke-virtual {p0}, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Lcom/oculus/horizon/modal/AlertDialogFragment;

    .line 222
    return-void
.end method

.method private showPTCEnableModal()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 206
    new-instance v0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    invoke-virtual {p0}, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;-><init>(Landroid/content/res/Resources;)V

    sget v1, Lcom/oculus/horizon/R$string;->oxygen_setting_public_test_channel_title:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 207
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTitle(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->oxygen_setting_public_test_channel_enable_warning:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 208
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setMessage(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_ok:I

    .line 209
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setPositiveButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    const/4 v1, 0x2

    .line 210
    invoke-virtual {v0, p0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTargetFragment(Landroidx/fragment/app/Fragment;I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    .line 211
    invoke-virtual {p0}, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Lcom/oculus/horizon/modal/AlertDialogFragment;

    .line 212
    return-void
.end method


# virtual methods
.method public onCancel(Lcom/oculus/horizon/modal/AlertDialogFragment;I)V
    .locals 1

    .prologue
    .line 255
    const/4 v0, -0x2

    invoke-virtual {p0, p1, p2, v0}, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->onClick(Lcom/oculus/horizon/modal/AlertDialogFragment;II)V

    .line 256
    return-void
.end method

.method public onCheckedChanged(Lcom/oculus/horizon/widget/SwitchSetting;Z)V
    .locals 3

    .prologue
    .line 182
    invoke-virtual {p1}, Lcom/oculus/horizon/widget/SwitchSetting;->getId()I

    move-result v0

    sget v1, Lcom/oculus/horizon/R$id;->public_test_channel:I

    if-ne v0, v1, :cond_2

    .line 183
    invoke-virtual {p1}, Lcom/oculus/horizon/widget/SwitchSetting;->isChecked()Z

    move-result v0

    if-nez v0, :cond_1

    .line 185
    invoke-direct {p0}, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->showPTCDisableModal()V

    .line 203
    :cond_0
    :goto_0
    return-void

    .line 188
    :cond_1
    invoke-direct {p0}, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->showPTCEnableModal()V

    .line 191
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mFirstPartySettings:Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;

    iget-object v1, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mAutoUpdateSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v1}, Lcom/oculus/horizon/widget/SwitchSetting;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->setAutoUpdatesEnabled(Z)V

    .line 192
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mFirstPartySettings:Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;

    iget-object v1, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mUpdateAvailableSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v1}, Lcom/oculus/horizon/widget/SwitchSetting;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->setUpdateAvailableNotifEnabled(Z)V

    .line 193
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mFirstPartySettings:Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;

    iget-object v1, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mUpdateInstalledSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v1}, Lcom/oculus/horizon/widget/SwitchSetting;->isChecked()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->setUpdateInstalledNotifEnabled(Z)V

    .line 194
    iget-object v1, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mFirstPartySettings:Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;

    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mPublicTestChannelSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    .line 195
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/SwitchSetting;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "gear-ptc-rollout-token"

    .line 194
    :goto_1
    invoke-virtual {v1, v0}, Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;->setRolloutToken(Ljava/lang/String;)V

    .line 197
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mFirstPartySettingsHelper:Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper;

    invoke-virtual {p0}, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mFirstPartySettings:Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper;->pushSettingsAsync(Landroid/content/Context;Lcom/facebook/oxygen/preloads/sdk/firstparty/settings/FirstPartySettings;)Lbolts/Task;

    .line 199
    invoke-virtual {p1}, Lcom/oculus/horizon/widget/SwitchSetting;->getId()I

    move-result v0

    sget v1, Lcom/oculus/horizon/R$id;->public_test_channel:I

    if-ne v0, v1, :cond_0

    invoke-virtual {p1}, Lcom/oculus/horizon/widget/SwitchSetting;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mRolloutTokenManager:Lcom/oculus/horizon/releasemanagement/RolloutTokenManager;

    const-string v1, "gear-ptc-rollout-token"

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/releasemanagement/RolloutTokenManager;->setRolloutToken(Ljava/lang/String;)V

    .line 201
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportGearVrPTCEnrollment(Z)V

    goto :goto_0

    .line 195
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public onClick(Lcom/oculus/horizon/modal/AlertDialogFragment;II)V
    .locals 0

    .prologue
    .line 226
    packed-switch p2, :pswitch_data_0

    .line 234
    :goto_0
    return-void

    .line 228
    :pswitch_0
    invoke-direct {p0, p3}, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->onRequestPTCDisable(I)V

    goto :goto_0

    .line 226
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 73
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 36
    invoke-virtual {p0}, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;)V

    .line 75
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p2    # Landroid/view/ViewGroup;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 80
    sget v0, Lcom/oculus/horizon/R$layout;->oxygen_settings_fragment:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 82
    sget v0, Lcom/oculus/horizon/R$id;->auto_update:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/SwitchSetting;

    iput-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mAutoUpdateSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    .line 83
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mAutoUpdateSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/SwitchSetting;->setEnabled(Z)V

    .line 84
    sget v0, Lcom/oculus/horizon/R$id;->notification_update_available:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/SwitchSetting;

    iput-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mUpdateAvailableSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    .line 85
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mUpdateAvailableSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/SwitchSetting;->setEnabled(Z)V

    .line 86
    sget v0, Lcom/oculus/horizon/R$id;->notification_update_installed:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/SwitchSetting;

    iput-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mUpdateInstalledSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    .line 87
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mUpdateInstalledSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/SwitchSetting;->setEnabled(Z)V

    .line 88
    sget v0, Lcom/oculus/horizon/R$id;->public_test_channel:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/SwitchSetting;

    iput-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mPublicTestChannelSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    .line 89
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mPublicTestChannelSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/SwitchSetting;->setEnabled(Z)V

    .line 90
    iget-object v3, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mPublicTestChannelSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mMobileConfigFactory:Lcom/facebook/mobileconfig/factory/MobileConfig;

    sget-wide v4, Lcom/oculus/horizon/oxygen/settings/MC$oculus_mobile_core;->is_ptc_settings_displayed:J

    .line 91
    invoke-interface {v0, v4, v5}, Lcom/facebook/mobileconfig/factory/MobileConfig;->getBoolean(J)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 90
    :goto_0
    invoke-virtual {v3, v0}, Lcom/oculus/horizon/widget/SwitchSetting;->setVisibility(I)V

    .line 95
    return-object v2

    .line 91
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 120
    iget-object v0, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mCancellationTokenSource:Lbolts/CancellationTokenSource;

    invoke-virtual {v0}, Lbolts/CancellationTokenSource;->cancel()V

    .line 122
    iput-object v1, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mAutoUpdateSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    .line 123
    iput-object v1, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mUpdateAvailableSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    .line 124
    iput-object v1, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mUpdateInstalledSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    .line 125
    iput-object v1, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mPublicTestChannelSetting:Lcom/oculus/horizon/widget/SwitchSetting;

    .line 127
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroyView()V

    .line 128
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

    .line 100
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 101
    new-instance v1, Lbolts/CancellationTokenSource;

    invoke-direct {v1}, Lbolts/CancellationTokenSource;-><init>()V

    iput-object v1, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mCancellationTokenSource:Lbolts/CancellationTokenSource;

    .line 102
    iget-object v1, p0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->mCancellationTokenSource:Lbolts/CancellationTokenSource;

    invoke-virtual {v1}, Lbolts/CancellationTokenSource;->getToken()Lbolts/CancellationToken;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->queryFirstPartySettingsAsync(Lbolts/CancellationToken;)Lbolts/Task;

    move-result-object v1

    .line 104
    invoke-virtual {p0}, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    if-nez v2, :cond_1

    .line 105
    :goto_0
    if-eqz v0, :cond_0

    .line 107
    new-instance v0, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment$1;-><init>(Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;)V

    invoke-virtual {v1, v0}, Lbolts/Task;->onSuccess(Lbolts/Continuation;)Lbolts/Task;

    .line 116
    :cond_0
    return-void

    .line 104
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/horizon/oxygen/settings/OxygenSettingsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "arg_opt_in_ptc"

    invoke-virtual {v2, v3, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    goto :goto_0
.end method
