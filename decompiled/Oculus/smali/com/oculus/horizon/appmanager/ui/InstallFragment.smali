.class public Lcom/oculus/horizon/appmanager/ui/InstallFragment;
.super Landroidx/fragment/app/Fragment;
.source "InstallFragment.java"

# interfaces
.implements Lcom/oculus/horizon/appmanager/ui/InstallPresenter$View;
.implements Lcom/oculus/horizon/modal/AlertDialogFragment$OnCancelListener;
.implements Lcom/oculus/horizon/modal/AlertDialogFragment$OnClickListener;


# instance fields
.field private mAppInstallerCheck:Lcom/oculus/horizon/appmanager/ui/AppInstallerCheck;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mInstallPresenterProvider:Lcom/oculus/horizon/appmanager/ui/InstallPresenterProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPresenter:Lcom/oculus/horizon/appmanager/ui/InstallPresenter;

.field private mRequestOrigin:Lcom/oculus/appmanager/info/model/RequestOrigin;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/appmanager/ui/InstallFragment;)V
    .locals 1

    .prologue
    .line 33
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/appmanager/ui/InstallFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/appmanager/ui/InstallFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/appmanager/ui/InstallFragment;)V
    .locals 1

    .prologue
    .line 33
    invoke-static {p0}, Lcom/oculus/horizon/appmanager/ui/InstallPresenter;->$ul_$xXXcom_oculus_horizon_appmanager_ui_InstallPresenterProvider$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/appmanager/ui/InstallPresenterProvider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->mInstallPresenterProvider:Lcom/oculus/horizon/appmanager/ui/InstallPresenterProvider;

    invoke-static {p0}, Lcom/oculus/horizon/appmanager/ui/AppInstallerCheck;->$ul_$xXXcom_oculus_horizon_appmanager_ui_AppInstallerCheck$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/appmanager/ui/AppInstallerCheck;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->mAppInstallerCheck:Lcom/oculus/horizon/appmanager/ui/AppInstallerCheck;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method public static newInstance(Lcom/oculus/appmanager/info/model/RequestOrigin;Ljava/util/List;)Landroidx/fragment/app/Fragment;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/appmanager/info/model/RequestOrigin;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    .prologue
    .line 59
    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->newInstanceInternal(Lcom/oculus/appmanager/info/model/RequestOrigin;Ljava/util/ArrayList;Z)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static varargs newInstance(Lcom/oculus/appmanager/info/model/RequestOrigin;Z[Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 1

    .prologue
    .line 51
    invoke-static {p2}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v0, p1}, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->newInstanceInternal(Lcom/oculus/appmanager/info/model/RequestOrigin;Ljava/util/ArrayList;Z)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method public static varargs newInstance(Lcom/oculus/appmanager/info/model/RequestOrigin;[Ljava/lang/String;)Landroidx/fragment/app/Fragment;
    .locals 2

    .prologue
    .line 55
    invoke-static {p1}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->newInstanceInternal(Lcom/oculus/appmanager/info/model/RequestOrigin;Ljava/util/ArrayList;Z)Landroidx/fragment/app/Fragment;

    move-result-object v0

    return-object v0
.end method

.method private static newInstanceInternal(Lcom/oculus/appmanager/info/model/RequestOrigin;Ljava/util/ArrayList;Z)Landroidx/fragment/app/Fragment;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/appmanager/info/model/RequestOrigin;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;Z)",
            "Landroidx/fragment/app/Fragment;"
        }
    .end annotation

    .prologue
    .line 64
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 65
    const-string/jumbo v1, "request_origin"

    invoke-virtual {p0}, Lcom/oculus/appmanager/info/model/RequestOrigin;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 66
    const-string v1, "package_names"

    invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putStringArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V

    .line 67
    const-string/jumbo v1, "show_space_warning"

    invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 69
    new-instance v1, Lcom/oculus/horizon/appmanager/ui/InstallFragment;

    invoke-direct {v1}, Lcom/oculus/horizon/appmanager/ui/InstallFragment;-><init>()V

    .line 70
    invoke-virtual {v1, v0}, Landroidx/fragment/app/Fragment;->setArguments(Landroid/os/Bundle;)V

    .line 71
    return-object v1
.end method


# virtual methods
.method public finishWithResult(I)V
    .locals 3

    .prologue
    .line 181
    invoke-virtual {p0}, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 182
    if-eqz v0, :cond_0

    .line 183
    invoke-virtual {p0}, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->getTargetRequestCode()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 186
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroidx/fragment/app/FragmentTransaction;->remove(Landroidx/fragment/app/Fragment;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 187
    return-void
.end method

.method public onCancel(Lcom/oculus/horizon/modal/AlertDialogFragment;I)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 218
    const-string/jumbo v0, "roaming_modal_fragment"

    invoke-virtual {p1}, Lcom/oculus/horizon/modal/AlertDialogFragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 219
    iget-object v0, p0, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->mPresenter:Lcom/oculus/horizon/appmanager/ui/InstallPresenter;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/appmanager/ui/InstallPresenter;->onDataWarningResult(Z)V

    .line 235
    :goto_0
    return-void

    .line 223
    :cond_0
    const-string v0, "insufficient_space_modal_fragment"

    invoke-virtual {p1}, Lcom/oculus/horizon/modal/AlertDialogFragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->mPresenter:Lcom/oculus/horizon/appmanager/ui/InstallPresenter;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/appmanager/ui/InstallPresenter;->onInsufficientDiskSpaceWarningResult(Z)V

    goto :goto_0

    .line 228
    :cond_1
    const-string v0, "installer_disabled_modal_fragment"

    invoke-virtual {p1}, Lcom/oculus/horizon/modal/AlertDialogFragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 229
    iget-object v0, p0, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->mPresenter:Lcom/oculus/horizon/appmanager/ui/InstallPresenter;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/appmanager/ui/InstallPresenter;->onInstallerDisabledDialogResult(Z)V

    goto :goto_0

    .line 233
    :cond_2
    const-string v0, "installer_missing_modal_fragment"

    invoke-virtual {p1}, Lcom/oculus/horizon/modal/AlertDialogFragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 234
    iget-object v0, p0, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->mPresenter:Lcom/oculus/horizon/appmanager/ui/InstallPresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/appmanager/ui/InstallPresenter;->onInstallerMissingDialogResult()V

    goto :goto_0

    .line 238
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dialog fragment tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oculus/horizon/modal/AlertDialogFragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onClick(Lcom/oculus/horizon/modal/AlertDialogFragment;II)V
    .locals 5

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 193
    const-string/jumbo v2, "roaming_modal_fragment"

    invoke-virtual {p1}, Lcom/oculus/horizon/modal/AlertDialogFragment;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 194
    iget-object v2, p0, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->mPresenter:Lcom/oculus/horizon/appmanager/ui/InstallPresenter;

    if-ne p3, v4, :cond_0

    :goto_0
    invoke-virtual {v2, v0}, Lcom/oculus/horizon/appmanager/ui/InstallPresenter;->onDataWarningResult(Z)V

    .line 210
    :goto_1
    return-void

    :cond_0
    move v0, v1

    .line 194
    goto :goto_0

    .line 198
    :cond_1
    const-string v2, "insufficient_space_modal_fragment"

    invoke-virtual {p1}, Lcom/oculus/horizon/modal/AlertDialogFragment;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 199
    iget-object v2, p0, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->mPresenter:Lcom/oculus/horizon/appmanager/ui/InstallPresenter;

    if-ne p3, v4, :cond_2

    :goto_2
    invoke-virtual {v2, v0}, Lcom/oculus/horizon/appmanager/ui/InstallPresenter;->onInsufficientDiskSpaceWarningResult(Z)V

    goto :goto_1

    :cond_2
    move v0, v1

    goto :goto_2

    .line 203
    :cond_3
    const-string v2, "installer_disabled_modal_fragment"

    invoke-virtual {p1}, Lcom/oculus/horizon/modal/AlertDialogFragment;->getTag()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 204
    iget-object v2, p0, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->mPresenter:Lcom/oculus/horizon/appmanager/ui/InstallPresenter;

    if-ne p3, v4, :cond_4

    :goto_3
    invoke-virtual {v2, v0}, Lcom/oculus/horizon/appmanager/ui/InstallPresenter;->onInstallerDisabledDialogResult(Z)V

    goto :goto_1

    :cond_4
    move v0, v1

    goto :goto_3

    .line 208
    :cond_5
    const-string v0, "installer_missing_modal_fragment"

    invoke-virtual {p1}, Lcom/oculus/horizon/modal/AlertDialogFragment;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 209
    iget-object v0, p0, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->mPresenter:Lcom/oculus/horizon/appmanager/ui/InstallPresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/appmanager/ui/InstallPresenter;->onInstallerMissingDialogResult()V

    goto :goto_1

    .line 213
    :cond_6
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Invalid dialog fragment tag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oculus/horizon/modal/AlertDialogFragment;->getTag()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 33
    invoke-virtual {p0}, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/appmanager/ui/InstallFragment;)V

    .line 85
    invoke-virtual {p0}, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string/jumbo v1, "request_origin"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/appmanager/info/model/RequestOrigin;->valueOf(Ljava/lang/String;)Lcom/oculus/appmanager/info/model/RequestOrigin;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->mRequestOrigin:Lcom/oculus/appmanager/info/model/RequestOrigin;

    .line 86
    iget-object v0, p0, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->mInstallPresenterProvider:Lcom/oculus/horizon/appmanager/ui/InstallPresenterProvider;

    .line 88
    invoke-virtual {p0}, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "package_names"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v1

    .line 89
    invoke-virtual {p0}, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string/jumbo v3, "show_space_warning"

    const/4 v4, 0x1

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    .line 87
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/appmanager/ui/InstallPresenterProvider;->get(Ljava/util/List;Z)Lcom/oculus/horizon/appmanager/ui/InstallPresenter;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->mPresenter:Lcom/oculus/horizon/appmanager/ui/InstallPresenter;

    .line 90
    iget-object v0, p0, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->mPresenter:Lcom/oculus/horizon/appmanager/ui/InstallPresenter;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/appmanager/ui/InstallPresenter;->setView(Lcom/oculus/horizon/appmanager/ui/InstallPresenter$View;)V

    .line 92
    if-eqz p1, :cond_0

    .line 94
    iget-object v0, p0, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->mPresenter:Lcom/oculus/horizon/appmanager/ui/InstallPresenter;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/appmanager/ui/InstallPresenter;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 99
    :goto_0
    return-void

    .line 98
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->mPresenter:Lcom/oculus/horizon/appmanager/ui/InstallPresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/appmanager/ui/InstallPresenter;->processInstall()V

    goto :goto_0
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 3

    .prologue
    const/4 v0, 0x0

    .line 110
    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    aget-object v2, p2, v0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 111
    iget-object v1, p0, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->mPresenter:Lcom/oculus/horizon/appmanager/ui/InstallPresenter;

    aget v2, p3, v0

    if-nez v2, :cond_0

    const/4 v0, 0x1

    :cond_0
    iget-object v2, p0, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->mRequestOrigin:Lcom/oculus/appmanager/info/model/RequestOrigin;

    invoke-virtual {v1, v0, v2}, Lcom/oculus/horizon/appmanager/ui/InstallPresenter;->onStoragePermissionResult(ZLcom/oculus/appmanager/info/model/RequestOrigin;)V

    .line 114
    :cond_1
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 103
    iget-object v0, p0, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->mPresenter:Lcom/oculus/horizon/appmanager/ui/InstallPresenter;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/appmanager/ui/InstallPresenter;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 104
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 105
    return-void
.end method

.method public openInstallerSettings()V
    .locals 1

    .prologue
    .line 175
    invoke-static {}, Lcom/oculus/appmanager/installer/util/InstallerServiceUtil;->getApplicationDetailsSettingsIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->startActivity(Landroid/content/Intent;)V

    .line 176
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->finishWithResult(I)V

    .line 177
    return-void
.end method

.method public requestStoragePermission()V
    .locals 3

    .prologue
    .line 154
    new-instance v0, Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;

    .line 155
    invoke-virtual {p0}, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 156
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;->setPermission(Ljava/lang/String;)Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_permission_title:I

    .line 157
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;->setTitle(I)Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_permission_write_external_storage_message:I

    .line 158
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;->setMessage(I)Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;

    move-result-object v0

    .line 159
    invoke-virtual {v0}, Lcom/oculus/horizon/permission/PermissionDialogFragment$Builder;->build()Landroidx/fragment/app/DialogFragment;

    move-result-object v0

    .line 160
    invoke-virtual {p0}, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method public showInstallerDisabledWarning()V
    .locals 3

    .prologue
    .line 165
    iget-object v0, p0, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->mAppInstallerCheck:Lcom/oculus/horizon/appmanager/ui/AppInstallerCheck;

    invoke-virtual {p0}, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/appmanager/ui/AppInstallerCheck;->showInstallerDisabledWarning(Landroid/content/res/Resources;Landroidx/fragment/app/FragmentManager;)V

    .line 166
    return-void
.end method

.method public showInstallerMissingWarning()V
    .locals 3

    .prologue
    .line 170
    iget-object v0, p0, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->mAppInstallerCheck:Lcom/oculus/horizon/appmanager/ui/AppInstallerCheck;

    invoke-virtual {p0}, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0}, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/appmanager/ui/AppInstallerCheck;->showInstallerMissingWarning(Landroid/content/res/Resources;Landroidx/fragment/app/FragmentManager;)V

    .line 171
    return-void
.end method

.method public showInsufficientSpaceWarning()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 142
    new-instance v0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    .line 143
    invoke-virtual {p0}, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;-><init>(Landroid/content/res/Resources;)V

    sget v1, Lcom/oculus/horizon/R$string;->common_insufficient_disk_space_warning_title:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 144
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTitle(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_insufficient_disk_space_warning:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 145
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setMessage(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_continue:I

    .line 146
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setPositiveButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_cancel:I

    .line 147
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setNegativeButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    .line 148
    invoke-virtual {v0}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->build()Lcom/oculus/horizon/modal/AlertDialogFragment;

    move-result-object v0

    .line 149
    invoke-virtual {p0}, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "insufficient_space_modal_fragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public showMobileWarning()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 130
    new-instance v0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    .line 131
    invoke-virtual {p0}, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;-><init>(Landroid/content/res/Resources;)V

    sget v1, Lcom/oculus/horizon/R$string;->common_download_wifi_warning_title:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 132
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTitle(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_download_wifi_warning_description:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 133
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setMessage(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_continue:I

    .line 134
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setPositiveButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_cancel:I

    .line 135
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setNegativeButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    .line 136
    invoke-virtual {v0}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->build()Lcom/oculus/horizon/modal/AlertDialogFragment;

    move-result-object v0

    .line 137
    invoke-virtual {p0}, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "roaming_modal_fragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 138
    return-void
.end method

.method public showRoamingWarning()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 118
    new-instance v0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    .line 119
    invoke-virtual {p0}, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;-><init>(Landroid/content/res/Resources;)V

    sget v1, Lcom/oculus/horizon/R$string;->obe_install_applications_roaming_warning_title:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 120
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTitle(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->obe_install_applications_roaming_warning_description:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 121
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setMessage(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_continue:I

    .line 122
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setPositiveButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_cancel:I

    .line 123
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setNegativeButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    .line 124
    invoke-virtual {v0}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->build()Lcom/oculus/horizon/modal/AlertDialogFragment;

    move-result-object v0

    .line 125
    invoke-virtual {p0}, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string/jumbo v2, "roaming_modal_fragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 126
    return-void
.end method
