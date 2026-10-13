.class public Lcom/oculus/horizon/nux360/Nux360NameFragment;
.super Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;
.source "Nux360NameFragment.java"

# interfaces
.implements Lcom/oculus/horizon/nux360/Nux360NamePresenter$NameView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/nux360/Nux360NameFragment$NameFragmentHost;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/nux360/base/Nux360BaseFragment",
        "<",
        "Lcom/oculus/horizon/nux360/Nux360NameFragment$NameFragmentHost;",
        ">;",
        "Lcom/oculus/horizon/nux360/Nux360NamePresenter$NameView;"
    }
.end annotation


# instance fields
.field private mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

.field private mFirstNameEdit:Landroid/widget/EditText;

.field private mFirstNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private mLastNameEdit:Landroid/widget/EditText;

.field private mLastNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

.field private mPresenter:Lcom/oculus/horizon/nux360/Nux360NamePresenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mUserNameEdit:Landroid/widget/EditText;

.field private mUserNameLayout:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/nux360/Nux360NameFragment;)V
    .locals 1

    .prologue
    .line 24
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/nux360/Nux360NameFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/nux360/Nux360NameFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/nux360/Nux360NameFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/nux360/Nux360NameFragment;)V
    .locals 1

    .prologue
    .line 24
    invoke-static {p0}, Lcom/oculus/horizon/nux360/Nux360NamePresenter;->$ul_$xXXcom_oculus_horizon_nux360_Nux360NamePresenter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/nux360/Nux360NamePresenter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/nux360/Nux360NameFragment;->mPresenter:Lcom/oculus/horizon/nux360/Nux360NamePresenter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/nux360/Nux360NameFragment;)V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Lcom/oculus/horizon/nux360/Nux360NameFragment;->onContinueButtonClicked()V

    return-void
.end method

.method private onContinueButtonClicked()V
    .locals 4

    .prologue
    .line 174
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360NameFragment;->mPresenter:Lcom/oculus/horizon/nux360/Nux360NamePresenter;

    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360NameFragment;->mUserNameEdit:Landroid/widget/EditText;

    .line 175
    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/nux360/Nux360NameFragment;->mFirstNameEdit:Landroid/widget/EditText;

    .line 176
    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/nux360/Nux360NameFragment;->mLastNameEdit:Landroid/widget/EditText;

    .line 177
    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v3

    .line 174
    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/nux360/Nux360NamePresenter;->setUsernameAndRealName(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    .line 178
    return-void
.end method


# virtual methods
.method public clearFirstNameError()V
    .locals 2

    .prologue
    .line 155
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360NameFragment;->mFirstNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 156
    return-void
.end method

.method public clearLastNameError()V
    .locals 2

    .prologue
    .line 166
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360NameFragment;->mLastNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 167
    return-void
.end method

.method public clearUsernameError()V
    .locals 2

    .prologue
    .line 139
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360NameFragment;->mUserNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 140
    return-void
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 105
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->REGISTRATION_USERNAME:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method protected getViewToFocus()Landroid/view/View;
    .locals 1

    .prologue
    .line 87
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360NameFragment;->mUserNameEdit:Landroid/widget/EditText;

    return-object v0
.end method

.method public hideLoading()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360NameFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 116
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-super {p0, p1}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 24
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360NameFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/nux360/Nux360NameFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/nux360/Nux360NameFragment;)V

    .line 50
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360NameFragment;->mPresenter:Lcom/oculus/horizon/nux360/Nux360NamePresenter;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/nux360/Nux360NamePresenter;->setView(Ljava/lang/Object;)V

    .line 59
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360NameFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$style;->Theme_Nux360_Light:I

    invoke-static {v0, p1, v1}, Lcom/oculus/horizon/util/ThemeUtils;->getThemedInflater(Landroid/content/Context;Landroid/view/LayoutInflater;I)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$layout;->nux360_name_fragment:I

    const/4 v2, 0x0

    .line 60
    invoke-virtual {v0, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 62
    sget v0, Lcom/oculus/horizon/R$id;->nux_username:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360NameFragment;->mUserNameEdit:Landroid/widget/EditText;

    .line 63
    sget v0, Lcom/oculus/horizon/R$id;->nux_username_layout:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360NameFragment;->mUserNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 65
    sget v0, Lcom/oculus/horizon/R$id;->nux_first_name:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360NameFragment;->mFirstNameEdit:Landroid/widget/EditText;

    .line 66
    sget v0, Lcom/oculus/horizon/R$id;->nux_first_name_layout:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360NameFragment;->mFirstNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 68
    sget v0, Lcom/oculus/horizon/R$id;->nux_last_name:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360NameFragment;->mLastNameEdit:Landroid/widget/EditText;

    .line 69
    sget v0, Lcom/oculus/horizon/R$id;->nux_last_name_layout:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360NameFragment;->mLastNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 71
    sget v0, Lcom/oculus/horizon/R$id;->nux_continue:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/ProgressButton;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360NameFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 72
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360NameFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    new-instance v2, Lcom/oculus/horizon/nux360/Nux360NameFragment$1;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/nux360/Nux360NameFragment$1;-><init>(Lcom/oculus/horizon/nux360/Nux360NameFragment;)V

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 80
    sget v0, Lcom/oculus/horizon/R$string;->registration_name_title:I

    invoke-virtual {p0, v1, v0}, Lcom/oculus/horizon/nux360/Nux360NameFragment;->setupToolbar(Landroid/view/View;I)V

    .line 82
    return-object v1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 92
    invoke-super {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onDestroyView()V

    .line 93
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360NameFragment;->mPresenter:Lcom/oculus/horizon/nux360/Nux360NamePresenter;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/nux360/Nux360NamePresenter;->setView(Ljava/lang/Object;)V

    .line 94
    iput-object v1, p0, Lcom/oculus/horizon/nux360/Nux360NameFragment;->mUserNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 95
    iput-object v1, p0, Lcom/oculus/horizon/nux360/Nux360NameFragment;->mUserNameEdit:Landroid/widget/EditText;

    .line 96
    iput-object v1, p0, Lcom/oculus/horizon/nux360/Nux360NameFragment;->mFirstNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 97
    iput-object v1, p0, Lcom/oculus/horizon/nux360/Nux360NameFragment;->mFirstNameEdit:Landroid/widget/EditText;

    .line 98
    iput-object v1, p0, Lcom/oculus/horizon/nux360/Nux360NameFragment;->mLastNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 99
    iput-object v1, p0, Lcom/oculus/horizon/nux360/Nux360NameFragment;->mLastNameEdit:Landroid/widget/EditText;

    .line 100
    iput-object v1, p0, Lcom/oculus/horizon/nux360/Nux360NameFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 101
    return-void
.end method

.method protected onNetworkErrorRetryClicked()V
    .locals 0

    .prologue
    .line 170
    invoke-direct {p0}, Lcom/oculus/horizon/nux360/Nux360NameFragment;->onContinueButtonClicked()V

    .line 171
    return-void
.end method

.method public proceedNext()V
    .locals 1

    .prologue
    .line 120
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360NameFragment;->mFragmentHost:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 121
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360NameFragment;->mFragmentHost:Ljava/lang/Object;

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360NameFragment$NameFragmentHost;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360NameFragment$NameFragmentHost;->nameProceedNext()V

    .line 123
    :cond_0
    return-void
.end method

.method public showFirstNameRequiredError()V
    .locals 2

    .prologue
    .line 149
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360NameFragment;->mFirstNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget v1, Lcom/oculus/horizon/R$string;->registration_real_name_error_first_name:I

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/nux360/Nux360NameFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 150
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360NameFragment;->mFirstNameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 151
    return-void
.end method

.method public showLastNameRequiredError()V
    .locals 2

    .prologue
    .line 160
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360NameFragment;->mLastNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget v1, Lcom/oculus/horizon/R$string;->registration_real_name_error_last_name:I

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/nux360/Nux360NameFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 161
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360NameFragment;->mLastNameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 162
    return-void
.end method

.method public showLoading()V
    .locals 2

    .prologue
    .line 110
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360NameFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 111
    return-void
.end method

.method public showNetworkError()V
    .locals 0

    .prologue
    .line 144
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360NameFragment;->showNetworkErrorDialog()V

    .line 145
    return-void
.end method

.method public showUsernameFormatError(Lcom/oculus/horizon/util/validators/UsernameValidator$Error;)V
    .locals 2

    .prologue
    .line 127
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360NameFragment;->mUserNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360NameFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oculus/horizon/util/validators/UsernameValidator$Error;->getString(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 128
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360NameFragment;->mUserNameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 129
    return-void
.end method

.method public showUsernameTakenError()V
    .locals 2

    .prologue
    .line 133
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360NameFragment;->mUserNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget v1, Lcom/oculus/horizon/R$string;->registration_username_error_unavailable:I

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/nux360/Nux360NameFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 134
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360NameFragment;->mUserNameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 135
    return-void
.end method
