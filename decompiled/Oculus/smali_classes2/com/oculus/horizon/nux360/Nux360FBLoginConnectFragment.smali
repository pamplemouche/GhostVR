.class public Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;
.super Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;
.source "Nux360FBLoginConnectFragment.java"

# interfaces
.implements Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter$View;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment$FBLoginConnectAccountFragmentHost;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/nux360/base/Nux360BaseFragment",
        "<",
        "Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment$FBLoginConnectAccountFragmentHost;",
        ">;",
        "Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter$View;"
    }
.end annotation


# instance fields
.field private mEmailEdit:Landroid/widget/EditText;

.field private mFBConnectAndContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

.field private mPasswordEdit:Landroid/widget/EditText;

.field private mPasswordLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private mPresenter:Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;)V
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;)V
    .locals 1

    .prologue
    .line 25
    invoke-static {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;->$ul_$xXXcom_oculus_horizon_nux360_Nux360FBLoginConnectPresenter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->mPresenter:Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->mEmailEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;)Landroid/widget/EditText;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->mPasswordEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;)Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->mPresenter:Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->mPasswordLayout:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method private setTextListener(Landroid/widget/EditText;)V
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment$2;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment$2;-><init>(Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 123
    return-void
.end method


# virtual methods
.method public getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->FB_LOGIN_CONNECT_ACCOUNT:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public hideInvalidCredentialsError()V
    .locals 2

    .prologue
    .line 148
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->mPasswordLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 149
    return-void
.end method

.method public hideLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 135
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->mEmailEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 136
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 138
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->mFBConnectAndContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 139
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 51
    invoke-super {p0, p1}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;)V

    .line 53
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 58
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->mPresenter:Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;->setView(Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter$View;)V

    .line 61
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$style;->Theme_Nux360_Light:I

    invoke-static {v0, p1, v1}, Lcom/oculus/horizon/util/ThemeUtils;->getThemedInflater(Landroid/content/Context;Landroid/view/LayoutInflater;I)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$layout;->nux360_fblogin_connect_account:I

    const/4 v2, 0x0

    .line 62
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 64
    sget v0, Lcom/oculus/horizon/R$id;->edit_email:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->mEmailEdit:Landroid/widget/EditText;

    .line 65
    sget v0, Lcom/oculus/horizon/R$id;->edit_password:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->mPasswordEdit:Landroid/widget/EditText;

    .line 66
    sget v0, Lcom/oculus/horizon/R$id;->nux_password_layout:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->mPasswordLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 68
    sget v0, Lcom/oculus/horizon/R$string;->common_fblogin_connect_account:I

    invoke-virtual {p0, v1, v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->setupToolbar(Landroid/view/View;I)V

    .line 69
    sget v0, Lcom/oculus/horizon/R$id;->fbconnect_connect_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/ProgressButton;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->mFBConnectAndContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 71
    return-object v1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 95
    iput-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->mEmailEdit:Landroid/widget/EditText;

    .line 96
    iput-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->mPasswordEdit:Landroid/widget/EditText;

    .line 97
    iput-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->mPasswordLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 98
    iput-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->mFBConnectAndContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 100
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->mPresenter:Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter;->setView(Lcom/oculus/horizon/nux360/Nux360FBLoginConnectPresenter$View;)V

    .line 101
    invoke-super {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onDestroyView()V

    .line 102
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 76
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 78
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->mEmailEdit:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->setTextListener(Landroid/widget/EditText;)V

    .line 79
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->mPasswordEdit:Landroid/widget/EditText;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->setTextListener(Landroid/widget/EditText;)V

    .line 81
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->mFBConnectAndContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    new-instance v1, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment$1;-><init>(Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 91
    return-void
.end method

.method public proceedLoginApprovalsNext()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->mFragmentHost:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->mFragmentHost:Ljava/lang/Object;

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment$FBLoginConnectAccountFragmentHost;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment$FBLoginConnectAccountFragmentHost;->loginLoginApprovalsNext()V

    .line 163
    :cond_0
    return-void
.end method

.method public proceedNext()V
    .locals 1

    .prologue
    .line 153
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->mFragmentHost:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 154
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->mFragmentHost:Ljava/lang/Object;

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment$FBLoginConnectAccountFragmentHost;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment$FBLoginConnectAccountFragmentHost;->verificationProceedNext()V

    .line 156
    :cond_0
    return-void
.end method

.method public proceedTwoFactorNext()V
    .locals 1

    .prologue
    .line 167
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->mFragmentHost:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 168
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->mFragmentHost:Ljava/lang/Object;

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment$FBLoginConnectAccountFragmentHost;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment$FBLoginConnectAccountFragmentHost;->loginTwoFactorNext()V

    .line 170
    :cond_0
    return-void
.end method

.method public showInvalidCredentialsError()V
    .locals 2

    .prologue
    .line 143
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->mPasswordLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget v1, Lcom/oculus/horizon/R$string;->login_error_invalid_credentials:I

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 144
    return-void
.end method

.method public showLoading()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 127
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->mEmailEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 128
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->mPasswordEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 130
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginConnectFragment;->mFBConnectAndContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 131
    return-void
.end method
