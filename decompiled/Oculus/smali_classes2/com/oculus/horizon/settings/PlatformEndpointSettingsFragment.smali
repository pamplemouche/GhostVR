.class public Lcom/oculus/horizon/settings/PlatformEndpointSettingsFragment;
.super Lcom/oculus/horizon/settings/SubSettingsBaseFragment;
.source "PlatformEndpointSettingsFragment.java"

# interfaces
.implements Lcom/oculus/horizon/common/BackPressListener;


# instance fields
.field private mEndpoint:Lcom/oculus/horizon/widget/CustomSetting;

.field private mPrefs:Landroid/content/SharedPreferences;
    .annotation runtime Lcom/oculus/http/core/annotations/OculusApiSharedPrefs;
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/PlatformEndpointSettingsFragment;)V
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/settings/PlatformEndpointSettingsFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/PlatformEndpointSettingsFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/settings/PlatformEndpointSettingsFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/PlatformEndpointSettingsFragment;)V
    .locals 1

    .prologue
    .line 25
    invoke-static {p0}, Lcom/oculus/horizon/endpoint/HorizonEndpointModule;->$ul_$xXXandroid_content_SharedPreferences$xXXcom_oculus_http_core_annotations_OculusApiSharedPrefs$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/SharedPreferences;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/PlatformEndpointSettingsFragment;->mPrefs:Landroid/content/SharedPreferences;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;-><init>()V

    return-void
.end method

.method private refreshPlatformEndpoint()V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Lcom/oculus/horizon/settings/PlatformEndpointSettingsFragment;->mPrefs:Landroid/content/SharedPreferences;

    const-string v1, "key_custom_api_endpoint"

    const-string v2, "https://graph.oculus.com/"

    .line 69
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 71
    iget-object v1, p0, Lcom/oculus/horizon/settings/PlatformEndpointSettingsFragment;->mEndpoint:Lcom/oculus/horizon/widget/CustomSetting;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/widget/CustomSetting;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 72
    return-void
.end method


# virtual methods
.method protected getTitleBarTextResourceId()I
    .locals 1

    .prologue
    .line 81
    sget v0, Lcom/oculus/horizon/R$string;->settings_platform_endpoint:I

    return v0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->SETTINGS_PLATFORM_ENDPOINT:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0, p1}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PlatformEndpointSettingsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/settings/PlatformEndpointSettingsFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/PlatformEndpointSettingsFragment;)V

    .line 36
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 41
    sget v0, Lcom/oculus/horizon/R$layout;->settings_platform_endpoint_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 43
    sget v0, Lcom/oculus/horizon/R$id;->endpoint:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/CustomSetting;

    iput-object v0, p0, Lcom/oculus/horizon/settings/PlatformEndpointSettingsFragment;->mEndpoint:Lcom/oculus/horizon/widget/CustomSetting;

    .line 44
    iget-object v0, p0, Lcom/oculus/horizon/settings/PlatformEndpointSettingsFragment;->mEndpoint:Lcom/oculus/horizon/widget/CustomSetting;

    new-instance v2, Lcom/oculus/horizon/settings/PlatformEndpointSettingsFragment$1;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/settings/PlatformEndpointSettingsFragment$1;-><init>(Lcom/oculus/horizon/settings/PlatformEndpointSettingsFragment;)V

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/CustomSetting;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 52
    return-object v1
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 62
    invoke-super {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onResume()V

    .line 63
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/PlatformEndpointSettingsFragment;->updateTitleBarText()V

    .line 64
    invoke-direct {p0}, Lcom/oculus/horizon/settings/PlatformEndpointSettingsFragment;->refreshPlatformEndpoint()V

    .line 65
    return-void
.end method
