.class public Lcom/oculus/horizon/settings/OverrideGkDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "OverrideGkDialogFragment.java"


# instance fields
.field private mConfigController:Lcom/oculus/config/ConfigController;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mConfigUpdater:Lcom/oculus/config/updater/ConfigUpdater;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mGatekeeperName:Ljava/lang/String;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/OverrideGkDialogFragment;)V
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/settings/OverrideGkDialogFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/OverrideGkDialogFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/settings/OverrideGkDialogFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/OverrideGkDialogFragment;)V
    .locals 1

    .prologue
    .line 21
    invoke-static {p0}, Lcom/oculus/config/ConfigController;->$ul_$xXXcom_oculus_config_ConfigController$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/config/ConfigController;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/OverrideGkDialogFragment;->mConfigController:Lcom/oculus/config/ConfigController;

    invoke-static {p0}, Lcom/oculus/config/updater/ConfigUpdater;->$ul_$xXXcom_oculus_config_updater_ConfigUpdater$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/config/updater/ConfigUpdater;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/OverrideGkDialogFragment;->mConfigUpdater:Lcom/oculus/config/updater/ConfigUpdater;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/settings/OverrideGkDialogFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/oculus/horizon/settings/OverrideGkDialogFragment;->mGatekeeperName:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/settings/OverrideGkDialogFragment;)Lcom/oculus/config/updater/ConfigUpdater;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/oculus/horizon/settings/OverrideGkDialogFragment;->mConfigUpdater:Lcom/oculus/config/updater/ConfigUpdater;

    return-object v0
.end method

.method public static newInstance(Ljava/lang/String;)Lcom/oculus/horizon/settings/OverrideGkDialogFragment;
    .locals 2

    .prologue
    .line 36
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 38
    const-string v1, "gk_name"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 40
    new-instance v1, Lcom/oculus/horizon/settings/OverrideGkDialogFragment;

    invoke-direct {v1}, Lcom/oculus/horizon/settings/OverrideGkDialogFragment;-><init>()V

    .line 41
    invoke-virtual {v1, v0}, Lcom/oculus/horizon/settings/OverrideGkDialogFragment;->setArguments(Landroid/os/Bundle;)V

    .line 43
    return-object v1
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 48
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/OverrideGkDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/settings/OverrideGkDialogFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/OverrideGkDialogFragment;)V

    .line 52
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/OverrideGkDialogFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 53
    const-string v1, "gk_name"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/settings/OverrideGkDialogFragment;->mGatekeeperName:Ljava/lang/String;

    .line 54
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 5

    .prologue
    .line 58
    const-string v0, "%s (%s)"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/oculus/horizon/settings/OverrideGkDialogFragment;->mGatekeeperName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/oculus/horizon/settings/OverrideGkDialogFragment;->mConfigController:Lcom/oculus/config/ConfigController;

    iget-object v4, p0, Lcom/oculus/horizon/settings/OverrideGkDialogFragment;->mGatekeeperName:Ljava/lang/String;

    .line 60
    invoke-virtual {v3, v4}, Lcom/oculus/config/ConfigController;->getGatekeeper(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    .line 59
    invoke-static {v0, v1}, Lcom/facebook/common/string/StringUtil;->formatStrLocaleSafe(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 62
    new-instance v1, Lcom/oculus/horizon/settings/OverrideGkDialogFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/settings/OverrideGkDialogFragment$1;-><init>(Lcom/oculus/horizon/settings/OverrideGkDialogFragment;)V

    .line 83
    new-instance v2, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oculus/horizon/settings/OverrideGkDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 84
    invoke-virtual {v2, v0}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v2, Lcom/oculus/horizon/R$array;->gatekeepers_override_items:I

    .line 85
    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setItems(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_cancel:I

    const/4 v2, 0x0

    .line 86
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 87
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 4

    .prologue
    .line 92
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/OverrideGkDialogFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 93
    if-eqz v0, :cond_0

    .line 94
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/OverrideGkDialogFragment;->getTargetRequestCode()I

    move-result v1

    const/4 v2, -0x1

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 96
    :cond_0
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onDismiss(Landroid/content/DialogInterface;)V

    .line 97
    return-void
.end method
