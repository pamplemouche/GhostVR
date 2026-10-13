.class public Lcom/oculus/horizon/tos/TermsOfServiceActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "TermsOfServiceActivity.java"


# instance fields
.field private mAcceptButton:Lcom/oculus/horizon/widget/ProgressButton;

.field private mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mFirstPartySettingsHelper:Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/tos/TermsOfServiceActivity;)V
    .locals 1

    .prologue
    .line 31
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/tos/TermsOfServiceActivity;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/tos/TermsOfServiceActivity;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/tos/TermsOfServiceActivity;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/tos/TermsOfServiceActivity;)V
    .locals 1

    .prologue
    .line 31
    invoke-static {p0}, Lcom/oculus/horizon/api/ApiRequestManager;->$ul_$xXXcom_oculus_horizon_api_ApiRequestManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/api/ApiRequestManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/tos/TermsOfServiceActivity;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-static {p0}, Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper;->$ul_$xXXcom_oculus_horizon_oxygen_settings_util_FirstPartySettingsHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/tos/TermsOfServiceActivity;->mFirstPartySettingsHelper:Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/tos/TermsOfServiceActivity;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/tos/TermsOfServiceActivity;)Lcom/oculus/horizon/widget/ProgressButton;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oculus/horizon/tos/TermsOfServiceActivity;->mAcceptButton:Lcom/oculus/horizon/widget/ProgressButton;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/tos/TermsOfServiceActivity;)Lbolts/Task;
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/oculus/horizon/tos/TermsOfServiceActivity;->onAcceptClickAsync()Lbolts/Task;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/tos/TermsOfServiceActivity;)Lcom/oculus/horizon/api/ApiRequestManager;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oculus/horizon/tos/TermsOfServiceActivity;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    return-object v0
.end method

.method private onAcceptClickAsync()Lbolts/Task;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lbolts/Task",
            "<",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation

    .prologue
    .line 102
    iget-object v0, p0, Lcom/oculus/horizon/tos/TermsOfServiceActivity;->mFirstPartySettingsHelper:Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper;

    const/4 v1, 0x1

    .line 103
    invoke-virtual {v0, p0, v1}, Lcom/oculus/horizon/oxygen/settings/util/FirstPartySettingsHelper;->pushTosAcceptedSettingAsync(Landroid/content/Context;Z)Lbolts/Task;

    move-result-object v0

    new-instance v1, Lcom/oculus/horizon/tos/TermsOfServiceActivity$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/tos/TermsOfServiceActivity$2;-><init>(Lcom/oculus/horizon/tos/TermsOfServiceActivity;)V

    .line 104
    invoke-virtual {v0, v1}, Lbolts/Task;->continueWithTask(Lbolts/Continuation;)Lbolts/Task;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 0

    .prologue
    .line 99
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 42
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 31
    invoke-static {p0, p0}, Lcom/oculus/horizon/tos/TermsOfServiceActivity;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/tos/TermsOfServiceActivity;)V

    .line 46
    sget v0, Lcom/oculus/horizon/R$layout;->terms_of_service_activity:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/tos/TermsOfServiceActivity;->setContentView(I)V

    .line 48
    invoke-virtual {p0}, Lcom/oculus/horizon/tos/TermsOfServiceActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 49
    sget v0, Lcom/oculus/horizon/R$id;->dialog_content:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/tos/TermsOfServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 50
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 51
    const-string v2, "extra_tos_content"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 53
    sget v0, Lcom/oculus/horizon/R$id;->dialog_accept_button:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/tos/TermsOfServiceActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/ProgressButton;

    iput-object v0, p0, Lcom/oculus/horizon/tos/TermsOfServiceActivity;->mAcceptButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 54
    iget-object v0, p0, Lcom/oculus/horizon/tos/TermsOfServiceActivity;->mAcceptButton:Lcom/oculus/horizon/widget/ProgressButton;

    new-instance v1, Lcom/oculus/horizon/tos/TermsOfServiceActivity$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/tos/TermsOfServiceActivity$1;-><init>(Lcom/oculus/horizon/tos/TermsOfServiceActivity;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 75
    iget-object v0, p0, Lcom/oculus/horizon/tos/TermsOfServiceActivity;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    sget-object v1, Lcom/oculus/horizon/logging/TrackingViews$View;->TERMS_OF_SERVICE:Lcom/oculus/horizon/logging/TrackingViews$View;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportView(Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 76
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oculus/horizon/tos/TermsOfServiceActivity;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/ApiRequestManager;->destroy()V

    .line 93
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onDestroy()V

    .line 94
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Lcom/oculus/horizon/tos/TermsOfServiceActivity;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/ApiRequestManager;->pause()V

    .line 87
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onPause()V

    .line 88
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 80
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onResume()V

    .line 81
    iget-object v0, p0, Lcom/oculus/horizon/tos/TermsOfServiceActivity;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/ApiRequestManager;->resume()V

    .line 82
    return-void
.end method
