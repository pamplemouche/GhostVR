.class public Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;
.super Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;
.source "UserRoadblockForceUpgradeFragment.java"

# interfaces
.implements Lcom/oculus/horizon/modal/AlertDialogFragment$OnCancelListener;
.implements Lcom/oculus/horizon/modal/AlertDialogFragment$OnClickListener;


# instance fields
.field mApplicationContext:Landroid/content/Context;
    .annotation build Lcom/facebook/inject/ForAppContext;
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mCoreAppManager:Lcom/oculus/coreapps/CoreAppManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mCoreAppsListener:Lcom/oculus/coreapps/CoreAppManager$CoreAppsListener;

.field mDebugMode:Lcom/oculus/debug/DebugMode;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mInstallerCheck:Lcom/oculus/horizon/appmanager/ui/AppInstallerCheck;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field mLayoutInflater:Landroid/view/LayoutInflater;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mProgressCount:Landroid/widget/TextView;

.field private mStatusView:Landroid/view/View;

.field private mUpdateButton:Lcom/oculus/horizon/widget/ProgressButton;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;)V
    .locals 1

    .prologue
    .line 43
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;)V
    .locals 1

    .prologue
    .line 43
    invoke-static {p0}, Lcom/oculus/debug/DebugMode;->$ul_$xXXcom_oculus_debug_DebugMode$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/debug/DebugMode;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->mDebugMode:Lcom/oculus/debug/DebugMode;

    invoke-static {p0}, Lcom/facebook/common/android/AndroidModule;->$ul_$xXXandroid_view_LayoutInflater$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-static {p0}, Lcom/oculus/coreapps/CoreAppManager;->$ul_$xXXcom_oculus_coreapps_CoreAppManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/coreapps/CoreAppManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->mCoreAppManager:Lcom/oculus/coreapps/CoreAppManager;

    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXcom_facebook_inject_ForAppContext$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->mApplicationContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oculus/horizon/appmanager/ui/AppInstallerCheck;->$ul_$xXXcom_oculus_horizon_appmanager_ui_AppInstallerCheck$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/appmanager/ui/AppInstallerCheck;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->mInstallerCheck:Lcom/oculus/horizon/appmanager/ui/AppInstallerCheck;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;)Z
    .locals 1

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->checkPrerequisites()Z

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->checkPermissionsAndProcessNextApp()V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->stopLoadingState()V

    return-void
.end method

.method static synthetic access$300(Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;)V
    .locals 0

    .prologue
    .line 43
    invoke-direct {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->updateProgressCountView()V

    return-void
.end method

.method private checkPermissionsAndProcessNextApp()V
    .locals 3

    .prologue
    .line 202
    new-instance v0, Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;

    .line 203
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 204
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;->setPermission(Ljava/lang/String;)Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_permission_title:I

    .line 205
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;->setTitle(I)Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_permission_write_external_storage_message:I

    .line 206
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;->setMessage(I)Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;

    move-result-object v0

    .line 207
    invoke-virtual {v0}, Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;->build()Landroidx/fragment/app/DialogFragment;

    move-result-object v0

    .line 208
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 209
    return-void
.end method

.method private checkPrerequisites()Z
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 190
    iget-object v1, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->mInstallerCheck:Lcom/oculus/horizon/appmanager/ui/AppInstallerCheck;

    invoke-virtual {v1}, Lcom/oculus/horizon/appmanager/ui/AppInstallerCheck;->shouldShowInstallerMissingWarning()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 191
    iget-object v1, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->mInstallerCheck:Lcom/oculus/horizon/appmanager/ui/AppInstallerCheck;

    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oculus/horizon/appmanager/ui/AppInstallerCheck;->showInstallerMissingWarning(Landroid/content/res/Resources;Landroidx/fragment/app/FragmentManager;)V

    .line 198
    :goto_0
    return v0

    .line 193
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->mInstallerCheck:Lcom/oculus/horizon/appmanager/ui/AppInstallerCheck;

    invoke-virtual {v1}, Lcom/oculus/horizon/appmanager/ui/AppInstallerCheck;->shouldShowInstallerDisabledWarning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 194
    iget-object v1, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->mInstallerCheck:Lcom/oculus/horizon/appmanager/ui/AppInstallerCheck;

    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/oculus/horizon/appmanager/ui/AppInstallerCheck;->showInstallerDisabledWarning(Landroid/content/res/Resources;Landroidx/fragment/app/FragmentManager;)V

    goto :goto_0

    .line 198
    :cond_1
    const/4 v0, 0x1

    goto :goto_0
.end method

.method private startListeningToCoreApps()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->mCoreAppManager:Lcom/oculus/coreapps/CoreAppManager;

    iget-object v1, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->mCoreAppsListener:Lcom/oculus/coreapps/CoreAppManager$CoreAppsListener;

    invoke-virtual {v0, v1}, Lcom/oculus/coreapps/CoreAppManager;->addCoreAppsListener(Lcom/oculus/coreapps/CoreAppManager$CoreAppsListener;)V

    .line 160
    return-void
.end method

.method private startLoadingState()V
    .locals 2

    .prologue
    .line 212
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->mUpdateButton:Lcom/oculus/horizon/widget/ProgressButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 213
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->mStatusView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 214
    invoke-direct {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->updateProgressCountView()V

    .line 215
    return-void
.end method

.method private stopListeningToCoreApps()V
    .locals 2

    .prologue
    .line 163
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->mCoreAppManager:Lcom/oculus/coreapps/CoreAppManager;

    iget-object v1, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->mCoreAppsListener:Lcom/oculus/coreapps/CoreAppManager$CoreAppsListener;

    invoke-virtual {v0, v1}, Lcom/oculus/coreapps/CoreAppManager;->removeCoreAppsListener(Lcom/oculus/coreapps/CoreAppManager$CoreAppsListener;)V

    .line 164
    return-void
.end method

.method private stopLoadingState()V
    .locals 2

    .prologue
    .line 218
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->mUpdateButton:Lcom/oculus/horizon/widget/ProgressButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 219
    return-void
.end method

.method private updateProgressCountView()V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 222
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->mCoreAppManager:Lcom/oculus/coreapps/CoreAppManager;

    invoke-virtual {v0}, Lcom/oculus/coreapps/CoreAppManager;->getCoreAppsCopy()Ljava/util/List;

    move-result-object v0

    .line 226
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move v1, v2

    move v3, v2

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/coreapps/CoreApp;

    .line 227
    iget-object v5, v0, Lcom/oculus/coreapps/CoreApp;->status:Lcom/oculus/coreapps/CoreApp$Status;

    sget-object v6, Lcom/oculus/coreapps/CoreApp$Status;->UP_TO_DATE:Lcom/oculus/coreapps/CoreApp$Status;

    if-eq v5, v6, :cond_1

    .line 228
    add-int/lit8 v1, v1, 0x1

    .line 230
    invoke-virtual {v0}, Lcom/oculus/coreapps/CoreApp;->isDone()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 231
    add-int/lit8 v3, v3, 0x1

    move v0, v1

    move v1, v3

    :goto_1
    move v3, v1

    move v1, v0

    .line 234
    goto :goto_0

    .line 236
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->mApplicationContext:Landroid/content/Context;

    sget v4, Lcom/oculus/horizon/R$string;->roadblock_force_upgrade_status_indicator:I

    .line 238
    invoke-virtual {v0, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 239
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v4, v2

    const/4 v2, 0x1

    .line 240
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v2

    .line 237
    invoke-static {v0, v4}, Lcom/facebook/common/util/StringLocaleUtil;->formatStrLocaleSensitive(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 241
    iget-object v1, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->mProgressCount:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    return-void

    :cond_1
    move v0, v1

    move v1, v3

    goto :goto_1
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 168
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->ROADBLOCK_FORCE_UPGRADE:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onCancel(Lcom/oculus/horizon/modal/AlertDialogFragment;I)V
    .locals 0

    .prologue
    .line 252
    return-void
.end method

.method public onClick(Lcom/oculus/horizon/modal/AlertDialogFragment;II)V
    .locals 2

    .prologue
    .line 246
    const-string v0, "installer_disabled_modal_fragment"

    invoke-virtual {p1}, Lcom/oculus/horizon/modal/AlertDialogFragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 247
    invoke-static {}, Lcom/oculus/appmanager/installer/util/InstallerServiceUtil;->getApplicationDetailsSettingsIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->startActivity(Landroid/content/Intent;)V

    .line 249
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 62
    invoke-super {p0, p1}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;->onCreate(Landroid/os/Bundle;)V

    .line 43
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;)V

    .line 65
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 70
    sget v0, Lcom/oculus/horizon/R$layout;->user_roadblock_force_upgrade_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onPause()V
    .locals 0

    .prologue
    .line 154
    invoke-direct {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->stopListeningToCoreApps()V

    .line 155
    invoke-super {p0}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;->onPause()V

    .line 156
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3
    .param p2    # [Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .param p3    # [I
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .prologue
    const/4 v2, 0x0

    .line 174
    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    aget-object v1, p2, v2

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 175
    aget v0, p3, v2

    if-nez v0, :cond_0

    .line 176
    invoke-direct {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->startLoadingState()V

    .line 177
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->mCoreAppManager:Lcom/oculus/coreapps/CoreAppManager;

    const-string v1, "roadblock"

    invoke-virtual {v0, v1}, Lcom/oculus/coreapps/CoreAppManager;->installOrUpdateRequiredApps(Ljava/lang/String;)Lbolts/Task;

    .line 182
    :cond_0
    :goto_0
    return-void

    .line 181
    :cond_1
    invoke-super {p0, p1, p2, p3}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;->onRequestPermissionsResult(I[Ljava/lang/String;[I)V

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 139
    invoke-super {p0}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;->onResume()V

    .line 140
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->roadblock_force_upgrade_title:I

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTitle(I)V

    .line 145
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->mCoreAppManager:Lcom/oculus/coreapps/CoreAppManager;

    invoke-virtual {v0}, Lcom/oculus/coreapps/CoreAppManager;->areAllAppsDone()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->mDebugMode:Lcom/oculus/debug/DebugMode;

    invoke-virtual {v0}, Lcom/oculus/debug/DebugMode;->isUpdateRoadblockForced()Z

    move-result v0

    if-nez v0, :cond_0

    .line 146
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->onRoadblockCompleted()V

    .line 150
    :goto_0
    return-void

    .line 148
    :cond_0
    invoke-direct {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->startListeningToCoreApps()V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 75
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/roadblock/ui/BaseRoadblockFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 77
    sget v0, Lcom/oculus/horizon/R$id;->warning:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 78
    invoke-virtual {v0}, Landroid/widget/TextView;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, v2}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 80
    sget v0, Lcom/oculus/horizon/R$id;->status:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->mStatusView:Landroid/view/View;

    .line 81
    sget v0, Lcom/oculus/horizon/R$id;->status_progress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->mProgressCount:Landroid/widget/TextView;

    .line 83
    sget v0, Lcom/oculus/horizon/R$id;->update_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/ProgressButton;

    iput-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->mUpdateButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 84
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->mUpdateButton:Lcom/oculus/horizon/widget/ProgressButton;

    new-instance v1, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment$1;-><init>(Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    new-instance v0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment$2;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment$2;-><init>(Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;)V

    iput-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->mCoreAppsListener:Lcom/oculus/coreapps/CoreAppManager$CoreAppsListener;

    .line 126
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->mCoreAppManager:Lcom/oculus/coreapps/CoreAppManager;

    invoke-virtual {v0}, Lcom/oculus/coreapps/CoreAppManager;->isInstallInProgress()Z

    move-result v0

    if-nez v0, :cond_0

    .line 128
    invoke-virtual {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "arg_upgrade_info"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 130
    iget-object v1, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->mCoreAppManager:Lcom/oculus/coreapps/CoreAppManager;

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/oculus/coreapps/CoreAppManager;->setCoreApps(Ljava/util/List;Z)V

    .line 135
    :goto_0
    return-void

    .line 133
    :cond_0
    invoke-direct {p0}, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->startLoadingState()V

    goto :goto_0
.end method

.method public shouldDisableBackButton()Z
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/oculus/horizon/roadblock/ui/UserRoadblockForceUpgradeFragment;->mCoreAppManager:Lcom/oculus/coreapps/CoreAppManager;

    invoke-virtual {v0}, Lcom/oculus/coreapps/CoreAppManager;->isInstallInProgress()Z

    move-result v0

    return v0
.end method
