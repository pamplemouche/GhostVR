.class public Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "GearVRServicesDialogFragment.java"


# instance fields
.field private mGearVRSetupWizard:Lcom/oculus/horizon/samsung/GearVRSetupWizard;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mGearVRSetupWizardIntent:Landroid/content/Intent;

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private final mOnClickListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment;)V
    .locals 1

    .prologue
    .line 21
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment;)V
    .locals 1

    .prologue
    .line 21
    invoke-static {p0}, Lcom/oculus/horizon/samsung/GearVRSetupWizard;->$ul_$xXXcom_oculus_horizon_samsung_GearVRSetupWizard$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/samsung/GearVRSetupWizard;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment;->mGearVRSetupWizard:Lcom/oculus/horizon/samsung/GearVRSetupWizard;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    .line 28
    new-instance v0, Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment$1;-><init>(Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment;)V

    iput-object v0, p0, Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment;->mOnClickListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

    return-void
.end method

.method private dispatchResult(I)V
    .locals 3

    .prologue
    .line 97
    invoke-virtual {p0}, Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment;->getTargetFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment;->getTargetRequestCode()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroidx/fragment/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 98
    return-void
.end method

.method private hasVRSetupWizard()Z
    .locals 1

    .prologue
    .line 93
    iget-object v0, p0, Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment;->mGearVRSetupWizardIntent:Landroid/content/Intent;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newInstance()Landroidx/fragment/app/DialogFragment;
    .locals 1

    .prologue
    .line 25
    new-instance v0, Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment;-><init>()V

    return-object v0
.end method


# virtual methods
.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 1

    .prologue
    .line 88
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCancel(Landroid/content/DialogInterface;)V

    .line 89
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment;->dispatchResult(I)V

    .line 90
    return-void
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1

    .prologue
    .line 75
    packed-switch p2, :pswitch_data_0

    .line 84
    :goto_0
    return-void

    .line 77
    :pswitch_0
    iget-object v0, p0, Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment;->mGearVRSetupWizardIntent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment;->startActivity(Landroid/content/Intent;)V

    .line 78
    const/4 v0, -0x1

    invoke-direct {p0, v0}, Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment;->dispatchResult(I)V

    goto :goto_0

    .line 81
    :pswitch_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment;->dispatchResult(I)V

    goto :goto_0

    .line 75
    nop

    :pswitch_data_0
    .packed-switch -0x2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 44
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 21
    invoke-virtual {p0}, Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment;)V

    .line 47
    iget-object v0, p0, Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment;->mGearVRSetupWizard:Lcom/oculus/horizon/samsung/GearVRSetupWizard;

    invoke-virtual {v0}, Lcom/oculus/horizon/samsung/GearVRSetupWizard;->getGearVRSetupWizardIntent()Landroid/content/Intent;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment;->mGearVRSetupWizardIntent:Landroid/content/Intent;

    .line 48
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 3

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment;->hasVRSetupWizard()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 53
    new-instance v0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/oculus/horizon/R$string;->samsung_update_dialog_title:I

    .line 54
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setTitle(I)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->samsung_update_dialog_message:I

    .line 55
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setMessage(I)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->samsung_update_dialog_positive:I

    iget-object v2, p0, Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment;->mOnClickListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

    .line 56
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setPositiveButton(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_cancel:I

    iget-object v2, p0, Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment;->mOnClickListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

    .line 57
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setNegativeButton(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    .line 58
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->build()Lcom/oculus/horizon/widget/CustomAlertDialog;

    move-result-object v0

    .line 64
    :goto_0
    return-object v0

    .line 60
    :cond_0
    new-instance v0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/oculus/horizon/R$string;->samsung_error_dialog_title:I

    .line 61
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setTitle(I)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->samsung_error_dialog_message:I

    .line 62
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setMessage(I)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_ok:I

    iget-object v2, p0, Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment;->mOnClickListener:Lcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;

    .line 63
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setNegativeButton(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    .line 64
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->build()Lcom/oculus/horizon/widget/CustomAlertDialog;

    move-result-object v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 70
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onResume()V

    .line 71
    iget-object v0, p0, Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-direct {p0}, Lcom/oculus/horizon/samsung/GearVRServicesDialogFragment;->hasVRSetupWizard()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportSamsungErrorDialogView(Z)V

    .line 72
    return-void
.end method
