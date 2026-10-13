.class public Lcom/oculus/horizon/logout/LogoutFragment;
.super Landroidx/fragment/app/DialogFragment;
.source "LogoutFragment.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private $ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

.field private mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mIntentFactory:Lcom/oculus/horizon/navigation/IntentFactory;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/logout/LogoutFragment;)V
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/logout/LogoutFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/logout/LogoutFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/logout/LogoutFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/logout/LogoutFragment;)V
    .locals 2

    .prologue
    .line 32
    new-instance v0, Lcom/facebook/inject/InjectionContext;

    const/4 v1, 0x2

    invoke-direct {v0, v1, p0}, Lcom/facebook/inject/InjectionContext;-><init>(ILcom/facebook/inject/InjectorLike;)V

    iput-object v0, p1, Lcom/oculus/horizon/logout/LogoutFragment;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {p0}, Lcom/oculus/horizon/api/ApiRequestManager;->$ul_$xXXcom_oculus_horizon_api_ApiRequestManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/api/ApiRequestManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/logout/LogoutFragment;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-static {p0}, Lcom/oculus/horizon/navigation/NavigationModule;->$ul_$xXXcom_oculus_horizon_navigation_IntentFactory$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/navigation/IntentFactory;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/logout/LogoutFragment;->mIntentFactory:Lcom/oculus/horizon/navigation/IntentFactory;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    const-class v0, Lcom/oculus/horizon/logout/LogoutFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/logout/LogoutFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/logout/LogoutFragment;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Lcom/oculus/horizon/logout/LogoutFragment;->initiateLogout()V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/horizon/logout/LogoutFragment;)Lcom/oculus/horizon/navigation/IntentFactory;
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/oculus/horizon/logout/LogoutFragment;->mIntentFactory:Lcom/oculus/horizon/navigation/IntentFactory;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 32
    sget-object v0, Lcom/oculus/horizon/logout/LogoutFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method private initiateLogout()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 101
    invoke-virtual {p0, v4}, Lcom/oculus/horizon/logout/LogoutFragment;->setLoading(Z)V

    .line 102
    const/4 v0, 0x0

    sget v1, Lcom/oculus/authapi/inject/OVRAuthModule$UL_id;->$ul_$xXXcom_oculus_authapi_OVRAuth$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/logout/LogoutFragment;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/authapi/OVRAuth;

    new-instance v2, Lcom/oculus/horizon/logout/LogoutFragment$2;

    sget v1, Lcom/facebook/common/android/AndroidModule$UL_id;->$ul_$xXXandroid_os_Handler$xXXBINDING_ID:I

    iget-object v3, p0, Lcom/oculus/horizon/logout/LogoutFragment;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    .line 103
    invoke-static {v4, v1, v3}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Handler;

    invoke-direct {v2, p0, v1}, Lcom/oculus/horizon/logout/LogoutFragment$2;-><init>(Lcom/oculus/horizon/logout/LogoutFragment;Landroid/os/Handler;)V

    .line 102
    invoke-virtual {v0, v2}, Lcom/oculus/authapi/OVRAuth;->logout(Landroid/os/ResultReceiver;)V

    .line 120
    return-void
.end method


# virtual methods
.method public bridge synthetic getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 32
    invoke-virtual {p0}, Lcom/oculus/horizon/logout/LogoutFragment;->getDialog()Lcom/oculus/horizon/widget/CustomAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public getDialog()Lcom/oculus/horizon/widget/CustomAlertDialog;
    .locals 1

    .prologue
    .line 90
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/CustomAlertDialog;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0, p1}, Landroidx/fragment/app/DialogFragment;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/oculus/horizon/logout/LogoutFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/logout/LogoutFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/logout/LogoutFragment;)V

    .line 46
    return-void
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 4

    .prologue
    .line 50
    new-instance v0, Lcom/oculus/horizon/logout/LogoutFragment$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/logout/LogoutFragment$1;-><init>(Lcom/oculus/horizon/logout/LogoutFragment;)V

    .line 62
    new-instance v1, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    invoke-virtual {p0}, Lcom/oculus/horizon/logout/LogoutFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/oculus/horizon/R$style;->Theme_Light_Dialog:I

    invoke-direct {v1, v2, v3}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;-><init>(Landroid/content/Context;I)V

    sget v2, Lcom/oculus/horizon/R$string;->common_log_out:I

    .line 63
    invoke-virtual {v1, v2}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setTitle(I)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$string;->log_out_dialog_description:I

    .line 64
    invoke-virtual {v1, v2}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setMessage(I)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$string;->common_log_out:I

    .line 65
    invoke-virtual {v1, v2, v0}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setPositiveButton(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$string;->common_cancel:I

    .line 66
    invoke-virtual {v1, v2, v0}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setNegativeButton(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->build()Lcom/oculus/horizon/widget/CustomAlertDialog;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 84
    iget-object v0, p0, Lcom/oculus/horizon/logout/LogoutFragment;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/ApiRequestManager;->destroy()V

    .line 85
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onDestroy()V

    .line 86
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 78
    iget-object v0, p0, Lcom/oculus/horizon/logout/LogoutFragment;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/ApiRequestManager;->pause()V

    .line 79
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onPause()V

    .line 80
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 72
    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onResume()V

    .line 73
    iget-object v0, p0, Lcom/oculus/horizon/logout/LogoutFragment;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/ApiRequestManager;->resume()V

    .line 74
    return-void
.end method

.method public setLoading(Z)V
    .locals 1

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/oculus/horizon/logout/LogoutFragment;->getDialog()Lcom/oculus/horizon/widget/CustomAlertDialog;

    move-result-object v0

    .line 95
    if-eqz v0, :cond_0

    .line 96
    invoke-virtual {v0, p1}, Lcom/oculus/horizon/widget/CustomAlertDialog;->setLoading(Z)V

    .line 98
    :cond_0
    return-void
.end method
