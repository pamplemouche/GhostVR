.class public Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;
.super Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;
.source "Nux360FBLoginCreateFragment.java"

# interfaces
.implements Lcom/oculus/horizon/nux360/Nux360UserNamePresenter$UserNameView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment$FBLoginCreateFragmentHost;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/oculus/horizon/nux360/base/Nux360BaseFragment",
        "<",
        "Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment$FBLoginCreateFragmentHost;",
        ">;",
        "Lcom/oculus/horizon/nux360/Nux360UserNamePresenter$UserNameView;"
    }
.end annotation


# instance fields
.field private mAvatarView:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

.field private mFBLoginData:Lcom/oculus/horizon/nux360/Nux360FBLoginDataHolder;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPresenter:Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mUserNameEdit:Landroid/widget/EditText;

.field private mUserNameLayout:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;)V
    .locals 1

    .prologue
    .line 28
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;)V
    .locals 1

    .prologue
    .line 28
    invoke-static {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginDataHolder;->$ul_$xXXcom_oculus_horizon_nux360_Nux360FBLoginDataHolder$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/nux360/Nux360FBLoginDataHolder;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->mFBLoginData:Lcom/oculus/horizon/nux360/Nux360FBLoginDataHolder;

    invoke-static {p0}, Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;->$ul_$xXXcom_oculus_horizon_nux360_Nux360UserNamePresenter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->mPresenter:Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->onContinueButtonClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->mFragmentHost:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->mFragmentHost:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;)Lcom/oculus/horizon/logging/OculusLogger;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-object v0
.end method

.method private isUsingSuggestedUsername()Z
    .locals 2

    .prologue
    .line 164
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->mFBLoginData:Lcom/oculus/horizon/nux360/Nux360FBLoginDataHolder;

    invoke-virtual {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginDataHolder;->getData()Lcom/oculus/horizon/nux360/FBLoginData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/nux360/FBLoginData;->getUsernameSuggestions()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 165
    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->mUserNameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/common/collect/ImmutableList;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private onContinueButtonClicked()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->mPresenter:Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;

    iget-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->mUserNameEdit:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;->setUsername(Ljava/lang/String;)V

    .line 160
    const-string v0, "set_username_attempt"

    invoke-direct {p0, v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->reportFacebookLoginSetUsernameEvent(Ljava/lang/String;)V

    .line 161
    return-void
.end method

.method private reportFacebookLoginSetUsernameEvent(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 169
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-direct {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->isUsingSuggestedUsername()Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportFacebookLoginSetUsernameEvent(Ljava/lang/String;Z)V

    .line 170
    return-void
.end method


# virtual methods
.method public clearUsernameError()V
    .locals 2

    .prologue
    .line 131
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->mUserNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 132
    return-void
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 174
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->FB_LOGIN_CREATE_ACCOUNT:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public hideLoading()V
    .locals 2

    .prologue
    .line 141
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 142
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 50
    invoke-super {p0, p1}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 28
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;)V

    .line 52
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 59
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$style;->Theme_Nux360_Light:I

    invoke-static {v0, p1, v1}, Lcom/oculus/horizon/util/ThemeUtils;->getThemedInflater(Landroid/content/Context;Landroid/view/LayoutInflater;I)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$layout;->nux360_fblogin_create_account:I

    .line 60
    invoke-virtual {v0, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 62
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->mPresenter:Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;->setView(Ljava/lang/Object;)V

    .line 64
    sget v0, Lcom/oculus/horizon/R$id;->edit_username:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->mUserNameEdit:Landroid/widget/EditText;

    .line 66
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->mFBLoginData:Lcom/oculus/horizon/nux360/Nux360FBLoginDataHolder;

    invoke-virtual {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginDataHolder;->getData()Lcom/oculus/horizon/nux360/FBLoginData;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/nux360/FBLoginData;->getUsernameSuggestions()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 67
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 68
    iget-object v2, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->mUserNameEdit:Landroid/widget/EditText;

    invoke-virtual {v0, v3}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 70
    :cond_0
    sget v0, Lcom/oculus/horizon/R$id;->edit_username_layout:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->mUserNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 72
    sget v0, Lcom/oculus/horizon/R$id;->create_and_continue_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/ProgressButton;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 73
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    new-instance v2, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment$1;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment$1;-><init>(Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;)V

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 81
    sget v0, Lcom/oculus/horizon/R$id;->create_account_name:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 82
    iget-object v2, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->mFBLoginData:Lcom/oculus/horizon/nux360/Nux360FBLoginDataHolder;

    invoke-virtual {v2}, Lcom/oculus/horizon/nux360/Nux360FBLoginDataHolder;->getData()Lcom/oculus/horizon/nux360/FBLoginData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oculus/horizon/nux360/FBLoginData;->getRealName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    sget v0, Lcom/oculus/horizon/R$id;->has_account:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 85
    new-instance v2, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment$2;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment$2;-><init>(Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    sget v0, Lcom/oculus/horizon/R$id;->avatar:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->mAvatarView:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 98
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->mAvatarView:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v2, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->mFBLoginData:Lcom/oculus/horizon/nux360/Nux360FBLoginDataHolder;

    invoke-virtual {v2}, Lcom/oculus/horizon/nux360/Nux360FBLoginDataHolder;->getData()Lcom/oculus/horizon/nux360/FBLoginData;

    move-result-object v2

    invoke-virtual {v2}, Lcom/oculus/horizon/nux360/FBLoginData;->getProfilePicUri()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 100
    sget v0, Lcom/oculus/horizon/R$string;->common_fblogin_create_account:I

    invoke-virtual {p0, v1, v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->setupToolbar(Landroid/view/View;I)V

    .line 102
    return-object v1
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 107
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->mPresenter:Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/nux360/Nux360UserNamePresenter;->setView(Ljava/lang/Object;)V

    .line 108
    iput-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->mUserNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    .line 109
    iput-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->mUserNameEdit:Landroid/widget/EditText;

    .line 110
    iput-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 111
    iput-object v1, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->mAvatarView:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 112
    invoke-super {p0}, Lcom/oculus/horizon/nux360/base/Nux360BaseFragment;->onDestroyView()V

    .line 113
    return-void
.end method

.method public proceedNext()V
    .locals 1

    .prologue
    .line 146
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->mFragmentHost:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 147
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->mFragmentHost:Ljava/lang/Object;

    check-cast v0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment$FBLoginCreateFragmentHost;

    invoke-interface {v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment$FBLoginCreateFragmentHost;->introFBLoginPinNext()V

    .line 149
    :cond_0
    const-string v0, "set_username_success"

    invoke-direct {p0, v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->reportFacebookLoginSetUsernameEvent(Ljava/lang/String;)V

    .line 150
    return-void
.end method

.method public showLoading()V
    .locals 2

    .prologue
    .line 136
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 137
    return-void
.end method

.method public showNetworkError()V
    .locals 1

    .prologue
    .line 154
    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->showNetworkErrorDialog()V

    .line 155
    const-string v0, "set_username_failure"

    invoke-direct {p0, v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->reportFacebookLoginSetUsernameEvent(Ljava/lang/String;)V

    .line 156
    return-void
.end method

.method public showUsernameFormatError(Lcom/oculus/horizon/util/validators/UsernameValidator$Error;)V
    .locals 2

    .prologue
    .line 117
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->mUserNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {p0}, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/oculus/horizon/util/validators/UsernameValidator$Error;->getString(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->mUserNameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 119
    const-string v0, "set_username_failure"

    invoke-direct {p0, v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->reportFacebookLoginSetUsernameEvent(Ljava/lang/String;)V

    .line 120
    return-void
.end method

.method public showUsernameTakenError()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->mUserNameLayout:Lcom/google/android/material/textfield/TextInputLayout;

    sget v1, Lcom/oculus/horizon/R$string;->registration_username_error_unavailable:I

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 125
    iget-object v0, p0, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->mUserNameEdit:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 126
    const-string v0, "set_username_failure"

    invoke-direct {p0, v0}, Lcom/oculus/horizon/nux360/Nux360FBLoginCreateFragment;->reportFacebookLoginSetUsernameEvent(Ljava/lang/String;)V

    .line 127
    return-void
.end method
