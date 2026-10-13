.class public Lcom/oculus/horizon/store/StoreFragment;
.super Lcom/oculus/horizon/base/OculusBaseFragment;
.source "StoreFragment.java"

# interfaces
.implements Lcom/oculus/horizon/mainnavigation/TopLevelFragment;
.implements Lcom/oculus/horizon/store/StoreSectionCache$UpdateListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# instance fields
.field private $ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

.field private mAutoScrollTimer:Ljava/util/Timer;

.field private final mCategoryImpressionDetectors:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/store/impression/StoreImpressionDetector;",
            ">;"
        }
    .end annotation
.end field

.field private final mDisposableAdapters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/store/StoreItemAdapter;",
            ">;"
        }
    .end annotation
.end field

.field private mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

.field private final mFailedSectionIds:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
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

.field private mInstallApi:Lcom/oculus/horizon/store/InstallApi;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mIsInTakeverScrollCooldown:Z

.field private final mLoadedSectionIds:Landroidx/collection/SimpleArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroidx/collection/SimpleArrayMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mLoadingIndicator:Landroid/widget/ProgressBar;

.field private mMainScrollView:Lcom/oculus/horizon/widget/ExtendedScrollView;

.field private mMainView:Landroid/widget/LinearLayout;

.field private mMobileConfigFactory:Lcom/facebook/mobileconfig/factory/MobileConfig;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mRoadblockedStoreSectionHelper:Lcom/oculus/horizon/store/roadblock/RoadblockedStoreSectionHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mScrollToPos:I

.field private mSectionCount:I

.field private mShouldShowTakeoverRating:Ljavax/inject/Provider;
    .annotation runtime Lcom/google/inject/name/Named;
        value = "oculus_horizon_takeover_rating"
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

.field private mShouldShowUserRating:Ljavax/inject/Provider;
    .annotation runtime Lcom/google/inject/name/Named;
        value = "oculus_horizon_user_rating_in_store"
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

.field private mStoreItemAdapterProvider:Lcom/oculus/horizon/store/StoreItemAdapterProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mStoreModel:Lcom/oculus/horizon/store/StoreModel;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mStoresManager:Lcom/oculus/horizon/store/StoresManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mStyleManager:Lcom/oculus/horizon/style/StyleManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mTakeoverAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

.field private mTakeoverItem:Landroid/widget/FrameLayout;

.field private mTakeoverItemImage:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private mTakeoverItemName:Landroid/widget/TextView;

.field private mTakeoverItemPrice:Landroid/widget/TextView;

.field private mTakeoverModeCarousel:Landroidx/recyclerview/widget/RecyclerView;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/store/StoreFragment;)V
    .locals 1

    .prologue
    .line 80
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/store/StoreFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/store/StoreFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/store/StoreFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/store/StoreFragment;)V
    .locals 2

    .prologue
    .line 80
    new-instance v0, Lcom/facebook/inject/InjectionContext;

    const/4 v1, 0x1

    invoke-direct {v0, v1, p0}, Lcom/facebook/inject/InjectionContext;-><init>(ILcom/facebook/inject/InjectorLike;)V

    iput-object v0, p1, Lcom/oculus/horizon/store/StoreFragment;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {p0}, Lcom/oculus/horizon/store/StoresManager;->$ul_$xXXcom_oculus_horizon_store_StoresManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/store/StoresManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/store/StoreFragment;->mStoresManager:Lcom/oculus/horizon/store/StoresManager;

    invoke-static {p0}, Lcom/oculus/horizon/store/StoreItemAdapter;->$ul_$xXXcom_oculus_horizon_store_StoreItemAdapterProvider$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/store/StoreItemAdapterProvider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/store/StoreFragment;->mStoreItemAdapterProvider:Lcom/oculus/horizon/store/StoreItemAdapterProvider;

    invoke-static {p0}, Lcom/oculus/horizon/style/StyleManager;->$ul_$xXXcom_oculus_horizon_style_StyleManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/style/StyleManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/store/StoreFragment;->mStyleManager:Lcom/oculus/horizon/style/StyleManager;

    invoke-static {p0}, Lcom/oculus/horizon/store/roadblock/RoadblockedStoreSectionHelper;->$ul_$xXXcom_oculus_horizon_store_roadblock_RoadblockedStoreSectionHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/store/roadblock/RoadblockedStoreSectionHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/store/StoreFragment;->mRoadblockedStoreSectionHelper:Lcom/oculus/horizon/store/roadblock/RoadblockedStoreSectionHelper;

    invoke-static {p0}, Lcom/oculus/horizon/store/InstallApi;->$ul_$xXXcom_oculus_horizon_store_InstallApi$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/store/InstallApi;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/store/StoreFragment;->mInstallApi:Lcom/oculus/horizon/store/InstallApi;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/store/StoreFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-static {p0}, Lcom/oculus/mobileconfig/init/MobileConfigInitModule;->$ul_$xXXcom_facebook_mobileconfig_factory_MobileConfig$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/mobileconfig/factory/MobileConfig;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/store/StoreFragment;->mMobileConfigFactory:Lcom/facebook/mobileconfig/factory/MobileConfig;

    invoke-static {p0}, Lcom/oculus/horizon/store/StoreModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fhorizon$x5Fgallery$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/store/StoreFragment;->mGalleryGk:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/horizon/store/StoreModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fhorizon$x5Fuser$x5Frating$x5Fin$x5Fstore$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/store/StoreFragment;->mShouldShowUserRating:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/horizon/store/StoreModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fhorizon$x5Ftakeover$x5Frating$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/store/StoreFragment;->mShouldShowTakeoverRating:Ljavax/inject/Provider;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 85
    const-class v0, Lcom/oculus/horizon/store/StoreFragment;

    sput-object v0, Lcom/oculus/horizon/store/StoreFragment;->TAG:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;-><init>()V

    .line 109
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mLoadedSectionIds:Landroidx/collection/SimpleArrayMap;

    .line 112
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mFailedSectionIds:Ljava/util/Set;

    .line 114
    new-instance v0, Landroidx/collection/SimpleArrayMap;

    invoke-direct {v0}, Landroidx/collection/SimpleArrayMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mCategoryImpressionDetectors:Landroidx/collection/SimpleArrayMap;

    .line 140
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mDisposableAdapters:Ljava/util/Map;

    .line 143
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mIsInTakeverScrollCooldown:Z

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/store/StoreFragment;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/oculus/horizon/store/StoreFragment;->triggerImpressionDetection()V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/horizon/store/StoreFragment;)Lcom/facebook/inject/InjectionContext;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/oculus/horizon/store/StoreFragment;)I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mScrollToPos:I

    return v0
.end method

.method static synthetic access$1002(Lcom/oculus/horizon/store/StoreFragment;I)I
    .locals 0

    .prologue
    .line 80
    iput p1, p0, Lcom/oculus/horizon/store/StoreFragment;->mScrollToPos:I

    return p1
.end method

.method static synthetic access$1004(Lcom/oculus/horizon/store/StoreFragment;)I
    .locals 1

    .prologue
    .line 80
    iget v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mScrollToPos:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mScrollToPos:I

    return v0
.end method

.method static synthetic access$1100(Lcom/oculus/horizon/store/StoreFragment;)Lcom/oculus/horizon/store/roadblock/RoadblockedStoreSectionHelper;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mRoadblockedStoreSectionHelper:Lcom/oculus/horizon/store/roadblock/RoadblockedStoreSectionHelper;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/store/StoreFragment;)Lcom/oculus/horizon/store/StoreModel;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mStoreModel:Lcom/oculus/horizon/store/StoreModel;

    return-object v0
.end method

.method static synthetic access$202(Lcom/oculus/horizon/store/StoreFragment;Lcom/oculus/horizon/store/StoreModel;)Lcom/oculus/horizon/store/StoreModel;
    .locals 0

    .prologue
    .line 80
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreFragment;->mStoreModel:Lcom/oculus/horizon/store/StoreModel;

    return-object p1
.end method

.method static synthetic access$300(Lcom/oculus/horizon/store/StoreFragment;)Lcom/oculus/horizon/store/StoresManager;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mStoresManager:Lcom/oculus/horizon/store/StoresManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/store/StoreFragment;)Lcom/oculus/horizon/style/StyleManager;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mStyleManager:Lcom/oculus/horizon/style/StyleManager;

    return-object v0
.end method

.method static synthetic access$502(Lcom/oculus/horizon/store/StoreFragment;I)I
    .locals 0

    .prologue
    .line 80
    iput p1, p0, Lcom/oculus/horizon/store/StoreFragment;->mSectionCount:I

    return p1
.end method

.method static synthetic access$600(Lcom/oculus/horizon/store/StoreFragment;)V
    .locals 0

    .prologue
    .line 80
    invoke-direct {p0}, Lcom/oculus/horizon/store/StoreFragment;->loadSections()V

    return-void
.end method

.method static synthetic access$700(Lcom/oculus/horizon/store/StoreFragment;)Z
    .locals 1

    .prologue
    .line 80
    iget-boolean v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mIsInTakeverScrollCooldown:Z

    return v0
.end method

.method static synthetic access$702(Lcom/oculus/horizon/store/StoreFragment;Z)Z
    .locals 0

    .prologue
    .line 80
    iput-boolean p1, p0, Lcom/oculus/horizon/store/StoreFragment;->mIsInTakeverScrollCooldown:Z

    return p1
.end method

.method static synthetic access$800(Lcom/oculus/horizon/store/StoreFragment;)Landroidx/recyclerview/widget/RecyclerView;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverModeCarousel:Landroidx/recyclerview/widget/RecyclerView;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oculus/horizon/store/StoreFragment;)Lcom/oculus/horizon/store/StoreItemAdapter;
    .locals 1

    .prologue
    .line 80
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

    return-object v0
.end method

.method private addRowToMainView(Ljava/lang/String;Landroid/view/View;)V
    .locals 4

    .prologue
    .line 766
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mLoadedSectionIds:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 767
    if-eqz v0, :cond_0

    .line 768
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreFragment;->mLoadedSectionIds:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p1}, Landroidx/collection/SimpleArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 769
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreFragment;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 771
    :cond_0
    const/4 v1, 0x0

    .line 772
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mStoreModel:Lcom/oculus/horizon/store/StoreModel;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/store/StoreModel;

    iget-object v0, v0, Lcom/oculus/horizon/store/StoreModel;->storeSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/store/StoreSection;

    .line 773
    iget-object v0, v0, Lcom/oculus/horizon/store/StoreSection;->category:Ljava/lang/String;

    .line 774
    iget-object v3, p0, Lcom/oculus/horizon/store/StoreFragment;->mLoadedSectionIds:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v3, v0}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 775
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    .line 776
    goto :goto_0

    .line 778
    :cond_2
    invoke-virtual {p1, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 779
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mLoadedSectionIds:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1, p2}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 781
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mStoreModel:Lcom/oculus/horizon/store/StoreModel;

    iget-object v0, v0, Lcom/oculus/horizon/store/StoreModel;->storeSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne v1, v0, :cond_3

    .line 782
    sget v0, Lcom/oculus/horizon/R$id;->row_divider:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 783
    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 785
    :cond_3
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v0, p2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 786
    return-void

    .line 789
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Could not find index for category: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private disposeAdapters()V
    .locals 2

    .prologue
    .line 810
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mDisposableAdapters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/store/StoreItemAdapter;

    .line 811
    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreItemAdapter;->close()V

    goto :goto_0

    .line 813
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mDisposableAdapters:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    .line 814
    return-void
.end method

.method private fetchStores()V
    .locals 2

    .prologue
    .line 315
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mStoresManager:Lcom/oculus/horizon/store/StoresManager;

    new-instance v1, Lcom/oculus/horizon/store/StoreFragment$3;

    invoke-direct {v1, p0, p0}, Lcom/oculus/horizon/store/StoreFragment$3;-><init>(Lcom/oculus/horizon/store/StoreFragment;Lcom/oculus/horizon/base/OculusBaseFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoresManager;->fetchStore(Lcom/oculus/horizon/common/UICallback;)V

    .line 349
    return-void
.end method

.method private getFrontPageRedesignValue()Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;
    .locals 4

    .prologue
    .line 826
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mMobileConfigFactory:Lcom/facebook/mobileconfig/factory/MobileConfig;

    sget-wide v2, Lcom/oculus/horizon/store/MC$oculus_store;->horizon_front_page_redesign_clean:J

    .line 827
    invoke-interface {v0, v2, v3}, Lcom/facebook/mobileconfig/factory/MobileConfig;->getString(J)Ljava/lang/String;

    move-result-object v0

    .line 826
    invoke-static {v0}, Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;->from(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

    move-result-object v0

    return-object v0
.end method

.method private static isFirstSubstore(Lcom/oculus/horizon/store/StoreModel;Ljava/lang/String;)Z
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 422
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreModel;->storeSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/store/StoreModel;->storeSections:Ljava/util/List;

    .line 423
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/store/StoreSection;

    iget-object v0, v0, Lcom/oculus/horizon/store/StoreSection;->category:Ljava/lang/String;

    invoke-virtual {v0, p1}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    move v0, v1

    goto :goto_0
.end method

.method private loadSections()V
    .locals 4

    .prologue
    .line 389
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mStoreModel:Lcom/oculus/horizon/store/StoreModel;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 391
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mStoreModel:Lcom/oculus/horizon/store/StoreModel;

    iget-object v0, v0, Lcom/oculus/horizon/store/StoreModel;->storeSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/store/StoreSection;

    .line 392
    iget-object v2, p0, Lcom/oculus/horizon/store/StoreFragment;->mStoresManager:Lcom/oculus/horizon/store/StoresManager;

    iget-object v3, p0, Lcom/oculus/horizon/store/StoreFragment;->mStoresManager:Lcom/oculus/horizon/store/StoresManager;

    invoke-virtual {v2, v0, v3}, Lcom/oculus/horizon/store/StoresManager;->get(Lcom/oculus/horizon/store/StoreSection;Lcom/oculus/horizon/store/StoresManager;)Lcom/oculus/horizon/store/StoreSectionCache;

    move-result-object v0

    .line 393
    invoke-virtual {v0, p0}, Lcom/oculus/horizon/store/StoreSectionCache;->setUpdateListener(Lcom/oculus/horizon/store/StoreSectionCache$UpdateListener;)V

    .line 394
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/store/StoreSectionCache;->reload(I)V

    goto :goto_0

    .line 396
    :cond_0
    return-void
.end method

.method private makeRow(Ljava/util/List;Ljava/lang/String;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/store/StoreItemModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 620
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 621
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 622
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mStoreModel:Lcom/oculus/horizon/store/StoreModel;

    .line 623
    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/store/StoreModel;

    invoke-virtual {v0, p2}, Lcom/oculus/horizon/store/StoreModel;->getStoreSection(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreSection;

    move-result-object v2

    .line 625
    sget v0, Lcom/oculus/horizon/R$layout;->store_row:I

    const/4 v3, 0x0

    invoke-static {v1, v0, v3}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v11

    .line 627
    sget v0, Lcom/oculus/horizon/R$id;->header_layout:I

    invoke-virtual {v11, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    .line 629
    sget v3, Lcom/oculus/horizon/R$id;->see_all_button_area:I

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 630
    sget v3, Lcom/oculus/horizon/R$id;->see_all_text:I

    invoke-virtual {v11, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    .line 631
    new-instance v6, Lcom/oculus/horizon/store/StoreFragment$7;

    invoke-direct {v6, p0, v2, p1}, Lcom/oculus/horizon/store/StoreFragment$7;-><init>(Lcom/oculus/horizon/store/StoreFragment;Lcom/oculus/horizon/store/StoreSection;Ljava/util/List;)V

    invoke-virtual {v4, v6}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 655
    sget v4, Lcom/oculus/horizon/R$id;->row_name:I

    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 656
    iget-object v6, v2, Lcom/oculus/horizon/store/StoreSection;->name:Ljava/lang/String;

    invoke-virtual {v4, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 658
    sget v4, Lcom/oculus/horizon/R$id;->special_section_marker:I

    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    .line 661
    iget-object v6, v2, Lcom/oculus/horizon/store/StoreSection;->contentType:Ljava/lang/String;

    invoke-static {v6}, Lcom/oculus/horizon/store/StoreSectionBrand;->from(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreSectionBrand;

    move-result-object v6

    .line 662
    invoke-direct {p0, v2, v6}, Lcom/oculus/horizon/store/StoreFragment;->shouldShowSpecialIcon(Lcom/oculus/horizon/store/StoreSection;Lcom/oculus/horizon/store/StoreSectionBrand;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 663
    const/4 v7, 0x0

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 664
    iget v7, v6, Lcom/oculus/horizon/store/StoreSectionBrand;->iconResourceId:I

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 669
    :goto_0
    sget v4, Lcom/oculus/horizon/R$id;->row_recycler_view:I

    invoke-virtual {v11, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    move-object v10, v4

    check-cast v10, Landroidx/recyclerview/widget/RecyclerView;

    .line 670
    const/4 v4, 0x1

    invoke-virtual {v10, v4}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 671
    sget v4, Lcom/oculus/horizon/R$dimen;->store_recyclerview_inner_padding:I

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v7

    .line 672
    sget v4, Lcom/oculus/horizon/R$dimen;->store_recyclerview_outer_padding:I

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    .line 673
    new-instance v4, Lcom/oculus/horizon/util/ui/PaddingDecoration;

    const/4 v9, 0x0

    invoke-direct {v4, v9, v7, v8}, Lcom/oculus/horizon/util/ui/PaddingDecoration;-><init>(III)V

    invoke-virtual {v10, v4}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 676
    invoke-direct {p0}, Lcom/oculus/horizon/store/StoreFragment;->getFrontPageRedesignValue()Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

    move-result-object v9

    .line 677
    sget-object v4, Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;->STORE_CONTROL:Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

    if-eq v9, v4, :cond_0

    .line 678
    sget v4, Lcom/oculus/horizon/R$dimen;->store_see_all_condensed_height:I

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v12

    .line 679
    sget v4, Lcom/oculus/horizon/R$dimen;->store_recyclerview_condensed_height:I

    .line 680
    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    .line 682
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    .line 683
    iput v5, v4, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 684
    invoke-virtual {v10, v4}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 685
    invoke-direct {p0, v2, v6}, Lcom/oculus/horizon/store/StoreFragment;->shouldShowSpecialIcon(Lcom/oculus/horizon/store/StoreSection;Lcom/oculus/horizon/store/StoreSectionBrand;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 686
    invoke-virtual {v3}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 687
    iput v12, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 688
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 690
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    .line 691
    iput v12, v3, Landroid/widget/LinearLayout$LayoutParams;->height:I

    .line 692
    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 696
    :cond_0
    new-instance v0, Lcom/oculus/horizon/widget/CenterLayoutManager;

    invoke-direct {v0, v1}, Lcom/oculus/horizon/widget/CenterLayoutManager;-><init>(Landroid/content/Context;)V

    .line 697
    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Lcom/oculus/horizon/widget/CenterLayoutManager;->setOrientation(I)V

    .line 698
    invoke-virtual {v10, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 699
    new-instance v0, Lcom/oculus/horizon/widget/SnapToStartSnapHelper;

    mul-int/lit8 v3, v7, 0x2

    add-int/2addr v3, v8

    invoke-direct {v0, v3}, Lcom/oculus/horizon/widget/SnapToStartSnapHelper;-><init>(I)V

    .line 700
    invoke-virtual {v0, v10}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 702
    sget-object v8, Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;->DEFAULT:Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;

    .line 703
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mStyleManager:Lcom/oculus/horizon/style/StyleManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/style/StyleManager;->getStyleTheme()Lcom/oculus/model/StyleTheme;

    move-result-object v0

    sget-object v3, Lcom/oculus/model/StyleTheme;->HALLOWEEN:Lcom/oculus/model/StyleTheme;

    if-ne v0, v3, :cond_1

    .line 704
    sget-object v8, Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;->DARK:Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;

    .line 711
    :cond_1
    sget-object v0, Lcom/oculus/horizon/store/StoreFragment$8;->$SwitchMap$com$oculus$horizon$store$StoreFragment$StoreFrontPageDesign:[I

    invoke-direct {p0}, Lcom/oculus/horizon/store/StoreFragment;->getFrontPageRedesignValue()Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

    move-result-object v3

    invoke-virtual {v3}, Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_0

    .line 729
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mShouldShowUserRating:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 730
    sget v3, Lcom/oculus/horizon/R$layout;->store_vertical_product_view_with_rating:I

    .line 736
    :goto_1
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mStoreItemAdapterProvider:Lcom/oculus/horizon/store/StoreItemAdapterProvider;

    const/4 v4, 0x0

    .line 741
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x19

    invoke-static {v5, v6}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-interface {p1, v4, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x0

    sget-object v6, Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;->STORE_CONTROL:Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

    if-eq v9, v6, :cond_4

    const/4 v6, 0x1

    :goto_2
    iget-object v7, p0, Lcom/oculus/horizon/store/StoreFragment;->mInstallApi:Lcom/oculus/horizon/store/InstallApi;

    sget-object v9, Lcom/oculus/horizon/logging/TrackingViews$View;->STORE:Lcom/oculus/horizon/logging/TrackingViews$View;

    .line 737
    invoke-virtual/range {v0 .. v9}, Lcom/oculus/horizon/store/StoreItemAdapterProvider;->get(Landroidx/fragment/app/FragmentActivity;Lcom/oculus/horizon/store/StoreSection;ILjava/util/List;ZZLcom/oculus/horizon/store/InstallApi;Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;Lcom/oculus/horizon/logging/TrackingViews$View;)Lcom/oculus/horizon/store/StoreItemAdapter;

    move-result-object v0

    .line 747
    iget-object v1, v2, Lcom/oculus/horizon/store/StoreSection;->category:Ljava/lang/String;

    invoke-direct {p0, v1, v0}, Lcom/oculus/horizon/store/StoreFragment;->registerDisposableAdapter(Ljava/lang/String;Lcom/oculus/horizon/store/StoreItemAdapter;)V

    .line 748
    invoke-virtual {v10, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 750
    new-instance v1, Lcom/oculus/horizon/store/impression/StoreImpressionDetector;

    new-instance v3, Lcom/oculus/horizon/store/impression/StoreImpressionListener;

    iget-object v4, p0, Lcom/oculus/horizon/store/StoreFragment;->mHandler:Lcom/oculus/horizon/store/impression/StoreLoggingHandler;

    invoke-direct {v3, v0, v2, v4}, Lcom/oculus/horizon/store/impression/StoreImpressionListener;-><init>(Lcom/oculus/horizon/store/StoreItemAdapter;Lcom/oculus/horizon/store/StoreSection;Lcom/oculus/horizon/store/impression/StoreLoggingHandler;)V

    invoke-direct {v1, v10, v3}, Lcom/oculus/horizon/store/impression/StoreImpressionDetector;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/facebook/crudolib/view/impression/ImpressionListener;)V

    .line 753
    invoke-virtual {v1}, Lcom/oculus/horizon/store/impression/StoreImpressionDetector;->startTracking()V

    .line 754
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mCategoryImpressionDetectors:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p2, v1}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 756
    invoke-direct {p0, p2, v11}, Lcom/oculus/horizon/store/StoreFragment;->addRowToMainView(Ljava/lang/String;Landroid/view/View;)V

    .line 757
    return-void

    .line 666
    :cond_2
    const/16 v7, 0x8

    invoke-virtual {v4, v7}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 713
    :pswitch_0
    sget v3, Lcom/oculus/horizon/R$layout;->store_vertical_product_view_square:I

    goto :goto_1

    .line 716
    :pswitch_1
    sget-object v0, Lcom/oculus/horizon/store/StoreFragment$8;->$SwitchMap$com$oculus$horizon$store$StoreSection$StoreSectionLayout:[I

    iget-object v3, v2, Lcom/oculus/horizon/store/StoreSection;->layout:Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;

    invoke-virtual {v3}, Lcom/oculus/horizon/store/StoreSection$StoreSectionLayout;->ordinal()I

    move-result v3

    aget v0, v0, v3

    packed-switch v0, :pswitch_data_1

    .line 724
    sget v3, Lcom/oculus/horizon/R$layout;->store_vertical_product_view_with_rating:I

    goto :goto_1

    .line 718
    :pswitch_2
    sget v3, Lcom/oculus/horizon/R$layout;->store_vertical_product_view_square:I

    goto :goto_1

    .line 721
    :pswitch_3
    sget v3, Lcom/oculus/horizon/R$layout;->store_vertical_product_view_with_rating:I

    goto :goto_1

    .line 732
    :cond_3
    sget v3, Lcom/oculus/horizon/R$layout;->store_vertical_product_view:I

    goto :goto_1

    .line 741
    :cond_4
    const/4 v6, 0x0

    goto :goto_2

    .line 711
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 716
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private registerDisposableAdapter(Ljava/lang/String;Lcom/oculus/horizon/store/StoreItemAdapter;)V
    .locals 1

    .prologue
    .line 801
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mDisposableAdapters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/store/StoreItemAdapter;

    .line 802
    if-eqz v0, :cond_0

    .line 803
    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreItemAdapter;->close()V

    .line 805
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mDisposableAdapters:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 806
    return-void
.end method

.method private setupAutoScroll()V
    .locals 6

    .prologue
    .line 556
    invoke-direct {p0}, Lcom/oculus/horizon/store/StoreFragment;->getFrontPageRedesignValue()Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

    move-result-object v0

    .line 557
    sget-object v1, Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;->STORE_CONTROL:Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverModeCarousel:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mAutoScrollTimer:Ljava/util/Timer;

    if-nez v0, :cond_0

    .line 561
    const/4 v0, 0x0

    iput v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mScrollToPos:I

    .line 563
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mAutoScrollTimer:Ljava/util/Timer;

    .line 564
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mAutoScrollTimer:Ljava/util/Timer;

    new-instance v1, Lcom/oculus/horizon/store/StoreFragment$5;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/store/StoreFragment$5;-><init>(Lcom/oculus/horizon/store/StoreFragment;)V

    const-wide/16 v2, 0x0

    const-wide/16 v4, 0x1388

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->scheduleAtFixedRate(Ljava/util/TimerTask;JJ)V

    .line 581
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverModeCarousel:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/oculus/horizon/store/StoreFragment$6;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/store/StoreFragment$6;-><init>(Lcom/oculus/horizon/store/StoreFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnItemTouchListener(Landroidx/recyclerview/widget/RecyclerView$OnItemTouchListener;)V

    .line 611
    :cond_0
    return-void
.end method

.method private shouldShowSpecialIcon(Lcom/oculus/horizon/store/StoreSection;Lcom/oculus/horizon/store/StoreSectionBrand;)Z
    .locals 2

    .prologue
    .line 819
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mGalleryGk:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oculus/horizon/store/StoreSection;->contentType:Ljava/lang/String;

    .line 820
    invoke-static {v0}, Lcom/oculus/horizon/store/roadblock/RoadblockedStoreSectionHelper;->isSpecial(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p2, :cond_0

    iget v0, p2, Lcom/oculus/horizon/store/StoreSectionBrand;->iconResourceId:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private triggerImpressionDetection()V
    .locals 3

    .prologue
    .line 793
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreFragment;->mCategoryImpressionDetectors:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 794
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mCategoryImpressionDetectors:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, v1}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/store/impression/StoreImpressionDetector;

    .line 795
    invoke-virtual {v0}, Lcom/oculus/horizon/store/impression/StoreImpressionDetector;->triggerImpressionDetection()V

    .line 793
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 797
    :cond_0
    return-void
.end method

.method private updateTakeoverViews(Ljava/util/List;Ljava/lang/String;)V
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/store/StoreItemModel;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    const/16 v6, 0x19

    const/16 v11, 0x8

    const/4 v10, 0x1

    const/4 v5, 0x0

    .line 430
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 431
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverItem:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 432
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverModeCarousel:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 533
    :goto_0
    return-void

    .line 436
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v10, :cond_3

    .line 437
    invoke-interface {p1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/store/StoreItemModel;

    .line 439
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverItemName:Landroid/widget/TextView;

    iget-object v2, v0, Lcom/oculus/horizon/store/StoreItemModel;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 440
    instance-of v1, v0, Lcom/oculus/horizon/store/StoreApplicationModel;

    if-eqz v1, :cond_2

    .line 441
    iget-object v2, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverItemPrice:Landroid/widget/TextView;

    move-object v1, v0

    check-cast v1, Lcom/oculus/horizon/store/StoreApplicationModel;

    iget-object v1, v1, Lcom/oculus/horizon/store/StoreApplicationModel;->price:Ljava/lang/String;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 442
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverItemPrice:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 446
    :goto_1
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverItem:Landroid/widget/FrameLayout;

    invoke-virtual {v1, v5}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 449
    iget-object v1, v0, Lcom/oculus/horizon/store/StoreItemModel;->imageSource:Ljava/lang/String;

    invoke-static {v1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 450
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverItemImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v2, v0, Lcom/oculus/horizon/store/StoreItemModel;->imageSource:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 453
    :cond_1
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverItem:Landroid/widget/FrameLayout;

    new-instance v2, Lcom/oculus/horizon/store/StoreFragment$4;

    invoke-direct {v2, p0, v0}, Lcom/oculus/horizon/store/StoreFragment$4;-><init>(Lcom/oculus/horizon/store/StoreFragment;Lcom/oculus/horizon/store/StoreItemModel;)V

    invoke-virtual {v1, v2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 474
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverModeCarousel:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v11}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0

    .line 444
    :cond_2
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverItemPrice:Landroid/widget/TextView;

    invoke-virtual {v1, v11}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 476
    :cond_3
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mShouldShowTakeoverRating:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 477
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mStoreItemAdapterProvider:Lcom/oculus/horizon/store/StoreItemAdapterProvider;

    .line 479
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/store/StoreFragment;->mStoreModel:Lcom/oculus/horizon/store/StoreModel;

    .line 480
    invoke-virtual {v2, p2}, Lcom/oculus/horizon/store/StoreModel;->getStoreSection(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreSection;

    move-result-object v2

    sget v3, Lcom/oculus/horizon/R$layout;->store_carousel_item_with_rating:I

    .line 482
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-interface {p1, v5, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    .line 484
    invoke-direct {p0}, Lcom/oculus/horizon/store/StoreFragment;->getFrontPageRedesignValue()Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

    move-result-object v6

    sget-object v7, Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;->STORE_CONTROL:Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

    if-eq v6, v7, :cond_5

    move v6, v10

    :goto_2
    iget-object v7, p0, Lcom/oculus/horizon/store/StoreFragment;->mInstallApi:Lcom/oculus/horizon/store/InstallApi;

    sget-object v8, Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;->DEFAULT:Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;

    sget-object v9, Lcom/oculus/horizon/logging/TrackingViews$View;->STORE:Lcom/oculus/horizon/logging/TrackingViews$View;

    .line 478
    invoke-virtual/range {v0 .. v9}, Lcom/oculus/horizon/store/StoreItemAdapterProvider;->get(Landroidx/fragment/app/FragmentActivity;Lcom/oculus/horizon/store/StoreSection;ILjava/util/List;ZZLcom/oculus/horizon/store/InstallApi;Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;Lcom/oculus/horizon/logging/TrackingViews$View;)Lcom/oculus/horizon/store/StoreItemAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

    .line 502
    :goto_3
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

    invoke-virtual {v0, v10}, Lcom/oculus/horizon/store/StoreItemAdapter;->setShouldShowItemCountdownTimers(Z)V

    .line 503
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

    invoke-direct {p0, p2, v0}, Lcom/oculus/horizon/store/StoreFragment;->registerDisposableAdapter(Ljava/lang/String;Lcom/oculus/horizon/store/StoreItemAdapter;)V

    .line 504
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverModeCarousel:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 505
    invoke-direct {p0}, Lcom/oculus/horizon/store/StoreFragment;->getFrontPageRedesignValue()Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

    move-result-object v0

    .line 506
    sget-object v1, Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;->STORE_CONTROL:Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

    if-eq v0, v1, :cond_4

    .line 507
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverModeCarousel:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 508
    sget v1, Lcom/oculus/horizon/R$dimen;->store_recyclerview_inner_padding:I

    .line 509
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 510
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverModeCarousel:Landroidx/recyclerview/widget/RecyclerView;

    .line 511
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 512
    iput v1, v0, Landroid/widget/LinearLayout$LayoutParams;->bottomMargin:I

    .line 513
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverModeCarousel:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 516
    :cond_4
    new-instance v0, Lcom/oculus/horizon/store/impression/StoreImpressionDetector;

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverModeCarousel:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/oculus/horizon/store/impression/StoreImpressionListener;

    iget-object v3, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

    iget-object v4, p0, Lcom/oculus/horizon/store/StoreFragment;->mStoreModel:Lcom/oculus/horizon/store/StoreModel;

    .line 520
    invoke-virtual {v4, p2}, Lcom/oculus/horizon/store/StoreModel;->getStoreSection(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreSection;

    move-result-object v4

    iget-object v6, p0, Lcom/oculus/horizon/store/StoreFragment;->mHandler:Lcom/oculus/horizon/store/impression/StoreLoggingHandler;

    invoke-direct {v2, v3, v4, v6}, Lcom/oculus/horizon/store/impression/StoreImpressionListener;-><init>(Lcom/oculus/horizon/store/StoreItemAdapter;Lcom/oculus/horizon/store/StoreSection;Lcom/oculus/horizon/store/impression/StoreLoggingHandler;)V

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/store/impression/StoreImpressionDetector;-><init>(Landroidx/recyclerview/widget/RecyclerView;Lcom/facebook/crudolib/view/impression/ImpressionListener;)V

    .line 521
    invoke-virtual {v0}, Lcom/oculus/horizon/store/impression/StoreImpressionDetector;->startTracking()V

    .line 522
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreFragment;->mCategoryImpressionDetectors:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v1, p2, v0}, Landroidx/collection/SimpleArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 524
    new-instance v0, Lcom/oculus/horizon/widget/CenterLayoutManager;

    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/widget/CenterLayoutManager;-><init>(Landroid/content/Context;)V

    .line 525
    invoke-virtual {v0, v5}, Lcom/oculus/horizon/widget/CenterLayoutManager;->setOrientation(I)V

    .line 526
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverModeCarousel:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 528
    invoke-direct {p0}, Lcom/oculus/horizon/store/StoreFragment;->setupAutoScroll()V

    .line 530
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverItem:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v11}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 531
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverModeCarousel:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v5}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto/16 :goto_0

    :cond_5
    move v6, v5

    .line 484
    goto :goto_2

    .line 489
    :cond_6
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mStoreItemAdapterProvider:Lcom/oculus/horizon/store/StoreItemAdapterProvider;

    .line 491
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/store/StoreFragment;->mStoreModel:Lcom/oculus/horizon/store/StoreModel;

    .line 492
    invoke-virtual {v2, p2}, Lcom/oculus/horizon/store/StoreModel;->getStoreSection(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreSection;

    move-result-object v2

    sget v3, Lcom/oculus/horizon/R$layout;->store_carousel_item:I

    .line 494
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v4

    invoke-static {v4, v6}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-interface {p1, v5, v4}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v4

    .line 496
    invoke-direct {p0}, Lcom/oculus/horizon/store/StoreFragment;->getFrontPageRedesignValue()Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

    move-result-object v6

    sget-object v7, Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;->STORE_CONTROL:Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

    if-eq v6, v7, :cond_7

    move v6, v10

    :goto_4
    iget-object v7, p0, Lcom/oculus/horizon/store/StoreFragment;->mInstallApi:Lcom/oculus/horizon/store/InstallApi;

    sget-object v8, Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;->CAROUSEL:Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;

    sget-object v9, Lcom/oculus/horizon/logging/TrackingViews$View;->STORE:Lcom/oculus/horizon/logging/TrackingViews$View;

    .line 490
    invoke-virtual/range {v0 .. v9}, Lcom/oculus/horizon/store/StoreItemAdapterProvider;->get(Landroidx/fragment/app/FragmentActivity;Lcom/oculus/horizon/store/StoreSection;ILjava/util/List;ZZLcom/oculus/horizon/store/InstallApi;Lcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;Lcom/oculus/horizon/logging/TrackingViews$View;)Lcom/oculus/horizon/store/StoreItemAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

    .line 500
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

    invoke-virtual {v0, v10}, Lcom/oculus/horizon/store/StoreItemAdapter;->setShouldHideName(Z)V

    goto/16 :goto_3

    :cond_7
    move v6, v5

    .line 496
    goto :goto_4
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 286
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->STORE:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    .line 148
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 80
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/store/StoreFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/store/StoreFragment;)V

    .line 152
    new-instance v0, Lcom/oculus/horizon/store/impression/StoreLoggingHandler;

    const-string v1, "store"

    invoke-static {}, Lcom/facebook/crudo/concurrent/Loopers;->forNonUiThread()Landroid/os/Looper;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/store/StoreFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/store/impression/StoreLoggingHandler;-><init>(Ljava/lang/String;Landroid/os/Looper;Lcom/oculus/horizon/logging/OculusLogger;)V

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mHandler:Lcom/oculus/horizon/store/impression/StoreLoggingHandler;

    .line 153
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mStoresManager:Lcom/oculus/horizon/store/StoresManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoresManager;->getStoreModel()Lcom/oculus/horizon/store/StoreModel;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mStoreModel:Lcom/oculus/horizon/store/StoreModel;

    .line 154
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mStoreModel:Lcom/oculus/horizon/store/StoreModel;

    if-eqz v0, :cond_0

    .line 155
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mStoreModel:Lcom/oculus/horizon/store/StoreModel;

    iget-object v0, v0, Lcom/oculus/horizon/store/StoreModel;->storeSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mSectionCount:I

    .line 157
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 353
    sget v0, Lcom/oculus/horizon/R$menu;->common_search:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 354
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/base/OculusBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 355
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 162
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/store/StoreFragment;->setHasOptionsMenu(Z)V

    .line 163
    sget v0, Lcom/oculus/horizon/R$layout;->store_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 235
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mAutoScrollTimer:Ljava/util/Timer;

    if-eqz v0, :cond_0

    .line 236
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mAutoScrollTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->cancel()V

    .line 237
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mAutoScrollTimer:Ljava/util/Timer;

    invoke-virtual {v0}, Ljava/util/Timer;->purge()I

    .line 239
    :cond_0
    invoke-direct {p0}, Lcom/oculus/horizon/store/StoreFragment;->disposeAdapters()V

    .line 240
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mLoadedSectionIds:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 241
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mFailedSectionIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 242
    iput-object v1, p0, Lcom/oculus/horizon/store/StoreFragment;->mMainView:Landroid/widget/LinearLayout;

    .line 243
    iput-object v1, p0, Lcom/oculus/horizon/store/StoreFragment;->mMainScrollView:Lcom/oculus/horizon/widget/ExtendedScrollView;

    .line 244
    iput-object v1, p0, Lcom/oculus/horizon/store/StoreFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    .line 245
    iput-object v1, p0, Lcom/oculus/horizon/store/StoreFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 246
    iput-object v1, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverItem:Landroid/widget/FrameLayout;

    .line 247
    iput-object v1, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverItemImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 248
    iput-object v1, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverItemName:Landroid/widget/TextView;

    .line 249
    iput-object v1, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverItemPrice:Landroid/widget/TextView;

    .line 250
    iput-object v1, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverModeCarousel:Landroidx/recyclerview/widget/RecyclerView;

    .line 251
    iput-object v1, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverAdapter:Lcom/oculus/horizon/store/StoreItemAdapter;

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mIsInTakeverScrollCooldown:Z

    .line 254
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onDestroyView()V

    .line 255
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 4

    .prologue
    .line 359
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/oculus/horizon/R$id;->action_search:I

    if-ne v0, v1, :cond_0

    .line 360
    new-instance v1, Lcom/oculus/horizon/navigation/FragmentNavigator;

    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    const/4 v0, 0x0

    sget v2, Lcom/oculus/horizon/main/MainModule$UL_id;->$ul_$xXXcom_oculus_horizon_fragmentfactory_FragmentFactory$xXXBINDING_ID:I

    iget-object v3, p0, Lcom/oculus/horizon/store/StoreFragment;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v2, v3}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    invoke-virtual {v0}, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;->newSearchFragment()Landroidx/fragment/app/Fragment;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    .line 361
    const/4 v0, 0x1

    .line 363
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 291
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mStoreModel:Lcom/oculus/horizon/store/StoreModel;

    if-eqz v0, :cond_0

    .line 292
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mStoreModel:Lcom/oculus/horizon/store/StoreModel;

    iget-object v0, v0, Lcom/oculus/horizon/store/StoreModel;->storeSections:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/store/StoreSection;

    .line 293
    iget-object v3, p0, Lcom/oculus/horizon/store/StoreFragment;->mStoresManager:Lcom/oculus/horizon/store/StoresManager;

    iget-object v4, p0, Lcom/oculus/horizon/store/StoreFragment;->mStoresManager:Lcom/oculus/horizon/store/StoresManager;

    invoke-virtual {v3, v0, v4}, Lcom/oculus/horizon/store/StoresManager;->get(Lcom/oculus/horizon/store/StoreSection;Lcom/oculus/horizon/store/StoresManager;)Lcom/oculus/horizon/store/StoreSectionCache;

    move-result-object v0

    .line 294
    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreSectionCache;->clearUpdateListener()V

    goto :goto_0

    .line 297
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mCategoryImpressionDetectors:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->size()I

    move-result v3

    move v2, v1

    :goto_1
    if-ge v2, v3, :cond_1

    .line 298
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mCategoryImpressionDetectors:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, v2}, Landroidx/collection/SimpleArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/store/impression/StoreImpressionDetector;

    .line 299
    invoke-virtual {v0}, Lcom/oculus/horizon/store/impression/StoreImpressionDetector;->stopTracking()V

    .line 297
    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_1

    .line 301
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mCategoryImpressionDetectors:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 303
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverModeCarousel:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_2

    move v0, v1

    .line 304
    :goto_2
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverModeCarousel:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 305
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverModeCarousel:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v1

    .line 306
    invoke-static {v1}, Lcom/oculus/horizon/store/StoreItemAdapter;->destroyStoreCountdownTimerInViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 304
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 310
    :cond_2
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onPause()V

    .line 311
    return-void
.end method

.method public onResume()V
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 259
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onResume()V

    .line 261
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/main/MainActivity;

    .line 262
    sget-object v2, Lcom/oculus/horizon/mainnavigation/NavItem;->STORE:Lcom/oculus/horizon/mainnavigation/NavItem;

    sget v3, Lcom/oculus/horizon/R$string;->store_name_main:I

    invoke-virtual {v0, v2, v3, v1}, Lcom/oculus/horizon/main/MainActivity;->updateNavigation(Lcom/oculus/horizon/mainnavigation/NavItem;IZ)V

    .line 269
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mStoreModel:Lcom/oculus/horizon/store/StoreModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mStoresManager:Lcom/oculus/horizon/store/StoresManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoresManager;->shouldUpdate()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 270
    :cond_0
    invoke-direct {p0}, Lcom/oculus/horizon/store/StoreFragment;->fetchStores()V

    .line 275
    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverModeCarousel:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 276
    :goto_1
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverModeCarousel:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-ge v1, v0, :cond_2

    .line 277
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverModeCarousel:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->findViewHolderForAdapterPosition(I)Landroidx/recyclerview/widget/RecyclerView$ViewHolder;

    move-result-object v2

    .line 278
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverModeCarousel:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/store/StoreItemAdapter;

    .line 279
    invoke-virtual {v0, v2}, Lcom/oculus/horizon/store/StoreItemAdapter;->attachCountdownTimerToViewHolder(Landroidx/recyclerview/widget/RecyclerView$ViewHolder;)V

    .line 276
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_1

    .line 272
    :cond_1
    invoke-direct {p0}, Lcom/oculus/horizon/store/StoreFragment;->loadSections()V

    goto :goto_0

    .line 282
    :cond_2
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
    .line 405
    sget-object v0, Lcom/oculus/horizon/store/StoreFragment;->TAG:Ljava/lang/Class;

    const-string v1, "onUpdate() called with [%d] items"

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 406
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreFragment;->isViewDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 419
    :cond_0
    :goto_0
    return-void

    .line 410
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreFragment;->showLoadedState()V

    .line 411
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mFailedSectionIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 413
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mStoreModel:Lcom/oculus/horizon/store/StoreModel;

    invoke-static {v0, p1}, Lcom/oculus/horizon/store/StoreFragment;->isFirstSubstore(Lcom/oculus/horizon/store/StoreModel;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 414
    sget-object v0, Lcom/oculus/horizon/store/StoreFragment;->TAG:Ljava/lang/Class;

    const-string v1, "Updating takeover view with category [%s]"

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 415
    invoke-direct {p0, p2, p1}, Lcom/oculus/horizon/store/StoreFragment;->updateTakeoverViews(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0

    .line 416
    :cond_2
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 417
    invoke-direct {p0, p2, p1}, Lcom/oculus/horizon/store/StoreFragment;->makeRow(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_0
.end method

.method public onUpdateError(Ljava/lang/String;Ljava/util/List;Ljava/lang/String;)V
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
    .line 537
    sget-object v0, Lcom/oculus/horizon/store/StoreFragment;->TAG:Ljava/lang/Class;

    const-string v1, "onUpdateError() called with [%d] items"

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Object;)V

    .line 538
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreFragment;->isViewDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 553
    :cond_0
    :goto_0
    return-void

    .line 542
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mLoadedSectionIds:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0, p1}, Landroidx/collection/SimpleArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 543
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mFailedSectionIds:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 550
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mFailedSectionIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    iget v1, p0, Lcom/oculus/horizon/store/StoreFragment;->mSectionCount:I

    if-ne v0, v1, :cond_0

    .line 551
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreFragment;->showErrorState()V

    goto :goto_0

    .line 544
    :cond_3
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 545
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreFragment;->showLoadedState()V

    .line 546
    invoke-direct {p0, p2, p1}, Lcom/oculus/horizon/store/StoreFragment;->makeRow(Ljava/util/List;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 168
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/base/OculusBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 170
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 172
    sget v0, Lcom/oculus/horizon/R$id;->store_scroll_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/ExtendedScrollView;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mMainScrollView:Lcom/oculus/horizon/widget/ExtendedScrollView;

    .line 173
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mMainScrollView:Lcom/oculus/horizon/widget/ExtendedScrollView;

    new-instance v2, Lcom/oculus/horizon/store/StoreFragment$1;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/store/StoreFragment$1;-><init>(Lcom/oculus/horizon/store/StoreFragment;)V

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/ExtendedScrollView;->addOnScrollListener(Lcom/oculus/horizon/widget/ExtendedScrollView$OnScrollListener;)V

    .line 181
    sget v0, Lcom/oculus/horizon/R$id;->main_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mMainView:Landroid/widget/LinearLayout;

    .line 182
    invoke-direct {p0}, Lcom/oculus/horizon/store/StoreFragment;->getFrontPageRedesignValue()Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

    move-result-object v0

    .line 183
    sget-object v2, Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;->STORE_CONTROL:Lcom/oculus/horizon/store/StoreFragment$StoreFrontPageDesign;

    if-eq v0, v2, :cond_0

    .line 184
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout$LayoutParams;

    .line 185
    iput v5, v0, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    .line 186
    iget-object v2, p0, Lcom/oculus/horizon/store/StoreFragment;->mMainView:Landroid/widget/LinearLayout;

    invoke-virtual {v2, v0}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 190
    :cond_0
    const v0, 0x1020004

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/EmptyErrorView;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    .line 191
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    invoke-virtual {v0, v6}, Lcom/oculus/horizon/widget/EmptyErrorView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    new-instance v2, Lcom/oculus/horizon/store/StoreFragment$2;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/store/StoreFragment$2;-><init>(Lcom/oculus/horizon/store/StoreFragment;)V

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/EmptyErrorView;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 203
    sget v0, Lcom/oculus/horizon/R$id;->loading_indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 205
    sget v0, Lcom/oculus/horizon/R$id;->takeover_mode:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverItem:Landroid/widget/FrameLayout;

    .line 206
    sget v0, Lcom/oculus/horizon/R$id;->takeover_mode_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverItemImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 207
    sget v0, Lcom/oculus/horizon/R$id;->takeover_mode_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverItemName:Landroid/widget/TextView;

    .line 208
    sget v0, Lcom/oculus/horizon/R$id;->takeover_mode_price:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverItemPrice:Landroid/widget/TextView;

    .line 210
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverItem:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v6}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 212
    sget v0, Lcom/oculus/horizon/R$id;->takeover_mode_carousel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverModeCarousel:Landroidx/recyclerview/widget/RecyclerView;

    .line 213
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverModeCarousel:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 214
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverModeCarousel:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 215
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v5, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 214
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 216
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverModeCarousel:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/oculus/horizon/util/ui/PaddingDecoration;

    sget v3, Lcom/oculus/horizon/R$dimen;->store_recyclerview_inner_padding:I

    .line 219
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Lcom/oculus/horizon/R$dimen;->store_recyclerview_outer_padding:I

    .line 220
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v2, v5, v3, v1}, Lcom/oculus/horizon/util/ui/PaddingDecoration;-><init>(III)V

    .line 216
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 222
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverModeCarousel:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v6}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 224
    new-instance v0, Lcom/oculus/horizon/widget/SnapToMiddleSnapHelper;

    invoke-direct {v0}, Lcom/oculus/horizon/widget/SnapToMiddleSnapHelper;-><init>()V

    .line 225
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreFragment;->mTakeoverModeCarousel:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/SnapHelper;->attachToRecyclerView(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 227
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mLoadedSectionIds:Landroidx/collection/SimpleArrayMap;

    invoke-virtual {v0}, Landroidx/collection/SimpleArrayMap;->clear()V

    .line 228
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mFailedSectionIds:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    .line 230
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreFragment;->showLoadingState()V

    .line 231
    return-void
.end method

.method showErrorState()V
    .locals 2

    .prologue
    .line 375
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/EmptyErrorView;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mMainScrollView:Lcom/oculus/horizon/widget/ExtendedScrollView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ExtendedScrollView;->setVisibility(I)V

    .line 378
    return-void
.end method

.method showLoadedState()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 382
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 383
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/EmptyErrorView;->setVisibility(I)V

    .line 384
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mMainScrollView:Lcom/oculus/horizon/widget/ExtendedScrollView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ExtendedScrollView;->setVisibility(I)V

    .line 385
    return-void
.end method

.method showLoadingState()V
    .locals 2

    .prologue
    .line 368
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 369
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/EmptyErrorView;->setVisibility(I)V

    .line 370
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreFragment;->mMainScrollView:Lcom/oculus/horizon/widget/ExtendedScrollView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/ExtendedScrollView;->setVisibility(I)V

    .line 371
    return-void
.end method
