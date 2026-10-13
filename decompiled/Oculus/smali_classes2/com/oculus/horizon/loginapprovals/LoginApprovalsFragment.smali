.class public Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;
.super Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;
.source "LoginApprovalsFragment.java"

# interfaces
.implements Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter$LoginApprovalsView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment$LoginApprovalsFragmentHost;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/nux360/base/Nux360BaseFragment",
        "<",
        "Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment$LoginApprovalsFragmentHost;",
        ">;",
        "Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter$LoginApprovalsView;"
    }
.end annotation


# instance fields
.field private mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

.field private mEmailInstructions:Landroid/widget/TextView;

.field private mEmailView:Landroid/widget/TextView;

.field private mInstructions:Landroid/widget/TextView;

.field private mLoginApprovalsPresenter:Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPINEdit:Landroid/widget/EditText;

.field private mPINLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private mResendLink:Lcom/oculus/horizon/widget/ProgressButton;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;)V
    .locals 1

    .prologue
    .line 29
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;)V
    .locals 1

    .prologue
    .line 29
    invoke-static {p0}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter;->$ul_$xXXcom_oculus_horizon_loginapprovals_LoginApprovalsPresenter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mLoginApprovalsPresenter:Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;)Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mLoginApprovalsPresenter:Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mPINEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1

    .prologue
    .line 29
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mPINLayout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method private hideEmailView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 214
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mEmailInstructions:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 215
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mEmailView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 216
    return-void
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 236
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->LOGIN_APPROVALS:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method protected getViewToFocus()Landroid/view/View;
    .locals 1

    .prologue
    .line 231
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mPINEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 61
    invoke-super {p0, p1}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    invoke-virtual {p0}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;)V

    .line 63
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p3    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$style;->Theme_Nux360_Light:I

    invoke-static {v0, p1, v1}, Lcom/oculus/horizon/util/ThemeUtils;->getThemedInflater(Landroid/content/Context;Landroid/view/LayoutInflater;I)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$layout;->login_approvals_fragment:I

    const/4 v2, 0x0

    .line 70
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 72
    sget v0, Lcom/oculus/horizon/R$id;->instructions:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mInstructions:Landroid/widget/TextView;

    .line 73
    sget v0, Lcom/oculus/horizon/R$id;->pin_edit:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mPINEdit:Landroid/widget/EditText;

    .line 74
    sget v0, Lcom/oculus/horizon/R$id;->pin_layout:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mPINLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 75
    sget v0, Lcom/oculus/horizon/R$id;->email:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mEmailView:Landroid/widget/TextView;

    .line 76
    sget v0, Lcom/oculus/horizon/R$id;->email_confirmation_required:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mEmailInstructions:Landroid/widget/TextView;

    .line 78
    return-object v1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 134
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mLoginApprovalsPresenter:Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter;->setView(Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter$LoginApprovalsView;)V

    .line 135
    iput-object v1, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 136
    iput-object v1, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mResendLink:Lcom/oculus/horizon/widget/ProgressButton;

    .line 137
    iput-object v1, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mPINEdit:Landroid/widget/EditText;

    .line 138
    iput-object v1, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mInstructions:Landroid/widget/TextView;

    .line 139
    iput-object v1, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mEmailView:Landroid/widget/TextView;

    .line 140
    iput-object v1, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mEmailInstructions:Landroid/widget/TextView;

    .line 141
    invoke-super {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onDestroyView()V

    .line 142
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 83
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 85
    sget v0, Lcom/oculus/horizon/R$id;->resend_link:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/ProgressButton;

    iput-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mResendLink:Lcom/oculus/horizon/widget/ProgressButton;

    .line 86
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mResendLink:Lcom/oculus/horizon/widget/ProgressButton;

    new-instance v1, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment$1;-><init>(Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 94
    sget v0, Lcom/oculus/horizon/R$id;->continue_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/ProgressButton;

    iput-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 95
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    new-instance v1, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment$2;-><init>(Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 103
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mPINEdit:Landroid/widget/EditText;

    new-instance v1, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment$3;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment$3;-><init>(Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 122
    invoke-virtual {p0}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "title"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 123
    if-eqz v0, :cond_0

    .line 124
    invoke-virtual {p0, p1, v0}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->setupToolbar(Landroid/view/View;I)V

    .line 129
    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mLoginApprovalsPresenter:Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter;->setView(Lcom/oculus/horizon/loginapprovals/LoginApprovalsPresenter$LoginApprovalsView;)V

    .line 130
    return-void

    .line 126
    :cond_0
    const-string v0, ""

    invoke-virtual {p0, p1, v0}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->setupToolbar(Landroid/view/View;Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public proceedNext()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mFragmentHost:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mFragmentHost:Ljava/lang/Object;

    check-cast v0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment$LoginApprovalsFragmentHost;

    invoke-interface {v0}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment$LoginApprovalsFragmentHost;->loginApprovalsProceedNext()V

    .line 149
    :cond_0
    return-void
.end method

.method public proceedTerminalNext()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mFragmentHost:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mFragmentHost:Ljava/lang/Object;

    check-cast v0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment$LoginApprovalsFragmentHost;

    invoke-interface {v0}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment$LoginApprovalsFragmentHost;->loginApprovalsProceedTerminalNext()V

    .line 156
    :cond_0
    return-void
.end method

.method public showEmail(Ljava/lang/String;)V
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x0

    .line 220
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 221
    invoke-direct {p0}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->hideEmailView()V

    .line 227
    :goto_0
    return-void

    .line 223
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mEmailInstructions:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 224
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mEmailView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mEmailView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public showError(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 160
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->showError(Ljava/lang/CharSequence;)V

    .line 161
    return-void
.end method

.method public showError(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 165
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mPINLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 166
    return-void
.end method

.method public showToast(I)V
    .locals 2
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 170
    invoke-virtual {p0}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 171
    return-void
.end method

.method public showTwoFactorMethod(Ljava/lang/String;Ljava/lang/String;Z)V
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    const/4 v1, 0x4

    const/4 v0, 0x0

    .line 200
    invoke-direct {p0}, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->hideEmailView()V

    .line 201
    iget-object v2, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mInstructions:Landroid/widget/TextView;

    invoke-virtual {v2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 203
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 204
    iget-object v2, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mResendLink:Lcom/oculus/horizon/widget/ProgressButton;

    invoke-virtual {v2, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setVisibility(I)V

    .line 210
    :goto_0
    iget-object v2, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mPINLayout:Lcom/google/android/material/textfield/TextInputLayout;

    if-eqz p3, :cond_1

    :goto_1
    invoke-virtual {v2, v0}, Lcom/google/android/material/textfield/TextInputLayout;->setVisibility(I)V

    .line 211
    return-void

    .line 206
    :cond_0
    iget-object v2, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mResendLink:Lcom/oculus/horizon/widget/ProgressButton;

    invoke-virtual {v2, v0}, Lcom/oculus/horizon/widget/ProgressButton;->setVisibility(I)V

    .line 207
    iget-object v2, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mResendLink:Lcom/oculus/horizon/widget/ProgressButton;

    invoke-virtual {v2, p2}, Lcom/oculus/horizon/widget/ProgressButton;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 210
    goto :goto_1
.end method

.method public startResendLoadingState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 182
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mPINEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 183
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mResendLink:Lcom/oculus/horizon/widget/ProgressButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 184
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/ProgressButton;->setEnabled(Z)V

    .line 185
    return-void
.end method

.method public startVerifyLoadingState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 175
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mPINEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 176
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mResendLink:Lcom/oculus/horizon/widget/ProgressButton;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setEnabled(Z)V

    .line 177
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 178
    return-void
.end method

.method public stopLoadingState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 189
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mPINEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 190
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mResendLink:Lcom/oculus/horizon/widget/ProgressButton;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setEnabled(Z)V

    .line 191
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mResendLink:Lcom/oculus/horizon/widget/ProgressButton;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 192
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setEnabled(Z)V

    .line 193
    iget-object v0, p0, Lcom/oculus/horizon/loginapprovals/LoginApprovalsFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 194
    return-void
.end method
