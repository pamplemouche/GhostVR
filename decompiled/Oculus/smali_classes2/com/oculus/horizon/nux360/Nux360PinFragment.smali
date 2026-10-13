.class public Lcom/oculus/horizon/nux360/Nux360PinFragment;
.super Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;
.source "Nux360PinFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/nux360/Nux360PinFragment$PinFragmentHost;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/nux360/base/Nux360BaseFragment",
        "<",
        "Lcom/oculus/horizon/nux360/Nux360PinFragment$PinFragmentHost;",
        ">;"
    }
.end annotation


# instance fields
.field private mContinueButton:Landroid/widget/Button;

.field private mData:Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mEditPIN:Lcom/oculus/horizon/widget/EditPIN;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/nux360/Nux360PinFragment;)V
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/nux360/Nux360PinFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/nux360/Nux360PinFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/nux360/Nux360PinFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/nux360/Nux360PinFragment;)V
    .locals 1

    .prologue
    .line 20
    invoke-static {p0}, Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;->$ul_$xXXcom_oculus_horizon_nux360_Nux360RegistrationDataHolder$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/nux360/Nux360PinFragment;->mData:Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/nux360/Nux360PinFragment;)V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/oculus/horizon/nux360/Nux360PinFragment;->onContinueButtonClicked()V

    return-void
.end method

.method private onContinueButtonClicked()V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360PinFragment;->mEditPIN:Lcom/oculus/horizon/widget/EditPIN;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/EditPIN;->validate()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 69
    new-instance v0, Lcom/oculus/horizon/nux360/RegistrationData$Builder;

    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360PinFragment;->mData:Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;

    invoke-virtual {v1}, Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;->getData()Lcom/oculus/horizon/nux360/RegistrationData;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/nux360/RegistrationData$Builder;-><init>(Lcom/oculus/horizon/nux360/RegistrationData;)V

    .line 70
    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360PinFragment;->mData:Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;

    iget-object v2, p0, Lcom/oculus/horizon/nux360/Nux360PinFragment;->mEditPIN:Lcom/oculus/horizon/widget/EditPIN;

    invoke-virtual {v2}, Lcom/oculus/horizon/widget/EditPIN;->getPIN()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->setPin(Ljava/lang/String;)Lcom/oculus/horizon/nux360/RegistrationData$Builder;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/nux360/RegistrationData$Builder;->build()Lcom/oculus/horizon/nux360/RegistrationData;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/nux360/Nux360RegistrationDataHolder;->setData(Lcom/oculus/horizon/nux360/RegistrationData;)V

    .line 71
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360PinFragment;->mFragmentHost:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 72
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360PinFragment;->mFragmentHost:Ljava/lang/Object;

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360PinFragment$PinFragmentHost;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360PinFragment$PinFragmentHost;->pinProceedNext()V

    .line 75
    :cond_0
    return-void
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 79
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->REGISTRATION_PIN:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method protected getViewToFocus()Landroid/view/View;
    .locals 1

    .prologue
    .line 64
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360PinFragment;->mEditPIN:Lcom/oculus/horizon/widget/EditPIN;

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
    .line 34
    invoke-super {p0, p1}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 20
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360PinFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/nux360/Nux360PinFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/nux360/Nux360PinFragment;)V

    .line 36
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 43
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360PinFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$style;->Theme_Nux360_Light:I

    invoke-static {v0, p1, v1}, Lcom/oculus/horizon/util/ThemeUtils;->getThemedInflater(Landroid/content/Context;Landroid/view/LayoutInflater;I)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$layout;->nux360_pin_fragment:I

    const/4 v2, 0x0

    .line 44
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 46
    sget v0, Lcom/oculus/horizon/R$id;->nux_continue:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360PinFragment;->mContinueButton:Landroid/widget/Button;

    .line 47
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360PinFragment;->mContinueButton:Landroid/widget/Button;

    new-instance v2, Lcom/oculus/horizon/nux360/Nux360PinFragment$1;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/nux360/Nux360PinFragment$1;-><init>(Lcom/oculus/horizon/nux360/Nux360PinFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    sget v0, Lcom/oculus/horizon/R$id;->nux_pin:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/EditPIN;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360PinFragment;->mEditPIN:Lcom/oculus/horizon/widget/EditPIN;

    .line 57
    sget v0, Lcom/oculus/horizon/R$string;->common_create_oculus_pin:I

    invoke-virtual {p0, v1, v0}, Lcom/oculus/horizon/nux360/Nux360PinFragment;->setupToolbar(Landroid/view/View;I)V

    .line 59
    return-object v1
.end method
