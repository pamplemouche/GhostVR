.class public Lcom/oculus/horizon/login/LoginFragment;
.super Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;
.source "LoginFragment.java"

# interfaces
.implements Lcom/oculus/horizon/login/LoginPresenter$LoginView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/login/LoginFragment$LoginFragmentHost;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/nux360/base/Nux360BaseFragment",
        "<",
        "Lcom/oculus/horizon/login/LoginFragment$LoginFragmentHost;",
        ">;",
        "Lcom/oculus/horizon/login/LoginPresenter$LoginView;"
    }
.end annotation


# instance fields
.field private mEmailEdit:Landroid/widget/EditText;

.field private mEmailLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private mLoginDataHolder:Lcom/oculus/horizon/login/LoginDataHolder;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mLoginPresenter:Lcom/oculus/horizon/login/LoginPresenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPasswordEdit:Landroid/widget/EditText;

.field private mPasswordLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private mResetPasswordLink:Landroid/widget/TextView;

.field private mSignInButton:Lcom/oculus/horizon/widget/ProgressButton;

.field private mViewToFocus:Landroid/view/View;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/login/LoginFragment;)V
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/login/LoginFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/login/LoginFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/login/LoginFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/login/LoginFragment;)V
    .locals 1

    .prologue
    .line 28
    invoke-static {p0}, Lcom/oculus/horizon/login/LoginPresenter;->$ul_$xXXcom_oculus_horizon_login_LoginPresenter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/login/LoginPresenter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/login/LoginFragment;->mLoginPresenter:Lcom/oculus/horizon/login/LoginPresenter;

    invoke-static {p0}, Lcom/oculus/horizon/login/LoginDataHolder;->$ul_$xXXcom_oculus_horizon_login_LoginDataHolder$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/login/LoginDataHolder;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/login/LoginFragment;->mLoginDataHolder:Lcom/oculus/horizon/login/LoginDataHolder;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/login/LoginFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mEmailEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/login/LoginFragment;Landroid/widget/EditText;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0, p1}, Lcom/oculus/horizon/login/LoginFragment;->getEditTextString(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/login/LoginFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mPasswordEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/login/LoginFragment;)Lcom/oculus/horizon/login/LoginPresenter;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mLoginPresenter:Lcom/oculus/horizon/login/LoginPresenter;

    return-object v0
.end method

.method private getEditTextString(Landroid/widget/EditText;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 145
    invoke-virtual {p1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private setupTextListener(Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;)V
    .locals 1

    .prologue
    .line 124
    new-instance v0, Lcom/oculus/horizon/login/LoginFragment$3;

    invoke-direct {v0, p0, p2}, Lcom/oculus/horizon/login/LoginFragment$3;-><init>(Lcom/oculus/horizon/login/LoginFragment;Lcom/google/android/material/textfield/TextInputLayout;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 142
    return-void
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 209
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->LOGIN:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method protected getViewToFocus()Landroid/view/View;
    .locals 1

    .prologue
    .line 204
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mViewToFocus:Landroid/view/View;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 57
    invoke-super {p0, p1}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/oculus/horizon/login/LoginFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/login/LoginFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/login/LoginFragment;)V

    .line 59
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .param p3    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/oculus/horizon/login/LoginFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$style;->Theme_Nux360_Light:I

    invoke-static {v0, p1, v1}, Lcom/oculus/horizon/util/ThemeUtils;->getThemedInflater(Landroid/content/Context;Landroid/view/LayoutInflater;I)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$layout;->login_fragment:I

    const/4 v2, 0x0

    .line 66
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 68
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mLoginPresenter:Lcom/oculus/horizon/login/LoginPresenter;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/login/LoginPresenter;->setView(Ljava/lang/Object;)V

    .line 70
    sget v0, Lcom/oculus/horizon/R$id;->email_edit:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mEmailEdit:Landroid/widget/EditText;

    .line 71
    sget v0, Lcom/oculus/horizon/R$id;->email_layout:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mEmailLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 73
    sget v0, Lcom/oculus/horizon/R$id;->password_edit:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mPasswordEdit:Landroid/widget/EditText;

    .line 74
    sget v0, Lcom/oculus/horizon/R$id;->password_layout:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mPasswordLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mEmailEdit:Landroid/widget/EditText;

    iget-object v2, p0, Lcom/oculus/horizon/login/LoginFragment;->mLoginDataHolder:Lcom/oculus/horizon/login/LoginDataHolder;

    invoke-virtual {v2}, Lcom/oculus/horizon/login/LoginDataHolder;->getLoginData()Lcom/oculus/horizon/login/LoginData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oculus/horizon/login/LoginData;->getEmail()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mEmailEdit:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/login/LoginFragment;->getEditTextString(Landroid/widget/EditText;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mEmailEdit:Landroid/widget/EditText;

    :goto_0
    iput-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mViewToFocus:Landroid/view/View;

    .line 79
    return-object v1

    .line 77
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mPasswordEdit:Landroid/widget/EditText;

    goto :goto_0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 112
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mLoginPresenter:Lcom/oculus/horizon/login/LoginPresenter;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/login/LoginPresenter;->setView(Ljava/lang/Object;)V

    .line 113
    iput-object v1, p0, Lcom/oculus/horizon/login/LoginFragment;->mResetPasswordLink:Landroid/widget/TextView;

    .line 114
    iput-object v1, p0, Lcom/oculus/horizon/login/LoginFragment;->mSignInButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 115
    iput-object v1, p0, Lcom/oculus/horizon/login/LoginFragment;->mPasswordLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 116
    iput-object v1, p0, Lcom/oculus/horizon/login/LoginFragment;->mPasswordEdit:Landroid/widget/EditText;

    .line 117
    iput-object v1, p0, Lcom/oculus/horizon/login/LoginFragment;->mEmailLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 118
    iput-object v1, p0, Lcom/oculus/horizon/login/LoginFragment;->mEmailEdit:Landroid/widget/EditText;

    .line 119
    iput-object v1, p0, Lcom/oculus/horizon/login/LoginFragment;->mViewToFocus:Landroid/view/View;

    .line 120
    invoke-super {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onDestroyView()V

    .line 121
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 84
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 86
    sget v0, Lcom/oculus/horizon/R$id;->sign_in_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/ProgressButton;

    iput-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mSignInButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 87
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mSignInButton:Lcom/oculus/horizon/widget/ProgressButton;

    new-instance v1, Lcom/oculus/horizon/login/LoginFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/login/LoginFragment$1;-><init>(Lcom/oculus/horizon/login/LoginFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 96
    sget v0, Lcom/oculus/horizon/R$id;->reset_password_link:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mResetPasswordLink:Landroid/widget/TextView;

    .line 97
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mResetPasswordLink:Landroid/widget/TextView;

    new-instance v1, Lcom/oculus/horizon/login/LoginFragment$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/login/LoginFragment$2;-><init>(Lcom/oculus/horizon/login/LoginFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    sget v0, Lcom/oculus/horizon/R$string;->common_sign_in:I

    invoke-virtual {p0, p1, v0}, Lcom/oculus/horizon/login/LoginFragment;->setupToolbar(Landroid/view/View;I)V

    .line 106
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mEmailEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/oculus/horizon/login/LoginFragment;->mEmailLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/login/LoginFragment;->setupTextListener(Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 107
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mPasswordEdit:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/oculus/horizon/login/LoginFragment;->mPasswordLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/login/LoginFragment;->setupTextListener(Landroid/widget/EditText;Lcom/google/android/material/textfield/TextInputLayout;)V

    .line 108
    return-void
.end method

.method public proceedLoginApprovalsNext()V
    .locals 1

    .prologue
    .line 157
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mFragmentHost:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 158
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mFragmentHost:Ljava/lang/Object;

    check-cast v0, Lcom/oculus/horizon/login/LoginFragment$LoginFragmentHost;

    invoke-interface {v0}, Lcom/oculus/horizon/login/LoginFragment$LoginFragmentHost;->loginLoginApprovalsNext()V

    .line 160
    :cond_0
    return-void
.end method

.method public proceedNext()V
    .locals 1

    .prologue
    .line 150
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mFragmentHost:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mFragmentHost:Ljava/lang/Object;

    check-cast v0, Lcom/oculus/horizon/login/LoginFragment$LoginFragmentHost;

    invoke-interface {v0}, Lcom/oculus/horizon/login/LoginFragment$LoginFragmentHost;->loginProceedNext()V

    .line 153
    :cond_0
    return-void
.end method

.method public proceedTwoFactorNext()V
    .locals 1

    .prologue
    .line 164
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mFragmentHost:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 165
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mFragmentHost:Ljava/lang/Object;

    check-cast v0, Lcom/oculus/horizon/login/LoginFragment$LoginFragmentHost;

    invoke-interface {v0}, Lcom/oculus/horizon/login/LoginFragment$LoginFragmentHost;->loginTwoFactorNext()V

    .line 167
    :cond_0
    return-void
.end method

.method public showEmailError(Lcom/oculus/horizon/util/validators/EmailValidator$Error;)V
    .locals 2

    .prologue
    .line 171
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mEmailLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Lcom/oculus/horizon/login/LoginFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oculus/horizon/util/validators/EmailValidator$Error;->getString(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 172
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mEmailEdit:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mViewToFocus:Landroid/view/View;

    .line 173
    return-void
.end method

.method public showPasswordError(I)V
    .locals 1
    .param p1    # I
        .annotation build Landroidx/annotation/StringRes;
        .end annotation
    .end param

    .prologue
    .line 177
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/login/LoginFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/login/LoginFragment;->showPasswordError(Ljava/lang/CharSequence;)V

    .line 178
    return-void
.end method

.method public showPasswordError(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 182
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mPasswordLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 183
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mPasswordEdit:Landroid/widget/EditText;

    iput-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mViewToFocus:Landroid/view/View;

    .line 184
    return-void
.end method

.method public startLoadingState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 188
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mEmailEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 189
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 190
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mResetPasswordLink:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 191
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mSignInButton:Lcom/oculus/horizon/widget/ProgressButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 192
    return-void
.end method

.method public stopLoadingState()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 196
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mEmailEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 197
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 198
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mResetPasswordLink:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 199
    iget-object v0, p0, Lcom/oculus/horizon/login/LoginFragment;->mSignInButton:Lcom/oculus/horizon/widget/ProgressButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 200
    return-void
.end method
