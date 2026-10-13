.class public Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;
.super Landroidx/fragment/app/Fragment;
.source "AddPaymentMethodFragment.java"


# instance fields
.field private mAddCreditCardButton:Landroid/widget/TextView;

.field private mAddPayPalButton:Landroid/widget/TextView;

.field private mLoadingIndicator:Landroid/widget/ProgressBar;

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mSkipButton:Landroid/widget/TextView;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;)V
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;)V
    .locals 1

    .prologue
    .line 27
    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;->disableButtons()V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;)V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;->showLoadingState()V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;)Lcom/oculus/horizon/logging/OculusLogger;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-object v0
.end method

.method public static createAddPaymentMethodFragment(Z)Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;
    .locals 2

    .prologue
    .line 116
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 117
    const-string v1, "show_skip_button"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 118
    new-instance v1, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;

    invoke-direct {v1}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;-><init>()V

    .line 119
    invoke-virtual {v1, v0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;->setArguments(Landroid/os/Bundle;)V

    .line 120
    return-object v1
.end method

.method private disableButtons()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 129
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;->mAddCreditCardButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 130
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;->mAddPayPalButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 131
    return-void
.end method

.method private showLoadingState()V
    .locals 2

    .prologue
    .line 134
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 135
    return-void
.end method


# virtual methods
.method protected enableButtons()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 124
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;->mAddCreditCardButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 125
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;->mAddPayPalButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 126
    return-void
.end method

.method protected hideLoadingState()V
    .locals 2

    .prologue
    .line 138
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 139
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;)V

    .line 42
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
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

    .line 47
    sget v0, Lcom/oculus/horizon/R$layout;->add_payment_method_fragment:I

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 49
    sget v0, Lcom/oculus/horizon/R$id;->loading_indicator:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 51
    sget v0, Lcom/oculus/horizon/R$id;->add_credit_card:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;->mAddCreditCardButton:Landroid/widget/TextView;

    .line 52
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;->mAddCreditCardButton:Landroid/widget/TextView;

    new-instance v3, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment$1;

    invoke-direct {v3, p0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment$1;-><init>(Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    sget v0, Lcom/oculus/horizon/R$id;->add_paypal:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;->mAddPayPalButton:Landroid/widget/TextView;

    .line 67
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;->mAddPayPalButton:Landroid/widget/TextView;

    new-instance v3, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment$2;

    invoke-direct {v3, p0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment$2;-><init>(Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;)V

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 82
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 83
    if-eqz v0, :cond_1

    .line 84
    const-string v3, "show_skip_button"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 87
    :goto_0
    if-eqz v0, :cond_0

    .line 88
    sget v0, Lcom/oculus/horizon/R$id;->skip_button:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;->mSkipButton:Landroid/widget/TextView;

    .line 89
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;->mSkipButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;->mSkipButton:Landroid/widget/TextView;

    new-instance v1, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment$3;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment$3;-><init>(Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 101
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;->enableButtons()V

    .line 102
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;->hideLoadingState()V

    .line 104
    return-object v2

    :cond_1
    move v0, v1

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 109
    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 110
    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;->mAddCreditCardButton:Landroid/widget/TextView;

    .line 111
    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;->mAddPayPalButton:Landroid/widget/TextView;

    .line 112
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 113
    return-void
.end method
