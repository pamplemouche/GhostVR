.class public Lcom/oculus/horizon/nux360/Nux360FBLoginPinFragment;
.super Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;
.source "Nux360FBLoginPinFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/nux360/Nux360FBLoginPinFragment$FBLoginPinFragmentHost;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/nux360/base/Nux360BaseFragment",
        "<",
        "Lcom/oculus/horizon/nux360/Nux360FBLoginPinFragment$FBLoginPinFragmentHost;",
        ">;"
    }
.end annotation


# instance fields
.field private mData:Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mEditPIN:Lcom/oculus/horizon/widget/EditPIN;

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/nux360/Nux360FBLoginPinFragment;)V
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/nux360/Nux360FBLoginPinFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/nux360/Nux360FBLoginPinFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/nux360/Nux360FBLoginPinFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/nux360/Nux360FBLoginPinFragment;)V
    .locals 1

    .prologue
    .line 24
    invoke-static {p0}, Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;->$ul_$xXXcom_oculus_horizon_nux360_Nux360RegistrationDataHolder$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/nux360/Nux360FBLoginPinFragment;->mData:Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/nux360/Nux360FBLoginPinFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginPinFragment;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginPinFragment;->onContinueButtonClicked()V

    return-void
.end method

.method private onContinueButtonClicked()V
    .locals 3

    .prologue
    .line 73
    const-string v0, "set_pin_attempt"

    invoke-direct {p0, v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginPinFragment;->reportFacebookLoginSetPINEvent(Ljava/lang/String;)V

    .line 74
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginPinFragment;->mEditPIN:Lcom/oculus/horizon/widget/EditPIN;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/EditPIN;->validate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 75
    new-instance v0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;

    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginPinFragment;->mData:Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;

    invoke-virtual {v1}, Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;->getData()Lcom/oculus/horizon/nux360/RegistrationData;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/nux360/RegistrationData$Builder;-><init>(Lcom/oculus/horizon/nux360/RegistrationData;)V

    .line 76
    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginPinFragment;->mData:Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;

    iget-object v2, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginPinFragment;->mEditPIN:Lcom/oculus/horizon/widget/EditPIN;

    invoke-virtual {v2}, Lcom/oculus/horizon/widget/EditPIN;->getPIN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->setPin(Ljava/lang/String;)Lcom/oculus/horizon/nux360/RegistrationData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->build()Lcom/oculus/horizon/nux360/RegistrationData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;->setData(Lcom/oculus/horizon/nux360/RegistrationData;)V

    .line 77
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginPinFragment;->mFragmentHost:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 78
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginPinFragment;->mFragmentHost:Ljava/lang/Object;

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360FBLoginPinFragment$FBLoginPinFragmentHost;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginPinFragment$FBLoginPinFragmentHost;->introFBLoginAddEmailNext()V

    .line 80
    :cond_0
    const-string v0, "set_pin_success"

    invoke-direct {p0, v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginPinFragment;->reportFacebookLoginSetPINEvent(Ljava/lang/String;)V

    .line 85
    :goto_0
    return-void

    .line 83
    :cond_1
    const-string v0, "set_pin_failure"

    invoke-direct {p0, v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginPinFragment;->reportFacebookLoginSetPINEvent(Ljava/lang/String;)V

    goto :goto_0
.end method

.method private reportFacebookLoginSetPINEvent(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginPinFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/logging/OculusLogger;->reportFacebookLoginEvent(Ljava/lang/String;)V

    .line 89
    return-void
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 93
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->FB_LOGIN_PIN:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method protected getViewToFocus()Landroid/view/View;
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginPinFragment;->mEditPIN:Lcom/oculus/horizon/widget/EditPIN;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/EditPIN;->getFirstEmptyField()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 39
    invoke-super {p0, p1}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginPinFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginPinFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/nux360/Nux360FBLoginPinFragment;)V

    .line 41
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 48
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginPinFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$style;->Theme_Nux360_Light:I

    invoke-static {v0, p1, v1}, Lcom/oculus/horizon/util/ThemeUtils;->getThemedInflater(Landroid/content/Context;Landroid/view/LayoutInflater;I)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$layout;->nux360_pin_fragment:I

    const/4 v2, 0x0

    .line 49
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 51
    sget v0, Lcom/oculus/horizon/R$id;->nux_continue:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    .line 52
    new-instance v2, Lcom/oculus/horizon/nux360/Nux360FBLoginPinFragment$1;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginPinFragment$1;-><init>(Lcom/oculus/horizon/nux360/Nux360FBLoginPinFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 60
    sget v0, Lcom/oculus/horizon/R$id;->nux_pin:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/EditPIN;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginPinFragment;->mEditPIN:Lcom/oculus/horizon/widget/EditPIN;

    .line 62
    sget v0, Lcom/oculus/horizon/R$string;->common_create_oculus_pin:I

    invoke-virtual {p0, v1, v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginPinFragment;->setupToolbar(Landroid/view/View;I)V

    .line 64
    return-object v1
.end method
