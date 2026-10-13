.class public Lcom/oculus/horizon/settings/PINSettingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "PINSettingsActivity.java"

# interfaces
.implements Lcom/oculus/horizon/settings/PINSettingsPresenter$View;


# instance fields
.field private mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

.field private mNewPinInput:Lcom/google/android/material/textfield/TextInputLayout;

.field private mPINSettingsPresenter:Lcom/oculus/horizon/settings/PINSettingsPresenter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPasswordInput:Lcom/google/android/material/textfield/TextInputLayout;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/PINSettingsActivity;)V
    .locals 1

    .prologue
    .line 20
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/settings/PINSettingsActivity;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/PINSettingsActivity;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/settings/PINSettingsActivity;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/PINSettingsActivity;)V
    .locals 1

    .prologue
    .line 20
    invoke-static {p0}, Lcom/oculus/horizon/settings/PINSettingsPresenter;->$ul_$xXXcom_oculus_horizon_settings_PINSettingsPresenter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/settings/PINSettingsPresenter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/PINSettingsActivity;->mPINSettingsPresenter:Lcom/oculus/horizon/settings/PINSettingsPresenter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/settings/PINSettingsActivity;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/oculus/horizon/settings/PINSettingsActivity;->mNewPinInput:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/settings/PINSettingsActivity;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/oculus/horizon/settings/PINSettingsActivity;->mPasswordInput:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/settings/PINSettingsActivity;)Lcom/oculus/horizon/settings/PINSettingsPresenter;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/oculus/horizon/settings/PINSettingsActivity;->mPINSettingsPresenter:Lcom/oculus/horizon/settings/PINSettingsPresenter;

    return-object v0
.end method


# virtual methods
.method public clearErrors()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 91
    iget-object v0, p0, Lcom/oculus/horizon/settings/PINSettingsActivity;->mPasswordInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 92
    iget-object v0, p0, Lcom/oculus/horizon/settings/PINSettingsActivity;->mNewPinInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 93
    return-void
.end method

.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 112
    const/16 v0, 0x138b

    if-eq p1, v0, :cond_1

    .line 127
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    if-eqz p2, :cond_0

    .line 122
    iget-object v0, p0, Lcom/oculus/horizon/settings/PINSettingsActivity;->mNewPinInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/settings/PINSettingsActivity;->mPasswordInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 123
    iget-object v0, p0, Lcom/oculus/horizon/settings/PINSettingsActivity;->mPINSettingsPresenter:Lcom/oculus/horizon/settings/PINSettingsPresenter;

    iget-object v1, p0, Lcom/oculus/horizon/settings/PINSettingsActivity;->mNewPinInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 124
    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/settings/PINSettingsActivity;->mPasswordInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 125
    invoke-virtual {v2}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    .line 123
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/settings/PINSettingsPresenter;->performPINChange(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 69
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/PINSettingsActivity;->setResult(I)V

    .line 70
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 71
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 32
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 34
    sget v0, Lcom/oculus/horizon/R$layout;->settings_pin_activity:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/PINSettingsActivity;->setContentView(I)V

    .line 20
    invoke-static {p0, p0}, Lcom/oculus/horizon/settings/PINSettingsActivity;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/PINSettingsActivity;)V

    .line 38
    iget-object v0, p0, Lcom/oculus/horizon/settings/PINSettingsActivity;->mPINSettingsPresenter:Lcom/oculus/horizon/settings/PINSettingsPresenter;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/settings/PINSettingsPresenter;->setView(Lcom/oculus/horizon/settings/PINSettingsPresenter$View;)V

    .line 40
    sget v0, Lcom/oculus/horizon/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/PINSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/PINSettingsActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 41
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PINSettingsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 42
    sget v1, Lcom/oculus/horizon/R$string;->settings_reset_pin_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 43
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 44
    sget v1, Lcom/oculus/horizon/R$drawable;->close_button:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 46
    sget v0, Lcom/oculus/horizon/R$id;->password:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/PINSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/oculus/horizon/settings/PINSettingsActivity;->mPasswordInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 47
    sget v0, Lcom/oculus/horizon/R$id;->pin:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/PINSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/oculus/horizon/settings/PINSettingsActivity;->mNewPinInput:Lcom/google/android/material/textfield/TextInputLayout;

    .line 49
    sget v0, Lcom/oculus/horizon/R$id;->save_button:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/PINSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/ProgressButton;

    iput-object v0, p0, Lcom/oculus/horizon/settings/PINSettingsActivity;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 50
    iget-object v0, p0, Lcom/oculus/horizon/settings/PINSettingsActivity;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    new-instance v1, Lcom/oculus/horizon/settings/PINSettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/settings/PINSettingsActivity$1;-><init>(Lcom/oculus/horizon/settings/PINSettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 63
    iget-object v0, p0, Lcom/oculus/horizon/settings/PINSettingsActivity;->mPINSettingsPresenter:Lcom/oculus/horizon/settings/PINSettingsPresenter;

    invoke-virtual {v0}, Lcom/oculus/horizon/settings/PINSettingsPresenter;->onDestroy()V

    .line 64
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 65
    return-void
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PINSettingsActivity;->onBackPressed()V

    .line 76
    const/4 v0, 0x1

    return v0
.end method

.method public reauthRequired()V
    .locals 2

    .prologue
    .line 131
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oculus/horizon/twofac/SecuredActionActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 132
    const/16 v1, 0x138b

    invoke-virtual {p0, v0, v1}, Lcom/oculus/horizon/settings/PINSettingsActivity;->startActivityForResult(Landroid/content/Intent;I)V

    .line 133
    return-void
.end method

.method public requestPasswordFieldFocus()V
    .locals 1

    .prologue
    .line 97
    iget-object v0, p0, Lcom/oculus/horizon/settings/PINSettingsActivity;->mPasswordInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->requestFocus()Z

    .line 98
    return-void
.end method

.method public requestPinFieldFocus()V
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/oculus/horizon/settings/PINSettingsActivity;->mNewPinInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->requestFocus()Z

    .line 103
    return-void
.end method

.method public setLoading(Z)V
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/oculus/horizon/settings/PINSettingsActivity;->mContinueButton:Lcom/oculus/horizon/widget/ProgressButton;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 108
    return-void
.end method

.method public setPasswordFieldError(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/oculus/horizon/settings/PINSettingsActivity;->mPasswordInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 82
    return-void
.end method

.method public setPinFieldError(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oculus/horizon/settings/PINSettingsActivity;->mNewPinInput:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, p1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 87
    return-void
.end method
