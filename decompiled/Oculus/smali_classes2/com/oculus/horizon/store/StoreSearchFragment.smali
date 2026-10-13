.class public Lcom/oculus/horizon/store/StoreSearchFragment;
.super Lcom/oculus/horizon/base/OculusBaseFragment;
.source "StoreSearchFragment.java"

# interfaces
.implements Landroidx/appcompat/widget/SearchView$OnQueryTextListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/store/StoreSearchFragment$TypeaheadClickListener;
    }
.end annotation


# instance fields
.field private mAdapter:Lcom/oculus/horizon/store/StoreSearchAdapter;

.field private mDefaultSearchResult:Lcom/oculus/horizon/api/common/Item;

.field private mInstallApi:Lcom/oculus/horizon/store/InstallApi;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mMobileConfigFactory:Lcom/facebook/mobileconfig/factory/MobileConfig;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mSearchFilterHelper:Lcom/oculus/horizon/store/SearchFilterHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mSearchTypeaheadQuery:Lcom/oculus/horizon/store/SearchTypeaheadQuery;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mSearchView:Landroidx/appcompat/widget/SearchView;

.field private mStoreItemMethods:Lcom/oculus/horizon/pdp/StoreItemMethods;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mStoreSearchAdapterAutoProvider:Lcom/oculus/horizon/store/StoreSearchAdapterProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mTimer:Ljava/util/Timer;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/store/StoreSearchFragment;)V
    .locals 1

    .prologue
    .line 47
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/store/StoreSearchFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/store/StoreSearchFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/store/StoreSearchFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/store/StoreSearchFragment;)V
    .locals 1

    .prologue
    .line 47
    invoke-static {p0}, Lcom/oculus/horizon/store/StoreSearchAdapter;->$ul_$xXXcom_oculus_horizon_store_StoreSearchAdapterProvider$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/store/StoreSearchAdapterProvider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/store/StoreSearchFragment;->mStoreSearchAdapterAutoProvider:Lcom/oculus/horizon/store/StoreSearchAdapterProvider;

    invoke-static {p0}, Lcom/oculus/horizon/store/InstallApi;->$ul_$xXXcom_oculus_horizon_store_InstallApi$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/store/InstallApi;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/store/StoreSearchFragment;->mInstallApi:Lcom/oculus/horizon/store/InstallApi;

    invoke-static {p0}, Lcom/oculus/horizon/pdp/StoreItemMethods;->$ul_$xXXcom_oculus_horizon_pdp_StoreItemMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/pdp/StoreItemMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/store/StoreSearchFragment;->mStoreItemMethods:Lcom/oculus/horizon/pdp/StoreItemMethods;

    invoke-static {p0}, Lcom/oculus/mobileconfig/init/MobileConfigInitModule;->$ul_$xXXcom_facebook_mobileconfig_factory_MobileConfig$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/mobileconfig/factory/MobileConfig;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/store/StoreSearchFragment;->mMobileConfigFactory:Lcom/facebook/mobileconfig/factory/MobileConfig;

    invoke-static {p0}, Lcom/oculus/horizon/store/SearchFilterHelper;->$ul_$xXXcom_oculus_horizon_store_SearchFilterHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/store/SearchFilterHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/store/StoreSearchFragment;->mSearchFilterHelper:Lcom/oculus/horizon/store/SearchFilterHelper;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/store/StoreSearchFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-static {p0}, Lcom/oculus/horizon/store/SearchTypeaheadQuery;->$ul_$xXXcom_oculus_horizon_store_SearchTypeaheadQuery$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/store/SearchTypeaheadQuery;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/store/StoreSearchFragment;->mSearchTypeaheadQuery:Lcom/oculus/horizon/store/SearchTypeaheadQuery;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 47
    invoke-direct {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;-><init>()V

    .line 62
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mDefaultSearchResult:Lcom/oculus/horizon/api/common/Item;

    .line 63
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mTimer:Ljava/util/Timer;

    return-void
.end method

.method static synthetic access$002(Lcom/oculus/horizon/store/StoreSearchFragment;Lcom/oculus/horizon/api/common/Item;)Lcom/oculus/horizon/api/common/Item;
    .locals 0

    .prologue
    .line 47
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mDefaultSearchResult:Lcom/oculus/horizon/api/common/Item;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oculus/horizon/store/StoreSearchFragment;)Lcom/oculus/horizon/store/SearchFilterHelper;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mSearchFilterHelper:Lcom/oculus/horizon/store/SearchFilterHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/store/StoreSearchFragment;)Lcom/oculus/horizon/store/SearchTypeaheadQuery;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mSearchTypeaheadQuery:Lcom/oculus/horizon/store/SearchTypeaheadQuery;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/store/StoreSearchFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/oculus/horizon/store/StoreSearchFragment;->runSearchFromTimer(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oculus/horizon/store/StoreSearchFragment;)Lcom/oculus/horizon/store/StoreSearchAdapter;
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mAdapter:Lcom/oculus/horizon/store/StoreSearchAdapter;

    return-object v0
.end method

.method private getDefaultAppIDExperiment()J
    .locals 4

    .prologue
    .line 203
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mMobileConfigFactory:Lcom/facebook/mobileconfig/factory/MobileConfig;

    sget-wide v2, Lcom/oculus/horizon/store/MC$oculus_growth;->default_app:J

    invoke-interface {v0, v2, v3}, Lcom/facebook/mobileconfig/factory/MobileConfig;->getLong(J)J

    move-result-wide v0

    return-wide v0
.end method

.method private isInBuyButtonExperiment()Z
    .locals 4

    .prologue
    .line 198
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mMobileConfigFactory:Lcom/facebook/mobileconfig/factory/MobileConfig;

    sget-wide v2, Lcom/oculus/horizon/store/MC$oculus_store;->is_horizon_section_buy_button_clear_enabled:J

    invoke-interface {v0, v2, v3}, Lcom/facebook/mobileconfig/factory/MobileConfig;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method private runSearchFromTimer(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 253
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/oculus/horizon/store/StoreSearchFragment$5;

    invoke-direct {v1, p0, p1}, Lcom/oculus/horizon/store/StoreSearchFragment$5;-><init>(Lcom/oculus/horizon/store/StoreSearchFragment;Ljava/lang/String;)V

    .line 254
    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->runOnUiThread(Ljava/lang/Runnable;)V

    .line 261
    return-void
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 194
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->STORE_SEARCH:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 188
    invoke-super {p0, p1, p2, p3}, Lcom/oculus/horizon/base/OculusBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 189
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mInstallApi:Lcom/oculus/horizon/store/InstallApi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/horizon/store/InstallApi;->onActivityResult(IILandroid/content/Intent;)V

    .line 190
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 67
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 47
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/store/StoreSearchFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/store/StoreSearchFragment;)V

    .line 70
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mInstallApi:Lcom/oculus/horizon/store/InstallApi;

    sget-object v1, Lcom/oculus/horizon/logging/TrackingViews$View;->STORE_SEARCH:Lcom/oculus/horizon/logging/TrackingViews$View;

    invoke-virtual {v0, p1, v1}, Lcom/oculus/horizon/store/InstallApi;->onCreate(Landroid/os/Bundle;Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 71
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mInstallApi:Lcom/oculus/horizon/store/InstallApi;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/store/InstallApi;->setTarget(Landroidx/fragment/app/Fragment;)V

    .line 72
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mStoreSearchAdapterAutoProvider:Lcom/oculus/horizon/store/StoreSearchAdapterProvider;

    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mInstallApi:Lcom/oculus/horizon/store/InstallApi;

    iget-object v3, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/store/StoreSearchAdapterProvider;->get(Landroidx/fragment/app/FragmentActivity;Lcom/oculus/horizon/store/InstallApi;Lcom/oculus/horizon/logging/OculusLogger;)Lcom/oculus/horizon/store/StoreSearchAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mAdapter:Lcom/oculus/horizon/store/StoreSearchAdapter;

    .line 73
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 2

    .prologue
    .line 142
    sget v0, Lcom/oculus/horizon/R$menu;->search_input:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 143
    sget v0, Lcom/oculus/horizon/R$id;->search:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    .line 144
    invoke-interface {v0}, Landroid/view/MenuItem;->getActionView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/SearchView;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mSearchView:Landroidx/appcompat/widget/SearchView;

    .line 145
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mSearchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v0, p0}, Landroidx/appcompat/widget/SearchView;->setOnQueryTextListener(Landroidx/appcompat/widget/SearchView$OnQueryTextListener;)V

    .line 147
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mSearchView:Landroidx/appcompat/widget/SearchView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/SearchView;->setIconified(Z)V

    .line 148
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/base/OculusBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 149
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 84
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/store/StoreSearchFragment;->setHasOptionsMenu(Z)V

    .line 85
    sget v0, Lcom/oculus/horizon/R$layout;->store_search_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 153
    iput-object v1, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mSearchView:Landroidx/appcompat/widget/SearchView;

    .line 154
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mInstallApi:Lcom/oculus/horizon/store/InstallApi;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/InstallApi;->onDestroyView()V

    .line 155
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 157
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 158
    iput-object v1, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mTimer:Ljava/util/Timer;

    .line 160
    :cond_0
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onDestroyView()V

    .line 161
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 178
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mSearchView:Landroidx/appcompat/widget/SearchView;

    if-eqz v0, :cond_0

    .line 179
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mSearchView:Landroidx/appcompat/widget/SearchView;

    invoke-static {v0, v1}, Lcom/oculus/horizon/util/KeyboardUtils;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 181
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mSearchTypeaheadQuery:Lcom/oculus/horizon/store/SearchTypeaheadQuery;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/SearchTypeaheadQuery;->dismissWindow()V

    .line 182
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-virtual {v0}, Lcom/oculus/horizon/logging/OculusLogger;->reportSearchExit()V

    .line 183
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onPause()V

    .line 184
    return-void
.end method

.method public onQueryTextChange(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 219
    invoke-direct {p0}, Lcom/oculus/horizon/store/StoreSearchFragment;->getDefaultAppIDExperiment()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    .line 220
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mAdapter:Lcom/oculus/horizon/store/StoreSearchAdapter;

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mDefaultSearchResult:Lcom/oculus/horizon/api/common/Item;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoreSearchAdapter;->setDefaultSearchItem(Lcom/oculus/horizon/api/common/Item;)V

    .line 222
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mMobileConfigFactory:Lcom/facebook/mobileconfig/factory/MobileConfig;

    sget-wide v2, Lcom/oculus/horizon/store/MC$qe_sessionless__oculus_horizon_search_typeahead_v0;->incremental_search_enabled:J

    invoke-interface {v0, v2, v3}, Lcom/facebook/mobileconfig/factory/MobileConfig;->getBoolean(J)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 224
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mTimer:Ljava/util/Timer;

    if-eqz v0, :cond_3

    .line 225
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 226
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 227
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mTimer:Ljava/util/Timer;

    .line 228
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mTimer:Ljava/util/Timer;

    new-instance v1, Lcom/oculus/horizon/store/StoreSearchFragment$4;

    invoke-direct {v1, p0, p1}, Lcom/oculus/horizon/store/StoreSearchFragment$4;-><init>(Lcom/oculus/horizon/store/StoreSearchFragment;Ljava/lang/String;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;J)V

    .line 240
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mMobileConfigFactory:Lcom/facebook/mobileconfig/factory/MobileConfig;

    sget-wide v2, Lcom/oculus/horizon/store/MC$oculus_store;->is_search_typeahead_enabled:J

    invoke-interface {v0, v2, v3}, Lcom/facebook/mobileconfig/factory/MobileConfig;->getBoolean(J)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 241
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 242
    new-instance v0, Lcom/oculus/horizon/store/StoreSearchFragment$TypeaheadClickListener;

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mSearchView:Landroidx/appcompat/widget/SearchView;

    iget-object v2, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mSearchTypeaheadQuery:Lcom/oculus/horizon/store/SearchTypeaheadQuery;

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/store/StoreSearchFragment$TypeaheadClickListener;-><init>(Landroidx/appcompat/widget/SearchView;Lcom/oculus/horizon/store/SearchTypeaheadQuery;)V

    .line 244
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mSearchTypeaheadQuery:Lcom/oculus/horizon/store/SearchTypeaheadQuery;

    iget-object v2, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mSearchView:Landroidx/appcompat/widget/SearchView;

    invoke-virtual {v1, p1, v2, v0}, Lcom/oculus/horizon/store/SearchTypeaheadQuery;->onNewTypeaheadPrefix(Ljava/lang/String;Landroidx/appcompat/widget/SearchView;Lcom/oculus/horizon/store/SearchTypeaheadQuery$TypeaheadClickListener;)V

    .line 249
    :cond_2
    :goto_1
    const/4 v0, 0x0

    return v0

    .line 237
    :cond_3
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mAdapter:Lcom/oculus/horizon/store/StoreSearchAdapter;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/store/StoreSearchAdapter;->doSearch(Ljava/lang/String;)V

    goto :goto_0

    .line 246
    :cond_4
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mSearchTypeaheadQuery:Lcom/oculus/horizon/store/SearchTypeaheadQuery;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/SearchTypeaheadQuery;->dismissWindow()V

    goto :goto_1
.end method

.method public onQueryTextSubmit(Ljava/lang/String;)Z
    .locals 4

    .prologue
    .line 208
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mSearchTypeaheadQuery:Lcom/oculus/horizon/store/SearchTypeaheadQuery;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/SearchTypeaheadQuery;->dismissWindow()V

    .line 209
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mSearchView:Landroidx/appcompat/widget/SearchView;

    invoke-static {v0, v1}, Lcom/oculus/horizon/util/KeyboardUtils;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 210
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mMobileConfigFactory:Lcom/facebook/mobileconfig/factory/MobileConfig;

    sget-wide v2, Lcom/oculus/horizon/store/MC$qe_sessionless__oculus_horizon_search_typeahead_v0;->incremental_search_enabled:J

    invoke-interface {v0, v2, v3}, Lcom/facebook/mobileconfig/factory/MobileConfig;->getBoolean(J)Z

    move-result v0

    if-nez v0, :cond_0

    .line 212
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mAdapter:Lcom/oculus/horizon/store/StoreSearchAdapter;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/store/StoreSearchAdapter;->doSearch(Ljava/lang/String;)V

    .line 214
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 165
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onResume()V

    .line 166
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mInstallApi:Lcom/oculus/horizon/store/InstallApi;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/InstallApi;->onResume()V

    .line 167
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 168
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mTimer:Ljava/util/Timer;

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-virtual {v0}, Lcom/oculus/horizon/logging/OculusLogger;->reportSearchEnter()V

    .line 173
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 174
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 78
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mInstallApi:Lcom/oculus/horizon/store/InstallApi;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/store/InstallApi;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 79
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 90
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/base/OculusBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 91
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mInstallApi:Lcom/oculus/horizon/store/InstallApi;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/InstallApi;->onViewCreated()V

    .line 92
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mSearchFilterHelper:Lcom/oculus/horizon/store/SearchFilterHelper;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p0}, Lcom/oculus/horizon/store/SearchFilterHelper;->onViewCreated(Landroid/view/View;Ljava/util/List;Lcom/oculus/horizon/store/StoreSearchFragment;)V

    .line 93
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mSearchFilterHelper:Lcom/oculus/horizon/store/SearchFilterHelper;

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/SearchFilterHelper;->setUniversalSearchFilters(Ljava/util/List;)V

    .line 96
    invoke-direct {p0}, Lcom/oculus/horizon/store/StoreSearchFragment;->getDefaultAppIDExperiment()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mDefaultSearchResult:Lcom/oculus/horizon/api/common/Item;

    if-nez v0, :cond_0

    .line 97
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mStoreItemMethods:Lcom/oculus/horizon/pdp/StoreItemMethods;

    .line 98
    invoke-direct {p0}, Lcom/oculus/horizon/store/StoreSearchFragment;->getDefaultAppIDExperiment()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/oculus/horizon/store/StoreSearchFragment$1;

    invoke-direct {v2, p0, p0}, Lcom/oculus/horizon/store/StoreSearchFragment$1;-><init>(Lcom/oculus/horizon/store/StoreSearchFragment;Lcom/oculus/horizon/base/OculusBaseFragment;)V

    .line 97
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/pdp/StoreItemMethods;->fetchItemData(Ljava/lang/String;Lretrofit/Callback;)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mAdapter:Lcom/oculus/horizon/store/StoreSearchAdapter;

    invoke-direct {p0}, Lcom/oculus/horizon/store/StoreSearchFragment;->isInBuyButtonExperiment()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoreSearchAdapter;->setShouldShowBuyButton(Z)V

    .line 113
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mAdapter:Lcom/oculus/horizon/store/StoreSearchAdapter;

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mSearchFilterHelper:Lcom/oculus/horizon/store/SearchFilterHelper;

    invoke-virtual {v1}, Lcom/oculus/horizon/store/SearchFilterHelper;->getActiveSearchFilter()Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoreSearchAdapter;->setSearchFilter(Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;)V

    .line 114
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mAdapter:Lcom/oculus/horizon/store/StoreSearchAdapter;

    new-instance v1, Lcom/oculus/horizon/store/StoreSearchFragment$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/store/StoreSearchFragment$2;-><init>(Lcom/oculus/horizon/store/StoreSearchFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoreSearchAdapter;->setSearchFilterUpdateListener(Lcom/oculus/horizon/store/StoreSearchAdapter$SearchFilterUpdateListener;)V

    .line 123
    sget v0, Lcom/oculus/horizon/R$id;->recycler_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    .line 124
    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 125
    new-instance v1, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 126
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreSearchFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/4 v3, 0x0

    invoke-direct {v1, v2, v4, v3}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 125
    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 127
    new-instance v1, Lcom/oculus/horizon/util/ui/LineDividerDecoration;

    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreSearchFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2, v4}, Lcom/oculus/horizon/util/ui/LineDividerDecoration;-><init>(Landroid/content/Context;Z)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 128
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mAdapter:Lcom/oculus/horizon/store/StoreSearchAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 129
    new-instance v1, Lcom/oculus/horizon/store/StoreSearchFragment$3;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/store/StoreSearchFragment$3;-><init>(Lcom/oculus/horizon/store/StoreSearchFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 138
    return-void
.end method

.method public updateFilter(Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;)V
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSearchFragment;->mAdapter:Lcom/oculus/horizon/store/StoreSearchAdapter;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/store/StoreSearchAdapter;->setSearchFilter(Lcom/oculus/horizon/api/store/UniversalSearchResponse$UniversalSearchFilter;)V

    .line 265
    return-void
.end method
