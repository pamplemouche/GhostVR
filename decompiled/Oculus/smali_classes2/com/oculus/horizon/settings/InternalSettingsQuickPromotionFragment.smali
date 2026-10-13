.class public Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment;
.super Lcom/oculus/horizon/settings/SubSettingsBaseFragment;
.source "InternalSettingsQuickPromotionFragment.java"

# interfaces
.implements Lcom/oculus/horizon/common/BackPressListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mClientPreferencesMethods:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMethods;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPromotionSharedPreferencesHelper:Lcom/oculus/horizon/promotion/PromotionSharedPreferencesHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment;)V
    .locals 1

    .prologue
    .line 25
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment;)V
    .locals 1

    .prologue
    .line 25
    invoke-static {p0}, Lcom/oculus/horizon/promotion/PromotionSharedPreferencesHelper;->$ul_$xXXcom_oculus_horizon_promotion_PromotionSharedPreferencesHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/promotion/PromotionSharedPreferencesHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment;->mPromotionSharedPreferencesHelper:Lcom/oculus/horizon/promotion/PromotionSharedPreferencesHelper;

    invoke-static {p0}, Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMethods;->$ul_$xXXcom_oculus_horizon_client$x5Fpreferences_api_ClientPreferencesMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment;->mClientPreferencesMethods:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMethods;

    invoke-static {p0}, Lcom/oculus/horizon/profile/UserProfileHelper;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-class v0, Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment;)Lcom/oculus/horizon/promotion/PromotionSharedPreferencesHelper;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment;->mPromotionSharedPreferencesHelper:Lcom/oculus/horizon/promotion/PromotionSharedPreferencesHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment;)Lcom/oculus/horizon/profile/UserProfileHelper;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    return-object v0
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 25
    sget-object v0, Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment;)Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMethods;
    .locals 1

    .prologue
    .line 25
    iget-object v0, p0, Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment;->mClientPreferencesMethods:Lcom/oculus/horizon/client_preferences/api/ClientPreferencesMethods;

    return-object v0
.end method


# virtual methods
.method protected getTitleBarTextResourceId()I
    .locals 1

    .prologue
    .line 107
    sget v0, Lcom/oculus/horizon/R$string;->settings_qp:I

    return v0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 91
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->SETTINGS_INTERNAL:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 102
    const/4 v0, 0x0

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 36
    invoke-super {p0, p1}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 25
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment;)V

    .line 38
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 43
    sget v0, Lcom/oculus/horizon/R$layout;->settings_internal_quick_promotion_fragment:I

    const/4 v1, 0x0

    .line 44
    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 46
    sget v1, Lcom/oculus/horizon/R$id;->clear_cache:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment$1;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment$1;-><init>(Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment;)V

    .line 47
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 55
    sget v1, Lcom/oculus/horizon/R$id;->clear_timestamp:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment$2;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment$2;-><init>(Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment;)V

    .line 56
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 64
    sget v1, Lcom/oculus/horizon/R$id;->reset_library_nux:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    new-instance v2, Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment$3;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment$3;-><init>(Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment;)V

    .line 65
    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 86
    return-object v0
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 96
    invoke-super {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onResume()V

    .line 97
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/InternalSettingsQuickPromotionFragment;->updateTitleBarText()V

    .line 98
    return-void
.end method
