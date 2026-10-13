.class public Lcom/oculus/horizon/settings/LegalWebViewFragment;
.super Landroidx/fragment/app/Fragment;
.source "LegalWebViewFragment.java"


# instance fields
.field private $ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

.field private mLocaleProvider:Ljavax/inject/Provider;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation
.end field

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation build Lcom/facebook/ultralight/Inject;
    .end annotation
.end field

.field private mTrackingView:Lcom/oculus/horizon/logging/TrackingViews$View;

.field private mUrl:Ljava/lang/String;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/LegalWebViewFragment;)V
    .locals 1

    .prologue
    .line 26
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/settings/LegalWebViewFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/LegalWebViewFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/settings/LegalWebViewFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/LegalWebViewFragment;)V
    .locals 2

    .prologue
    .line 26
    new-instance v0, Lcom/facebook/inject/InjectionContext;

    const/4 v1, 0x0

    invoke-direct {v0, v1, p0}, Lcom/facebook/inject/InjectionContext;-><init>(ILcom/facebook/inject/InjectorLike;)V

    iput-object v0, p1, Lcom/oculus/horizon/settings/LegalWebViewFragment;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {p0}, Lcom/oculus/locale/LocaleModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_util_Locale$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/LegalWebViewFragment;->mLocaleProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/LegalWebViewFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    return-void
.end method

.method private static assembleUAExtension(Ljava/lang/String;Ljava/lang/String;ILjava/util/Locale;)Ljava/lang/String;
    .locals 3

    .prologue
    .line 103
    const-string v0, "[FBAN/%s;FBAV/%s;FBBV/%d;FBLC/%s]"

    .line 104
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p3}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v2

    .line 103
    invoke-static {v0, p0, p1, v1, v2}, Lcom/facebook/common/util/StringLocaleUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static createArgs(Ljava/lang/String;Lcom/oculus/horizon/logging/TrackingViews$View;)Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 39
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 40
    const-string v1, "url"

    invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 41
    const-string v1, "tracking_view"

    invoke-virtual {p1}, Lcom/oculus/horizon/logging/TrackingViews$View;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 42
    return-object v0
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 47
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 26
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/LegalWebViewFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/settings/LegalWebViewFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/LegalWebViewFragment;)V

    .line 49
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/LegalWebViewFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 50
    if-eqz v1, :cond_0

    .line 51
    const-string v0, "url"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "url"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lcom/oculus/horizon/settings/LegalWebViewFragment;->mUrl:Ljava/lang/String;

    .line 52
    const-string v0, "tracking_view"

    .line 53
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    const-string v0, "tracking_view"

    .line 54
    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/horizon/logging/TrackingViews$View;->valueOf(Ljava/lang/String;)Lcom/oculus/horizon/logging/TrackingViews$View;

    move-result-object v0

    :goto_1
    iput-object v0, p0, Lcom/oculus/horizon/settings/LegalWebViewFragment;->mTrackingView:Lcom/oculus/horizon/logging/TrackingViews$View;

    .line 57
    :cond_0
    return-void

    .line 51
    :cond_1
    const-string v0, ""

    goto :goto_0

    .line 54
    :cond_2
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->NOT_SET:Lcom/oculus/horizon/logging/TrackingViews$View;

    goto :goto_1
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 8

    .prologue
    .line 63
    sget v0, Lcom/oculus/horizon/R$layout;->settings_legal_webview_fragment:I

    const/4 v1, 0x0

    .line 64
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 66
    sget v0, Lcom/oculus/horizon/R$id;->webview:I

    invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/secure/webkit/WebView;

    .line 67
    invoke-virtual {v0}, Lcom/facebook/secure/webkit/WebView;->getSettings()Landroid/webkit/WebSettings;

    move-result-object v3

    .line 69
    const/4 v1, 0x1

    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setJavaScriptEnabled(Z)V

    .line 72
    invoke-virtual {v3}, Landroid/webkit/WebSettings;->getUserAgentString()Ljava/lang/String;

    move-result-object v4

    .line 74
    sget v1, Lcom/facebook/common/android/AndroidModule$UL_id;->$ul_$xXXandroid_content_pm_PackageInfo$xXXBINDING_ID:I

    iget-object v5, p0, Lcom/oculus/horizon/settings/LegalWebViewFragment;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    .line 1
    invoke-static {v1, v5}, Lcom/facebook/inject/FbInjector;->localInstance(ILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/PackageInfo;

    .line 75
    const-string v5, "Horizon"

    iget-object v6, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    iget v7, v1, Landroid/content/pm/PackageInfo;->versionCode:I

    iget-object v1, p0, Lcom/oculus/horizon/settings/LegalWebViewFragment;->mLocaleProvider:Ljavax/inject/Provider;

    .line 77
    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Locale;

    .line 76
    invoke-static {v5, v6, v7, v1}, Lcom/oculus/horizon/settings/LegalWebViewFragment;->assembleUAExtension(Ljava/lang/String;Ljava/lang/String;ILjava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    .line 78
    const-string v5, "%s %s"

    .line 79
    invoke-static {v5, v4, v1}, Lcom/facebook/common/util/StringLocaleUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 80
    invoke-virtual {v3, v1}, Landroid/webkit/WebSettings;->setUserAgentString(Ljava/lang/String;)V

    .line 83
    new-instance v1, Lcom/oculus/horizon/settings/LegalWebViewFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/settings/LegalWebViewFragment$1;-><init>(Lcom/oculus/horizon/settings/LegalWebViewFragment;)V

    invoke-virtual {v0, v1}, Lcom/facebook/secure/webkit/WebView;->setWebViewClient(Landroid/webkit/WebViewClient;)V

    .line 91
    iget-object v1, p0, Lcom/oculus/horizon/settings/LegalWebViewFragment;->mUrl:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/secure/webkit/WebView;->loadUrl(Ljava/lang/String;)V

    .line 92
    return-object v2
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 97
    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 98
    iget-object v0, p0, Lcom/oculus/horizon/settings/LegalWebViewFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    iget-object v1, p0, Lcom/oculus/horizon/settings/LegalWebViewFragment;->mTrackingView:Lcom/oculus/horizon/logging/TrackingViews$View;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportView(Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 99
    return-void
.end method
