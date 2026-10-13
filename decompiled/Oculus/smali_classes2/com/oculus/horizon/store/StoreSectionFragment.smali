.class public Lcom/oculus/horizon/store/StoreSectionFragment;
.super Lcom/oculus/horizon/base/OculusBaseFragment;
.source "StoreSectionFragment.java"

# interfaces
.implements Lcom/oculus/horizon/store/StoreSectionCache$UpdateListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAreStoreSectionsLoading:Z

.field private mCacheGeneration:Ljava/lang/String;

.field private mCategoryId:Ljava/lang/String;

.field private mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

.field private mFragmentFactoryLazy:Lcom/facebook/inject/Lazy;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/facebook/inject/Lazy",
            "<",
            "Lcom/oculus/horizon/fragmentfactory/FragmentFactory;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mGalleryGk:Ljavax/inject/Provider;
    .annotation runtime Lcom/google/inject/name/Named;
        value = "oculus_horizon_gallery"
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mHandler:Lcom/oculus/horizon/store/impression/StoreLoggingHandler;

.field private mHasSectionLoadFailed:Z

.field private mImpressionDetector:Lcom/oculus/horizon/store/impression/StoreImpressionDetector;

.field private mInstallApi:Lcom/oculus/horizon/store/InstallApi;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private volatile mIsLoading:Z

.field private mIsViewCreated:Z

.field private mLoadingIndicator:Landroid/widget/ProgressBar;

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

.field private mMainScrollView:Landroidx/recyclerview/widget/RecyclerView;

.field private mMobileConfigFactory:Lcom/facebook/mobileconfig/factory/MobileConfig;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mModels:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/oculus/horizon/store/StoreItemModel;",
            ">;"
        }
    .end annotation
.end field

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mSectionHeaderCountdownTimer:Lcom/oculus/horizon/store/StoreCountdownTimer;

.field private mShouldLog:Z

.field private mSortNavHelper:Lcom/oculus/horizon/store/SortNavHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mStoreItemAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

.field private mStoreItemAdapterProvider:Lcom/oculus/horizon/store/StoreItemAdapterProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mStoreSection:Lcom/oculus/horizon/store/StoreSection;

.field private mStoreSectionCache:Lcom/oculus/horizon/store/StoreSectionCache;

.field private mStoresManager:Lcom/oculus/horizon/store/StoresManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mStyleManager:Lcom/oculus/horizon/style/StyleManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/store/StoreSectionFragment;)V
    .locals 1

    .prologue
    .line 55
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/store/StoreSectionFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/store/StoreSectionFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/store/StoreSectionFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/store/StoreSectionFragment;)V
    .locals 1

    .prologue
    .line 55
    invoke-static {p0}, Lcom/oculus/horizon/store/StoreItemAdapter;->$ul_$xXXcom_oculus_horizon_store_StoreItemAdapterProvider$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/store/StoreItemAdapterProvider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreItemAdapterProvider:Lcom/oculus/horizon/store/StoreItemAdapterProvider;

    invoke-static {p0}, Lcom/oculus/horizon/store/SortNavHelper;->$ul_$xXXcom_oculus_horizon_store_SortNavHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/store/SortNavHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/store/StoreSectionFragment;->mSortNavHelper:Lcom/oculus/horizon/store/SortNavHelper;

    invoke-static {p0}, Lcom/oculus/horizon/store/StoresManager;->$ul_$xXXcom_oculus_horizon_store_StoresManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/store/StoresManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoresManager:Lcom/oculus/horizon/store/StoresManager;

    invoke-static {p0}, Lcom/oculus/horizon/style/StyleManager;->$ul_$xXXcom_oculus_horizon_style_StyleManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/style/StyleManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/store/StoreSectionFragment;->mStyleManager:Lcom/oculus/horizon/style/StyleManager;

    invoke-static {p0}, Lcom/oculus/horizon/main/MainModule;->$ul_$xXXcom_facebook_inject_Lazy$x3Ccom_oculus_horizon_fragmentfactory_FragmentFactory$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/inject/Lazy;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/store/StoreSectionFragment;->mFragmentFactoryLazy:Lcom/facebook/inject/Lazy;

    invoke-static {p0}, Lcom/oculus/mobileconfig/init/MobileConfigInitModule;->$ul_$xXXcom_facebook_mobileconfig_factory_MobileConfig$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/mobileconfig/factory/MobileConfig;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/store/StoreSectionFragment;->mMobileConfigFactory:Lcom/facebook/mobileconfig/factory/MobileConfig;

    invoke-static {p0}, Lcom/oculus/horizon/store/InstallApi;->$ul_$xXXcom_oculus_horizon_store_InstallApi$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/store/InstallApi;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/store/StoreSectionFragment;->mInstallApi:Lcom/oculus/horizon/store/InstallApi;

    invoke-static {p0}, Lcom/oculus/locale/LocaleModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_util_Locale$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/store/StoreSectionFragment;->mLocaleProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/store/StoreSectionFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-static {p0}, Lcom/oculus/horizon/store/StoreModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fhorizon$x5Fgallery$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/store/StoreSectionFragment;->mGalleryGk:Ljavax/inject/Provider;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 58
    const-class v0, Lcom/oculus/horizon/store/StoreSectionFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/store/StoreSectionFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;-><init>()V

    .line 96
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mIsViewCreated:Z

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/store/StoreSectionFragment;)Lcom/facebook/inject/Lazy;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mFragmentFactoryLazy:Lcom/facebook/inject/Lazy;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oculus/horizon/store/StoreSectionFragment;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mIsLoading:Z

    return v0
.end method

.method static synthetic access$102(Lcom/oculus/horizon/store/StoreSectionFragment;Z)Z
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mAreStoreSectionsLoading:Z

    return p1
.end method

.method static synthetic access$1100(Lcom/oculus/horizon/store/StoreSectionFragment;)Lcom/oculus/horizon/store/StoreItemAdapter;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreItemAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/oculus/horizon/store/StoreSectionFragment;)Lcom/oculus/horizon/store/StoreSectionCache;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreSectionCache:Lcom/oculus/horizon/store/StoreSectionCache;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/store/StoreSectionFragment;)Lcom/oculus/horizon/store/StoresManager;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoresManager:Lcom/oculus/horizon/store/StoresManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/store/StoreSectionFragment;)Z
    .locals 1

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mIsViewCreated:Z

    return v0
.end method

.method static synthetic access$402(Lcom/oculus/horizon/store/StoreSectionFragment;Lcom/oculus/horizon/store/StoreSection;)Lcom/oculus/horizon/store/StoreSection;
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreSection:Lcom/oculus/horizon/store/StoreSection;

    return-object p1
.end method

.method static synthetic access$500(Lcom/oculus/horizon/store/StoreSectionFragment;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mCategoryId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oculus/horizon/store/StoreSectionFragment;Landroid/view/View;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/oculus/horizon/store/StoreSectionFragment;->loadItems(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$700()Ljava/lang/String;
    .locals 1

    .prologue
    .line 55
    sget-object v0, Lcom/oculus/horizon/store/StoreSectionFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oculus/horizon/store/StoreSectionFragment;)V
    .locals 0

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/oculus/horizon/store/StoreSectionFragment;->stopLoadingState()V

    return-void
.end method

.method static synthetic access$902(Lcom/oculus/horizon/store/StoreSectionFragment;Z)Z
    .locals 0

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mHasSectionLoadFailed:Z

    return p1
.end method

.method private fetchStores()V
    .locals 2

    .prologue
    .line 388
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoresManager:Lcom/oculus/horizon/store/StoresManager;

    new-instance v1, Lcom/oculus/horizon/store/StoreSectionFragment$2;

    invoke-direct {v1, p0, p0}, Lcom/oculus/horizon/store/StoreSectionFragment$2;-><init>(Lcom/oculus/horizon/store/StoreSectionFragment;Lcom/oculus/horizon/base/OculusBaseFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoresManager;->fetchStore(Lcom/oculus/horizon/common/UICallback;)V

    .line 418
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mAreStoreSectionsLoading:Z

    .line 419
    return-void
.end method

.method private getStyleTheme()Lcom/oculus/model/StyleTheme;
    .locals 1
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 546
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreSection:Lcom/oculus/horizon/store/StoreSection;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreSection:Lcom/oculus/horizon/store/StoreSection;

    iget-object v0, v0, Lcom/oculus/horizon/store/StoreSection;->styleTheme:Lcom/oculus/model/StyleTheme;

    if-eqz v0, :cond_0

    .line 547
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreSection:Lcom/oculus/horizon/store/StoreSection;

    iget-object v0, v0, Lcom/oculus/horizon/store/StoreSection;->styleTheme:Lcom/oculus/model/StyleTheme;

    .line 549
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStyleManager:Lcom/oculus/horizon/style/StyleManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/style/StyleManager;->getStyleTheme()Lcom/oculus/model/StyleTheme;

    move-result-object v0

    goto :goto_0
.end method

.method private isInBuyButtonExperiment()Z
    .locals 4

    .prologue
    .line 554
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mMobileConfigFactory:Lcom/facebook/mobileconfig/factory/MobileConfig;

    sget-wide v2, Lcom/oculus/horizon/store/MC$oculus_store;->is_horizon_section_buy_button_clear_enabled:J

    invoke-interface {v0, v2, v3}, Lcom/facebook/mobileconfig/factory/MobileConfig;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method private loadItems(Landroid/view/View;)V
    .locals 10

    .prologue
    .line 422
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreSectionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 424
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreItemAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

    if-nez v0, :cond_0

    if-nez v1, :cond_1

    .line 512
    :cond_0
    :goto_0
    return-void

    .line 429
    :cond_1
    invoke-direct {p0}, Lcom/oculus/horizon/store/StoreSectionFragment;->isInBuyButtonExperiment()Z

    move-result v0

    if-eqz v0, :cond_4

    sget v3, Lcom/oculus/horizon/R$layout;->store_horizontal_product_view_with_buy_button:I

    .line 433
    :goto_1
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreItemAdapterProvider:Lcom/oculus/horizon/store/StoreItemAdapterProvider;

    iget-object v2, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreSection:Lcom/oculus/horizon/store/StoreSection;

    iget-object v4, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mModels:Ljava/util/ArrayList;

    .line 439
    invoke-direct {p0}, Lcom/oculus/horizon/store/StoreSectionFragment;->shouldShowSectionHeader()Z

    move-result v5

    const/4 v6, 0x0

    iget-object v7, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mInstallApi:Lcom/oculus/horizon/store/InstallApi;

    sget-object v8, Lcom/oculus/model/StyleTheme;->HALLOWEEN:Lcom/oculus/model/StyleTheme;

    .line 442
    invoke-direct {p0}, Lcom/oculus/horizon/store/StoreSectionFragment;->getStyleTheme()Lcom/oculus/model/StyleTheme;

    move-result-object v9

    if-ne v8, v9, :cond_5

    sget-object v8, Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;->DARK:Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;

    :goto_2
    sget-object v9, Lcom/oculus/horizon/logging/TrackingViews$View;->STORE_SECTION:Lcom/oculus/horizon/logging/TrackingViews$View;

    .line 434
    invoke-virtual/range {v0 .. v9}, Lcom/oculus/horizon/store/StoreItemAdapterProvider;->get(Landroidx/fragment/app/FragmentActivity;Lcom/oculus/horizon/store/StoreSection;ILjava/util/List;ZZLcom/oculus/horizon/store/InstallApi;Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;Lcom/oculus/horizon/logging/TrackingViews$View;)Lcom/oculus/horizon/store/StoreItemAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreItemAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

    .line 447
    invoke-direct {p0}, Lcom/oculus/horizon/store/StoreSectionFragment;->shouldShowSectionHeader()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreSection:Lcom/oculus/horizon/store/StoreSection;

    iget-wide v2, v0, Lcom/oculus/horizon/store/StoreSection;->countDownTimerEndTime:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 448
    new-instance v2, Lcom/oculus/horizon/store/StoreCountdownTimer;

    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreSection:Lcom/oculus/horizon/store/StoreSection;

    iget-wide v4, v0, Lcom/oculus/horizon/store/StoreSection;->countDownTimerEndTime:J

    const-wide/16 v6, 0x3e8

    mul-long/2addr v4, v6

    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mLocaleProvider:Ljavax/inject/Provider;

    .line 450
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreSectionFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {v2, v4, v5, v0, v3}, Lcom/oculus/horizon/store/StoreCountdownTimer;-><init>(JLjava/util/Locale;Landroid/content/res/Resources;)V

    iput-object v2, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mSectionHeaderCountdownTimer:Lcom/oculus/horizon/store/StoreCountdownTimer;

    .line 451
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreItemAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

    iget-object v2, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mSectionHeaderCountdownTimer:Lcom/oculus/horizon/store/StoreCountdownTimer;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/store/StoreItemAdapter;->setSectionHeaderCountdownTimer(Lcom/oculus/horizon/store/StoreCountdownTimer;)V

    .line 454
    :cond_2
    iget-object v2, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoresManager:Lcom/oculus/horizon/store/StoresManager;

    iget-object v3, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreSection:Lcom/oculus/horizon/store/StoreSection;

    iget-object v4, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoresManager:Lcom/oculus/horizon/store/StoresManager;

    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mSortNavHelper:Lcom/oculus/horizon/store/SortNavHelper;

    .line 458
    invoke-virtual {v0}, Lcom/oculus/horizon/store/SortNavHelper;->getSortOrder()Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mSortNavHelper:Lcom/oculus/horizon/store/SortNavHelper;

    .line 459
    invoke-virtual {v0}, Lcom/oculus/horizon/store/SortNavHelper;->getGenreFilter()Ljava/lang/String;

    move-result-object v6

    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mSortNavHelper:Lcom/oculus/horizon/store/SortNavHelper;

    .line 460
    invoke-virtual {v0}, Lcom/oculus/horizon/store/SortNavHelper;->getPriceFilter()Ljava/lang/String;

    move-result-object v7

    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mSortNavHelper:Lcom/oculus/horizon/store/SortNavHelper;

    .line 461
    invoke-virtual {v0}, Lcom/oculus/horizon/store/SortNavHelper;->getControllerFilter()Ljava/lang/String;

    move-result-object v8

    .line 455
    invoke-virtual/range {v2 .. v8}, Lcom/oculus/horizon/store/StoresManager;->get(Lcom/oculus/horizon/store/StoreSection;Lcom/oculus/horizon/store/StoresManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/horizon/store/StoreSectionCache;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreSectionCache:Lcom/oculus/horizon/store/StoreSectionCache;

    .line 462
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreSectionCache:Lcom/oculus/horizon/store/StoreSectionCache;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreSectionCache;->getGeneration()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mCacheGeneration:Ljava/lang/String;

    .line 464
    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v2, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 465
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mSortNavHelper:Lcom/oculus/horizon/store/SortNavHelper;

    iget-object v3, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreSection:Lcom/oculus/horizon/store/StoreSection;

    invoke-virtual {v0, p1, v3, p0}, Lcom/oculus/horizon/store/SortNavHelper;->onViewCreated(Landroid/view/View;Lcom/oculus/horizon/store/StoreSection;Lcom/oculus/horizon/store/StoreSectionFragment;)V

    .line 467
    sget v0, Lcom/oculus/horizon/R$id;->category_recycler_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mMainScrollView:Landroidx/recyclerview/widget/RecyclerView;

    .line 468
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mMainScrollView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 469
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mMainScrollView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 470
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mMainScrollView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/oculus/horizon/util/ui/LineDividerDecoration;

    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreSectionFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-direct {v3, v4}, Lcom/oculus/horizon/util/ui/LineDividerDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 471
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mMainScrollView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v3, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreItemAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 472
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mMainScrollView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/oculus/horizon/store/StoreSectionFragment$3;

    invoke-direct {v3, p0, v2}, Lcom/oculus/horizon/store/StoreSectionFragment$3;-><init>(Lcom/oculus/horizon/store/StoreSectionFragment;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 496
    new-instance v0, Lcom/oculus/horizon/store/impression/StoreImpressionDetector;

    iget-object v2, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mMainScrollView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/oculus/horizon/store/impression/StoreImpressionListener;

    iget-object v4, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreItemAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

    iget-object v5, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreSection:Lcom/oculus/horizon/store/StoreSection;

    iget-object v6, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mHandler:Lcom/oculus/horizon/store/impression/StoreLoggingHandler;

    invoke-direct {v3, v4, v5, v6}, Lcom/oculus/horizon/store/impression/StoreImpressionListener;-><init>(Lcom/oculus/horizon/store/StoreItemAdapter;Lcom/oculus/horizon/store/StoreSection;Lcom/oculus/horizon/store/impression/StoreLoggingHandler;)V

    invoke-direct {v0, v2, v3}, Lcom/oculus/horizon/store/impression/StoreImpressionDetector;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/facebook/crudolib/view/impression/ImpressionListener;)V

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mImpressionDetector:Lcom/oculus/horizon/store/impression/StoreImpressionDetector;

    .line 500
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mImpressionDetector:Lcom/oculus/horizon/store/impression/StoreImpressionDetector;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/impression/StoreImpressionDetector;->startTracking()V

    .line 502
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreSection:Lcom/oculus/horizon/store/StoreSection;

    iget-object v0, v0, Lcom/oculus/horizon/store/StoreSection;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 504
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreSectionCache:Lcom/oculus/horizon/store/StoreSectionCache;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/store/StoreSectionCache;->setUpdateListener(Lcom/oculus/horizon/store/StoreSectionCache$UpdateListener;)V

    .line 505
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mImpressionDetector:Lcom/oculus/horizon/store/impression/StoreImpressionDetector;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/impression/StoreImpressionDetector;->isTracking()Z

    move-result v0

    if-nez v0, :cond_3

    .line 506
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mImpressionDetector:Lcom/oculus/horizon/store/impression/StoreImpressionDetector;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/impression/StoreImpressionDetector;->startTracking()V

    .line 508
    :cond_3
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreSectionCache:Lcom/oculus/horizon/store/StoreSectionCache;

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreItemAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

    invoke-virtual {v1}, Lcom/oculus/horizon/store/StoreItemAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoreSectionCache;->reload(I)V

    .line 509
    iget-boolean v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mShouldLog:Z

    if-eqz v0, :cond_0

    .line 510
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreSection:Lcom/oculus/horizon/store/StoreSection;

    iget-object v1, v1, Lcom/oculus/horizon/store/StoreSection;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportSectionView(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 429
    :cond_4
    sget v3, Lcom/oculus/horizon/R$layout;->store_horizontal_product_view:I

    goto/16 :goto_1

    .line 442
    :cond_5
    sget-object v8, Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;->DEFAULT:Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;

    goto/16 :goto_2
.end method

.method private shouldShowSectionHeader()Z
    .locals 2

    .prologue
    .line 515
    sget-object v0, Lcom/oculus/horizon/store/StoreSectionBrand;->GALLERY:Lcom/oculus/horizon/store/StoreSectionBrand;

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreSection:Lcom/oculus/horizon/store/StoreSection;

    iget-object v1, v1, Lcom/oculus/horizon/store/StoreSection;->contentType:Ljava/lang/String;

    invoke-static {v1}, Lcom/oculus/horizon/store/StoreSectionBrand;->from(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreSectionBrand;

    move-result-object v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mGalleryGk:Ljavax/inject/Provider;

    .line 516
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private stopLoadingState()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 303
    iput-boolean v1, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mIsLoading:Z

    .line 304
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreItemAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreItemAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoreItemAdapter;->setShowLoadingIndicator(Z)V

    .line 307
    :cond_0
    return-void
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 2

    .prologue
    .line 329
    sget-object v0, Lcom/oculus/horizon/store/StoreSectionFragment;->TAG:Ljava/lang/String;

    const-string v1, "getTrackingView was called when it shouldn\'t be due to overridden reportView"

    invoke-static {v0, v1}, Lcom/oculus/errorreporting/ErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    const/4 v0, 0x0

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 293
    invoke-super {p0, p1, p2, p3}, Lcom/oculus/horizon/base/OculusBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 294
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mInstallApi:Lcom/oculus/horizon/store/InstallApi;

    invoke-virtual {v0, p1, p2, p3}, Lcom/oculus/horizon/store/InstallApi;->onActivityResult(IILandroid/content/Intent;)V

    .line 295
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 105
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 55
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreSectionFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/store/StoreSectionFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/store/StoreSectionFragment;)V

    .line 108
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mHasSectionLoadFailed:Z

    .line 110
    new-instance v0, Lcom/oculus/horizon/store/impression/StoreLoggingHandler;

    const-string v1, "store_see_more"

    .line 112
    invoke-static {}, Lcom/facebook/crudo/concurrent/Loopers;->forNonUiThread()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/store/impression/StoreLoggingHandler;-><init>(Ljava/lang/String;Landroid/os/Looper;Lcom/oculus/horizon/logging/OculusLogger;)V

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mHandler:Lcom/oculus/horizon/store/impression/StoreLoggingHandler;

    .line 114
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreSectionFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 115
    const-string v1, "arg_store_category_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mCategoryId:Ljava/lang/String;

    .line 117
    const-string v1, "arg_models"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mModels:Ljava/util/ArrayList;

    .line 118
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mModels:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 119
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mModels:Ljava/util/ArrayList;

    .line 122
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoresManager:Lcom/oculus/horizon/store/StoresManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoresManager;->shouldUpdate()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 123
    invoke-direct {p0}, Lcom/oculus/horizon/store/StoreSectionFragment;->fetchStores()V

    .line 137
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mInstallApi:Lcom/oculus/horizon/store/InstallApi;

    sget-object v1, Lcom/oculus/horizon/logging/TrackingViews$View;->STORE:Lcom/oculus/horizon/logging/TrackingViews$View;

    invoke-virtual {v0, p1, v1}, Lcom/oculus/horizon/store/InstallApi;->onCreate(Landroid/os/Bundle;Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 138
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mInstallApi:Lcom/oculus/horizon/store/InstallApi;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/store/InstallApi;->setTarget(Landroidx/fragment/app/Fragment;)V

    .line 139
    return-void

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoresManager:Lcom/oculus/horizon/store/StoresManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoresManager;->getStoreModel()Lcom/oculus/horizon/store/StoreModel;

    move-result-object v0

    .line 126
    if-eqz v0, :cond_1

    .line 128
    :try_start_0
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mCategoryId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoreModel;->getStoreSection(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreSection;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreSection:Lcom/oculus/horizon/store/StoreSection;

    .line 129
    invoke-direct {p0}, Lcom/oculus/horizon/store/StoreSectionFragment;->getStyleTheme()Lcom/oculus/model/StyleTheme;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 130
    invoke-direct {p0}, Lcom/oculus/horizon/store/StoreSectionFragment;->getStyleTheme()Lcom/oculus/model/StyleTheme;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/horizon/style/StyleManager;->getResourceIdentifierForStyle(Lcom/oculus/model/StyleTheme;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/store/StoreSectionFragment;->setTheme(I)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 132
    :catch_0
    move-exception v0

    .line 133
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mHasSectionLoadFailed:Z

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 204
    sget v0, Lcom/oculus/horizon/R$menu;->common_search:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 205
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/base/OculusBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 206
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 150
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/store/StoreSectionFragment;->setHasOptionsMenu(Z)V

    .line 151
    sget v0, Lcom/oculus/horizon/R$layout;->category_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 272
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreItemAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

    if-eqz v0, :cond_0

    .line 273
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreItemAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreItemAdapter;->close()V

    .line 275
    :cond_0
    iput-object v1, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreItemAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

    .line 276
    iput-object v1, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mImpressionDetector:Lcom/oculus/horizon/store/impression/StoreImpressionDetector;

    .line 277
    iput-object v1, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreSectionCache:Lcom/oculus/horizon/store/StoreSectionCache;

    .line 278
    iput-object v1, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mCacheGeneration:Ljava/lang/String;

    .line 279
    iput-object v1, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    .line 280
    iput-object v1, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mMainScrollView:Landroidx/recyclerview/widget/RecyclerView;

    .line 281
    iput-object v1, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 282
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mSectionHeaderCountdownTimer:Lcom/oculus/horizon/store/StoreCountdownTimer;

    if-eqz v0, :cond_1

    .line 283
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mSectionHeaderCountdownTimer:Lcom/oculus/horizon/store/StoreCountdownTimer;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreCountdownTimer;->destroy()V

    .line 284
    iput-object v1, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mSectionHeaderCountdownTimer:Lcom/oculus/horizon/store/StoreCountdownTimer;

    .line 286
    :cond_1
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mIsViewCreated:Z

    .line 287
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mInstallApi:Lcom/oculus/horizon/store/InstallApi;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/InstallApi;->onDestroyView()V

    .line 288
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onDestroyView()V

    .line 289
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 210
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/oculus/horizon/R$id;->action_search:I

    if-ne v0, v1, :cond_0

    .line 211
    new-instance v1, Lcom/oculus/horizon/navigation/FragmentNavigator;

    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreSectionFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mFragmentFactoryLazy:Lcom/facebook/inject/Lazy;

    .line 212
    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    invoke-virtual {v0}, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;->newSearchFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    .line 213
    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    .line 214
    const/4 v0, 0x1

    .line 216
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 254
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreSectionCache:Lcom/oculus/horizon/store/StoreSectionCache;

    if-eqz v0, :cond_0

    .line 255
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreSectionCache:Lcom/oculus/horizon/store/StoreSectionCache;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreSectionCache;->clearUpdateListener()V

    .line 257
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mImpressionDetector:Lcom/oculus/horizon/store/impression/StoreImpressionDetector;

    if-eqz v0, :cond_1

    .line 258
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mImpressionDetector:Lcom/oculus/horizon/store/impression/StoreImpressionDetector;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/impression/StoreImpressionDetector;->stopTracking()V

    .line 261
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mMainScrollView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 262
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mMainScrollView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 263
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mMainScrollView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 264
    invoke-static {v1}, Lcom/oculus/horizon/store/StoreItemAdapter;->destroyStoreCountdownTimerInViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 262
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 267
    :cond_2
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onPause()V

    .line 268
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 221
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onResume()V

    .line 222
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mInstallApi:Lcom/oculus/horizon/store/InstallApi;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/InstallApi;->onResume()V

    .line 224
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoresManager:Lcom/oculus/horizon/store/StoresManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoresManager;->getStoreModel()Lcom/oculus/horizon/store/StoreModel;

    move-result-object v0

    .line 225
    if-eqz v0, :cond_0

    .line 227
    :try_start_0
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mCategoryId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoreModel;->getStoreSection(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreSection;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreSection:Lcom/oculus/horizon/store/StoreSection;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 232
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreSectionFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreSection:Lcom/oculus/horizon/store/StoreSection;

    iget-object v1, v1, Lcom/oculus/horizon/store/StoreSection;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 235
    :cond_0
    iget-boolean v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mAreStoreSectionsLoading:Z

    if-nez v0, :cond_1

    .line 236
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreSectionCache:Lcom/oculus/horizon/store/StoreSectionCache;

    if-eqz v0, :cond_1

    .line 237
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreSectionCache:Lcom/oculus/horizon/store/StoreSectionCache;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/store/StoreSectionCache;->setUpdateListener(Lcom/oculus/horizon/store/StoreSectionCache$UpdateListener;)V

    .line 238
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mImpressionDetector:Lcom/oculus/horizon/store/impression/StoreImpressionDetector;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/impression/StoreImpressionDetector;->isTracking()Z

    move-result v0

    if-nez v0, :cond_1

    .line 239
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mImpressionDetector:Lcom/oculus/horizon/store/impression/StoreImpressionDetector;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/impression/StoreImpressionDetector;->startTracking()V

    .line 244
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mMainScrollView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 245
    const/4 v0, 0x0

    move v1, v0

    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mMainScrollView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 246
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mMainScrollView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 247
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mMainScrollView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/store/StoreItemAdapter;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/store/StoreItemAdapter;->attachCountdownTimerToViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 245
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 228
    :catch_0
    move-exception v0

    .line 229
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mHasSectionLoadFailed:Z

    .line 250
    :cond_2
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 143
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 144
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mInstallApi:Lcom/oculus/horizon/store/InstallApi;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/store/InstallApi;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 145
    return-void
.end method

.method public onUpdate(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/store/StoreItemModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 351
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreSectionFragment;->isViewDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 373
    :cond_0
    :goto_0
    return-void

    .line 354
    :cond_1
    invoke-direct {p0}, Lcom/oculus/horizon/store/StoreSectionFragment;->stopLoadingState()V

    .line 355
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreSectionFragment;->showLoadedState()V

    .line 357
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mModels:Ljava/util/ArrayList;

    .line 360
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mCacheGeneration:Ljava/lang/String;

    invoke-virtual {v0, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 361
    iput-object p3, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mCacheGeneration:Ljava/lang/String;

    .line 362
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreItemAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

    invoke-virtual {v0, p2}, Lcom/oculus/horizon/store/StoreItemAdapter;->setItems(Ljava/util/List;)V

    goto :goto_0

    .line 364
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreItemAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreItemAdapter;->getItemCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    .line 365
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreItemAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

    invoke-virtual {v1}, Lcom/oculus/horizon/store/StoreItemAdapter;->shouldDisplayExtraItem()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 366
    add-int/lit8 v0, v0, -0x1

    .line 368
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    .line 369
    if-ge v0, v1, :cond_0

    .line 370
    iget-object v2, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreItemAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

    invoke-interface {p2, v0, v1}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/oculus/horizon/store/StoreItemAdapter;->addItems(Ljava/util/List;)V

    goto :goto_0
.end method

.method public onUpdateError(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/store/StoreItemModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 378
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreSectionFragment;->isViewDestroyed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 385
    :goto_0
    return-void

    .line 381
    :cond_0
    invoke-direct {p0}, Lcom/oculus/horizon/store/StoreSectionFragment;->stopLoadingState()V

    .line 382
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreSectionFragment;->showErrorState()V

    .line 383
    iput-object p3, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mCacheGeneration:Ljava/lang/String;

    .line 384
    sget-object v0, Lcom/oculus/horizon/store/StoreSectionFragment;->TAG:Ljava/lang/String;

    const-string v1, "Got an update error for category [%s]"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 156
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/base/OculusBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 157
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mInstallApi:Lcom/oculus/horizon/store/InstallApi;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/InstallApi;->onViewCreated()V

    .line 160
    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/EmptyErrorView;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    .line 161
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/EmptyErrorView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    new-instance v1, Lcom/oculus/horizon/store/StoreSectionFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/store/StoreSectionFragment$1;-><init>(Lcom/oculus/horizon/store/StoreSectionFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/EmptyErrorView;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 173
    sget v0, Lcom/oculus/horizon/R$id;->loading_indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 174
    sget v0, Lcom/oculus/horizon/R$id;->category_recycler_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mMainScrollView:Landroidx/recyclerview/widget/RecyclerView;

    .line 176
    iget-boolean v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mAreStoreSectionsLoading:Z

    if-eqz v0, :cond_0

    .line 177
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreSectionFragment;->showLoadingState()V

    .line 179
    :cond_0
    iget-boolean v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mHasSectionLoadFailed:Z

    if-eqz v0, :cond_1

    .line 180
    sget-object v0, Lcom/oculus/horizon/store/StoreSectionFragment;->TAG:Ljava/lang/String;

    const-string v1, "Error: mHasSectionLoadFailed"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 181
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreSectionFragment;->showErrorState()V

    .line 182
    iput-boolean v3, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mIsViewCreated:Z

    .line 200
    :goto_0
    return-void

    .line 186
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoresManager:Lcom/oculus/horizon/store/StoresManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoresManager;->getStoreModel()Lcom/oculus/horizon/store/StoreModel;

    move-result-object v0

    .line 187
    if-eqz v0, :cond_2

    .line 189
    :try_start_0
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mCategoryId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoreModel;->getStoreSection(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreSection;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreSection:Lcom/oculus/horizon/store/StoreSection;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 197
    :goto_1
    invoke-direct {p0, p1}, Lcom/oculus/horizon/store/StoreSectionFragment;->loadItems(Landroid/view/View;)V

    .line 199
    :cond_2
    iput-boolean v3, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mIsViewCreated:Z

    goto :goto_0

    .line 190
    :catch_0
    move-exception v0

    .line 191
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mFragmentFactoryLazy:Lcom/facebook/inject/Lazy;

    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    invoke-virtual {v0}, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;->newStoreFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    .line 192
    new-instance v2, Lcom/oculus/horizon/navigation/FragmentNavigator;

    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreSectionFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/main/MainActivity;

    invoke-virtual {v0}, Lcom/oculus/horizon/main/MainActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {v2, v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 193
    invoke-virtual {v2, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    .line 194
    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->clearBackStack()Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    .line 195
    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    goto :goto_1
.end method

.method protected reportView()V
    .locals 2

    .prologue
    .line 337
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreSection:Lcom/oculus/horizon/store/StoreSection;

    if-eqz v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreSection:Lcom/oculus/horizon/store/StoreSection;

    iget-object v1, v1, Lcom/oculus/horizon/store/StoreSection;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportSectionView(Ljava/lang/String;)V

    .line 342
    :goto_0
    return-void

    .line 340
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mShouldLog:Z

    goto :goto_0
.end method

.method protected reportViewEnd()V
    .locals 1

    .prologue
    .line 346
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->STORE_SECTION:Lcom/oculus/horizon/logging/TrackingViews$View;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/store/StoreSectionFragment;->reportViewEndInternal(Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 347
    return-void
.end method

.method showErrorState()V
    .locals 2

    .prologue
    .line 528
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 529
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/EmptyErrorView;->setVisibility(I)V

    .line 530
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mMainScrollView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 531
    return-void
.end method

.method showLoadedState()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 535
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 536
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/EmptyErrorView;->setVisibility(I)V

    .line 537
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mMainScrollView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 538
    return-void
.end method

.method showLoadingState()V
    .locals 2

    .prologue
    .line 521
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 522
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/EmptyErrorView;->setVisibility(I)V

    .line 523
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mMainScrollView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 524
    return-void
.end method

.method startLoadingState()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 298
    iput-boolean v1, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mIsLoading:Z

    .line 299
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreItemAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoreItemAdapter;->setShowLoadingIndicator(Z)V

    .line 300
    return-void
.end method

.method updateFilters(Lcom/oculus/horizon/store/StoreSection;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 315
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreSectionCache:Lcom/oculus/horizon/store/StoreSectionCache;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreSectionCache;->clearUpdateListener()V

    .line 316
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoresManager:Lcom/oculus/horizon/store/StoresManager;

    iget-object v2, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoresManager:Lcom/oculus/horizon/store/StoresManager;

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 317
    invoke-virtual/range {v0 .. v6}, Lcom/oculus/horizon/store/StoresManager;->get(Lcom/oculus/horizon/store/StoreSection;Lcom/oculus/horizon/store/StoresManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lcom/oculus/horizon/store/StoreSectionCache;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreSectionCache:Lcom/oculus/horizon/store/StoreSectionCache;

    .line 319
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreSectionCache:Lcom/oculus/horizon/store/StoreSectionCache;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/store/StoreSectionCache;->setUpdateListener(Lcom/oculus/horizon/store/StoreSectionCache$UpdateListener;)V

    .line 320
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreSectionCache:Lcom/oculus/horizon/store/StoreSectionCache;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreSectionCache;->notifyUpdate()V

    .line 321
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreSectionCache:Lcom/oculus/horizon/store/StoreSectionCache;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreSectionCache;->size()I

    move-result v0

    if-nez v0, :cond_0

    .line 322
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment;->mStoreSectionCache:Lcom/oculus/horizon/store/StoreSectionCache;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoreSectionCache;->reload(I)V

    .line 323
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreSectionFragment;->startLoadingState()V

    .line 325
    :cond_0
    return-void
.end method
