.class public Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ConfirmPasswordSettingsActivity.java"

# interfaces
.implements Lcom/oculus/horizon/legacy/social/MeManager$Listener;


# instance fields
.field private mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

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

.field private mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOVRAuth:Lcom/oculus/authapi/OVRAuth;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPassword:Lcom/google/android/material/textfield/TextInputLayout;

.field private mResetPasswordButton:Landroid/widget/TextView;

.field private mSaveButton:Lcom/oculus/horizon/widget/ProgressButton;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;)V
    .locals 1

    .prologue
    .line 38
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;)V
    .locals 1

    .prologue
    .line 38
    invoke-static {p0}, Lcom/oculus/horizon/api/ApiRequestManager;->$ul_$xXXcom_oculus_horizon_api_ApiRequestManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/api/ApiRequestManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-static {p0}, Lcom/oculus/horizon/legacy/social/MeManager;->$ul_$xXXcom_oculus_horizon_legacy_social_MeManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/legacy/social/MeManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-static {p0}, Lcom/oculus/authapi/inject/OVRAuthModule;->$ul_$xXXcom_oculus_authapi_OVRAuth$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/authapi/OVRAuth;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->mOVRAuth:Lcom/oculus/authapi/OVRAuth;

    invoke-static {p0}, Lcom/oculus/locale/LocaleModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_util_Locale$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->mLocaleProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->onResetPasswordButtonClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;)Lcom/oculus/horizon/logging/OculusLogger;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;)Lcom/oculus/authapi/OVRAuth;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->mOVRAuth:Lcom/oculus/authapi/OVRAuth;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;)Lcom/oculus/horizon/legacy/social/MeManager;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;)Lcom/oculus/horizon/widget/ProgressButton;
    .locals 1

    .prologue
    .line 38
    iget-object v0, p0, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->mSaveButton:Lcom/oculus/horizon/widget/ProgressButton;

    return-object v0
.end method

.method static synthetic access$500(Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;Lcom/oculus/http/core/base/ApiError;)V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0, p1}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->onApiError(Lcom/oculus/http/core/base/ApiError;)V

    return-void
.end method

.method private onApiError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->mSaveButton:Lcom/oculus/horizon/widget/ProgressButton;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 225
    const/16 v0, 0x19d

    invoke-virtual {p1, v0}, Lcom/oculus/http/core/base/ApiError;->fbErrorCodeEquals(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 226
    iget-object v0, p0, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->mPassword:Lcom/google/android/material/textfield/TextInputLayout;

    sget v1, Lcom/oculus/horizon/R$string;->settings_password_error_incorrect:I

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 233
    :goto_0
    return-void

    .line 227
    :cond_0
    iget-object v0, p1, Lcom/oculus/http/core/base/ApiError;->type:Lcom/oculus/http/core/base/ApiError$Type;

    sget-object v1, Lcom/oculus/http/core/base/ApiError$Type;->NETWORK_ERROR:Lcom/oculus/http/core/base/ApiError$Type;

    if-ne v0, v1, :cond_1

    .line 228
    iget-object v0, p0, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->mPassword:Lcom/google/android/material/textfield/TextInputLayout;

    sget v1, Lcom/oculus/horizon/R$string;->common_error_network:I

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 230
    :cond_1
    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->setResult(I)V

    .line 231
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->finish()V

    goto :goto_0
.end method

.method private onChangePinRequest(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 206
    iget-object v0, p0, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    new-instance v1, Lcom/oculus/horizon/api/profile/ChangePinRequest;

    invoke-direct {v1, p2, p1}, Lcom/oculus/horizon/api/profile/ChangePinRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity$4;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity$4;-><init>(Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;)V

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/api/ApiRequestManager;->post(Lcom/oculus/http/core/base/ApiRequest;Lcom/oculus/http/core/base/ApiCallback;)V

    .line 221
    return-void
.end method

.method private onResetPasswordButtonClicked()V
    .locals 3

    .prologue
    .line 104
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    iget-object v0, p0, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->mLocaleProvider:Ljavax/inject/Provider;

    .line 105
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    invoke-static {v0}, Lcom/oculus/horizon/util/IDWebHelper;->getResetPasswordUri(Ljava/util/Locale;)Landroid/net/Uri;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 106
    invoke-virtual {p0, v1}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->startActivity(Landroid/content/Intent;)V

    .line 107
    return-void
.end method

.method private updateDisplayToRoadblockLayout()V
    .locals 2

    .prologue
    .line 110
    sget v0, Lcom/oculus/horizon/R$id;->save_button:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/ProgressButton;

    .line 111
    sget v1, Lcom/oculus/horizon/R$string;->common_continue:I

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setText(Ljava/lang/CharSequence;)V

    .line 112
    sget v0, Lcom/oculus/horizon/R$id;->forgot_password_button:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 113
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 114
    new-instance v1, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity$3;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity$3;-><init>(Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 127
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 184
    const/16 v0, 0x1388

    if-eq p1, v0, :cond_1

    .line 198
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    if-eqz p2, :cond_0

    .line 194
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 195
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->finish()V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 150
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->setResult(I)V

    .line 151
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 152
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 60
    sget v0, Lcom/oculus/horizon/R$layout;->settings_confirm_password_activity:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->setContentView(I)V

    .line 38
    invoke-static {p0, p0}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;)V

    .line 64
    sget v0, Lcom/oculus/horizon/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 65
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    .line 66
    sget v1, Lcom/oculus/horizon/R$string;->settings_password_title:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 67
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 68
    sget v1, Lcom/oculus/horizon/R$drawable;->close_button:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setHomeAsUpIndicator(I)V

    .line 70
    sget v0, Lcom/oculus/horizon/R$id;->save_button:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/ProgressButton;

    iput-object v0, p0, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->mSaveButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 71
    iget-object v0, p0, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->mSaveButton:Lcom/oculus/horizon/widget/ProgressButton;

    new-instance v1, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity$1;-><init>(Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 79
    sget v0, Lcom/oculus/horizon/R$id;->password:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->mPassword:Lcom/google/android/material/textfield/TextInputLayout;

    .line 80
    sget v0, Lcom/oculus/horizon/R$id;->forgot_password_button:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->mResetPasswordButton:Landroid/widget/TextView;

    .line 81
    iget-object v0, p0, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->mResetPasswordButton:Landroid/widget/TextView;

    new-instance v1, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity$2;-><init>(Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 89
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 90
    const-string v1, "extra_pin"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v1

    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 92
    const-string v1, "extra_user_roadblocked"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    sget-object v1, Lcom/oculus/horizon/logging/TrackingViews$View;->SETTINGS_CONFIRM_PASSWORD:Lcom/oculus/horizon/logging/TrackingViews$View;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportView(Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 100
    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/legacy/social/MeManager;->registerListener(Lcom/oculus/horizon/legacy/social/MeManager$Listener;)V

    .line 101
    return-void

    .line 95
    :cond_0
    invoke-direct {p0}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->updateDisplayToRoadblockLayout()V

    .line 96
    iget-object v0, p0, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    sget-object v1, Lcom/oculus/horizon/logging/TrackingViews$View;->ROADBLOCK_CONFIRM_PASSWORD:Lcom/oculus/horizon/logging/TrackingViews$View;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportView(Lcom/oculus/horizon/logging/TrackingViews$View;)V

    goto :goto_0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 143
    iget-object v0, p0, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/ApiRequestManager;->destroy()V

    .line 144
    iget-object v0, p0, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->mMeManager:Lcom/oculus/horizon/legacy/social/MeManager;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/legacy/social/MeManager;->unregisterListener(Lcom/oculus/horizon/legacy/social/MeManager$Listener;)V

    .line 145
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 146
    return-void
.end method

.method public onMyUserDataRefreshError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 0

    .prologue
    .line 202
    invoke-direct {p0, p1}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->onApiError(Lcom/oculus/http/core/base/ApiError;)V

    .line 203
    return-void
.end method

.method public onMyUserDataRefreshed(Lcom/oculus/horizon/api/common/user/User;)V
    .locals 1
    .param p1    # Lcom/oculus/horizon/api/common/user/User;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 176
    if-eqz p1, :cond_0

    iget-object v0, p1, Lcom/oculus/horizon/api/common/user/User;->is_pin_set:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oculus/horizon/api/common/user/User;->is_pin_set:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 177
    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->setResult(I)V

    .line 178
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->finish()V

    .line 180
    :cond_0
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/ApiRequestManager;->pause()V

    .line 138
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    .line 139
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 131
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    .line 132
    iget-object v0, p0, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/ApiRequestManager;->resume()V

    .line 133
    return-void
.end method

.method protected onSaveInput()V
    .locals 4

    .prologue
    .line 161
    iget-object v0, p0, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->mPassword:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 162
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 163
    iget-object v0, p0, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->mPassword:Lcom/google/android/material/textfield/TextInputLayout;

    const-string v1, ""

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 172
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 168
    iget-object v2, p0, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->mSaveButton:Lcom/oculus/horizon/widget/ProgressButton;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 169
    const-string v2, "extra_pin"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 170
    const-string v2, "extra_pin"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1, v0}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->onChangePinRequest(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onSupportNavigateUp()Z
    .locals 1

    .prologue
    .line 156
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/ConfirmPasswordSettingsActivity;->onBackPressed()V

    .line 157
    const/4 v0, 0x1

    return v0
.end method
