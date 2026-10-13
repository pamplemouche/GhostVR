.class public Lcom/oculus/horizon/settings/PrivacyPolicyFragment;
.super Landroidx/fragment/app/Fragment;
.source "PrivacyPolicyFragment.java"


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

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/PrivacyPolicyFragment;)V
    .locals 1

    .prologue
    .line 32
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/settings/PrivacyPolicyFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/PrivacyPolicyFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/settings/PrivacyPolicyFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/PrivacyPolicyFragment;)V
    .locals 1

    .prologue
    .line 32
    invoke-static {p0}, Lcom/oculus/horizon/api/ApiRequestManager;->$ul_$xXXcom_oculus_horizon_api_ApiRequestManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/api/ApiRequestManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/PrivacyPolicyFragment;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-static {p0}, Lcom/oculus/locale/LocaleModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_util_Locale$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/PrivacyPolicyFragment;->mLocaleProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/PrivacyPolicyFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 40
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 32
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PrivacyPolicyFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/settings/PrivacyPolicyFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/PrivacyPolicyFragment;)V

    .line 42
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 47
    invoke-super {p0, p3}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    sget v0, Lcom/oculus/horizon/R$layout;->settings_privacy_policy_fragment:I

    invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 50
    sget v0, Lcom/oculus/horizon/R$id;->content_empty_view:I

    invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/EmptyErrorView;

    .line 52
    sget v1, Lcom/oculus/horizon/R$id;->privacy_policy_content:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 53
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 55
    sget v2, Lcom/oculus/horizon/R$id;->content_loading_indicator:I

    .line 56
    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    .line 57
    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 59
    iget-object v5, p0, Lcom/oculus/horizon/settings/PrivacyPolicyFragment;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    new-instance v6, Lcom/oculus/horizon/api/privacy/PrivacyPolicyRequest;

    iget-object v3, p0, Lcom/oculus/horizon/settings/PrivacyPolicyFragment;->mLocaleProvider:Ljavax/inject/Provider;

    .line 60
    invoke-interface {v3}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/Locale;

    invoke-virtual {v3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v6, v3}, Lcom/oculus/horizon/api/privacy/PrivacyPolicyRequest;-><init>(Ljava/lang/String;)V

    new-instance v3, Lcom/oculus/horizon/settings/PrivacyPolicyFragment$1;

    invoke-direct {v3, p0, v2, v1, v0}, Lcom/oculus/horizon/settings/PrivacyPolicyFragment$1;-><init>(Lcom/oculus/horizon/settings/PrivacyPolicyFragment;Landroid/widget/ProgressBar;Landroid/widget/TextView;Lcom/oculus/horizon/widget/EmptyErrorView;)V

    .line 59
    invoke-virtual {v5, v6, v3}, Lcom/oculus/horizon/api/ApiRequestManager;->post(Lcom/oculus/http/core/base/ApiRequest;Lcom/oculus/http/core/base/ApiCallback;)V

    .line 75
    return-object v4
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 98
    iget-object v0, p0, Lcom/oculus/horizon/settings/PrivacyPolicyFragment;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/ApiRequestManager;->destroy()V

    .line 99
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    .line 100
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/oculus/horizon/settings/PrivacyPolicyFragment;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/ApiRequestManager;->pause()V

    .line 93
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    .line 94
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 86
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    .line 87
    iget-object v0, p0, Lcom/oculus/horizon/settings/PrivacyPolicyFragment;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/ApiRequestManager;->resume()V

    .line 88
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 80
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 81
    iget-object v0, p0, Lcom/oculus/horizon/settings/PrivacyPolicyFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    sget-object v1, Lcom/oculus/horizon/logging/TrackingViews$View;->SETTINGS_PRIVACY:Lcom/oculus/horizon/logging/TrackingViews$View;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportView(Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 82
    return-void
.end method
