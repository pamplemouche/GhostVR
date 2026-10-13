.class public Lcom/oculus/horizon/settings/PasswordSettingsFragment;
.super Lcom/oculus/horizon/settings/SubSettingsBaseFragment;
.source "PasswordSettingsFragment.java"

# interfaces
.implements Lcom/oculus/horizon/common/BackPressListener;
.implements Lcom/oculus/horizon/settings/PasswordSettingsPresenter$View;


# instance fields
.field private mLocaleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mNewPasswordInputField:Lcom/google/android/material/textfield/TextInputLayout;

.field private mOldPasswordInputField:Lcom/google/android/material/textfield/TextInputLayout;

.field private mPasswordSettingsPresenter:Lcom/oculus/horizon/settings/PasswordSettingsPresenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mRetypeNewPasswordInputField:Lcom/google/android/material/textfield/TextInputLayout;

.field private mSaveButton:Lcom/oculus/horizon/widget/ProgressButton;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/PasswordSettingsFragment;)V
    .locals 1

    .prologue
    .line 27
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/PasswordSettingsFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/settings/PasswordSettingsFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/PasswordSettingsFragment;)V
    .locals 1

    .prologue
    .line 27
    invoke-static {p0}, Lcom/oculus/horizon/settings/PasswordSettingsPresenter;->$ul_$xXXcom_oculus_horizon_settings_PasswordSettingsPresenter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/settings/PasswordSettingsPresenter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->mPasswordSettingsPresenter:Lcom/oculus/horizon/settings/PasswordSettingsPresenter;

    invoke-static {p0}, Lcom/oculus/locale/LocaleModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_util_Locale$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->mLocaleProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/settings/PasswordSettingsFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->mOldPasswordInputField:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/settings/PasswordSettingsFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->mNewPasswordInputField:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/settings/PasswordSettingsFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->mRetypeNewPasswordInputField:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/settings/PasswordSettingsFragment;)Lcom/oculus/horizon/settings/PasswordSettingsPresenter;
    .locals 1

    .prologue
    .line 27
    iget-object v0, p0, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->mPasswordSettingsPresenter:Lcom/oculus/horizon/settings/PasswordSettingsPresenter;

    return-object v0
.end method


# virtual methods
.method public clearErrors()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 140
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->setOldPasswordFieldError(Ljava/lang/String;)V

    .line 141
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->setNewPasswordFieldError(Ljava/lang/String;)V

    .line 142
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->setRetypeNewPasswordFieldError(Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public finish()V
    .locals 1

    .prologue
    .line 183
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    .line 184
    return-void
.end method

.method protected getTitleBarTextResourceId()I
    .locals 1

    .prologue
    .line 115
    sget v0, Lcom/oculus/horizon/R$string;->settings_reset_password_title:I

    return v0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->SETTINGS_PASSWORD:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 188
    const/16 v0, 0x138b

    if-eq p1, v0, :cond_1

    .line 206
    :cond_0
    :goto_0
    return-void

    .line 193
    :cond_1
    if-eqz p2, :cond_0

    .line 198
    iget-object v0, p0, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->mOldPasswordInputField:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->mNewPasswordInputField:Lcom/google/android/material/textfield/TextInputLayout;

    .line 199
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->mRetypeNewPasswordInputField:Lcom/google/android/material/textfield/TextInputLayout;

    .line 200
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->mPasswordSettingsPresenter:Lcom/oculus/horizon/settings/PasswordSettingsPresenter;

    iget-object v1, p0, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->mOldPasswordInputField:Lcom/google/android/material/textfield/TextInputLayout;

    .line 202
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->mNewPasswordInputField:Lcom/google/android/material/textfield/TextInputLayout;

    .line 203
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->mRetypeNewPasswordInputField:Lcom/google/android/material/textfield/TextInputLayout;

    .line 204
    invoke-virtual {v3}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 201
    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/settings/PasswordSettingsPresenter;->onSaveInput(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 42
    invoke-super {p0, p1}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 27
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/PasswordSettingsFragment;)V

    .line 44
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 49
    sget v0, Lcom/oculus/horizon/R$layout;->settings_password_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 0

    .prologue
    .line 86
    invoke-super {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onDestroyView()V

    .line 87
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 108
    iget-object v0, p0, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->mPasswordSettingsPresenter:Lcom/oculus/horizon/settings/PasswordSettingsPresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/settings/PasswordSettingsPresenter;->onPause()V

    .line 109
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->getView()Landroid/view/View;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/horizon/util/KeyboardUtils;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 110
    invoke-super {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onPause()V

    .line 111
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 96
    invoke-super {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onResume()V

    .line 97
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->updateTitleBarText()V

    .line 99
    iget-object v0, p0, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->mOldPasswordInputField:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->requestFocus()Z

    .line 100
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->mOldPasswordInputField:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/horizon/util/KeyboardUtils;->showKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 103
    iget-object v0, p0, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->mPasswordSettingsPresenter:Lcom/oculus/horizon/settings/PasswordSettingsPresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/settings/PasswordSettingsPresenter;->onResume()V

    .line 104
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 54
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 56
    iget-object v0, p0, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->mPasswordSettingsPresenter:Lcom/oculus/horizon/settings/PasswordSettingsPresenter;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/settings/PasswordSettingsPresenter;->setView(Lcom/oculus/horizon/settings/PasswordSettingsPresenter$View;)V

    .line 58
    sget v0, Lcom/oculus/horizon/R$id;->save_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/ProgressButton;

    iput-object v0, p0, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->mSaveButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 59
    iget-object v0, p0, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->mSaveButton:Lcom/oculus/horizon/widget/ProgressButton;

    new-instance v1, Lcom/oculus/horizon/settings/PasswordSettingsFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/settings/PasswordSettingsFragment$1;-><init>(Lcom/oculus/horizon/settings/PasswordSettingsFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 70
    sget v0, Lcom/oculus/horizon/R$id;->forgot_password:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/oculus/horizon/settings/PasswordSettingsFragment$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/settings/PasswordSettingsFragment$2;-><init>(Lcom/oculus/horizon/settings/PasswordSettingsFragment;)V

    .line 71
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    sget v0, Lcom/oculus/horizon/R$id;->old_password:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->mOldPasswordInputField:Lcom/google/android/material/textfield/TextInputLayout;

    .line 80
    sget v0, Lcom/oculus/horizon/R$id;->new_password:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->mNewPasswordInputField:Lcom/google/android/material/textfield/TextInputLayout;

    .line 81
    sget v0, Lcom/oculus/horizon/R$id;->retype_new_password:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->mRetypeNewPasswordInputField:Lcom/google/android/material/textfield/TextInputLayout;

    .line 82
    return-void
.end method

.method public openPasswordResetWebPage()V
    .locals 3

    .prologue
    .line 171
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v0, p0, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->mLocaleProvider:Ljavax/inject/Provider;

    .line 172
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    invoke-static {v0}, Lcom/oculus/horizon/util/IDWebHelper;->getResetPasswordUri(Ljava/util/Locale;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 173
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->startActivity(Landroid/content/Intent;)V

    .line 174
    return-void
.end method

.method public reauthRequired()V
    .locals 3

    .prologue
    .line 165
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/oculus/horizon/twofac/SecuredActionActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 166
    const/16 v1, 0x138b

    invoke-virtual {p0, v0, v1}, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 167
    return-void
.end method

.method public requestNewPasswordFocus()V
    .locals 2

    .prologue
    .line 153
    iget-object v0, p0, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->mNewPasswordInputField:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->requestFocus()Z

    .line 154
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->mNewPasswordInputField:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/horizon/util/KeyboardUtils;->showKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 155
    return-void
.end method

.method public requestOldPasswordFocus()V
    .locals 2

    .prologue
    .line 147
    iget-object v0, p0, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->mOldPasswordInputField:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->requestFocus()Z

    .line 148
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->mOldPasswordInputField:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/horizon/util/KeyboardUtils;->showKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 149
    return-void
.end method

.method public requestRetypeNewPasswordFocus()V
    .locals 2

    .prologue
    .line 159
    iget-object v0, p0, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->mRetypeNewPasswordInputField:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->requestFocus()Z

    .line 160
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->mRetypeNewPasswordInputField:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/horizon/util/KeyboardUtils;->showKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 161
    return-void
.end method

.method public setLoading(Z)V
    .locals 1

    .prologue
    .line 178
    iget-object v0, p0, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->mSaveButton:Lcom/oculus/horizon/widget/ProgressButton;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 179
    return-void
.end method

.method public setNewPasswordFieldError(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->mNewPasswordInputField:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 131
    return-void
.end method

.method public setOldPasswordFieldError(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 125
    iget-object v0, p0, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->mOldPasswordInputField:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 126
    return-void
.end method

.method public setRetypeNewPasswordFieldError(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/oculus/horizon/settings/PasswordSettingsFragment;->mRetypeNewPasswordInputField:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 136
    return-void
.end method
