.class public Lcom/oculus/horizon/nux360/Nux360VerificationFragment;
.super Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;
.source "Nux360VerificationFragment.java"

# interfaces
.implements Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$VerificationView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/nux360/Nux360VerificationFragment$VerificationFragmentHost;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/nux360/base/Nux360BaseFragment",
        "<",
        "Lcom/oculus/horizon/nux360/Nux360VerificationFragment$VerificationFragmentHost;",
        ">;",
        "Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$VerificationView;"
    }
.end annotation


# instance fields
.field private mChangeEmailText:Landroid/widget/TextView;

.field private mEmailText:Landroid/widget/TextView;

.field private mPresenter:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mResendButton:Lcom/oculus/horizon/widget/ProgressButton;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/nux360/Nux360VerificationFragment;)V
    .locals 1

    .prologue
    .line 19
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/nux360/Nux360VerificationFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/nux360/Nux360VerificationFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/nux360/Nux360VerificationFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/nux360/Nux360VerificationFragment;)V
    .locals 1

    .prologue
    .line 19
    invoke-static {p0}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;->$ul_$xXXcom_oculus_horizon_nux360_Nux360VerificationPresenter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/nux360/Nux360VerificationFragment;->mPresenter:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/nux360/Nux360VerificationFragment;)Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationFragment;->mPresenter:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    return-object v0
.end method


# virtual methods
.method public backToChangeEmail()V
    .locals 1

    .prologue
    .line 121
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationFragment;->mFragmentHost:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 122
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationFragment;->mFragmentHost:Ljava/lang/Object;

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360VerificationFragment$VerificationFragmentHost;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationFragment$VerificationFragmentHost;->verificationBackToEmail()V

    .line 124
    :cond_0
    return-void
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 94
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->ACCOUNT_UNCONFIRMED:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public hideLoading()V
    .locals 2

    .prologue
    .line 109
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationFragment;->mResendButton:Lcom/oculus/horizon/widget/ProgressButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 110
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 41
    invoke-super {p0, p1}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 19
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360VerificationFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/nux360/Nux360VerificationFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/nux360/Nux360VerificationFragment;)V

    .line 43
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 49
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationFragment;->mPresenter:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;->setView(Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$VerificationView;)V

    .line 51
    sget v0, Lcom/oculus/horizon/R$layout;->nux360_verification_fragment:I

    const/4 v1, 0x0

    .line 52
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 55
    sget v0, Lcom/oculus/horizon/R$id;->nux_email:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationFragment;->mEmailText:Landroid/widget/TextView;

    .line 56
    sget v0, Lcom/oculus/horizon/R$id;->nux_change_email:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationFragment;->mChangeEmailText:Landroid/widget/TextView;

    .line 57
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationFragment;->mChangeEmailText:Landroid/widget/TextView;

    new-instance v2, Lcom/oculus/horizon/nux360/Nux360VerificationFragment$1;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/nux360/Nux360VerificationFragment$1;-><init>(Lcom/oculus/horizon/nux360/Nux360VerificationFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    sget v0, Lcom/oculus/horizon/R$id;->nux_resend_email:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/ProgressButton;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationFragment;->mResendButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 66
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationFragment;->mResendButton:Lcom/oculus/horizon/widget/ProgressButton;

    new-instance v2, Lcom/oculus/horizon/nux360/Nux360VerificationFragment$2;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/nux360/Nux360VerificationFragment$2;-><init>(Lcom/oculus/horizon/nux360/Nux360VerificationFragment;)V

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 74
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-super {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onDestroy()V

    .line 80
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationFragment;->mPresenter:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;->setView(Lcom/oculus/horizon/nux360/Nux360VerificationPresenter$VerificationView;)V

    .line 81
    iput-object v1, p0, Lcom/oculus/horizon/nux360/Nux360VerificationFragment;->mResendButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 82
    iput-object v1, p0, Lcom/oculus/horizon/nux360/Nux360VerificationFragment;->mEmailText:Landroid/widget/TextView;

    .line 83
    iput-object v1, p0, Lcom/oculus/horizon/nux360/Nux360VerificationFragment;->mChangeEmailText:Landroid/widget/TextView;

    .line 84
    return-void
.end method

.method protected onNetworkErrorCancelClicked()V
    .locals 1

    .prologue
    .line 138
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360VerificationFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentManager;->popBackStack()V

    .line 139
    return-void
.end method

.method protected onNetworkErrorRetryClicked()V
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationFragment;->mPresenter:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;->startRegisterAccount()V

    .line 134
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 88
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 89
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationFragment;->mPresenter:Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationPresenter;->startRegisterAccount()V

    .line 90
    return-void
.end method

.method public proceedNext()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationFragment;->mFragmentHost:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 115
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationFragment;->mFragmentHost:Ljava/lang/Object;

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360VerificationFragment$VerificationFragmentHost;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360VerificationFragment$VerificationFragmentHost;->verificationProceedNext()V

    .line 117
    :cond_0
    return-void
.end method

.method public showEmail(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 99
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationFragment;->mEmailText:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 100
    return-void
.end method

.method public showEmailSent()V
    .locals 0

    .prologue
    .line 149
    return-void
.end method

.method public showEmailVerified()V
    .locals 0

    .prologue
    .line 144
    return-void
.end method

.method public showLoading()V
    .locals 2

    .prologue
    .line 104
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360VerificationFragment;->mResendButton:Lcom/oculus/horizon/widget/ProgressButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 105
    return-void
.end method

.method public showNetworkError()V
    .locals 0

    .prologue
    .line 128
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360VerificationFragment;->showNetworkErrorDialog()V

    .line 129
    return-void
.end method
