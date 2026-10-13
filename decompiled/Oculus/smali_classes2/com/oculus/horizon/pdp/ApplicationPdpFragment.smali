.class public Lcom/oculus/horizon/pdp/ApplicationPdpFragment;
.super Lcom/oculus/horizon/pdp/PdpFragment;
.source "ApplicationPdpFragment.java"

# interfaces
.implements Lcom/oculus/horizon/modal/AlertDialogFragment$OnClickListener;
.implements Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;
    }
.end annotation


# static fields
.field private static final STATE_PRESSED:[I

.field private static final STATE_REGULAR:[I

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private $ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

.field private mActionButton:Landroid/widget/Button;

.field private mAutoLaunchUri:Z

.field private mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mBundleActionButton:Landroid/widget/Button;

.field private mCheckoutFlowListener:Lcom/oculus/horizon/payments/CheckoutFlowModel$OnStateChangedListener;

.field private mCheckoutFlowModel:Lcom/oculus/horizon/payments/CheckoutFlowModel;

.field private mComfortImage:Landroid/widget/ImageView;

.field private mComfortText:Landroid/widget/TextView;

.field private mControllerHeader:Landroid/widget/TextView;

.field private mControllerSection:Landroid/widget/LinearLayout;

.field private mControllersList:Landroid/widget/LinearLayout;

.field private mCopyright:Landroid/widget/TextView;

.field private mCredentialsProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Lcom/oculus/auth/credentials/Credentials;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mDescriptionView:Lcom/oculus/horizon/pdp/widget/ExpandableTextView;

.field private mDetailsView:Lcom/oculus/horizon/pdp/widget/DetailsView;

.field private mEmptyReviewsHeader:Landroid/view/View;

.field private mEmptyReviewsLayout:Landroid/view/View;

.field private mEventBusesRegistered:Z

.field private mExtraBuyBoxContent:Landroid/widget/TextView;

.field private mExtraBuyBoxIcon:Landroid/widget/ImageView;

.field private mExtraBuyBoxSectionLayout:Landroid/widget/LinearLayout;

.field private mGalleryCarousel:Landroidx/recyclerview/widget/RecyclerView;

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

.field private mGearVRControllerHelper:Lcom/oculus/horizon/samsung/GearVRControllerHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mHideStoreCredit:Z

.field private mIAPWarningView:Landroid/widget/TextView;

.field private mIARCBottomDivider:Landroid/view/View;

.field private mIARCDetailsView:Lcom/oculus/horizon/pdp/widget/IARCDetailsView;

.field private mIarcInfoImage:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private mIarcInfoLayout:Landroid/widget/LinearLayout;

.field private mIarcInfoRating:Landroid/widget/TextView;

.field private mInfoRootLayout:Landroid/widget/LinearLayout;

.field private mInputDeviceHelper:Lcom/oculus/horizon/bluetooth/InputDeviceHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mInstallFailed:Z

.field private mInstallerEventBus:Lcom/oculus/appmanager/installer/events/InstallerEventBus;

.field private mInsufficientSpaceWarningGk:Ljavax/inject/Provider;
    .annotation runtime Lcom/google/inject/name/Named;
        value = "oculus_horizon_insufficient_space_warning"
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

.field private mInternetView:Landroid/widget/TextView;

.field private mItem:Lcom/oculus/horizon/api/common/Item;

.field private mMediaView:Lcom/oculus/horizon/widget/MediaView;

.field private mMessageBar:Lcom/oculus/horizon/pdp/widget/MessageBar;

.field private mMobileConfigFactory:Lcom/facebook/mobileconfig/factory/MobileConfig;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mParentBundleModel:Lcom/oculus/model/BundleModel;

.field private mPdpCarouselAdapter:Lcom/oculus/horizon/pdp/PdpCarouselAdapter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPdpVideoLoggerProvider:Lcom/oculus/horizon/pdp/PdpVideoLoggerProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mProductModel:Lcom/oculus/model/ProductModel;

.field private mProgressView:Lcom/oculus/horizon/pdp/widget/ProgressView;

.field private mPurchaseBundleView:Landroid/widget/TextView;

.field private mPurchaseExperienceView:Landroid/widget/TextView;

.field private mPurchaseFailedAlertDialogBuilder:Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

.field private mRatingCount:Landroid/widget/TextView;

.field private mRatingLayout:Landroid/widget/LinearLayout;

.field private mRatingStars:Lcom/oculus/horizon/widget/RatingView;

.field private mRatingText:Landroid/widget/TextView;

.field private mRedirectUri:Ljava/lang/String;

.field private mReferralView:Lcom/oculus/horizon/logging/TrackingViews$View;

.field private mReferrerEventId:Ljava/lang/String;

.field private mReviewButton:Landroid/view/View;

.field private mReviewsHeader:Landroid/view/View;

.field private mReviewsLayout:Landroid/widget/LinearLayout;

.field private mRoadblockedStoreSectionHelper:Lcom/oculus/horizon/store/roadblock/RoadblockedStoreSectionHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mSDCardView:Landroid/widget/TextView;

.field private mScreenShots:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/http/common/Image;",
            ">;"
        }
    .end annotation
.end field

.field private mShouldInstallOnResume:Z

.field private mShouldPurchaseOnStart:Z

.field private mSizeView:Landroid/widget/TextView;

.field private mStoreCreditBalanceView:Landroid/widget/TextView;

.field private mStoresManager:Lcom/oculus/horizon/store/StoresManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/pdp/ApplicationPdpFragment;)V
    .locals 1

    .prologue
    .line 119
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/pdp/ApplicationPdpFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/pdp/ApplicationPdpFragment;)V
    .locals 2

    .prologue
    .line 119
    new-instance v0, Lcom/facebook/inject/InjectionContext;

    const/4 v1, 0x4

    invoke-direct {v0, v1, p0}, Lcom/facebook/inject/InjectionContext;-><init>(ILcom/facebook/inject/InjectorLike;)V

    iput-object v0, p1, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {p0}, Lcom/oculus/horizon/pdp/PdpCarouselAdapter;->$ul_$xXXcom_oculus_horizon_pdp_PdpCarouselAdapter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/pdp/PdpCarouselAdapter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mPdpCarouselAdapter:Lcom/oculus/horizon/pdp/PdpCarouselAdapter;

    invoke-static {p0}, Lcom/oculus/horizon/store/StoresManager;->$ul_$xXXcom_oculus_horizon_store_StoresManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/store/StoresManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mStoresManager:Lcom/oculus/horizon/store/StoresManager;

    invoke-static {p0}, Lcom/oculus/horizon/store/roadblock/RoadblockedStoreSectionHelper;->$ul_$xXXcom_oculus_horizon_store_roadblock_RoadblockedStoreSectionHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/store/roadblock/RoadblockedStoreSectionHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mRoadblockedStoreSectionHelper:Lcom/oculus/horizon/store/roadblock/RoadblockedStoreSectionHelper;

    invoke-static {p0}, Lcom/oculus/horizon/pdp/PdpVideoLogger;->$ul_$xXXcom_oculus_horizon_pdp_PdpVideoLoggerProvider$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/pdp/PdpVideoLoggerProvider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mPdpVideoLoggerProvider:Lcom/oculus/horizon/pdp/PdpVideoLoggerProvider;

    invoke-static {p0}, Lcom/oculus/horizon/bluetooth/InputDeviceHelper;->$ul_$xXXcom_oculus_horizon_bluetooth_InputDeviceHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/bluetooth/InputDeviceHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mInputDeviceHelper:Lcom/oculus/horizon/bluetooth/InputDeviceHelper;

    invoke-static {p0}, Lcom/oculus/horizon/samsung/GearVRControllerHelper;->$ul_$xXXcom_oculus_horizon_samsung_GearVRControllerHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/samsung/GearVRControllerHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mGearVRControllerHelper:Lcom/oculus/horizon/samsung/GearVRControllerHelper;

    invoke-static {p0}, Lcom/oculus/android/AndroidModule;->$ul_$xXXandroid_bluetooth_BluetoothAdapter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/bluetooth/BluetoothAdapter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    invoke-static {p0}, Lcom/oculus/horizon/profile/UserProfileHelper;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-static {p0}, Lcom/oculus/auth/credentials/CredentialsModule;->$ul_$xXXjavax_inject_Provider$x3Ccom_oculus_auth_credentials_Credentials$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mCredentialsProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/mobileconfig/init/MobileConfigInitModule;->$ul_$xXXcom_facebook_mobileconfig_factory_MobileConfig$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/mobileconfig/factory/MobileConfig;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mMobileConfigFactory:Lcom/facebook/mobileconfig/factory/MobileConfig;

    invoke-static {p0}, Lcom/oculus/horizon/store/StoreModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fhorizon$x5Fgallery$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mGalleryGk:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/horizon/appmanager/ui/AppManagerModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fhorizon$x5Finsufficient$x5Fspace$x5Fwarning$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mInsufficientSpaceWarningGk:Ljavax/inject/Provider;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 122
    const-class v0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->TAG:Ljava/lang/String;

    .line 134
    new-array v0, v3, [I

    const v1, -0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->STATE_REGULAR:[I

    .line 135
    new-array v0, v3, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->STATE_PRESSED:[I

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/PdpFragment;-><init>()V

    .line 256
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mShouldInstallOnResume:Z

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/pdp/ApplicationPdpFragment;)Lcom/oculus/horizon/api/common/Item;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/pdp/ApplicationPdpFragment;)V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->onActionButtonClicked()V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/horizon/pdp/ApplicationPdpFragment;)Lcom/oculus/model/BundleModel;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mParentBundleModel:Lcom/oculus/model/BundleModel;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/pdp/ApplicationPdpFragment;)Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mReferralView:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/pdp/ApplicationPdpFragment;)V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->onProgressActionClicked()V

    return-void
.end method

.method static synthetic access$500(Lcom/oculus/horizon/pdp/ApplicationPdpFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mScreenShots:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oculus/horizon/pdp/ApplicationPdpFragment;)V
    .locals 0

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->onCheckoutFlowModelUpdate()V

    return-void
.end method

.method static synthetic access$700(Lcom/oculus/horizon/pdp/ApplicationPdpFragment;)Lcom/oculus/horizon/samsung/GearVRControllerHelper;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mGearVRControllerHelper:Lcom/oculus/horizon/samsung/GearVRControllerHelper;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oculus/horizon/pdp/ApplicationPdpFragment;)Landroid/bluetooth/BluetoothAdapter;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mBluetoothAdapter:Landroid/bluetooth/BluetoothAdapter;

    return-object v0
.end method

.method static synthetic access$900(Lcom/oculus/horizon/pdp/ApplicationPdpFragment;)Lcom/oculus/horizon/bluetooth/InputDeviceHelper;
    .locals 1

    .prologue
    .line 119
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mInputDeviceHelper:Lcom/oculus/horizon/bluetooth/InputDeviceHelper;

    return-object v0
.end method

.method private createAgeRating(Lcom/oculus/horizon/api/common/Item;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/oculus/horizon/api/common/Item;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1491
    iget-object v1, p1, Lcom/oculus/horizon/api/common/Item;->age_rating:Lcom/oculus/horizon/api/common/Item$AgeRating;

    .line 1492
    if-nez v1, :cond_1

    .line 1493
    const-string v0, ""

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    .line 1512
    :cond_0
    :goto_0
    return-object v1

    .line 1496
    :cond_1
    iget-object v2, v1, Lcom/oculus/horizon/api/common/Item$AgeRating;->descriptors:Ljava/util/List;

    .line 1497
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1498
    :cond_2
    iget-object v0, v1, Lcom/oculus/horizon/api/common/Item$AgeRating;->category_name:Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    goto :goto_0

    .line 1502
    :cond_3
    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->category_name:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 1503
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object v1, v0

    .line 1509
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Item$Descriptor;

    .line 1510
    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$Descriptor;->display_name:Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1506
    :cond_4
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 1507
    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item$AgeRating;->category_name:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v1, v0

    goto :goto_1
.end method

.method private createProductModel(Lcom/oculus/horizon/api/common/Item;)Lcom/oculus/model/ProductModel;
    .locals 42

    .prologue
    .line 1517
    const/16 v27, 0x0

    .line 1519
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oculus/horizon/api/common/Item;->quality_ratings_by_viewer:Ljava/util/List;

    if-eqz v2, :cond_0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oculus/horizon/api/common/Item;->quality_ratings_by_viewer:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1520
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oculus/horizon/api/common/Item;->quality_ratings_by_viewer:Ljava/util/List;

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/horizon/api/common/Item$QualityRating;

    .line 1521
    iget v0, v2, Lcom/oculus/horizon/api/common/Item$QualityRating;->score:I

    move/from16 v27, v0

    .line 1524
    :cond_0
    const/4 v2, 0x0

    .line 1525
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/horizon/api/common/Item;->isAppSupportedOnCurrentDevice()Z

    move-result v3

    if-eqz v3, :cond_15

    invoke-virtual/range {p1 .. p1}, Lcom/oculus/horizon/api/common/Item;->getPackageName()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 1526
    const/4 v2, 0x1

    sget v3, Lcom/oculus/libraryapi/OVRLibraryModule$UL_id;->$ul_$xXXcom_oculus_libraryapi_OVRLibraryInternal$xXXBINDING_ID:I

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v2, v3, v4}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/oculus/libraryapi/OVRLibraryInternal;

    invoke-virtual/range {p1 .. p1}, Lcom/oculus/horizon/api/common/Item;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/oculus/libraryapi/OVRLibraryInternal;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v2

    move-object/from16 v35, v2

    .line 1530
    :goto_0
    const/16 v33, 0x0

    .line 1531
    if-nez v35, :cond_6

    .line 1534
    const-wide/16 v20, 0x0

    .line 1535
    const-wide/16 v18, 0x0

    .line 1536
    move-object/from16 v0, p1

    iget-boolean v2, v0, Lcom/oculus/horizon/api/common/Item;->is_viewer_entitled:Z

    if-nez v2, :cond_4

    .line 1537
    sget-object v33, Lcom/oculus/model/ProductStatus;->NOT_PURCHASED:Lcom/oculus/model/ProductStatus;

    .line 1549
    :cond_1
    :goto_1
    if-nez v33, :cond_2

    .line 1550
    sget-object v33, Lcom/oculus/model/ProductStatus;->NOT_PURCHASED:Lcom/oculus/model/ProductStatus;

    .line 1553
    :cond_2
    if-nez v35, :cond_7

    sget-object v2, Lcom/oculus/library/model/CloudStorageStatus;->DISABLED:Lcom/oculus/library/model/CloudStorageStatus;

    :goto_2
    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/oculus/horizon/api/common/Item;->grouping:Lcom/oculus/horizon/api/common/Item$ApplicationGrouping;

    iget-boolean v3, v3, Lcom/oculus/horizon/api/common/Item$ApplicationGrouping;->cloud_file_is_enabled:Z

    .line 1554
    invoke-static {v2, v3}, Lcom/oculus/library/model/CloudStorageStatus;->fromData(Lcom/oculus/library/model/CloudStorageStatus;Z)Lcom/oculus/library/model/CloudStorageStatus;

    move-result-object v34

    .line 1558
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    if-nez v2, :cond_8

    const/4 v2, 0x1

    move/from16 v30, v2

    .line 1559
    :goto_3
    if-nez v30, :cond_3

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->strikethrough_price:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;

    if-nez v2, :cond_9

    :cond_3
    const/4 v2, 0x1

    move v13, v2

    .line 1560
    :goto_4
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oculus/horizon/api/common/Item;->developer_filtered_livestreaming_status:Ljava/lang/String;

    .line 1561
    invoke-static {v2}, Lcom/oculus/library/model/LivestreamingStatus;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/LivestreamingStatus;

    move-result-object v36

    .line 1562
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oculus/horizon/api/common/Item;->microphone_usage:Ljava/lang/String;

    invoke-static {v2}, Lcom/oculus/library/model/MicrophoneUsage;->valueOf(Ljava/lang/String;)Lcom/oculus/library/model/MicrophoneUsage;

    move-result-object v39

    .line 1563
    new-instance v2, Lcom/oculus/model/ProductModel;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/oculus/horizon/api/common/Item;->id:Ljava/lang/String;

    if-eqz v30, :cond_a

    const/4 v4, 0x0

    :goto_5
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/oculus/horizon/api/common/Item;->display_name:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/oculus/horizon/api/common/Item;->grouping:Lcom/oculus/horizon/api/common/Item$ApplicationGrouping;

    iget-object v6, v6, Lcom/oculus/horizon/api/common/Item$ApplicationGrouping;->id:Ljava/lang/String;

    .line 1568
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/horizon/api/common/Item;->isAppSupportedOnCurrentDevice()Z

    move-result v7

    if-eqz v7, :cond_b

    invoke-virtual/range {p1 .. p1}, Lcom/oculus/horizon/api/common/Item;->getPackageName()Ljava/lang/String;

    move-result-object v7

    .line 1569
    :goto_6
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/horizon/api/common/Item;->getBinaryVersion()Ljava/lang/String;

    move-result-object v8

    .line 1570
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/horizon/api/common/Item;->getSquareImageUri()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/oculus/horizon/api/common/Item;->cover_landscape_image:Lcom/oculus/http/common/Image;

    iget-object v10, v10, Lcom/oculus/http/common/Image;->uri:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/oculus/horizon/api/common/Item;->cover_landscape_image:Lcom/oculus/http/common/Image;

    iget-object v11, v11, Lcom/oculus/http/common/Image;->uri:Ljava/lang/String;

    if-eqz v30, :cond_c

    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mContext:Landroid/content/Context;

    sget v14, Lcom/oculus/horizon/R$string;->store_not_available:I

    .line 1574
    invoke-virtual {v12, v14}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 1575
    :goto_7
    if-eqz v13, :cond_e

    const/4 v13, 0x0

    .line 1581
    :goto_8
    if-eqz v30, :cond_f

    const/4 v14, 0x0

    :goto_9
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/oculus/horizon/api/common/Item;->comfort_rating:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->comfort_rating_name:Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->small_landscape_image:Lcom/oculus/http/common/Image;

    move-object/from16 v17, v0

    if-nez v17, :cond_10

    const-string v17, ""

    .line 1589
    :goto_a
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/horizon/api/common/Item;->getLatestApkAndObbSize()J

    move-result-wide v22

    .line 1590
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/horizon/api/common/Item;->getBinaryVersionCode()Ljava/lang/Integer;

    move-result-object v24

    if-eqz v24, :cond_11

    invoke-virtual/range {p1 .. p1}, Lcom/oculus/horizon/api/common/Item;->getBinaryVersionCode()Ljava/lang/Integer;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Integer;->intValue()I

    move-result v24

    .line 1591
    :goto_b
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/horizon/api/common/Item;->getBinaryVersion()Ljava/lang/String;

    move-result-object v25

    .line 1592
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/horizon/api/common/Item;->getTargetAndroidSDKVersion()Ljava/lang/Integer;

    move-result-object v26

    if-eqz v26, :cond_12

    invoke-virtual/range {p1 .. p1}, Lcom/oculus/horizon/api/common/Item;->getTargetAndroidSDKVersion()Ljava/lang/Integer;

    move-result-object v26

    invoke-virtual/range {v26 .. v26}, Ljava/lang/Integer;->intValue()I

    move-result v26

    :goto_c
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->quality_rating_histogram_aggregate:Ljava/util/List;

    move-object/from16 v28, v0

    .line 1594
    invoke-static/range {v28 .. v28}, Lcom/oculus/horizon/util/ProductUtils;->getTotalCount(Ljava/util/List;)I

    move-result v28

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oculus/horizon/api/common/Item;->quality_rating_aggregate:F

    move/from16 v29, v0

    if-nez v30, :cond_13

    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->price:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;

    move-object/from16 v30, v0

    move-object/from16 v0, v30

    iget v0, v0, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;->offset_amount:I

    move/from16 v30, v0

    if-nez v30, :cond_13

    const/16 v30, 0x1

    :goto_d
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/oculus/horizon/api/common/Item;->is_viewer_entitled:Z

    move/from16 v31, v0

    .line 1598
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/horizon/api/common/Item;->getPermissions()Ljava/util/List;

    move-result-object v32

    if-eqz v35, :cond_14

    move-object/from16 v0, v35

    iget-boolean v0, v0, Lcom/oculus/library/model/App;->isFavorite:Z

    move/from16 v35, v0

    if-eqz v35, :cond_14

    const/16 v35, 0x1

    :goto_e
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/oculus/horizon/api/common/Item;->livestreaming_audio_hooking_enabled:Z

    move/from16 v37, v0

    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/oculus/horizon/api/common/Item;->chromecast_audio_enabled:Z

    move/from16 v38, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oculus/horizon/api/common/Item;->min_recommended_version_code:I

    move/from16 v40, v0

    move-object/from16 v0, p1

    iget v0, v0, Lcom/oculus/horizon/api/common/Item;->min_required_version_code:I

    move/from16 v41, v0

    invoke-direct/range {v2 .. v41}, Lcom/oculus/model/ProductModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JJJILjava/lang/String;IIIFZZLjava/util/List;Lcom/oculus/model/ProductStatus;Lcom/oculus/library/model/CloudStorageStatus;ZLcom/oculus/library/model/LivestreamingStatus;ZZLcom/oculus/library/model/MicrophoneUsage;II)V

    return-object v2

    .line 1538
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/horizon/api/common/Item;->isAppSupportedOnCurrentDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p1 .. p1}, Lcom/oculus/horizon/api/common/Item;->getPackageName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1540
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/horizon/api/common/Item;->getPackageName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-direct {v0, v2}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->isAppInstalled(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_5

    sget-object v2, Lcom/oculus/model/ProductStatus;->INSTALLED:Lcom/oculus/model/ProductStatus;

    :goto_f
    move-object/from16 v33, v2

    goto/16 :goto_1

    :cond_5
    sget-object v2, Lcom/oculus/model/ProductStatus;->NOT_DOWNLOADED:Lcom/oculus/model/ProductStatus;

    goto :goto_f

    .line 1545
    :cond_6
    move-object/from16 v0, v35

    iget-wide v0, v0, Lcom/oculus/library/model/App;->patchSizeBytes:J

    move-wide/from16 v20, v0

    .line 1546
    move-object/from16 v0, v35

    iget-wide v0, v0, Lcom/oculus/library/model/App;->downloadedSizeBytes:J

    move-wide/from16 v18, v0

    .line 1547
    move-object/from16 v0, v35

    iget-object v2, v0, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    invoke-static {v2}, Lcom/oculus/library/utils/AppStatusConverter;->toLegacyProductStatus(Lcom/oculus/library/model/AppStatus;)Lcom/oculus/model/ProductStatus;

    move-result-object v33

    goto/16 :goto_1

    .line 1553
    :cond_7
    move-object/from16 v0, v35

    iget-object v2, v0, Lcom/oculus/library/model/App;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    goto/16 :goto_2

    .line 1558
    :cond_8
    const/4 v2, 0x0

    move/from16 v30, v2

    goto/16 :goto_3

    .line 1559
    :cond_9
    const/4 v2, 0x0

    move v13, v2

    goto/16 :goto_4

    .line 1563
    :cond_a
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v4, v4, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->id:Ljava/lang/String;

    goto/16 :goto_5

    .line 1568
    :cond_b
    const/4 v7, 0x0

    goto/16 :goto_6

    .line 1574
    :cond_c
    move-object/from16 v0, p0

    iget-object v14, v0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v12, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v12, v12, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->price:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;

    iget v12, v12, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;->offset_amount:I

    if-nez v12, :cond_d

    const/4 v12, 0x1

    :goto_10
    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v15, v15, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->price:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;

    iget-object v15, v15, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;->formatted:Ljava/lang/String;

    .line 1575
    invoke-static {v14, v12, v15}, Lcom/oculus/horizon/util/ProductUtils;->getPriceLabel(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto/16 :goto_7

    .line 1574
    :cond_d
    const/4 v12, 0x0

    goto :goto_10

    .line 1575
    :cond_e
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mContext:Landroid/content/Context;

    const/4 v14, 0x0

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v15, v15, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->strikethrough_price:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;

    iget-object v15, v15, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;->formatted:Ljava/lang/String;

    .line 1581
    invoke-static {v13, v14, v15}, Lcom/oculus/horizon/util/ProductUtils;->getPriceLabel(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v13

    goto/16 :goto_8

    :cond_f
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v14, v14, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->promo_benefit:Ljava/lang/String;

    goto/16 :goto_9

    :cond_10
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->small_landscape_image:Lcom/oculus/http/common/Image;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/oculus/http/common/Image;->uri:Ljava/lang/String;

    move-object/from16 v17, v0

    goto/16 :goto_a

    .line 1590
    :cond_11
    const/16 v24, 0x0

    goto/16 :goto_b

    .line 1592
    :cond_12
    const/16 v26, 0x0

    goto/16 :goto_c

    .line 1594
    :cond_13
    const/16 v30, 0x0

    goto/16 :goto_d

    .line 1598
    :cond_14
    const/16 v35, 0x0

    goto/16 :goto_e

    :cond_15
    move-object/from16 v35, v2

    goto/16 :goto_0
.end method

.method private getPressableDrawableForTheme(II)Landroid/graphics/drawable/Drawable;
    .locals 5

    .prologue
    .line 912
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 913
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 914
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 915
    sget-object v3, Lcom/oculus/model/StyleTheme;->HALLOWEEN:Lcom/oculus/model/StyleTheme;

    iget-object v4, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mStyleTheme:Lcom/oculus/model/StyleTheme;

    if-ne v3, v4, :cond_0

    .line 916
    const/4 v3, -0x1

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 918
    :cond_0
    sget-object v3, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->STATE_REGULAR:[I

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 919
    sget-object v1, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->STATE_PRESSED:[I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 920
    return-object v0
.end method

.method private isAppInstalled(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 1182
    const/4 v0, 0x0

    sget v1, Lcom/oculus/common/packagescache/PackagesCacheModule$UL_id;->$ul_$xXXcom_oculus_common_packagescache_PackagesCache$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/common/packagescache/PackagesCache;

    invoke-virtual {v0, p1}, Lcom/oculus/common/packagescache/PackagesCache;->isPackageInstalled(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private isInReviewPercentileExperiment()Z
    .locals 4

    .prologue
    .line 1611
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mMobileConfigFactory:Lcom/facebook/mobileconfig/factory/MobileConfig;

    sget-wide v2, Lcom/oculus/horizon/pdp/MC$oculus_store;->is_horizon_review_percentile_enabled:J

    invoke-interface {v0, v2, v3}, Lcom/facebook/mobileconfig/factory/MobileConfig;->getBoolean(J)Z

    move-result v0

    return v0
.end method

.method private maybeShowControllerWarningAndStartPurchaseAndInstallationProcess()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1008
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->supported_input_devices_list:Ljava/util/List;

    invoke-static {v0}, Lcom/oculus/util/collection/CollectionUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1009
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->requestInstallPermissions()V

    .line 1053
    :goto_0
    return-void

    .line 1012
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->supported_input_devices_list:Ljava/util/List;

    .line 1013
    invoke-static {v0}, Lcom/oculus/horizon/store/ControllerWarningUtil;->getPrioritySortedInputDeviceList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    .line 1016
    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    new-instance v2, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$14;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$14;-><init>(Lcom/oculus/horizon/pdp/ApplicationPdpFragment;)V

    .line 1015
    invoke-static {v0, v1, v2}, Lcom/oculus/util/collection/CollectionUtil;->foldL(Ljava/lang/Object;Ljava/util/List;Lcom/oculus/util/collection/CollectionUtil$Folder;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 1034
    if-eqz v0, :cond_1

    .line 1035
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->requestInstallPermissions()V

    goto :goto_0

    .line 1038
    :cond_1
    sget v0, Lcom/oculus/horizon/R$string;->common_list_or_separator:I

    .line 1040
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 1039
    invoke-static {v1, v0, v2}, Lcom/oculus/horizon/store/ControllerWarningUtil;->getSupportedDevicesSequence(Ljava/util/List;ILandroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 1041
    new-instance v2, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    .line 1042
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;-><init>(Landroid/content/Context;)V

    iget-object v3, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v3, v3, Lcom/oculus/model/ProductModel;->name:Ljava/lang/String;

    .line 1043
    invoke-virtual {v2, v3}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTitle(Ljava/lang/String;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v2

    .line 1045
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ne v1, v4, :cond_2

    sget v1, Lcom/oculus/horizon/R$string;->pdp_controller_warning_one_controller:I

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    .line 1046
    invoke-virtual {p0, v1, v3}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 1044
    :goto_1
    invoke-virtual {v2, v0}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setMessage(Ljava/lang/String;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_continue:I

    .line 1048
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setPositiveButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_cancel:I

    .line 1049
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setNegativeButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    .line 1050
    invoke-virtual {v0}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->build()Lcom/oculus/horizon/modal/AlertDialogFragment;

    move-result-object v0

    .line 1051
    invoke-virtual {v0, p0, v4}, Landroidx/fragment/app/DialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 1052
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 1046
    :cond_2
    sget v1, Lcom/oculus/horizon/R$string;->pdp_controller_warning_multiple_controllers:I

    new-array v3, v4, [Ljava/lang/Object;

    aput-object v0, v3, v5

    .line 1047
    invoke-virtual {p0, v1, v3}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_1
.end method

.method private onActionButtonClicked()V
    .locals 7

    .prologue
    .line 957
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v1, v1, Lcom/oculus/model/ProductModel;->itemId:Ljava/lang/String;

    const-string v2, "primary_action"

    iget-object v3, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v3, v3, Lcom/oculus/model/ProductModel;->status:Lcom/oculus/model/ProductStatus;

    .line 960
    invoke-virtual {v3}, Lcom/oculus/model/ProductStatus;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v4, v4, Lcom/oculus/model/ProductModel;->displayVersion:Ljava/lang/String;

    iget-object v5, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget v5, v5, Lcom/oculus/model/ProductModel;->latestVersionCode:I

    .line 957
    invoke-virtual/range {v0 .. v5}, Lcom/oculus/horizon/logging/OculusLogger;->reportPDPTap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    .line 963
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mReferrerEventId:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 964
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item;->id:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mReferrerEventId:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v3, v3, Lcom/oculus/model/ProductModel;->status:Lcom/oculus/model/ProductStatus;

    .line 965
    invoke-virtual {v3}, Lcom/oculus/model/ProductStatus;->toString()Ljava/lang/String;

    move-result-object v3

    .line 964
    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/logging/OculusLogger;->reportEventPdpActionButtonClicked(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 968
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v0, v0, Lcom/oculus/model/ProductModel;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->isAppInstalled(Ljava/lang/String;)Z

    move-result v0

    .line 971
    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v1}, Lcom/oculus/horizon/profile/UserProfileHelper;->getAllPaymentMethods()Lcom/oculus/horizon/api/common/PaymentMethods;

    move-result-object v1

    .line 972
    iget-object v2, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-boolean v2, v2, Lcom/oculus/model/ProductModel;->isOwnedByCurrentUser:Z

    if-nez v2, :cond_1

    if-eqz v1, :cond_1

    iget-object v1, v1, Lcom/oculus/horizon/api/common/PaymentMethods;->nodes:Ljava/util/List;

    .line 974
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-boolean v1, v1, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->is_offer_locked_by_payment_method:Z

    if-eqz v1, :cond_1

    .line 978
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/oculus/horizon/payments/ui/UserUnlockStoreWithPaymentMethodActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 979
    const/16 v1, 0x65

    invoke-virtual {p0, v0, v1}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->startActivityForResult(Landroid/content/Intent;I)V

    .line 1005
    :goto_0
    return-void

    .line 982
    :cond_1
    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-boolean v1, v1, Lcom/oculus/model/ProductModel;->isOwnedByCurrentUser:Z

    if-eqz v1, :cond_2

    if-nez v0, :cond_4

    .line 983
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mInsufficientSpaceWarningGk:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    const/4 v0, 0x2

    sget v1, Lcom/oculus/util/device/DeviceModule$UL_id;->$ul_$xXXcom_oculus_util_device_InstallationDiskSpaceUtil$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    .line 984
    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/util/device/InstallationDiskSpaceUtil;

    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    .line 985
    invoke-virtual {v0}, Lcom/oculus/horizon/api/common/Item;->getLatestApkSize()J

    move-result-wide v2

    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    .line 986
    invoke-virtual {v0}, Lcom/oculus/horizon/api/common/Item;->getLatestOBBSize()J

    move-result-wide v4

    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    .line 987
    invoke-virtual {v0}, Lcom/oculus/horizon/api/common/Item;->latestBinaryUseExternalStorage()Z

    move-result v6

    .line 984
    invoke-virtual/range {v1 .. v6}, Lcom/oculus/util/device/InstallationDiskSpaceUtil;->canInstallApp(JJZ)Z

    move-result v0

    if-nez v0, :cond_3

    .line 988
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->showInsufficientDiskSpaceWarning()V

    .line 989
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    .line 990
    invoke-virtual {v1}, Lcom/oculus/horizon/api/common/Item;->getPackageName()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    .line 991
    invoke-virtual {v2}, Lcom/oculus/horizon/api/common/Item;->getLatestApkSize()J

    move-result-wide v2

    iget-object v4, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    .line 992
    invoke-virtual {v4}, Lcom/oculus/horizon/api/common/Item;->getLatestOBBSize()J

    move-result-wide v4

    iget-object v6, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    .line 993
    invoke-virtual {v6}, Lcom/oculus/horizon/api/common/Item;->latestBinaryUseExternalStorage()Z

    move-result v6

    .line 989
    invoke-virtual/range {v0 .. v6}, Lcom/oculus/horizon/logging/OculusLogger;->reportInsufficientDiskSpaceWarning(Ljava/lang/String;JJZ)V

    goto :goto_0

    .line 998
    :cond_3
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->maybeShowControllerWarningAndStartPurchaseAndInstallationProcess()V

    goto :goto_0

    .line 1004
    :cond_4
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->startApplication()V

    goto :goto_0
.end method

.method private onCheckoutFlowModelUpdate()V
    .locals 2

    .prologue
    .line 1187
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mCheckoutFlowModel:Lcom/oculus/horizon/payments/CheckoutFlowModel;

    invoke-virtual {v0}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->getState()Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    move-result-object v0

    .line 1188
    sget-object v1, Lcom/oculus/horizon/payments/CheckoutFlowModel$State;->PURCHASED:Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    if-ne v1, v0, :cond_1

    .line 1189
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->onProductPurchased()V

    .line 1197
    :cond_0
    :goto_0
    return-void

    .line 1192
    :cond_1
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->setupProductView()V

    .line 1193
    sget-object v1, Lcom/oculus/horizon/payments/CheckoutFlowModel$State;->RESET:Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    if-ne v1, v0, :cond_0

    goto :goto_0
.end method

.method private onInstallPermissionsResult(I)V
    .locals 1

    .prologue
    .line 932
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .line 933
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->setupProductView()V

    .line 938
    :goto_0
    return-void

    .line 937
    :cond_0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->purchaseApp(Z)V

    goto :goto_0
.end method

.method private onPaymentMethodResult(I)V
    .locals 0

    .prologue
    .line 928
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->setupProductView()V

    .line 929
    return-void
.end method

.method private onProductPurchased()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1201
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mStoresManager:Lcom/oculus/horizon/store/StoresManager;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mItemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoresManager;->getModel(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreItemModel;

    move-result-object v0

    .line 1202
    instance-of v1, v0, Lcom/oculus/horizon/store/StoreApplicationModel;

    if-eqz v1, :cond_0

    .line 1203
    check-cast v0, Lcom/oculus/horizon/store/StoreApplicationModel;

    .line 1204
    invoke-static {v0}, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->from(Lcom/oculus/horizon/store/StoreApplicationModel;)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;

    move-result-object v0

    .line 1205
    invoke-virtual {v0, v3}, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->withIsOwnedByCurrentUser(Z)Lcom/oculus/horizon/store/StoreApplicationModelBuilder;

    move-result-object v0

    .line 1206
    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreApplicationModelBuilder;->build()Lcom/oculus/horizon/store/StoreApplicationModel;

    move-result-object v0

    .line 1207
    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mStoresManager:Lcom/oculus/horizon/store/StoresManager;

    iget-object v2, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mItemId:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/oculus/horizon/store/StoresManager;->putModel(Ljava/lang/String;Lcom/oculus/horizon/store/StoreItemModel;)Lcom/oculus/horizon/store/StoreItemModel;

    .line 1214
    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    invoke-virtual {v0}, Lcom/oculus/model/ProductModel;->newPurchasedModel()Lcom/oculus/model/ProductModel;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    .line 1215
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v0, v0, Lcom/oculus/model/ProductModel;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->isAppInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1218
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->setupProductView()V

    .line 1219
    sget v0, Lcom/oculus/libraryapi/OVRLibraryModule$UL_id;->$ul_$xXXcom_oculus_libraryapi_OVRLibraryInternal$xXXBINDING_ID:I

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v3, v0, v1}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/libraryapi/OVRLibraryInternal;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v1, v1, Lcom/oculus/model/ProductModel;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/libraryapi/OVRLibraryInternal;->updateLatestActivityMs(Ljava/lang/String;)V

    .line 1224
    :goto_1
    return-void

    .line 1211
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mStoresManager:Lcom/oculus/horizon/store/StoresManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoresManager;->clearCache()V

    goto :goto_0

    .line 1223
    :cond_1
    iput-boolean v3, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mShouldInstallOnResume:Z

    goto :goto_1
.end method

.method private onProgressActionClicked()V
    .locals 3

    .prologue
    .line 1088
    iget-boolean v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mInstallFailed:Z

    if-eqz v0, :cond_0

    .line 1089
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->startDownload()V

    .line 1094
    :goto_0
    return-void

    .line 1093
    :cond_0
    const/4 v0, 0x1

    sget v1, Lcom/oculus/libraryapi/OVRLibraryModule$UL_id;->$ul_$xXXcom_oculus_libraryapi_OVRLibraryInternal$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/libraryapi/OVRLibraryInternal;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v1, v1, Lcom/oculus/model/ProductModel;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/libraryapi/OVRLibraryInternal;->cancelDownload(Ljava/lang/String;)Z

    goto :goto_0
.end method

.method private purchaseApp(Z)V
    .locals 12

    .prologue
    .line 1120
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-boolean v0, v0, Lcom/oculus/model/ProductModel;->isOwnedByCurrentUser:Z

    if-eqz v0, :cond_1

    .line 1121
    if-eqz p1, :cond_0

    .line 1122
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mShouldInstallOnResume:Z

    .line 1153
    :goto_0
    return-void

    .line 1124
    :cond_0
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->startDownload()V

    goto :goto_0

    .line 1129
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v1, v1, Lcom/oculus/model/ProductModel;->offerId:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v2, v2, Lcom/oculus/model/ProductModel;->mainImageSource:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v3, v3, Lcom/oculus/model/ProductModel;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v4, v4, Lcom/oculus/model/ProductModel;->packageName:Ljava/lang/String;

    iget-object v5, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v5, v5, Lcom/oculus/model/ProductModel;->comfortRatingsConst:Ljava/lang/String;

    iget-object v6, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v6, v6, Lcom/oculus/model/ProductModel;->comfortRatingsName:Ljava/lang/String;

    iget-object v7, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget v7, v7, Lcom/oculus/model/ProductModel;->qualityRatingsCount:I

    iget-object v8, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget v8, v8, Lcom/oculus/model/ProductModel;->qualityRatingsAverage:F

    iget-object v9, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mStoreWideOfferModel:Lcom/oculus/horizon/store/StoreWideOfferModel;

    iget-object v10, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mReferralView:Lcom/oculus/horizon/logging/TrackingViews$View;

    iget-object v11, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v11, v11, Lcom/oculus/model/ProductModel;->itemId:Ljava/lang/String;

    .line 1130
    invoke-static/range {v0 .. v11}, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->newStartIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IFLcom/oculus/horizon/store/StoreWideOfferModel;Lcom/oculus/horizon/logging/TrackingViews$View;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v4

    .line 1143
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v1, v1, Lcom/oculus/model/ProductModel;->offerId:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v2, v2, Lcom/oculus/model/ProductModel;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-boolean v3, v3, Lcom/oculus/model/ProductModel;->isFree:Z

    iget-object v5, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mReferralView:Lcom/oculus/horizon/logging/TrackingViews$View;

    iget-object v6, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v6, v6, Lcom/oculus/model/ProductModel;->itemId:Ljava/lang/String;

    .line 1144
    invoke-static/range {v0 .. v6}, Lcom/oculus/horizon/payments/ui/PurchaseActivity;->newStartIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;ZLandroid/content/Intent;Lcom/oculus/horizon/logging/TrackingViews$View;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1152
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->startActivity(Landroid/content/Intent;)V

    goto :goto_0
.end method

.method private registerEventBuses()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 696
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    if-eqz v0, :cond_1

    .line 697
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v0, v0, Lcom/oculus/model/ProductModel;->packageName:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 698
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->showErrorView()V

    .line 705
    :goto_0
    return-void

    .line 701
    :cond_0
    sget v0, Lcom/oculus/libraryapi/OVRLibraryModule$UL_id;->$ul_$xXXcom_oculus_libraryapi_OVRLibraryInternal$xXXBINDING_ID:I

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v2, v0, v1}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/libraryapi/OVRLibraryInternal;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v1, v1, Lcom/oculus/model/ProductModel;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, p0}, Lcom/oculus/libraryapi/OVRLibraryInternal;->registerAppChangeListener(Ljava/lang/String;Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;)V

    .line 703
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mInstallerEventBus:Lcom/oculus/appmanager/installer/events/InstallerEventBus;

    invoke-virtual {v0, p0}, Lcom/oculus/appmanager/installer/events/InstallerEventBus;->register(Ljava/lang/Object;)V

    .line 704
    iput-boolean v2, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mEventBusesRegistered:Z

    goto :goto_0
.end method

.method private requestInstallPermissions()V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 1100
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget v0, v0, Lcom/oculus/model/ProductModel;->latestTargetSdkVersion:I

    invoke-static {v0}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->shouldRequestPermissions(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1102
    invoke-direct {p0, v6}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->purchaseApp(Z)V

    .line 1117
    :goto_0
    return-void

    .line 1106
    :cond_0
    new-instance v0, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsModel;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v1, v1, Lcom/oculus/model/ProductModel;->itemId:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v2, v2, Lcom/oculus/model/ProductModel;->packageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v3, v3, Lcom/oculus/model/ProductModel;->name:Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v4, v4, Lcom/oculus/model/ProductModel;->permissions:Ljava/util/List;

    .line 1111
    invoke-static {v4}, Lcom/google/common/collect/Lists;->newArrayList(Ljava/lang/Iterable;)Ljava/util/ArrayList;

    move-result-object v4

    iget-object v5, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget v5, v5, Lcom/oculus/model/ProductModel;->latestTargetSdkVersion:I

    invoke-direct/range {v0 .. v5}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;I)V

    .line 1113
    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mContext:Landroid/content/Context;

    new-array v2, v7, [Lcom/oculus/horizon/appmanager/ui/InstallPermissionsModel;

    aput-object v0, v2, v6

    .line 1115
    invoke-static {v2}, Lcom/google/common/collect/Lists;->newArrayList([Ljava/lang/Object;)Ljava/util/ArrayList;

    move-result-object v0

    iget-object v2, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v2, v2, Lcom/oculus/model/ProductModel;->name:Ljava/lang/String;

    .line 1114
    invoke-static {v1, v0, v2}, Lcom/oculus/horizon/appmanager/ui/InstallPermissionsActivity;->newStartIntent(Landroid/content/Context;Ljava/util/ArrayList;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1116
    invoke-virtual {p0, v0, v7}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_0
.end method

.method private setCompoundDrawablesWithIntrinsicBoundsForTheme(Landroid/widget/TextView;IIII)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    const/4 v6, -0x1

    .line 1334
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 1335
    if-eqz p2, :cond_5

    invoke-virtual {v4, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v3, v1

    .line 1336
    :goto_0
    if-eqz p3, :cond_6

    invoke-virtual {v4, p3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    move-object v2, v1

    .line 1337
    :goto_1
    if-eqz p4, :cond_7

    invoke-virtual {v4, p4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 1338
    :goto_2
    if-eqz p5, :cond_0

    invoke-virtual {v4, p5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1339
    :cond_0
    sget-object v4, Lcom/oculus/model/StyleTheme;->HALLOWEEN:Lcom/oculus/model/StyleTheme;

    iget-object v5, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mStyleTheme:Lcom/oculus/model/StyleTheme;

    if-ne v4, v5, :cond_4

    .line 1340
    if-eqz v3, :cond_1

    .line 1341
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v3, v6, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1343
    :cond_1
    if-eqz v2, :cond_2

    .line 1344
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v6, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1346
    :cond_2
    if-eqz v1, :cond_3

    .line 1347
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v6, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1349
    :cond_3
    if-eqz v0, :cond_4

    .line 1350
    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v0, v6, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1353
    :cond_4
    invoke-virtual {p1, v3, v2, v1, v0}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 1354
    return-void

    :cond_5
    move-object v3, v0

    .line 1335
    goto :goto_0

    :cond_6
    move-object v2, v0

    .line 1336
    goto :goto_1

    :cond_7
    move-object v1, v0

    .line 1337
    goto :goto_2
.end method

.method private setupMediaView()V
    .locals 5

    .prologue
    .line 732
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/MediaView;->reset()V

    .line 734
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    if-eqz v0, :cond_0

    .line 735
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v1, v1, Lcom/oculus/model/ProductModel;->mainImageSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/MediaView;->setMediaUri(Ljava/lang/String;)V

    .line 738
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->video_trailer:Lcom/oculus/horizon/api/common/Video;

    if-eqz v0, :cond_1

    .line 739
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/MediaView;->enableMuteUnmute()V

    .line 741
    :try_start_0
    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mCredentialsProvider:Ljavax/inject/Provider;

    .line 743
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/auth/credentials/Credentials;

    iget-object v2, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/Item;->video_trailer:Lcom/oculus/horizon/api/common/Video;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/Video;->uri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 742
    invoke-static {v0, v2}, Lcom/oculus/auth/util/AccessTokenUtils;->appendAccessToken(Lcom/oculus/auth/credentials/Credentials;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mPdpVideoLoggerProvider:Lcom/oculus/horizon/pdp/PdpVideoLoggerProvider;

    iget-object v3, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v3, v3, Lcom/oculus/model/ProductModel;->itemId:Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v4, v4, Lcom/oculus/horizon/api/common/Item;->video_trailer:Lcom/oculus/horizon/api/common/Video;

    .line 744
    invoke-virtual {v2, v3, v4}, Lcom/oculus/horizon/pdp/PdpVideoLoggerProvider;->get(Ljava/lang/String;Lcom/oculus/horizon/api/common/Video;)Lcom/oculus/horizon/pdp/PdpVideoLogger;

    move-result-object v2

    .line 741
    invoke-virtual {v1, v0, v2}, Lcom/oculus/horizon/widget/MediaView;->loadVideo(Landroid/net/Uri;Lcom/oculus/horizon/media/MediaPlayerLogger;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 749
    :cond_1
    :goto_0
    return-void

    .line 745
    :catch_0
    move-exception v0

    .line 746
    sget-object v1, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->TAG:Ljava/lang/String;

    const-string v2, "Could not prepare MediaPlayer"

    invoke-static {v1, v2, v0}, Lcom/oculus/errorreporting/ErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setupProductView()V
    .locals 6

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 753
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mRatingStars:Lcom/oculus/horizon/widget/RatingView;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget v1, v1, Lcom/oculus/model/ProductModel;->qualityRatingsAverage:F

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/RatingView;->setRating(F)V

    .line 754
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mRatingText:Landroid/widget/TextView;

    const-string v1, "%.1f"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget v3, v3, Lcom/oculus/model/ProductModel;->qualityRatingsAverage:F

    .line 755
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/facebook/common/util/StringLocaleUtil;->formatStrLocaleSensitive(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 754
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 756
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mRatingCount:Landroid/widget/TextView;

    const-string v1, "%,d"

    new-array v2, v5, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget v3, v3, Lcom/oculus/model/ProductModel;->qualityRatingsCount:I

    .line 757
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Lcom/facebook/common/util/StringLocaleUtil;->formatStrLocaleSensitive(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 756
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 758
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v0, v0, Lcom/oculus/model/ProductModel;->status:Lcom/oculus/model/ProductStatus;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v1, v1, Lcom/oculus/model/ProductModel;->cloudStorageStatus:Lcom/oculus/library/model/CloudStorageStatus;

    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->updateStatus(Lcom/oculus/model/ProductStatus;Lcom/oculus/library/model/CloudStorageStatus;)V

    .line 759
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->updateReviews(Lcom/oculus/horizon/api/common/Item;)V

    .line 760
    return-void
.end method

.method private showInsufficientDiskSpaceWarning()V
    .locals 3

    .prologue
    .line 1056
    new-instance v0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    .line 1057
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v1, v1, Lcom/oculus/model/ProductModel;->name:Ljava/lang/String;

    .line 1058
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTitle(Ljava/lang/String;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_insufficient_disk_space_warning:I

    .line 1059
    invoke-virtual {p0, v1}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setMessage(Ljava/lang/String;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_continue:I

    .line 1060
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setPositiveButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_cancel:I

    .line 1061
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setNegativeButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    .line 1062
    invoke-virtual {v0}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->build()Lcom/oculus/horizon/modal/AlertDialogFragment;

    move-result-object v0

    .line 1063
    const/4 v1, 0x2

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 1064
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 1065
    return-void
.end method

.method private startApplication()V
    .locals 6

    .prologue
    const/4 v3, 0x3

    .line 1160
    const/4 v2, 0x0

    .line 1162
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mRedirectUri:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 1163
    sget v0, Lcom/oculus/horizon/util/launch/LaunchModule$UL_id;->$ul_$xXXcom_oculus_horizon_util_launch_PackageLauncherUtils$xXXBINDING_ID:I

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    .line 1164
    invoke-static {v3, v0, v1}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/util/launch/PackageLauncherUtils;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mRedirectUri:Ljava/lang/String;

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v2, v2, Lcom/oculus/model/ProductModel;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/util/launch/PackageLauncherUtils;->getUriIntent(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1167
    :cond_0
    if-nez v2, :cond_1

    .line 1168
    sget v0, Lcom/oculus/horizon/util/launch/LaunchModule$UL_id;->$ul_$xXXcom_oculus_horizon_util_launch_PackageLauncherUtils$xXXBINDING_ID:I

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v3, v0, v1}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/util/launch/PackageLauncherUtils;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v1, v1, Lcom/oculus/model/ProductModel;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/util/launch/PackageLauncherUtils;->getLaunchIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 1171
    :cond_1
    if-nez v2, :cond_2

    .line 1177
    :goto_0
    return-void

    .line 1175
    :cond_2
    sget v0, Lcom/oculus/horizon/util/launch/LaunchModule$UL_id;->$ul_$xXXcom_oculus_horizon_util_launch_PackageLauncherUtils$xXXBINDING_ID:I

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v3, v0, v1}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/util/launch/PackageLauncherUtils;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v3, v1, Lcom/oculus/model/ProductModel;->packageName:Ljava/lang/String;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v4, v1, Lcom/oculus/model/ProductModel;->itemId:Ljava/lang/String;

    const/4 v5, 0x0

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lcom/oculus/horizon/util/launch/PackageLauncherUtils;->startActivityAndLogUsage(Landroidx/fragment/app/Fragment;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Z)V

    goto :goto_0
.end method

.method private startDownload()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 941
    iput-boolean v3, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mInstallFailed:Z

    .line 943
    sget-object v0, Lcom/oculus/appmanager/info/model/RequestOrigin;->STORE:Lcom/oculus/appmanager/info/model/RequestOrigin;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v2, v2, Lcom/oculus/model/ProductModel;->packageName:Ljava/lang/String;

    aput-object v2, v1, v3

    .line 944
    invoke-static {v0, v3, v1}, Lcom/oculus/horizon/appmanager/ui/InstallFragment;->newInstance(Lcom/oculus/appmanager/info/model/RequestOrigin;Z[Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 945
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentTransaction;->commit()I

    .line 946
    return-void
.end method

.method private unregisterEventBuses()V
    .locals 3

    .prologue
    .line 708
    iget-boolean v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mEventBusesRegistered:Z

    if-eqz v0, :cond_0

    .line 709
    const/4 v0, 0x1

    sget v1, Lcom/oculus/libraryapi/OVRLibraryModule$UL_id;->$ul_$xXXcom_oculus_libraryapi_OVRLibraryInternal$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/libraryapi/OVRLibraryInternal;

    invoke-virtual {v0, p0}, Lcom/oculus/libraryapi/OVRLibraryInternal;->unregisterAppChangeListener(Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;)V

    .line 710
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mInstallerEventBus:Lcom/oculus/appmanager/installer/events/InstallerEventBus;

    invoke-virtual {v0, p0}, Lcom/oculus/appmanager/installer/events/InstallerEventBus;->unregister(Ljava/lang/Object;)V

    .line 711
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mEventBusesRegistered:Z

    .line 713
    :cond_0
    return-void
.end method

.method private updateComfort(Lcom/oculus/horizon/api/common/Item;)V
    .locals 3

    .prologue
    .line 721
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mComfortText:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/oculus/horizon/api/common/Item;->comfort_rating_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 722
    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->comfort_rating:Ljava/lang/String;

    invoke-static {v0}, Lcom/oculus/horizon/pdp/ComfortRating;->getComfortRatingIconResourceId(Ljava/lang/String;)I

    move-result v0

    .line 723
    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    .line 724
    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mComfortImage:Landroid/widget/ImageView;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 725
    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mComfortImage:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 729
    :goto_0
    return-void

    .line 727
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mComfortImage:Landroid/widget/ImageView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateDetails(Lcom/oculus/horizon/api/common/Item;)V
    .locals 4

    .prologue
    .line 1416
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1419
    new-instance v0, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;

    invoke-direct {v0}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;-><init>()V

    sget v2, Lcom/oculus/horizon/R$string;->pdp_detail_modes:I

    .line 1421
    invoke-virtual {p0, v2}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->label(Ljava/lang/CharSequence;)Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;

    move-result-object v0

    iget-object v2, p1, Lcom/oculus/horizon/api/common/Item;->user_interaction_mode_names:Ljava/util/List;

    .line 1422
    invoke-virtual {v0, v2}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->addValues(Ljava/util/List;)Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;

    move-result-object v0

    .line 1423
    invoke-virtual {v0}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->build()Lcom/oculus/horizon/pdp/widget/DetailsView$Detail;

    move-result-object v0

    .line 1424
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1426
    new-instance v0, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;

    invoke-direct {v0}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;-><init>()V

    sget v2, Lcom/oculus/horizon/R$string;->pdp_detail_category:I

    .line 1428
    invoke-virtual {p0, v2}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->label(Ljava/lang/CharSequence;)Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;

    move-result-object v0

    iget-object v2, p1, Lcom/oculus/horizon/api/common/Item;->category_name:Ljava/lang/String;

    .line 1429
    invoke-virtual {v0, v2}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->addValue(Ljava/lang/String;)Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;

    move-result-object v0

    .line 1430
    invoke-virtual {v0}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->build()Lcom/oculus/horizon/pdp/widget/DetailsView$Detail;

    move-result-object v0

    .line 1431
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1433
    new-instance v0, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;

    invoke-direct {v0}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;-><init>()V

    sget v2, Lcom/oculus/horizon/R$string;->pdp_detail_genre:I

    .line 1435
    invoke-virtual {p0, v2}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->label(Ljava/lang/CharSequence;)Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;

    move-result-object v0

    iget-object v2, p1, Lcom/oculus/horizon/api/common/Item;->genre_names:Ljava/util/List;

    .line 1436
    invoke-virtual {v0, v2}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->addValues(Ljava/util/List;)Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;

    move-result-object v0

    .line 1437
    invoke-virtual {v0}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->build()Lcom/oculus/horizon/pdp/widget/DetailsView$Detail;

    move-result-object v0

    .line 1438
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1440
    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->age_rating:Lcom/oculus/horizon/api/common/Item$AgeRating;

    if-eqz v0, :cond_0

    .line 1441
    new-instance v0, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;

    invoke-direct {v0}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;-><init>()V

    sget v2, Lcom/oculus/horizon/R$string;->pdp_detail_age:I

    .line 1443
    invoke-virtual {p0, v2}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->label(Ljava/lang/CharSequence;)Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;

    move-result-object v0

    .line 1444
    invoke-direct {p0, p1}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->createAgeRating(Lcom/oculus/horizon/api/common/Item;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->addValues(Ljava/util/List;)Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;

    move-result-object v0

    .line 1445
    invoke-virtual {v0}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->build()Lcom/oculus/horizon/pdp/widget/DetailsView$Detail;

    move-result-object v0

    .line 1446
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1449
    :cond_0
    new-instance v0, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;

    invoke-direct {v0}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;-><init>()V

    sget v2, Lcom/oculus/horizon/R$string;->pdp_detail_released:I

    .line 1451
    invoke-virtual {p0, v2}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->label(Ljava/lang/CharSequence;)Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;

    move-result-object v0

    iget v2, p1, Lcom/oculus/horizon/api/common/Item;->release_date:I

    int-to-long v2, v2

    .line 1453
    invoke-static {v2, v3}, Lcom/oculus/horizon/util/DateUtils;->getDateFromTimestampInSecondsUserLocaleFormat(J)Ljava/lang/String;

    move-result-object v2

    .line 1452
    invoke-virtual {v0, v2}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->addValue(Ljava/lang/String;)Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;

    move-result-object v0

    .line 1454
    invoke-virtual {v0}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->build()Lcom/oculus/horizon/pdp/widget/DetailsView$Detail;

    move-result-object v0

    .line 1455
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1457
    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->supported_in_app_languages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 1458
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 1459
    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->supported_in_app_languages:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Item$Language;

    .line 1460
    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$Language;->name:Ljava/lang/String;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 1462
    :cond_1
    new-instance v0, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;

    invoke-direct {v0}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;-><init>()V

    sget v3, Lcom/oculus/horizon/R$string;->pdp_detail_languages:I

    .line 1464
    invoke-virtual {p0, v3}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->label(Ljava/lang/CharSequence;)Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;

    move-result-object v0

    .line 1465
    invoke-virtual {v0, v2}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->addValues(Ljava/util/List;)Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;

    move-result-object v0

    .line 1466
    invoke-virtual {v0}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->build()Lcom/oculus/horizon/pdp/widget/DetailsView$Detail;

    move-result-object v0

    .line 1467
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1469
    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->developer_terms_of_service_url:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 1470
    new-instance v0, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;

    invoke-direct {v0}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;-><init>()V

    sget v2, Lcom/oculus/horizon/R$string;->common_tos:I

    .line 1472
    invoke-virtual {p0, v2}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->label(Ljava/lang/CharSequence;)Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;

    move-result-object v0

    iget-object v2, p1, Lcom/oculus/horizon/api/common/Item;->developer_terms_of_service_url:Ljava/lang/String;

    .line 1473
    invoke-virtual {v0, v2}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->addValue(Ljava/lang/String;)Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;

    move-result-object v0

    .line 1474
    invoke-virtual {v0}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->build()Lcom/oculus/horizon/pdp/widget/DetailsView$Detail;

    move-result-object v0

    .line 1475
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1478
    :cond_2
    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->developer_privacy_policy_url:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 1479
    new-instance v0, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;

    invoke-direct {v0}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;-><init>()V

    sget v2, Lcom/oculus/horizon/R$string;->common_privacy_policy:I

    .line 1481
    invoke-virtual {p0, v2}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->label(Ljava/lang/CharSequence;)Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;

    move-result-object v0

    iget-object v2, p1, Lcom/oculus/horizon/api/common/Item;->developer_privacy_policy_url:Ljava/lang/String;

    .line 1482
    invoke-virtual {v0, v2}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->addValue(Ljava/lang/String;)Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;

    move-result-object v0

    .line 1483
    invoke-virtual {v0}, Lcom/oculus/horizon/pdp/widget/DetailsView$Detail$Builder;->build()Lcom/oculus/horizon/pdp/widget/DetailsView$Detail;

    move-result-object v0

    .line 1484
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1487
    :cond_3
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mDetailsView:Lcom/oculus/horizon/pdp/widget/DetailsView;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/widget/DetailsView;->setDetails(Ljava/util/List;)V

    .line 1488
    return-void
.end method

.method private updateInfo(Lcom/oculus/horizon/api/common/Item;)V
    .locals 10

    .prologue
    const/16 v9, 0x8

    const/4 v3, 0x0

    .line 1230
    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->extra_buy_box_section:Lcom/oculus/horizon/api/common/Item$BuyBoxSection;

    if-eqz v0, :cond_0

    .line 1231
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mExtraBuyBoxSectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1232
    sget-object v0, Lcom/oculus/model/StyleTheme;->HALLOWEEN:Lcom/oculus/model/StyleTheme;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mStyleTheme:Lcom/oculus/model/StyleTheme;

    if-ne v0, v1, :cond_2

    const/4 v0, -0x1

    .line 1233
    :goto_0
    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mExtraBuyBoxIcon:Landroid/widget/ImageView;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v0, v2}, Landroid/widget/ImageView;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 1235
    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->extra_buy_box_section:Lcom/oculus/horizon/api/common/Item$BuyBoxSection;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$BuyBoxSection;->link_text:Ljava/lang/String;

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->extra_buy_box_section:Lcom/oculus/horizon/api/common/Item$BuyBoxSection;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$BuyBoxSection;->link_uri:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 1237
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mExtraBuyBoxContent:Landroid/widget/TextView;

    .line 1239
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p1, Lcom/oculus/horizon/api/common/Item;->extra_buy_box_section:Lcom/oculus/horizon/api/common/Item$BuyBoxSection;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/Item$BuyBoxSection;->content:Ljava/lang/String;

    iget-object v4, p1, Lcom/oculus/horizon/api/common/Item;->extra_buy_box_section:Lcom/oculus/horizon/api/common/Item$BuyBoxSection;

    iget-object v4, v4, Lcom/oculus/horizon/api/common/Item$BuyBoxSection;->link_text:Ljava/lang/String;

    iget-object v5, p1, Lcom/oculus/horizon/api/common/Item;->extra_buy_box_section:Lcom/oculus/horizon/api/common/Item$BuyBoxSection;

    iget-object v5, v5, Lcom/oculus/horizon/api/common/Item$BuyBoxSection;->link_uri:Ljava/lang/String;

    .line 1242
    invoke-static {v5}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1238
    invoke-static {v1, v2, v4, v5}, Lcom/oculus/horizon/util/TextSpanUtils;->makeLink(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1237
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1243
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mExtraBuyBoxContent:Landroid/widget/TextView;

    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 1248
    :goto_1
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mInfoRootLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mExtraBuyBoxSectionLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->removeView(Landroid/view/View;)V

    .line 1249
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mInfoRootLayout:Landroid/widget/LinearLayout;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mExtraBuyBoxSectionLayout:Landroid/widget/LinearLayout;

    iget-object v2, p1, Lcom/oculus/horizon/api/common/Item;->extra_buy_box_section:Lcom/oculus/horizon/api/common/Item$BuyBoxSection;

    iget v2, v2, Lcom/oculus/horizon/api/common/Item$BuyBoxSection;->position:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 1254
    :cond_0
    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->iarc_cert:Lcom/oculus/horizon/api/common/Item$IARCCert;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->iarc_cert:Lcom/oculus/horizon/api/common/Item$IARCCert;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$IARCCert;->iarc_rating:Lcom/oculus/horizon/api/common/Item$IARCRating;

    if-eqz v0, :cond_1

    .line 1255
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mIarcInfoLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1256
    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->iarc_cert:Lcom/oculus/horizon/api/common/Item$IARCCert;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$IARCCert;->iarc_rating:Lcom/oculus/horizon/api/common/Item$IARCRating;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$IARCRating;->age_rating_image_small:Lcom/oculus/horizon/api/common/Item$AgeRatingImage;

    if-eqz v0, :cond_4

    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->iarc_cert:Lcom/oculus/horizon/api/common/Item$IARCCert;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$IARCCert;->iarc_rating:Lcom/oculus/horizon/api/common/Item$IARCRating;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$IARCRating;->age_rating_image_small:Lcom/oculus/horizon/api/common/Item$AgeRatingImage;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AgeRatingImage;->uri:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 1258
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mIarcInfoImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p1, Lcom/oculus/horizon/api/common/Item;->iarc_cert:Lcom/oculus/horizon/api/common/Item$IARCCert;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item$IARCCert;->iarc_rating:Lcom/oculus/horizon/api/common/Item$IARCRating;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item$IARCRating;->age_rating_image_small:Lcom/oculus/horizon/api/common/Item$AgeRatingImage;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item$AgeRatingImage;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 1262
    :goto_2
    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->iarc_cert:Lcom/oculus/horizon/api/common/Item$IARCCert;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$IARCCert;->iarc_rating:Lcom/oculus/horizon/api/common/Item$IARCRating;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$IARCRating;->age_rating_text:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 1263
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mIarcInfoRating:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/oculus/horizon/api/common/Item;->iarc_cert:Lcom/oculus/horizon/api/common/Item$IARCCert;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item$IARCCert;->iarc_rating:Lcom/oculus/horizon/api/common/Item$IARCRating;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item$IARCRating;->age_rating_text:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1269
    :cond_1
    :goto_3
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mSizeView:Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {p1}, Lcom/oculus/horizon/api/common/Item;->getLatestApkAndObbSize()J

    move-result-wide v4

    invoke-static {v1, v4, v5}, Landroid/text/format/Formatter;->formatShortFileSize(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1270
    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mSizeView:Landroid/widget/TextView;

    sget v2, Lcom/oculus/horizon/R$drawable;->pdp_info_size:I

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->setCompoundDrawablesWithIntrinsicBoundsForTheme(Landroid/widget/TextView;IIII)V

    .line 1273
    invoke-virtual {p1}, Lcom/oculus/horizon/api/common/Item;->latestBinaryUseExternalStorage()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1274
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mSDCardView:Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->pdp_app_can_use_sdcard:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 1275
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mSDCardView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1280
    :goto_4
    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->supported_input_devices_list:Ljava/util/List;

    invoke-static {v0}, Lcom/oculus/util/collection/CollectionUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 1281
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mControllerSection:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1314
    :goto_5
    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->internet_connection:Ljava/lang/String;

    invoke-static {v0}, Lcom/oculus/horizon/api/common/InternetConnection;->fromString(Ljava/lang/String;)Lcom/oculus/horizon/api/common/InternetConnection;

    move-result-object v0

    .line 1316
    if-nez v0, :cond_b

    .line 1317
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mInternetView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    .line 1329
    :goto_6
    return-void

    .line 1232
    :cond_2
    const/high16 v0, -0x1000000

    goto/16 :goto_0

    .line 1245
    :cond_3
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mExtraBuyBoxContent:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/oculus/horizon/api/common/Item;->extra_buy_box_section:Lcom/oculus/horizon/api/common/Item$BuyBoxSection;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item$BuyBoxSection;->content:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 1260
    :cond_4
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mIarcInfoImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v9}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    goto :goto_2

    .line 1265
    :cond_5
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mIarcInfoRating:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 1277
    :cond_6
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mSDCardView:Landroid/widget/TextView;

    invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 1283
    :cond_7
    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->supported_input_devices_list:Ljava/util/List;

    .line 1284
    invoke-static {v0}, Lcom/oculus/horizon/store/ControllerWarningUtil;->getPrioritySortedInputDeviceList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    .line 1286
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mControllersList:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1287
    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move v1, v3

    :goto_7
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_9

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/library/model/InputDevice;

    .line 1288
    iget-object v2, v0, Lcom/oculus/library/model/InputDevice;->tag:Ljava/lang/String;

    invoke-static {v2}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;->from(Ljava/lang/String;)Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;

    move-result-object v2

    .line 1289
    sget-object v4, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;->TOUCHPAD:Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;

    if-ne v2, v4, :cond_d

    .line 1290
    const/4 v6, 0x1

    .line 1294
    :goto_8
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    .line 1295
    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    sget v4, Lcom/oculus/horizon/R$layout;->controller_info_row:I

    iget-object v5, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mControllersList:Landroid/widget/LinearLayout;

    .line 1296
    invoke-virtual {v1, v4, v5, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1297
    if-eqz v2, :cond_8

    .line 1298
    iget v0, v2, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;->stringResourceId:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1299
    iget v2, v2, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$InputDeviceTag;->iconResourceId:I

    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->setCompoundDrawablesWithIntrinsicBoundsForTheme(Landroid/widget/TextView;IIII)V

    .line 1304
    :goto_9
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mControllersList:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    move v1, v6

    .line 1305
    goto :goto_7

    .line 1302
    :cond_8
    iget-object v0, v0, Lcom/oculus/library/model/InputDevice;->name:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_9

    .line 1306
    :cond_9
    if-eqz v1, :cond_a

    sget v0, Lcom/oculus/horizon/R$string;->pdp_controller_compatible:I

    .line 1308
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1311
    :goto_a
    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mControllerHeader:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5

    .line 1309
    :cond_a
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$plurals;->pdp_controller_required:I

    .line 1310
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getQuantityString(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_a

    .line 1319
    :cond_b
    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mInternetView:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/oculus/horizon/api/common/Item;->internet_connection_name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1320
    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mInternetView:Landroid/widget/TextView;

    sget-object v2, Lcom/oculus/horizon/api/common/InternetConnection;->NOT_REQUIRED:Lcom/oculus/horizon/api/common/InternetConnection;

    if-ne v2, v0, :cond_c

    sget v2, Lcom/oculus/horizon/R$drawable;->pdp_info_offline:I

    :goto_b
    move-object v0, p0

    move v4, v3

    move v5, v3

    invoke-direct/range {v0 .. v5}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->setCompoundDrawablesWithIntrinsicBoundsForTheme(Landroid/widget/TextView;IIII)V

    goto/16 :goto_6

    :cond_c
    sget v2, Lcom/oculus/horizon/R$drawable;->pdp_info_online:I

    goto :goto_b

    :cond_d
    move v6, v1

    goto :goto_8
.end method

.method private updateReviews(Lcom/oculus/horizon/api/common/Item;)V
    .locals 16

    .prologue
    .line 1357
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getView()Landroid/view/View;

    move-result-object v2

    .line 1358
    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 1361
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/horizon/api/common/Item;->isAppSupportedOnCurrentDevice()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1362
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/horizon/api/common/Item;->getPackageName()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    sget v4, Lcom/oculus/libraryapi/OVRLibraryModule$UL_id;->$ul_$xXXcom_oculus_libraryapi_OVRLibraryInternal$xXXBINDING_ID:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    .line 1363
    invoke-static {v1, v4, v5}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/libraryapi/OVRLibraryInternal;

    invoke-virtual/range {p1 .. p1}, Lcom/oculus/horizon/api/common/Item;->getPackageName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/oculus/libraryapi/OVRLibraryInternal;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    move v10, v1

    .line 1364
    :goto_0
    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/oculus/horizon/api/common/Item;->quality_ratings_by_viewer:Ljava/util/List;

    if-eqz v1, :cond_1

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/oculus/horizon/api/common/Item;->quality_ratings_by_viewer:Ljava/util/List;

    .line 1366
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move-object/from16 v0, p1

    iget-object v1, v0, Lcom/oculus/horizon/api/common/Item;->quality_ratings_by_viewer:Ljava/util/List;

    const/4 v4, 0x0

    .line 1367
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/horizon/api/common/Item$QualityRating;

    invoke-virtual {v1}, Lcom/oculus/horizon/api/common/Item$QualityRating;->hasText()Z

    move-result v1

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    move v11, v1

    .line 1368
    :goto_1
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mReviewButton:Landroid/view/View;

    if-eqz v10, :cond_2

    if-nez v11, :cond_2

    const/4 v1, 0x0

    :goto_2
    invoke-virtual {v4, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1369
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/horizon/api/common/Item;->getUserReviews()Lcom/google/common/collect/ImmutableList;

    move-result-object v13

    .line 1371
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mReviewsLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 1372
    invoke-interface {v13}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_3

    .line 1373
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mEmptyReviewsHeader:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1374
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mEmptyReviewsLayout:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1376
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mReviewsHeader:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1377
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mReviewsLayout:Landroid/widget/LinearLayout;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1379
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v14

    .line 1380
    const/4 v1, 0x2

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v15

    .line 1381
    const/4 v1, 0x0

    move v12, v1

    :goto_3
    if-ge v12, v15, :cond_4

    .line 1382
    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lcom/oculus/horizon/api/common/Item$QualityRating;

    .line 1383
    new-instance v1, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;

    sget v2, Lcom/oculus/horizon/R$layout;->review_row:I

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mReviewsLayout:Landroid/widget/LinearLayout;

    const/4 v4, 0x0

    .line 1385
    invoke-virtual {v14, v2, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 1386
    invoke-virtual/range {p0 .. p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v3

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mStoreItemMethods:Lcom/oculus/horizon/pdp/StoreItemMethods;

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mSocialUtils:Lcom/oculus/horizon/social/SocialUtils;

    const/4 v7, 0x1

    .line 1391
    invoke-direct/range {p0 .. p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->isInReviewPercentileExperiment()Z

    move-result v8

    invoke-direct/range {v1 .. v8}, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;-><init>(Landroid/view/View;Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Lcom/oculus/horizon/pdp/StoreItemMethods;Lcom/oculus/horizon/social/SocialUtils;ZZ)V

    .line 1392
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/Item;->id:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/Item;->latest_supported_binary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    invoke-virtual {v1, v9, v2, v3}, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->bind(Lcom/oculus/horizon/api/common/Item$QualityRating;Ljava/lang/String;Lcom/oculus/horizon/api/common/Item$AndroidBinary;)V

    .line 1393
    iget-object v2, v1, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 1395
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mReviewsLayout:Landroid/widget/LinearLayout;

    iget-object v1, v1, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 1381
    add-int/lit8 v1, v12, 0x1

    move v12, v1

    goto :goto_3

    .line 1363
    :cond_0
    const/4 v1, 0x0

    move v10, v1

    goto/16 :goto_0

    .line 1367
    :cond_1
    const/4 v1, 0x0

    move v11, v1

    goto/16 :goto_1

    .line 1368
    :cond_2
    const/16 v1, 0x8

    goto/16 :goto_2

    .line 1398
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mEmptyReviewsHeader:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1399
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mEmptyReviewsLayout:Landroid/view/View;

    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1401
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mReviewsHeader:Landroid/view/View;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1402
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mReviewsLayout:Landroid/widget/LinearLayout;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 1404
    sget v1, Lcom/oculus/horizon/R$id;->subtitle_reviews_empty:I

    invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1405
    if-eqz v10, :cond_5

    if-nez v11, :cond_5

    sget v2, Lcom/oculus/horizon/R$string;->pdp_reviews_empty_post:I

    .line 1407
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 1409
    :goto_4
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 1412
    :cond_4
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mReviewButton:Landroid/view/View;

    if-eqz v10, :cond_6

    if-nez v11, :cond_6

    const/4 v1, 0x0

    :goto_5
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 1413
    return-void

    .line 1407
    :cond_5
    sget v2, Lcom/oculus/horizon/R$string;->pdp_reviews_empty:I

    .line 1408
    invoke-virtual {v3, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_4

    .line 1412
    :cond_6
    const/16 v1, 0x8

    goto :goto_5
.end method

.method private updateStatus(Lcom/oculus/model/ProductStatus;Lcom/oculus/library/model/CloudStorageStatus;)V
    .locals 12

    .prologue
    const-wide/16 v10, 0x0

    const/4 v0, 0x4

    const/4 v8, 0x1

    const/4 v3, 0x0

    const/16 v5, 0x8

    .line 763
    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-boolean v1, v1, Lcom/oculus/model/ProductModel;->isOwnedByCurrentUser:Z

    if-eqz v1, :cond_0

    .line 764
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->destroyStoreCountdownTimer()V

    .line 765
    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mFooterBar:Lcom/oculus/horizon/pdp/widget/MessageBar;

    invoke-virtual {v1, v5}, Lcom/oculus/horizon/pdp/widget/MessageBar;->setVisibility(I)V

    .line 768
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 775
    sget v1, Lcom/oculus/horizon/R$drawable;->cancel_icon_inactive:I

    sget v2, Lcom/oculus/horizon/R$drawable;->cancel_icon_active:I

    .line 776
    invoke-direct {p0, v1, v2}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getPressableDrawableForTheme(II)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 779
    sget v2, Lcom/oculus/horizon/R$color;->oculus_black_4:I

    .line 780
    iget-boolean v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mInstallFailed:Z

    if-eqz v1, :cond_2

    .line 785
    sget v0, Lcom/oculus/horizon/R$drawable;->reload_icon_inactive:I

    sget v1, Lcom/oculus/horizon/R$drawable;->reload_icon_active:I

    .line 786
    invoke-direct {p0, v0, v1}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getPressableDrawableForTheme(II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 788
    sget v0, Lcom/oculus/horizon/R$color;->oculus_red:I

    .line 789
    iget-object v2, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProgressView:Lcom/oculus/horizon/pdp/widget/ProgressView;

    invoke-virtual {v2, v3}, Lcom/oculus/horizon/pdp/widget/ProgressView;->setIndeterminate(Z)V

    .line 790
    iget-object v2, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProgressView:Lcom/oculus/horizon/pdp/widget/ProgressView;

    invoke-virtual {v2, v10, v11}, Lcom/oculus/horizon/pdp/widget/ProgressView;->setProgress(J)V

    .line 791
    iget-object v2, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProgressView:Lcom/oculus/horizon/pdp/widget/ProgressView;

    sget v4, Lcom/oculus/horizon/R$string;->product_state_install_failed:I

    invoke-virtual {p0, v4}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2, v4}, Lcom/oculus/horizon/pdp/widget/ProgressView;->setText(Ljava/lang/CharSequence;)V

    move-object v2, v1

    move v4, v5

    move v6, v5

    move v1, v3

    .line 878
    :goto_0
    iget-object v8, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v8, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 880
    iget-boolean v6, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mHideStoreCredit:Z

    if-nez v6, :cond_1

    iget-object v6, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v6, v6, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v6, v6, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v6, v6, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->viewer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v6, v6, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v6, v6, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->viewer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer;

    iget-object v6, v6, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer;->user:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer$User;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v6, v6, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v6, v6, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->viewer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer;

    iget-object v6, v6, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer;->user:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer$User;

    iget-object v6, v6, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer$User;->payment_account:Lcom/oculus/horizon/api/common/PaymentAccount;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v6, v6, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v6, v6, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->viewer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer;

    iget-object v6, v6, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer;->user:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer$User;

    iget-object v6, v6, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer$User;->payment_account:Lcom/oculus/horizon/api/common/PaymentAccount;

    iget-object v6, v6, Lcom/oculus/horizon/api/common/PaymentAccount;->stored_credit:Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit;

    if-eqz v6, :cond_1

    iget-object v6, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-boolean v6, v6, Lcom/oculus/model/ProductModel;->isFree:Z

    if-eqz v6, :cond_d

    .line 902
    :cond_1
    :goto_1
    iget-object v4, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mStoreCreditBalanceView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 904
    iget-object v4, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProgressView:Lcom/oculus/horizon/pdp/widget/ProgressView;

    invoke-virtual {v4, v3}, Lcom/oculus/horizon/pdp/widget/ProgressView;->setVisibility(I)V

    .line 905
    iget-object v3, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProgressView:Lcom/oculus/horizon/pdp/widget/ProgressView;

    invoke-virtual {v3, v1}, Lcom/oculus/horizon/pdp/widget/ProgressView;->setActionVisibility(I)V

    .line 906
    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProgressView:Lcom/oculus/horizon/pdp/widget/ProgressView;

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/pdp/widget/ProgressView;->setActionImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 907
    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProgressView:Lcom/oculus/horizon/pdp/widget/ProgressView;

    invoke-virtual {v7, v0}, Landroid/content/res/Resources;->getColor(I)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/pdp/widget/ProgressView;->setTextColor(I)V

    .line 908
    return-void

    .line 792
    :cond_2
    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-boolean v1, v1, Lcom/oculus/model/ProductModel;->isOwnedByCurrentUser:Z

    if-nez v1, :cond_3

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    if-eqz v1, :cond_4

    :cond_3
    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v1, v1, Lcom/oculus/model/ProductModel;->packageName:Ljava/lang/String;

    if-nez v1, :cond_5

    .line 795
    :cond_4
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setEnabled(Z)V

    .line 796
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mActionButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mContext:Landroid/content/Context;

    sget v6, Lcom/oculus/horizon/R$string;->store_not_available:I

    invoke-virtual {v1, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    move v0, v2

    move v1, v3

    move v6, v3

    move v3, v5

    move-object v2, v4

    move v4, v5

    goto/16 :goto_0

    .line 797
    :cond_5
    invoke-static {p2}, Lcom/oculus/library/model/CloudStorageStatus;->isSyncing(Lcom/oculus/library/model/CloudStorageStatus;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 803
    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProgressView:Lcom/oculus/horizon/pdp/widget/ProgressView;

    invoke-virtual {v1, v8}, Lcom/oculus/horizon/pdp/widget/ProgressView;->setIndeterminate(Z)V

    .line 804
    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProgressView:Lcom/oculus/horizon/pdp/widget/ProgressView;

    sget v6, Lcom/oculus/horizon/R$string;->product_state_cloud_syncing:I

    invoke-virtual {p0, v6}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/oculus/horizon/pdp/widget/ProgressView;->setText(Ljava/lang/CharSequence;)V

    move v1, v0

    move v6, v5

    move v0, v2

    move-object v2, v4

    move v4, v5

    goto/16 :goto_0

    .line 806
    :cond_6
    sget-object v1, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$15;->$SwitchMap$com$oculus$model$ProductStatus:[I

    invoke-virtual {p1}, Lcom/oculus/model/ProductStatus;->ordinal()I

    move-result v6

    aget v1, v1, v6

    packed-switch v1, :pswitch_data_0

    .line 832
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-boolean v0, v0, Lcom/oculus/model/ProductModel;->isOwnedByCurrentUser:Z

    if-eqz v0, :cond_9

    .line 834
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v0, v0, Lcom/oculus/model/ProductModel;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->isAppInstalled(Ljava/lang/String;)Z

    move-result v0

    .line 835
    if-eqz v0, :cond_8

    .line 836
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mActionButton:Landroid/widget/Button;

    sget v1, Lcom/oculus/horizon/R$string;->common_start:I

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    move v0, v2

    move v1, v3

    move v6, v3

    move v3, v5

    move-object v2, v4

    move v4, v5

    .line 840
    goto/16 :goto_0

    .line 811
    :pswitch_0
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mMobileConfigFactory:Lcom/facebook/mobileconfig/factory/MobileConfig;

    sget-wide v8, Lcom/oculus/horizon/pdp/MC$oculus_library;->patch_updates_enabled:J

    .line 812
    invoke-interface {v0, v8, v9}, Lcom/facebook/mobileconfig/factory/MobileConfig;->getBoolean(J)Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-wide v0, v0, Lcom/oculus/model/ProductModel;->patchDownloadsize:J

    cmp-long v0, v0, v10

    if-lez v0, :cond_7

    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-wide v0, v0, Lcom/oculus/model/ProductModel;->patchDownloadsize:J

    .line 818
    :goto_3
    iget-object v6, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProgressView:Lcom/oculus/horizon/pdp/widget/ProgressView;

    invoke-virtual {v6, v3}, Lcom/oculus/horizon/pdp/widget/ProgressView;->setIndeterminate(Z)V

    .line 819
    iget-object v6, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProgressView:Lcom/oculus/horizon/pdp/widget/ProgressView;

    iget-object v8, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-wide v8, v8, Lcom/oculus/model/ProductModel;->downloadedSize:J

    invoke-virtual {v6, v8, v9}, Lcom/oculus/horizon/pdp/widget/ProgressView;->setProgress(J)V

    .line 820
    iget-object v6, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProgressView:Lcom/oculus/horizon/pdp/widget/ProgressView;

    invoke-virtual {v6, v0, v1}, Lcom/oculus/horizon/pdp/widget/ProgressView;->setMax(J)V

    move v0, v2

    move v1, v3

    move v6, v5

    move-object v2, v4

    move v4, v5

    .line 821
    goto/16 :goto_0

    .line 812
    :cond_7
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-wide v0, v0, Lcom/oculus/model/ProductModel;->installationSize:J

    goto :goto_3

    .line 828
    :pswitch_1
    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProgressView:Lcom/oculus/horizon/pdp/widget/ProgressView;

    invoke-virtual {v1, v8}, Lcom/oculus/horizon/pdp/widget/ProgressView;->setIndeterminate(Z)V

    .line 829
    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProgressView:Lcom/oculus/horizon/pdp/widget/ProgressView;

    sget v6, Lcom/oculus/horizon/R$string;->product_state_installing:I

    invoke-virtual {p0, v6}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v1, v6}, Lcom/oculus/horizon/pdp/widget/ProgressView;->setText(Ljava/lang/CharSequence;)V

    move v1, v0

    move v6, v5

    move v0, v2

    move-object v2, v4

    move v4, v5

    .line 830
    goto/16 :goto_0

    .line 838
    :cond_8
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mActionButton:Landroid/widget/Button;

    sget v1, Lcom/oculus/horizon/R$string;->common_install:I

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 841
    :cond_9
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mActionButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    .line 843
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v8, Lcom/oculus/horizon/R$string;->store_price_free:I

    sget v9, Lcom/oculus/horizon/R$string;->store_strikethrough_format:I

    sget v10, Lcom/oculus/horizon/R$string;->store_strikethrough_with_promo_benefit_format:I

    .line 842
    invoke-virtual {v1, v6, v8, v9, v10}, Lcom/oculus/model/ProductModel;->getPriceText(Landroid/content/Context;III)Ljava/lang/CharSequence;

    move-result-object v1

    .line 841
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 847
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mParentBundleModel:Lcom/oculus/model/BundleModel;

    if-eqz v0, :cond_c

    .line 848
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mBundleActionButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mParentBundleModel:Lcom/oculus/model/BundleModel;

    .line 850
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    sget v8, Lcom/oculus/horizon/R$string;->store_price_free:I

    sget v9, Lcom/oculus/horizon/R$string;->store_strikethrough_format:I

    sget v10, Lcom/oculus/horizon/R$string;->store_strikethrough_with_promo_benefit_format:I

    .line 849
    invoke-virtual {v1, v6, v8, v9, v10}, Lcom/oculus/model/BundleModel;->getPriceText(Landroid/content/Context;III)Ljava/lang/CharSequence;

    move-result-object v1

    .line 848
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 854
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mBundleActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 855
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mPurchaseBundleView:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mParentBundleModel:Lcom/oculus/model/BundleModel;

    iget-object v1, v1, Lcom/oculus/model/BundleModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 856
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mPurchaseBundleView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 857
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mPurchaseExperienceView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 860
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mStyleTheme:Lcom/oculus/model/StyleTheme;

    sget-object v1, Lcom/oculus/model/StyleTheme;->HALLOWEEN:Lcom/oculus/model/StyleTheme;

    if-ne v0, v1, :cond_a

    .line 861
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mBundleActionButton:Landroid/widget/Button;

    sget v1, Lcom/oculus/horizon/R$drawable;->button_white_on_orange_background:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 863
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mActionButton:Landroid/widget/Button;

    sget v1, Lcom/oculus/horizon/R$drawable;->button_white_on_gray_background:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    move v0, v2

    move v1, v3

    move v6, v3

    move-object v2, v4

    move v4, v3

    move v3, v5

    goto/16 :goto_0

    .line 864
    :cond_a
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mStyleTheme:Lcom/oculus/model/StyleTheme;

    sget-object v1, Lcom/oculus/model/StyleTheme;->WINTER:Lcom/oculus/model/StyleTheme;

    if-ne v0, v1, :cond_b

    .line 865
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mBundleActionButton:Landroid/widget/Button;

    sget v1, Lcom/oculus/horizon/R$drawable;->button_white_on_red_background:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 867
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mActionButton:Landroid/widget/Button;

    sget v1, Lcom/oculus/horizon/R$drawable;->button_white_on_black_background:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    move v0, v2

    move v1, v3

    move v6, v3

    move-object v2, v4

    move v4, v3

    move v3, v5

    goto/16 :goto_0

    .line 868
    :cond_b
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mStyleTheme:Lcom/oculus/model/StyleTheme;

    sget-object v1, Lcom/oculus/model/StyleTheme;->SUMMER:Lcom/oculus/model/StyleTheme;

    if-ne v0, v1, :cond_c

    .line 869
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mBundleActionButton:Landroid/widget/Button;

    sget v1, Lcom/oculus/horizon/R$drawable;->button_white_on_blue_background:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 871
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mActionButton:Landroid/widget/Button;

    sget v1, Lcom/oculus/horizon/R$drawable;->button_white_on_black_background:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    :cond_c
    move v0, v2

    move v1, v3

    move v6, v3

    move-object v2, v4

    move v4, v3

    move v3, v5

    goto/16 :goto_0

    .line 890
    :cond_d
    :try_start_0
    iget-object v6, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v6, v6, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v6, v6, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->viewer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer;

    iget-object v6, v6, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer;->user:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer$User;

    iget-object v6, v6, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer$User;->payment_account:Lcom/oculus/horizon/api/common/PaymentAccount;

    iget-object v6, v6, Lcom/oculus/horizon/api/common/PaymentAccount;->stored_credit:Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit;

    iget-object v6, v6, Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit;->balance:Lcom/oculus/horizon/api/common/PaymentMethod$Balance;

    .line 891
    iget v8, v6, Lcom/oculus/horizon/api/common/PaymentMethod$Balance;->amount_in_hundredths:I

    if-eqz v8, :cond_1

    .line 894
    iget-object v8, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mStoreCreditBalanceView:Landroid/widget/TextView;

    sget v9, Lcom/oculus/horizon/R$string;->pdp_store_credit_balance_remaining_string:I

    const/4 v10, 0x1

    new-array v10, v10, [Ljava/lang/Object;

    const/4 v11, 0x0

    iget-object v6, v6, Lcom/oculus/horizon/api/common/PaymentMethod$Balance;->formatted_amount:Ljava/lang/String;

    aput-object v6, v10, v11

    .line 895
    invoke-virtual {p0, v9, v10}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    .line 894
    invoke-virtual {v8, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v5, v4

    goto/16 :goto_1

    .line 898
    :catch_0
    move-exception v4

    goto/16 :goto_1

    .line 806
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 1

    .prologue
    .line 583
    invoke-super {p0, p1, p2, p3}, Lcom/oculus/horizon/pdp/PdpFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 584
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 585
    invoke-direct {p0, p2}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->onInstallPermissionsResult(I)V

    .line 589
    :cond_0
    :goto_0
    return-void

    .line 586
    :cond_1
    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    .line 587
    invoke-direct {p0, p2}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->onPaymentMethodResult(I)V

    goto :goto_0
.end method

.method public onChange(Ljava/lang/String;)V
    .locals 3

    .prologue
    .line 1616
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v0, v0, Lcom/oculus/model/ProductModel;->packageName:Ljava/lang/String;

    .line 1618
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1619
    const/4 v0, 0x1

    sget v1, Lcom/oculus/libraryapi/OVRLibraryModule$UL_id;->$ul_$xXXcom_oculus_libraryapi_OVRLibraryInternal$xXXBINDING_ID:I

    iget-object v2, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->$ul_mInjectionContext:Lcom/facebook/inject/InjectionContext;

    invoke-static {v0, v1, v2}, Lcom/facebook/inject/FbInjector;->lazyInstance(IILcom/facebook/inject/InjectionContext;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/libraryapi/OVRLibraryInternal;

    invoke-virtual {v0, p1}, Lcom/oculus/libraryapi/OVRLibraryInternal;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v0

    .line 1620
    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    invoke-static {v1, v0}, Lcom/oculus/library/legacy/LegacyUtils;->updateProductModelWithLibrary(Lcom/oculus/model/ProductModel;Lcom/oculus/library/model/App;)Lcom/oculus/model/ProductModel;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    .line 1621
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->setupProductView()V

    .line 1623
    :cond_0
    return-void
.end method

.method public onClick(Lcom/oculus/horizon/modal/AlertDialogFragment;II)V
    .locals 1

    .prologue
    .line 1071
    const/4 v0, -0x2

    if-ne p3, v0, :cond_1

    .line 1083
    :cond_0
    :goto_0
    return-void

    .line 1074
    :cond_1
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 1075
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->requestInstallPermissions()V

    goto :goto_0

    .line 1076
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 1079
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->maybeShowControllerWarningAndStartPurchaseAndInstallationProcess()V

    goto :goto_0

    .line 1080
    :cond_3
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    .line 1081
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mCheckoutFlowListener:Lcom/oculus/horizon/payments/CheckoutFlowModel$OnStateChangedListener;

    invoke-static {v0}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->resetInstance(Lcom/oculus/horizon/payments/CheckoutFlowModel$OnStateChangedListener;)Lcom/oculus/horizon/payments/CheckoutFlowModel;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mCheckoutFlowModel:Lcom/oculus/horizon/payments/CheckoutFlowModel;

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 260
    invoke-super {p0, p1}, Lcom/oculus/horizon/pdp/PdpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 119
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/pdp/ApplicationPdpFragment;)V

    .line 264
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 265
    const-string v0, "arg_redirect_uri"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mRedirectUri:Ljava/lang/String;

    .line 266
    const-string v0, "arg_auto_launch_uri"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mAutoLaunchUri:Z

    .line 267
    const-string v0, "arg_should_purchase_on_start"

    invoke-virtual {v2, v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mShouldPurchaseOnStart:Z

    .line 269
    if-eqz p1, :cond_0

    .line 270
    const-string v0, "arg_product_model"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/model/ProductModel;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    .line 274
    :cond_0
    const-string v0, "arg_referrer_event_id"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mReferrerEventId:Ljava/lang/String;

    .line 275
    const-string v0, "arg_parent_bundle_model"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/model/BundleModel;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mParentBundleModel:Lcom/oculus/model/BundleModel;

    .line 276
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mParentBundleModel:Lcom/oculus/model/BundleModel;

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mHideStoreCredit:Z

    .line 278
    new-instance v0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mPurchaseFailedAlertDialogBuilder:Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    .line 279
    const-string v0, "arg_referral_view"

    .line 280
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/horizon/logging/TrackingViews$View;->fromStringWithDefaults(Ljava/lang/String;)Lcom/oculus/horizon/logging/TrackingViews$View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mReferralView:Lcom/oculus/horizon/logging/TrackingViews$View;

    .line 281
    return-void

    :cond_1
    move v0, v1

    .line 276
    goto :goto_0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 286
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->setHasOptionsMenu(Z)V

    .line 287
    sget v0, Lcom/oculus/horizon/R$layout;->pdp_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 515
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->unregisterEventBuses()V

    .line 517
    invoke-static {v1}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->resetInstance(Lcom/oculus/horizon/payments/CheckoutFlowModel$OnStateChangedListener;)Lcom/oculus/horizon/payments/CheckoutFlowModel;

    .line 519
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mDetailsView:Lcom/oculus/horizon/pdp/widget/DetailsView;

    .line 521
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mReviewsLayout:Landroid/widget/LinearLayout;

    .line 522
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mEmptyReviewsLayout:Landroid/view/View;

    .line 523
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mReviewsHeader:Landroid/view/View;

    .line 524
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mEmptyReviewsHeader:Landroid/view/View;

    .line 525
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mReviewButton:Landroid/view/View;

    .line 527
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mDescriptionView:Lcom/oculus/horizon/pdp/widget/ExpandableTextView;

    .line 528
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mIAPWarningView:Landroid/widget/TextView;

    .line 530
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mControllerSection:Landroid/widget/LinearLayout;

    .line 531
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mControllerHeader:Landroid/widget/TextView;

    .line 532
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mControllersList:Landroid/widget/LinearLayout;

    .line 534
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mSDCardView:Landroid/widget/TextView;

    .line 535
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mInternetView:Landroid/widget/TextView;

    .line 536
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mSizeView:Landroid/widget/TextView;

    .line 538
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mGalleryCarousel:Landroidx/recyclerview/widget/RecyclerView;

    .line 539
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mActionButton:Landroid/widget/Button;

    .line 540
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mBundleActionButton:Landroid/widget/Button;

    .line 541
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mPurchaseBundleView:Landroid/widget/TextView;

    .line 542
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mPurchaseExperienceView:Landroid/widget/TextView;

    .line 543
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mStoreCreditBalanceView:Landroid/widget/TextView;

    .line 544
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProgressView:Lcom/oculus/horizon/pdp/widget/ProgressView;

    .line 545
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/MediaView;->reset()V

    .line 546
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    .line 547
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mRatingText:Landroid/widget/TextView;

    .line 548
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mRatingCount:Landroid/widget/TextView;

    .line 549
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mRatingStars:Lcom/oculus/horizon/widget/RatingView;

    .line 550
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mRatingLayout:Landroid/widget/LinearLayout;

    .line 551
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mComfortText:Landroid/widget/TextView;

    .line 552
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mComfortImage:Landroid/widget/ImageView;

    .line 554
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mMessageBar:Lcom/oculus/horizon/pdp/widget/MessageBar;

    .line 556
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mIarcInfoLayout:Landroid/widget/LinearLayout;

    .line 557
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mIarcInfoRating:Landroid/widget/TextView;

    .line 558
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mIarcInfoImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 559
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mIARCDetailsView:Lcom/oculus/horizon/pdp/widget/IARCDetailsView;

    .line 560
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mIARCBottomDivider:Landroid/view/View;

    .line 562
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mExtraBuyBoxSectionLayout:Landroid/widget/LinearLayout;

    .line 563
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mExtraBuyBoxContent:Landroid/widget/TextView;

    .line 564
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mExtraBuyBoxIcon:Landroid/widget/ImageView;

    .line 566
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mInfoRootLayout:Landroid/widget/LinearLayout;

    .line 568
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    .line 569
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mParentBundleModel:Lcom/oculus/model/BundleModel;

    .line 571
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mPurchaseFailedAlertDialogBuilder:Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    .line 573
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mInstallerEventBus:Lcom/oculus/appmanager/installer/events/InstallerEventBus;

    .line 574
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mCheckoutFlowListener:Lcom/oculus/horizon/payments/CheckoutFlowModel$OnStateChangedListener;

    .line 576
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mCopyright:Landroid/widget/TextView;

    .line 578
    invoke-super {p0}, Lcom/oculus/horizon/pdp/PdpFragment;->onDestroyView()V

    .line 579
    return-void
.end method

.method public onDownloadResponse(Lcom/oculus/appmanager/installer/events/DownloadResponse;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 607
    invoke-virtual {p1}, Lcom/oculus/appmanager/installer/events/DownloadResponse;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 608
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v1, v1, Lcom/oculus/model/ProductModel;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 617
    :goto_0
    return-void

    .line 612
    :cond_0
    invoke-virtual {p1}, Lcom/oculus/appmanager/installer/events/DownloadResponse;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/oculus/appmanager/installer/events/DownloadResponse;->isUpdate()Z

    move-result v0

    if-nez v0, :cond_1

    .line 613
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mInstallFailed:Z

    .line 616
    :cond_1
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->setupProductView()V

    goto :goto_0
.end method

.method public onInstallResponse(Lcom/oculus/appmanager/installer/events/InstallResponse;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 593
    invoke-virtual {p1}, Lcom/oculus/appmanager/installer/events/InstallResponse;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 594
    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v1, v1, Lcom/oculus/model/ProductModel;->packageName:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 603
    :goto_0
    return-void

    .line 598
    :cond_0
    invoke-virtual {p1}, Lcom/oculus/appmanager/installer/events/InstallResponse;->isSuccess()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lcom/oculus/appmanager/installer/events/InstallResponse;->isUpdate()Z

    move-result v0

    if-nez v0, :cond_1

    .line 599
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mInstallFailed:Z

    .line 602
    :cond_1
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->setupProductView()V

    goto :goto_0
.end method

.method public onItemDetailsResponse(Lcom/oculus/horizon/api/common/Item;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 621
    iput-object p1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    .line 622
    invoke-direct {p0, p1}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->createProductModel(Lcom/oculus/horizon/api/common/Item;)Lcom/oculus/model/ProductModel;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    .line 623
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mDescriptionView:Lcom/oculus/horizon/pdp/widget/ExpandableTextView;

    iget-object v1, p1, Lcom/oculus/horizon/api/common/Item;->display_long_description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 625
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-boolean v0, v0, Lcom/oculus/model/ProductModel;->isOwnedByCurrentUser:Z

    if-nez v0, :cond_5

    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->shouldShowCountdownTimer(Lcom/oculus/horizon/api/common/Item$AppStoreOffer;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 626
    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-wide v0, v0, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->end_time:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->startCountdownTimer(J)V

    .line 631
    :goto_0
    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->grouping:Lcom/oculus/horizon/api/common/Item$ApplicationGrouping;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->grouping:Lcom/oculus/horizon/api/common/Item$ApplicationGrouping;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$ApplicationGrouping;->iap_items_2:Lcom/oculus/horizon/api/common/Item$ApplicationGrouping$IAPItems;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->grouping:Lcom/oculus/horizon/api/common/Item$ApplicationGrouping;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$ApplicationGrouping;->iap_items_2:Lcom/oculus/horizon/api/common/Item$ApplicationGrouping$IAPItems;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$ApplicationGrouping$IAPItems;->nodes:Ljava/util/List;

    .line 633
    invoke-static {v0}, Lcom/oculus/util/collection/CollectionUtil;->isNotNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 634
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mIAPWarningView:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 637
    :cond_0
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->setupMediaView()V

    .line 639
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->registerEventBuses()V

    .line 641
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->updateTitleBar()V

    .line 643
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->setupProductView()V

    .line 644
    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->screenshots:Ljava/util/List;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mScreenShots:Ljava/util/List;

    .line 646
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mPdpCarouselAdapter:Lcom/oculus/horizon/pdp/PdpCarouselAdapter;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mScreenShots:Ljava/util/List;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/PdpCarouselAdapter;->setItems(Ljava/util/List;)V

    .line 647
    invoke-direct {p0, p1}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->updateInfo(Lcom/oculus/horizon/api/common/Item;)V

    .line 648
    invoke-direct {p0, p1}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->updateComfort(Lcom/oculus/horizon/api/common/Item;)V

    .line 649
    invoke-direct {p0, p1}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->updateDetails(Lcom/oculus/horizon/api/common/Item;)V

    .line 651
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mIARCDetailsView:Lcom/oculus/horizon/pdp/widget/IARCDetailsView;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/pdp/widget/IARCDetailsView;->updateIarc(Lcom/oculus/horizon/api/common/Item;)V

    .line 652
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mIARCBottomDivider:Landroid/view/View;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mIARCDetailsView:Lcom/oculus/horizon/pdp/widget/IARCDetailsView;

    invoke-virtual {v1}, Lcom/oculus/horizon/pdp/widget/IARCDetailsView;->getVisibility()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 654
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mCopyright:Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->pdp_copyright:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/Item;->organization:Lcom/oculus/horizon/api/common/Item$Organization;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/Item$Organization;->name:Ljava/lang/String;

    aput-object v3, v2, v4

    invoke-virtual {p0, v1, v2}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 656
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->store_wide_offers:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->setupStoreWideOffers(Ljava/util/List;)V

    .line 659
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->showProductView()V

    .line 661
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mGalleryGk:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/oculus/horizon/store/StoreSectionBrand;->GALLERY:Lcom/oculus/horizon/store/StoreSectionBrand;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreSectionBrand;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item;->category:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 662
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->category:Ljava/lang/String;

    .line 663
    invoke-static {v0}, Lcom/oculus/horizon/store/StoreSectionBrand;->from(Ljava/lang/String;)Lcom/oculus/horizon/store/StoreSectionBrand;

    move-result-object v0

    invoke-static {v0, v5, v5}, Lcom/oculus/horizon/store/StoreUtils;->getBestStoreRoadblockModel(Lcom/oculus/horizon/store/StoreSectionBrand;Lcom/oculus/horizon/api/common/Section$Assets;Ljava/lang/String;)Lcom/oculus/model/StoreRoadblockModel;

    move-result-object v0

    .line 664
    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mMessageBar:Lcom/oculus/horizon/pdp/widget/MessageBar;

    invoke-virtual {v1, v4}, Lcom/oculus/horizon/pdp/widget/MessageBar;->setVisibility(I)V

    .line 665
    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mMessageBar:Lcom/oculus/horizon/pdp/widget/MessageBar;

    sget v2, Lcom/oculus/horizon/R$string;->pdp_app_type_gallery_description:I

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/pdp/widget/MessageBar;->setDescription(I)V

    .line 666
    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mMessageBar:Lcom/oculus/horizon/pdp/widget/MessageBar;

    sget v2, Lcom/oculus/horizon/R$drawable;->pdp_gallery_icon_outline:I

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/pdp/widget/MessageBar;->setImage(I)V

    .line 667
    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mStyleTheme:Lcom/oculus/model/StyleTheme;

    sget-object v2, Lcom/oculus/model/StyleTheme;->HALLOWEEN:Lcom/oculus/model/StyleTheme;

    if-ne v1, v2, :cond_1

    .line 668
    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mMessageBar:Lcom/oculus/horizon/pdp/widget/MessageBar;

    sget v2, Lcom/oculus/horizon/R$color;->oculus_black_4:I

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/pdp/widget/MessageBar;->setBackgroundResource(I)V

    .line 670
    :cond_1
    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mMessageBar:Lcom/oculus/horizon/pdp/widget/MessageBar;

    new-instance v2, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$13;

    invoke-direct {v2, p0, v0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$13;-><init>(Lcom/oculus/horizon/pdp/ApplicationPdpFragment;Lcom/oculus/model/StoreRoadblockModel;)V

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/pdp/widget/MessageBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 679
    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mRoadblockedStoreSectionHelper:Lcom/oculus/horizon/store/roadblock/RoadblockedStoreSectionHelper;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/store/roadblock/RoadblockedStoreSectionHelper;->shouldRoadblock(Lcom/oculus/model/StoreRoadblockModel;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 681
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mReferralView:Lcom/oculus/horizon/logging/TrackingViews$View;

    .line 680
    invoke-static {v1, v0, v5, v2}, Lcom/oculus/horizon/store/roadblock/StoreSectionRoadblockFragment;->show(Landroidx/fragment/app/FragmentManager;Lcom/oculus/model/StoreRoadblockModel;Ljava/lang/String;Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 685
    :cond_2
    iget-boolean v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mAutoLaunchUri:Z

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    iget-object v0, v0, Lcom/oculus/model/ProductModel;->packageName:Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->isAppInstalled(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 686
    iput-boolean v4, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mAutoLaunchUri:Z

    .line 687
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->startApplication()V

    .line 690
    :cond_3
    iget-boolean v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mShouldPurchaseOnStart:Z

    if-eqz v0, :cond_4

    .line 691
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->onActionButtonClicked()V

    .line 693
    :cond_4
    return-void

    .line 628
    :cond_5
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->destroyStoreCountdownTimer()V

    goto/16 :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 508
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/MediaView;->pauseVideo()V

    .line 510
    invoke-super {p0}, Lcom/oculus/horizon/pdp/PdpFragment;->onPause()V

    .line 511
    return-void
.end method

.method public onResume()V
    .locals 3

    .prologue
    .line 473
    invoke-super {p0}, Lcom/oculus/horizon/pdp/PdpFragment;->onResume()V

    .line 475
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    if-nez v0, :cond_2

    .line 476
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->fetchItemData()V

    .line 481
    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mCheckoutFlowModel:Lcom/oculus/horizon/payments/CheckoutFlowModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mCheckoutFlowModel:Lcom/oculus/horizon/payments/CheckoutFlowModel;

    .line 482
    invoke-virtual {v0}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->getState()Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/payments/CheckoutFlowModel$State;->ERROR:Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    if-ne v0, v1, :cond_0

    .line 483
    new-instance v0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    .line 484
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;-><init>(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mCheckoutFlowModel:Lcom/oculus/horizon/payments/CheckoutFlowModel;

    .line 485
    invoke-virtual {v1}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->getErrorTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTitle(Ljava/lang/String;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mCheckoutFlowModel:Lcom/oculus/horizon/payments/CheckoutFlowModel;

    .line 486
    invoke-virtual {v1}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setMessage(Ljava/lang/String;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_ok:I

    .line 487
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setPositiveButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    .line 488
    invoke-virtual {v0}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->build()Lcom/oculus/horizon/modal/AlertDialogFragment;

    move-result-object v0

    .line 489
    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1}, Landroidx/fragment/app/DialogFragment;->setTargetFragment(Landroidx/fragment/app/Fragment;I)V

    .line 490
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "purchase_failed_fragment"

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 495
    :cond_0
    iget-boolean v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mShouldInstallOnResume:Z

    if-eqz v0, :cond_1

    .line 496
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mShouldInstallOnResume:Z

    .line 497
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->startDownload()V

    .line 499
    :cond_1
    return-void

    .line 478
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/MediaView;->playVideo()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 503
    const-string v0, "arg_product_model"

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProductModel:Lcom/oculus/model/ProductModel;

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 504
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 292
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/pdp/PdpFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 294
    sget v0, Lcom/oculus/horizon/R$id;->media_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/MediaView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    .line 295
    sget v0, Lcom/oculus/horizon/R$id;->info_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mInfoRootLayout:Landroid/widget/LinearLayout;

    .line 296
    sget v0, Lcom/oculus/horizon/R$id;->info_extra_section_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mExtraBuyBoxSectionLayout:Landroid/widget/LinearLayout;

    .line 297
    sget v0, Lcom/oculus/horizon/R$id;->info_extra_section_content:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mExtraBuyBoxContent:Landroid/widget/TextView;

    .line 298
    sget v0, Lcom/oculus/horizon/R$id;->info_extra_section_icon:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mExtraBuyBoxIcon:Landroid/widget/ImageView;

    .line 299
    sget v0, Lcom/oculus/horizon/R$id;->info_iarc_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mIarcInfoLayout:Landroid/widget/LinearLayout;

    .line 300
    sget v0, Lcom/oculus/horizon/R$id;->info_iarc_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mIarcInfoImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 301
    sget v0, Lcom/oculus/horizon/R$id;->info_iarc_rating:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mIarcInfoRating:Landroid/widget/TextView;

    .line 302
    sget v0, Lcom/oculus/horizon/R$id;->iap_warning:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mIAPWarningView:Landroid/widget/TextView;

    .line 303
    sget v0, Lcom/oculus/horizon/R$id;->controller_section:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mControllerSection:Landroid/widget/LinearLayout;

    .line 304
    sget v0, Lcom/oculus/horizon/R$id;->controller_header_text_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mControllerHeader:Landroid/widget/TextView;

    .line 305
    sget v0, Lcom/oculus/horizon/R$id;->controllers_list:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mControllersList:Landroid/widget/LinearLayout;

    .line 306
    sget v0, Lcom/oculus/horizon/R$id;->info_sdcard:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mSDCardView:Landroid/widget/TextView;

    .line 307
    sget v0, Lcom/oculus/horizon/R$id;->info_internet:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mInternetView:Landroid/widget/TextView;

    .line 308
    sget v0, Lcom/oculus/horizon/R$id;->info_size:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mSizeView:Landroid/widget/TextView;

    .line 310
    sget v0, Lcom/oculus/horizon/R$id;->rating_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mRatingText:Landroid/widget/TextView;

    .line 311
    sget v0, Lcom/oculus/horizon/R$id;->rating_count:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mRatingCount:Landroid/widget/TextView;

    .line 312
    sget v0, Lcom/oculus/horizon/R$id;->rating_stars:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/RatingView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mRatingStars:Lcom/oculus/horizon/widget/RatingView;

    .line 313
    sget v0, Lcom/oculus/horizon/R$id;->rating_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mRatingLayout:Landroid/widget/LinearLayout;

    .line 314
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mRatingLayout:Landroid/widget/LinearLayout;

    new-instance v1, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$1;-><init>(Lcom/oculus/horizon/pdp/ApplicationPdpFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 321
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mRatingText:Landroid/widget/TextView;

    new-instance v1, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$2;-><init>(Lcom/oculus/horizon/pdp/ApplicationPdpFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 329
    sget v0, Lcom/oculus/horizon/R$id;->iarc_details_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/pdp/widget/IARCDetailsView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mIARCDetailsView:Lcom/oculus/horizon/pdp/widget/IARCDetailsView;

    .line 330
    sget v0, Lcom/oculus/horizon/R$id;->iarc_bottom_divider:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mIARCBottomDivider:Landroid/view/View;

    .line 332
    sget v0, Lcom/oculus/horizon/R$id;->comfort_image:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mComfortImage:Landroid/widget/ImageView;

    .line 333
    sget v0, Lcom/oculus/horizon/R$id;->comfort_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mComfortText:Landroid/widget/TextView;

    .line 335
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 337
    sget v0, Lcom/oculus/horizon/R$id;->action_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mActionButton:Landroid/widget/Button;

    .line 338
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mActionButton:Landroid/widget/Button;

    new-instance v2, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$3;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$3;-><init>(Lcom/oculus/horizon/pdp/ApplicationPdpFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 346
    sget v0, Lcom/oculus/horizon/R$id;->bundle_action_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mBundleActionButton:Landroid/widget/Button;

    .line 347
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mBundleActionButton:Landroid/widget/Button;

    new-instance v2, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$4;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$4;-><init>(Lcom/oculus/horizon/pdp/ApplicationPdpFragment;)V

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 361
    sget v0, Lcom/oculus/horizon/R$id;->purchase_bundle_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mPurchaseBundleView:Landroid/widget/TextView;

    .line 362
    sget v0, Lcom/oculus/horizon/R$id;->purchase_experience_only_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mPurchaseExperienceView:Landroid/widget/TextView;

    .line 364
    sget v0, Lcom/oculus/horizon/R$id;->store_credit_balance_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mStoreCreditBalanceView:Landroid/widget/TextView;

    .line 366
    sget v0, Lcom/oculus/horizon/R$id;->progress_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/pdp/widget/ProgressView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProgressView:Lcom/oculus/horizon/pdp/widget/ProgressView;

    .line 367
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mProgressView:Lcom/oculus/horizon/pdp/widget/ProgressView;

    new-instance v2, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$5;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$5;-><init>(Lcom/oculus/horizon/pdp/ApplicationPdpFragment;)V

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/pdp/widget/ProgressView;->setActionOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 375
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mIarcInfoImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    new-instance v2, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$6;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$6;-><init>(Lcom/oculus/horizon/pdp/ApplicationPdpFragment;)V

    invoke-virtual {v0, v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 386
    sget v0, Lcom/oculus/horizon/R$id;->description_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mDescriptionView:Lcom/oculus/horizon/pdp/widget/ExpandableTextView;

    .line 388
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mPdpCarouselAdapter:Lcom/oculus/horizon/pdp/PdpCarouselAdapter;

    new-instance v2, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$7;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$7;-><init>(Lcom/oculus/horizon/pdp/ApplicationPdpFragment;)V

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/pdp/PdpCarouselAdapter;->setOnItemListener(Lcom/oculus/horizon/pdp/PdpCarouselAdapter$OnItemClickListener;)V

    .line 397
    sget v0, Lcom/oculus/horizon/R$id;->gallery_carousel:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mGalleryCarousel:Landroidx/recyclerview/widget/RecyclerView;

    .line 398
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mGalleryCarousel:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v2, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mPdpCarouselAdapter:Lcom/oculus/horizon/pdp/PdpCarouselAdapter;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 399
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mGalleryCarousel:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 400
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mGalleryCarousel:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 401
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3, v5, v5}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;IZ)V

    .line 400
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 402
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mGalleryCarousel:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/oculus/horizon/util/ui/PaddingDecoration;

    sget v3, Lcom/oculus/horizon/R$dimen;->store_recyclerview_inner_padding:I

    .line 405
    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    sget v4, Lcom/oculus/horizon/R$dimen;->store_recyclerview_inner_padding:I

    .line 406
    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    invoke-direct {v2, v5, v3, v1}, Lcom/oculus/horizon/util/ui/PaddingDecoration;-><init>(III)V

    .line 402
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 408
    sget v0, Lcom/oculus/horizon/R$id;->header_reviews_empty:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mEmptyReviewsHeader:Landroid/view/View;

    .line 409
    sget v0, Lcom/oculus/horizon/R$id;->header_reviews:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mReviewsHeader:Landroid/view/View;

    .line 410
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mReviewsHeader:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->row_name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->pdp_header_reviews:I

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(I)V

    .line 411
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mReviewsHeader:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->see_all_button_area:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 412
    new-instance v1, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$8;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$8;-><init>(Lcom/oculus/horizon/pdp/ApplicationPdpFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 419
    sget v0, Lcom/oculus/horizon/R$id;->action_review:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mReviewButton:Landroid/view/View;

    .line 420
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mReviewButton:Landroid/view/View;

    new-instance v1, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$9;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$9;-><init>(Lcom/oculus/horizon/pdp/ApplicationPdpFragment;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 434
    sget v0, Lcom/oculus/horizon/R$id;->reviews_empty:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mEmptyReviewsLayout:Landroid/view/View;

    .line 435
    sget v0, Lcom/oculus/horizon/R$id;->reviews:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mReviewsLayout:Landroid/widget/LinearLayout;

    .line 437
    sget v0, Lcom/oculus/horizon/R$id;->details:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/pdp/widget/DetailsView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mDetailsView:Lcom/oculus/horizon/pdp/widget/DetailsView;

    .line 439
    sget v0, Lcom/oculus/horizon/R$id;->header_version_notes:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$10;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$10;-><init>(Lcom/oculus/horizon/pdp/ApplicationPdpFragment;)V

    .line 440
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 447
    sget v0, Lcom/oculus/horizon/R$id;->header_developer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    new-instance v1, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$11;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$11;-><init>(Lcom/oculus/horizon/pdp/ApplicationPdpFragment;)V

    .line 448
    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 455
    sget v0, Lcom/oculus/horizon/R$id;->copyright:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mCopyright:Landroid/widget/TextView;

    .line 457
    sget v0, Lcom/oculus/horizon/R$id;->message_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/pdp/widget/MessageBar;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mMessageBar:Lcom/oculus/horizon/pdp/widget/MessageBar;

    .line 459
    new-instance v0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$12;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment$12;-><init>(Lcom/oculus/horizon/pdp/ApplicationPdpFragment;)V

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mCheckoutFlowListener:Lcom/oculus/horizon/payments/CheckoutFlowModel$OnStateChangedListener;

    .line 466
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mCheckoutFlowListener:Lcom/oculus/horizon/payments/CheckoutFlowModel$OnStateChangedListener;

    invoke-static {v0}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->resetInstance(Lcom/oculus/horizon/payments/CheckoutFlowModel$OnStateChangedListener;)Lcom/oculus/horizon/payments/CheckoutFlowModel;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mCheckoutFlowModel:Lcom/oculus/horizon/payments/CheckoutFlowModel;

    .line 468
    invoke-static {}, Lcom/oculus/appmanager/installer/events/InstallerEventBus;->getInstance()Lcom/oculus/appmanager/installer/events/InstallerEventBus;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mInstallerEventBus:Lcom/oculus/appmanager/installer/events/InstallerEventBus;

    .line 469
    return-void
.end method

.method public updateTitleBar()V
    .locals 2

    .prologue
    .line 717
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/pdp/ApplicationPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->display_name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 718
    return-void

    .line 717
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
