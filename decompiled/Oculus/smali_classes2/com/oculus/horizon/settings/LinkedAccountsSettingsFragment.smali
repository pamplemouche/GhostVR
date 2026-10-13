.class public Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;
.super Lcom/oculus/horizon/settings/SubSettingsBaseFragment;
.source "LinkedAccountsSettingsFragment.java"

# interfaces
.implements Lcom/oculus/horizon/common/BackPressListener;
.implements Lcom/oculus/horizon/modal/AlertDialogFragment$OnCancelListener;
.implements Lcom/oculus/horizon/modal/AlertDialogFragment$OnClickListener;


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mExternalSessionId:Ljava/lang/String;

.field private final mFBConnectDelegate:Lcom/oculus/horizon/fbconnect/FBConnectHelper$FBConnectDelegate;

.field private mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mFBLinkAccount:Lcom/oculus/horizon/widget/SwitchSetting;

.field private final mFBLinkAccountOnCheckedChangedListener:Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;

.field private mFBSyncFriends:Lcom/oculus/horizon/widget/SwitchSetting;

.field private final mFBSyncFriendsOnCheckedChangedListener:Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;

.field private mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;
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
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)V
    .locals 1

    .prologue
    .line 40
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)V
    .locals 1

    .prologue
    .line 40
    invoke-static {p0}, Lcom/oculus/horizon/legacy/social/MeManager;->$ul_$xXXcom_oculus_horizon_legacy_social_MeManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-static {p0}, Lcom/oculus/errorreporting/ErrorReportingModule;->$ul_$xXXcom_oculus_errorreporting_ErrorReporter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/errorreporting/ErrorReporter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    invoke-static {p0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->$ul_$xXXcom_oculus_horizon_fbconnect_FBConnectHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-static {p0}, Lcom/oculus/horizon/profile/UserProfileHelper;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-static {p0}, Lcom/oculus/horizon/main/MainModule;->$ul_$xXXcom_oculus_horizon_fragmentfactory_FragmentFactory$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 45
    const-class v0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;-><init>()V

    .line 65
    new-instance v0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$1;-><init>(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)V

    iput-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mFBLinkAccountOnCheckedChangedListener:Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;

    .line 90
    new-instance v0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$2;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$2;-><init>(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)V

    iput-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mFBSyncFriendsOnCheckedChangedListener:Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;

    .line 116
    new-instance v0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$3;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment$3;-><init>(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)V

    iput-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mFBConnectDelegate:Lcom/oculus/horizon/fbconnect/FBConnectHelper$FBConnectDelegate;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mExternalSessionId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)Lcom/oculus/horizon/logging/OculusLogger;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->onLinkFBAccount()V

    return-void
.end method

.method static synthetic access$300(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)Lcom/oculus/horizon/legacy/social/MeManager;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->showUnlinkFBAccountPasswordRequiredDialog()V

    return-void
.end method

.method static synthetic access$500(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)Lcom/oculus/horizon/widget/SwitchSetting;
    .locals 1

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mFBSyncFriends:Lcom/oculus/horizon/widget/SwitchSetting;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;ZZ)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->updateFacebookLinkedStatus(ZZ)V

    return-void
.end method

.method static synthetic access$700(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->showUnlinkFBAccountConfirmationDialog()V

    return-void
.end method

.method static synthetic access$800(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->onSyncFBFriends()V

    return-void
.end method

.method static synthetic access$900(Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)V
    .locals 0

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->onUnsyncFBFriends()V

    return-void
.end method

.method private maybeReturnToCaller()V
    .locals 5

    .prologue
    .line 407
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_calling_activity"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/ComponentName;

    .line 409
    if-nez v0, :cond_0

    .line 422
    :goto_0
    return-void

    .line 413
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    const-string v2, "link_account_facebook"

    .line 414
    invoke-virtual {v0}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mExternalSessionId:Ljava/lang/String;

    .line 413
    invoke-virtual {v1, v2, v3, v4}, Lcom/oculus/horizon/logging/OculusLogger;->reportAccountLinkReturnToCaller(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 416
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 417
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 418
    invoke-virtual {p0, v1}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 420
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setResult(I)V

    .line 421
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_0
.end method

.method private maybeStartLinkingAccount(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 292
    const-string v0, "link_account_facebook"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 293
    invoke-direct {p0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->onLinkFBAccount()V

    .line 295
    :cond_0
    return-void
.end method

.method private onLinkFBAccount()V
    .locals 3

    .prologue
    .line 318
    new-instance v0, Lcom/oculus/horizon/navigation/FragmentNavigator;

    invoke-virtual {p0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iget-object v1, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    const/4 v2, 0x1

    .line 319
    invoke-virtual {v1, v2}, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;->newFBConnectFragment(Z)Landroidx/fragment/app/Fragment;

    move-result-object v1

    sget-object v2, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->TAG:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    .line 320
    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    .line 321
    return-void
.end method

.method private onSyncFBFriends()V
    .locals 1

    .prologue
    .line 363
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/MeManager;->isFacebookFriendsEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 369
    :goto_0
    return-void

    .line 367
    :cond_0
    invoke-direct {p0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->setSyncFriendsInProgress()V

    .line 368
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->syncFBFriends()V

    goto :goto_0
.end method

.method private onUnlinkFBAccount()V
    .locals 3

    .prologue
    .line 347
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/MeManager;->hasSystemCreatedPassword()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 348
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mErrorReporter:Lcom/oculus/errorreporting/ErrorReporter;

    sget-object v1, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->TAG:Ljava/lang/String;

    const-string v2, "Password required to unlink Facebook"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/errorreporting/ErrorReporter;->softError(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    :goto_0
    return-void

    .line 352
    :cond_0
    invoke-direct {p0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->setLinkAccountInProgress()V

    .line 353
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->unlinkFBAccount()V

    goto :goto_0
.end method

.method private onUnlinkFBAccountCancelled()V
    .locals 4

    .prologue
    .line 357
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    const-string v1, "link_account_facebook"

    const-string v2, "unlink_cancelled"

    iget-object v3, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mExternalSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/logging/OculusLogger;->reportAccountLinkEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    const/4 v0, 0x1

    iget-object v1, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mFBSyncFriends:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v1}, Lcom/oculus/horizon/widget/SwitchSetting;->isChecked()Z

    move-result v1

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->updateFacebookLinkedStatus(ZZ)V

    .line 360
    return-void
.end method

.method private onUnsyncFBFriends()V
    .locals 1

    .prologue
    .line 372
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/MeManager;->isFacebookFriendsEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    .line 378
    :goto_0
    return-void

    .line 376
    :cond_0
    invoke-direct {p0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->setSyncFriendsInProgress()V

    .line 377
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->unsyncFBFriends()V

    goto :goto_0
.end method

.method private setLinkAccountInProgress()V
    .locals 2

    .prologue
    .line 381
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mFBLinkAccount:Lcom/oculus/horizon/widget/SwitchSetting;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/SwitchSetting;->setLoading(Z)V

    .line 382
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mFBSyncFriends:Lcom/oculus/horizon/widget/SwitchSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/SwitchSetting;->setEnabled(Z)V

    .line 383
    return-void
.end method

.method private setSyncFriendsInProgress()V
    .locals 2

    .prologue
    .line 386
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mFBSyncFriends:Lcom/oculus/horizon/widget/SwitchSetting;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/SwitchSetting;->setLoading(Z)V

    .line 387
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mFBLinkAccount:Lcom/oculus/horizon/widget/SwitchSetting;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/SwitchSetting;->setEnabled(Z)V

    .line 388
    return-void
.end method

.method private showUnlinkFBAccountConfirmationDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 324
    new-instance v0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    .line 325
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/oculus/horizon/R$string;->settings_linked_accounts_facebook_unlink_confirmation_title:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 326
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTitle(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->settings_linked_accounts_facebook_unlink_confirmation_body:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 327
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setMessage(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->settings_linked_accounts_facebook_unlink_confirmation_button:I

    .line 328
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setPositiveButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_cancel:I

    .line 330
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setNegativeButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    .line 331
    invoke-virtual {v0}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->build()Lcom/oculus/horizon/modal/AlertDialogFragment;

    move-result-object v0

    .line 332
    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 333
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 334
    return-void
.end method

.method private showUnlinkFBAccountPasswordRequiredDialog()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 337
    new-instance v0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    .line 338
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/oculus/horizon/R$string;->settings_password_required_dialog_title:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 339
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTitle(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->settings_linked_accounts_facebook_password_required_dialog_body:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 340
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setMessage(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_ok:I

    .line 341
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setPositiveButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    .line 342
    invoke-virtual {v0}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->build()Lcom/oculus/horizon/modal/AlertDialogFragment;

    move-result-object v0

    .line 343
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method private updateFacebookLinkedStatus(ZZ)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x1

    .line 392
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mFBLinkAccount:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v0, v3}, Lcom/oculus/horizon/widget/SwitchSetting;->setOnCheckedChangeListener(Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;)V

    .line 393
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mFBLinkAccount:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/widget/SwitchSetting;->setChecked(Z)V

    .line 394
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mFBLinkAccount:Lcom/oculus/horizon/widget/SwitchSetting;

    iget-object v1, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mFBLinkAccountOnCheckedChangedListener:Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/SwitchSetting;->setOnCheckedChangeListener(Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;)V

    .line 395
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mFBLinkAccount:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/SwitchSetting;->setEnabled(Z)V

    .line 397
    iget-object v1, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mFBSyncFriends:Lcom/oculus/horizon/widget/SwitchSetting;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Lcom/oculus/horizon/widget/SwitchSetting;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mFBSyncFriends:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v0, v3}, Lcom/oculus/horizon/widget/SwitchSetting;->setOnCheckedChangeListener(Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;)V

    .line 400
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mFBSyncFriends:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v0, p2}, Lcom/oculus/horizon/widget/SwitchSetting;->setChecked(Z)V

    .line 401
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mFBSyncFriends:Lcom/oculus/horizon/widget/SwitchSetting;

    iget-object v1, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mFBSyncFriendsOnCheckedChangedListener:Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/SwitchSetting;->setOnCheckedChangeListener(Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;)V

    .line 402
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mFBSyncFriends:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/SwitchSetting;->setEnabled(Z)V

    .line 403
    return-void

    .line 397
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method


# virtual methods
.method protected getTitleBarTextResourceId()I
    .locals 1

    .prologue
    .line 314
    sget v0, Lcom/oculus/horizon/R$string;->settings_linked_accounts:I

    return v0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 252
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->SETTINGS_LINKED_ACCOUNTS:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 299
    invoke-super {p0, p1, p2, p3}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 300
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->onActivityResultLinkingAccount(IILandroid/content/Intent;)V

    .line 301
    return-void
.end method

.method public onBackPressed()Z
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 306
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-class v1, Lcom/oculus/horizon/settings/SettingsFragment;

    invoke-static {v0, v1}, Lcom/oculus/horizon/main/MainActivity;->newFragmentIntent(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    move-result-object v0

    .line 307
    const-string v1, "extra_skip_roadblocks"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 308
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->startActivity(Landroid/content/Intent;)V

    .line 309
    return v2
.end method

.method public onCancel(Lcom/oculus/horizon/modal/AlertDialogFragment;I)V
    .locals 1

    .prologue
    .line 448
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 453
    :goto_0
    return-void

    .line 452
    :cond_0
    invoke-direct {p0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->onUnlinkFBAccountCancelled()V

    goto :goto_0
.end method

.method public onClick(Lcom/oculus/horizon/modal/AlertDialogFragment;II)V
    .locals 4

    .prologue
    .line 428
    const/4 v0, 0x1

    if-eq p2, v0, :cond_0

    .line 444
    :goto_0
    return-void

    .line 432
    :cond_0
    packed-switch p3, :pswitch_data_0

    goto :goto_0

    .line 441
    :pswitch_0
    invoke-direct {p0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->onUnlinkFBAccountCancelled()V

    goto :goto_0

    .line 434
    :pswitch_1
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    const-string v1, "link_account_facebook"

    const-string v2, "unlink_confirm"

    iget-object v3, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mExternalSessionId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/logging/OculusLogger;->reportAccountLinkEvent(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 437
    invoke-direct {p0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->onUnlinkFBAccount()V

    goto :goto_0

    .line 432
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 235
    invoke-super {p0, p1}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;)V

    .line 237
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_oculus_horizon_account_link_external_session_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mExternalSessionId:Ljava/lang/String;

    .line 238
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p3    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 243
    sget v0, Lcom/oculus/horizon/R$layout;->settings_linked_accounts_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 244
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    iget-object v2, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mFBConnectDelegate:Lcom/oculus/horizon/fbconnect/FBConnectHelper$FBConnectDelegate;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->setFBConnectDelegate(Lcom/oculus/horizon/fbconnect/FBConnectHelper$FBConnectDelegate;)V

    .line 245
    sget v0, Lcom/oculus/horizon/R$id;->facebook_link_account:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/SwitchSetting;

    iput-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mFBLinkAccount:Lcom/oculus/horizon/widget/SwitchSetting;

    .line 246
    sget v0, Lcom/oculus/horizon/R$id;->facebook_sync_friends:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/SwitchSetting;

    iput-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mFBSyncFriends:Lcom/oculus/horizon/widget/SwitchSetting;

    .line 247
    return-object v1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 283
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->setFBConnectDelegate(Lcom/oculus/horizon/fbconnect/FBConnectHelper$FBConnectDelegate;)V

    .line 285
    iput-object v1, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mFBLinkAccount:Lcom/oculus/horizon/widget/SwitchSetting;

    .line 286
    iput-object v1, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mFBSyncFriends:Lcom/oculus/horizon/widget/SwitchSetting;

    .line 288
    invoke-super {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onDestroyView()V

    .line 289
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 274
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->isViewDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mFBLinkAccount:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/SwitchSetting;->setOnCheckedChangeListener(Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;)V

    .line 276
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mFBSyncFriends:Lcom/oculus/horizon/widget/SwitchSetting;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/SwitchSetting;->setOnCheckedChangeListener(Lcom/oculus/horizon/widget/SwitchSetting$OnCheckedChangeListener;)V

    .line 278
    :cond_0
    invoke-super {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onPause()V

    .line 279
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 257
    invoke-super {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onResume()V

    .line 259
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->updateTitleBarText()V

    .line 260
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    .line 261
    invoke-virtual {v0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->isFacebookLinked()Z

    move-result v0

    iget-object v1, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-virtual {v1}, Lcom/oculus/horizon/legacy/social/MeManager;->isFacebookFriendsEnabled()Z

    move-result v1

    .line 260
    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->updateFacebookLinkedStatus(ZZ)V

    .line 263
    iget-object v0, p0, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->mFBConnectHelper:Lcom/oculus/horizon/fbconnect/FBConnectHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/fbconnect/FBConnectHelper;->isFacebookLinked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 264
    invoke-direct {p0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->maybeReturnToCaller()V

    .line 267
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_start_linking"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 268
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    const-string v2, "extra_start_linking"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V

    .line 269
    invoke-direct {p0, v0}, Lcom/oculus/horizon/settings/LinkedAccountsSettingsFragment;->maybeStartLinkingAccount(Ljava/lang/String;)V

    .line 270
    return-void
.end method
