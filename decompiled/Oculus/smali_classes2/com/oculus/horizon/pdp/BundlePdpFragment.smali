.class public Lcom/oculus/horizon/pdp/BundlePdpFragment;
.super Lcom/oculus/horizon/pdp/PdpFragment;
.source "BundlePdpFragment.java"

# interfaces
.implements Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mActionButton:Landroid/widget/Button;

.field private mBundleInstallationHelperProvider:Lcom/oculus/horizon/store/BundleInstallationHelperProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mBundleItemAdapter:Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;

.field private mBundleModel:Lcom/oculus/model/BundleModel;

.field private mCheckoutFlowListener:Lcom/oculus/horizon/payments/CheckoutFlowModel$OnStateChangedListener;

.field private mCheckoutFlowModel:Lcom/oculus/horizon/payments/CheckoutFlowModel;

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

.field private mDynamicPricingTextView:Landroid/widget/TextView;

.field private mEventBusesRegistered:Z

.field private mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mInstallationHelper:Lcom/oculus/horizon/store/BundleInstallationHelper;

.field private mInstallerEventBus:Lcom/oculus/appmanager/installer/events/InstallerEventBus;

.field private mItem:Lcom/oculus/horizon/api/common/Item;

.field private mItemCountHeader:Landroid/view/View;

.field private mItemCountHeaderText:Landroid/widget/TextView;

.field private mKickoffPurchase:Z

.field private mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mMediaView:Lcom/oculus/horizon/widget/MediaView;

.field private mPdpVideoLoggerProvider:Lcom/oculus/horizon/pdp/PdpVideoLoggerProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mProgressView:Lcom/oculus/horizon/pdp/widget/ProgressView;

.field private mPurchaseFailedAlertDialogBuilder:Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

.field private mReferralView:Lcom/oculus/horizon/logging/TrackingViews$View;

.field private mStoreCreditBalanceView:Landroid/widget/TextView;

.field private mStoresManager:Lcom/oculus/horizon/store/StoresManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/pdp/BundlePdpFragment;)V
    .locals 1

    .prologue
    .line 57
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/pdp/BundlePdpFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/pdp/BundlePdpFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/pdp/BundlePdpFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/pdp/BundlePdpFragment;)V
    .locals 1

    .prologue
    .line 57
    invoke-static {p0}, Lcom/oculus/auth/credentials/CredentialsModule;->$ul_$xXXjavax_inject_Provider$x3Ccom_oculus_auth_credentials_Credentials$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mCredentialsProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/horizon/store/StoresManager;->$ul_$xXXcom_oculus_horizon_store_StoresManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/store/StoresManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mStoresManager:Lcom/oculus/horizon/store/StoresManager;

    invoke-static {p0}, Lcom/oculus/horizon/pdp/PdpVideoLogger;->$ul_$xXXcom_oculus_horizon_pdp_PdpVideoLoggerProvider$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/pdp/PdpVideoLoggerProvider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mPdpVideoLoggerProvider:Lcom/oculus/horizon/pdp/PdpVideoLoggerProvider;

    invoke-static {p0}, Lcom/oculus/libraryapi/OVRLibraryModule;->$ul_$xXXcom_oculus_libraryapi_OVRLibraryInternal$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/libraryapi/OVRLibraryInternal;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    invoke-static {p0}, Lcom/oculus/horizon/store/BundleInstallationHelper;->$ul_$xXXcom_oculus_horizon_store_BundleInstallationHelperProvider$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/store/BundleInstallationHelperProvider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mBundleInstallationHelperProvider:Lcom/oculus/horizon/store/BundleInstallationHelperProvider;

    invoke-static {p0}, Lcom/oculus/horizon/main/MainModule;->$ul_$xXXcom_oculus_horizon_fragmentfactory_FragmentFactory$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/oculus/horizon/pdp/BundlePdpFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/PdpFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/pdp/BundlePdpFragment;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/BundlePdpFragment;->onActionButtonClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/horizon/pdp/BundlePdpFragment;)V
    .locals 0

    .prologue
    .line 57
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/BundlePdpFragment;->onCheckoutFlowModelUpdate()V

    return-void
.end method

.method static synthetic access$202(Lcom/oculus/horizon/pdp/BundlePdpFragment;Lcom/oculus/horizon/payments/CheckoutFlowModel;)Lcom/oculus/horizon/payments/CheckoutFlowModel;
    .locals 0

    .prologue
    .line 57
    iput-object p1, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mCheckoutFlowModel:Lcom/oculus/horizon/payments/CheckoutFlowModel;

    return-object p1
.end method

.method static synthetic access$300(Lcom/oculus/horizon/pdp/BundlePdpFragment;)Lcom/oculus/horizon/payments/CheckoutFlowModel$OnStateChangedListener;
    .locals 1

    .prologue
    .line 57
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mCheckoutFlowListener:Lcom/oculus/horizon/payments/CheckoutFlowModel$OnStateChangedListener;

    return-object v0
.end method

.method private createBundleModel(Lcom/oculus/horizon/api/common/Item;Z)Lcom/oculus/model/BundleModel;
    .locals 18

    .prologue
    .line 524
    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    if-nez v2, :cond_2

    const/4 v2, 0x1

    move v15, v2

    .line 525
    :goto_0
    if-nez v15, :cond_0

    move-object/from16 v0, p1

    iget-object v2, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->strikethrough_price:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;

    if-nez v2, :cond_3

    :cond_0
    const/4 v2, 0x1

    move v12, v2

    .line 526
    :goto_1
    new-instance v2, Lcom/oculus/model/BundleModel;

    move-object/from16 v0, p1

    iget-object v3, v0, Lcom/oculus/horizon/api/common/Item;->id:Ljava/lang/String;

    if-eqz v15, :cond_4

    const/4 v4, 0x0

    :goto_2
    move-object/from16 v0, p1

    iget-object v5, v0, Lcom/oculus/horizon/api/common/Item;->display_name:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v6, v0, Lcom/oculus/horizon/api/common/Item;->display_long_description:Ljava/lang/String;

    move-object/from16 v0, p1

    iget v7, v0, Lcom/oculus/horizon/api/common/Item;->release_date:I

    int-to-long v8, v7

    .line 531
    invoke-static {v8, v9}, Lcom/oculus/horizon/util/DateUtils;->getDateFromTimestampInSeconds(J)Ljava/lang/String;

    move-result-object v7

    .line 532
    invoke-virtual/range {p1 .. p1}, Lcom/oculus/horizon/api/common/Item;->getSquareImageUri()Ljava/lang/String;

    move-result-object v8

    move-object/from16 v0, p1

    iget-object v9, v0, Lcom/oculus/horizon/api/common/Item;->cover_landscape_image:Lcom/oculus/http/common/Image;

    iget-object v9, v9, Lcom/oculus/http/common/Image;->uri:Ljava/lang/String;

    move-object/from16 v0, p1

    iget-object v10, v0, Lcom/oculus/horizon/api/common/Item;->cover_landscape_image:Lcom/oculus/http/common/Image;

    iget-object v10, v10, Lcom/oculus/http/common/Image;->uri:Ljava/lang/String;

    if-eqz v15, :cond_5

    move-object/from16 v0, p0

    iget-object v11, v0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mContext:Landroid/content/Context;

    sget v13, Lcom/oculus/horizon/R$string;->store_not_available:I

    .line 536
    invoke-virtual {v11, v13}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    .line 537
    :goto_3
    if-eqz v12, :cond_7

    const/4 v12, 0x0

    .line 543
    :goto_4
    if-eqz v15, :cond_8

    const/4 v13, 0x0

    :goto_5
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/oculus/horizon/api/common/Item;->small_landscape_image:Lcom/oculus/http/common/Image;

    if-nez v14, :cond_9

    const-string v14, ""

    :goto_6
    if-nez v15, :cond_a

    move-object/from16 v0, p1

    iget-object v15, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v15, v15, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->price:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;

    iget v15, v15, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;->offset_amount:I

    if-nez v15, :cond_a

    const/4 v15, 0x1

    :goto_7
    move-object/from16 v0, p1

    iget-boolean v0, v0, Lcom/oculus/horizon/api/common/Item;->is_viewer_entitled:Z

    move/from16 v16, v0

    if-nez v16, :cond_1

    if-eqz p2, :cond_b

    :cond_1
    const/16 v16, 0x1

    :goto_8
    move-object/from16 v0, p1

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->style_theme:Ljava/lang/String;

    move-object/from16 v17, v0

    .line 549
    invoke-static/range {v17 .. v17}, Lcom/oculus/horizon/store/StoresManager;->getStyleTheme(Ljava/lang/String;)Lcom/oculus/model/StyleTheme;

    move-result-object v17

    invoke-direct/range {v2 .. v17}, Lcom/oculus/model/BundleModel;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZLcom/oculus/model/StyleTheme;)V

    return-object v2

    .line 524
    :cond_2
    const/4 v2, 0x0

    move v15, v2

    goto :goto_0

    .line 525
    :cond_3
    const/4 v2, 0x0

    move v12, v2

    goto :goto_1

    .line 526
    :cond_4
    move-object/from16 v0, p1

    iget-object v4, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v4, v4, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->id:Ljava/lang/String;

    goto :goto_2

    .line 536
    :cond_5
    move-object/from16 v0, p0

    iget-object v13, v0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mContext:Landroid/content/Context;

    move-object/from16 v0, p1

    iget-object v11, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v11, v11, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->price:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;

    iget v11, v11, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;->offset_amount:I

    if-nez v11, :cond_6

    const/4 v11, 0x1

    :goto_9
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v14, v14, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->price:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;

    iget-object v14, v14, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;->formatted:Ljava/lang/String;

    .line 537
    invoke-static {v13, v11, v14}, Lcom/oculus/horizon/util/ProductUtils;->getPriceLabel(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v11

    goto :goto_3

    .line 536
    :cond_6
    const/4 v11, 0x0

    goto :goto_9

    .line 537
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mContext:Landroid/content/Context;

    const/4 v13, 0x0

    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v14, v14, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->strikethrough_price:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;

    iget-object v14, v14, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;->formatted:Ljava/lang/String;

    .line 543
    invoke-static {v12, v13, v14}, Lcom/oculus/horizon/util/ProductUtils;->getPriceLabel(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v12

    goto :goto_4

    :cond_8
    move-object/from16 v0, p1

    iget-object v13, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v13, v13, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->promo_benefit:Ljava/lang/String;

    goto :goto_5

    :cond_9
    move-object/from16 v0, p1

    iget-object v14, v0, Lcom/oculus/horizon/api/common/Item;->small_landscape_image:Lcom/oculus/http/common/Image;

    iget-object v14, v14, Lcom/oculus/http/common/Image;->uri:Ljava/lang/String;

    goto :goto_6

    :cond_a
    const/4 v15, 0x0

    goto :goto_7

    :cond_b
    const/16 v16, 0x0

    goto :goto_8
.end method

.method private isPackageInBundle(Ljava/lang/String;)Z
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 250
    invoke-static {p1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    .line 259
    :goto_0
    return v0

    .line 254
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mBundleItemAdapter:Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;

    invoke-virtual {v0}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->getDownloadableItems()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Item;

    .line 255
    invoke-virtual {v0}, Lcom/oculus/horizon/api/common/Item;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 256
    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 259
    goto :goto_0
.end method

.method private onActionButtonClicked()V
    .locals 4

    .prologue
    .line 473
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-virtual {v0}, Lcom/oculus/horizon/logging/OculusLogger;->reportBundleDownloadAllTapped()V

    .line 475
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mKickoffPurchase:Z

    .line 476
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mBundleModel:Lcom/oculus/model/BundleModel;

    iget-boolean v0, v0, Lcom/oculus/model/BundleModel;->isOwnedByCurrentUser:Z

    if-nez v0, :cond_0

    .line 477
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mStoreCreditBalanceView:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 480
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mInstallationHelper:Lcom/oculus/horizon/store/BundleInstallationHelper;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mBundleItemAdapter:Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;

    .line 481
    invoke-virtual {v1}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->getNotYetDownloadedItems()Ljava/util/List;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mBundleModel:Lcom/oculus/model/BundleModel;

    iget-object v3, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mReferralView:Lcom/oculus/horizon/logging/TrackingViews$View;

    .line 480
    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/store/BundleInstallationHelper;->installWithPermissionsScreen(Ljava/util/List;Lcom/oculus/model/BundleModel;Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 482
    return-void
.end method

.method private onCheckoutFlowModelUpdate()V
    .locals 3

    .prologue
    .line 486
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mCheckoutFlowModel:Lcom/oculus/horizon/payments/CheckoutFlowModel;

    invoke-virtual {v0}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->getState()Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    move-result-object v0

    .line 487
    sget-object v1, Lcom/oculus/horizon/payments/CheckoutFlowModel$State;->PURCHASED:Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    if-ne v1, v0, :cond_1

    .line 488
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/BundlePdpFragment;->onProductPurchased()V

    .line 513
    :cond_0
    :goto_0
    return-void

    .line 491
    :cond_1
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/BundlePdpFragment;->setupProductView()V

    .line 492
    sget-object v1, Lcom/oculus/horizon/payments/CheckoutFlowModel$State;->RESET:Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    if-eq v1, v0, :cond_0

    .line 497
    sget-object v1, Lcom/oculus/horizon/payments/CheckoutFlowModel$State;->ERROR:Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    if-ne v1, v0, :cond_0

    .line 499
    invoke-static {}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->getInstance()Lcom/oculus/horizon/payments/CheckoutFlowModel;

    move-result-object v0

    .line 500
    iget-object v1, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mPurchaseFailedAlertDialogBuilder:Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    .line 501
    invoke-virtual {v0}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->getErrorTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTitle(Ljava/lang/String;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v1

    .line 502
    invoke-virtual {v0}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setMessage(Ljava/lang/String;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_ok:I

    new-instance v2, Lcom/oculus/horizon/pdp/BundlePdpFragment$3;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/pdp/BundlePdpFragment$3;-><init>(Lcom/oculus/horizon/pdp/BundlePdpFragment;)V

    .line 503
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setPositiveButton(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    goto :goto_0
.end method

.method private onProductPurchased()V
    .locals 1

    .prologue
    .line 519
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mStoresManager:Lcom/oculus/horizon/store/StoresManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoresManager;->clearCache()V

    .line 520
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mBundleModel:Lcom/oculus/model/BundleModel;

    invoke-virtual {v0}, Lcom/oculus/model/BundleModel;->newPurchasedModel()Lcom/oculus/model/BundleModel;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mBundleModel:Lcom/oculus/model/BundleModel;

    .line 521
    return-void
.end method

.method private registerEventBuses()V
    .locals 1

    .prologue
    .line 342
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    invoke-virtual {v0, p0}, Lcom/oculus/libraryapi/OVRLibraryInternal;->registerAppsChangeListener(Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;)V

    .line 343
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mInstallerEventBus:Lcom/oculus/appmanager/installer/events/InstallerEventBus;

    invoke-virtual {v0, p0}, Lcom/oculus/appmanager/installer/events/InstallerEventBus;->register(Ljava/lang/Object;)V

    .line 344
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mEventBusesRegistered:Z

    .line 345
    return-void
.end method

.method private setupMediaView()V
    .locals 5

    .prologue
    .line 361
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/MediaView;->reset()V

    .line 363
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mBundleModel:Lcom/oculus/model/BundleModel;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mBundleModel:Lcom/oculus/model/BundleModel;

    iget-object v1, v1, Lcom/oculus/model/BundleModel;->mainImageSource:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/MediaView;->setMediaUri(Ljava/lang/String;)V

    .line 367
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->video_trailer:Lcom/oculus/horizon/api/common/Video;

    if-eqz v0, :cond_1

    .line 368
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/MediaView;->enableMuteUnmute()V

    .line 370
    :try_start_0
    iget-object v1, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mCredentialsProvider:Ljavax/inject/Provider;

    .line 372
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/auth/credentials/Credentials;

    iget-object v2, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/Item;->video_trailer:Lcom/oculus/horizon/api/common/Video;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/Video;->uri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 371
    invoke-static {v0, v2}, Lcom/oculus/auth/util/AccessTokenUtils;->appendAccessToken(Lcom/oculus/auth/credentials/Credentials;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mPdpVideoLoggerProvider:Lcom/oculus/horizon/pdp/PdpVideoLoggerProvider;

    iget-object v3, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mBundleModel:Lcom/oculus/model/BundleModel;

    iget-object v3, v3, Lcom/oculus/model/BundleModel;->itemId:Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v4, v4, Lcom/oculus/horizon/api/common/Item;->video_trailer:Lcom/oculus/horizon/api/common/Video;

    .line 373
    invoke-virtual {v2, v3, v4}, Lcom/oculus/horizon/pdp/PdpVideoLoggerProvider;->get(Ljava/lang/String;Lcom/oculus/horizon/api/common/Video;)Lcom/oculus/horizon/pdp/PdpVideoLogger;

    move-result-object v2

    .line 370
    invoke-virtual {v1, v0, v2}, Lcom/oculus/horizon/widget/MediaView;->loadVideo(Landroid/net/Uri;Lcom/oculus/horizon/media/MediaPlayerLogger;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 378
    :cond_1
    :goto_0
    return-void

    .line 374
    :catch_0
    move-exception v0

    .line 375
    sget-object v1, Lcom/oculus/horizon/pdp/BundlePdpFragment;->TAG:Ljava/lang/String;

    const-string v2, "Could not prepare MediaPlayer"

    invoke-static {v1, v2, v0}, Lcom/oculus/errorreporting/ErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setupProductView()V
    .locals 0

    .prologue
    .line 382
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/BundlePdpFragment;->updateStatus()V

    .line 383
    return-void
.end method

.method private unregisterEventBuses()V
    .locals 1

    .prologue
    .line 348
    iget-boolean v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mEventBusesRegistered:Z

    if-eqz v0, :cond_0

    .line 349
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    invoke-virtual {v0, p0}, Lcom/oculus/libraryapi/OVRLibraryInternal;->unregisterAppChangeListener(Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;)V

    .line 350
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mInstallerEventBus:Lcom/oculus/appmanager/installer/events/InstallerEventBus;

    invoke-virtual {v0, p0}, Lcom/oculus/appmanager/installer/events/InstallerEventBus;->unregister(Ljava/lang/Object;)V

    .line 351
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mEventBusesRegistered:Z

    .line 353
    :cond_0
    return-void
.end method

.method private updateStatus()V
    .locals 8

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 386
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mBundleModel:Lcom/oculus/model/BundleModel;

    iget-boolean v0, v0, Lcom/oculus/model/BundleModel;->isOwnedByCurrentUser:Z

    if-eqz v0, :cond_0

    .line 387
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mStoreCreditBalanceView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 388
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mDynamicPricingTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 389
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/BundlePdpFragment;->destroyStoreCountdownTimer()V

    .line 390
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mFooterBar:Lcom/oculus/horizon/pdp/widget/MessageBar;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/widget/MessageBar;->setVisibility(I)V

    .line 429
    :goto_0
    const/4 v0, 0x0

    .line 432
    iget-object v4, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mBundleModel:Lcom/oculus/model/BundleModel;

    iget-boolean v4, v4, Lcom/oculus/model/BundleModel;->isOwnedByCurrentUser:Z

    if-eqz v4, :cond_8

    .line 433
    iget-object v4, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mBundleItemAdapter:Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;

    invoke-virtual {v4}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->getDownloadableItems()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/oculus/util/collection/CollectionUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 435
    sget v0, Lcom/oculus/horizon/R$string;->store_purchased:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/BundlePdpFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v4, v2

    .line 457
    :goto_1
    iget-object v5, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v5, v4}, Landroid/widget/Button;->setVisibility(I)V

    .line 458
    iget-object v4, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v4, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 459
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 460
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mProgressView:Lcom/oculus/horizon/pdp/widget/ProgressView;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/widget/ProgressView;->setVisibility(I)V

    .line 461
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mProgressView:Lcom/oculus/horizon/pdp/widget/ProgressView;

    sget v1, Lcom/oculus/horizon/R$string;->product_state_installing:I

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/pdp/BundlePdpFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/widget/ProgressView;->setText(Ljava/lang/CharSequence;)V

    .line 462
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mProgressView:Lcom/oculus/horizon/pdp/widget/ProgressView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/widget/ProgressView;->setActionVisibility(I)V

    .line 463
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mProgressView:Lcom/oculus/horizon/pdp/widget/ProgressView;

    invoke-virtual {v0, v3}, Lcom/oculus/horizon/pdp/widget/ProgressView;->setIndeterminate(Z)V

    .line 464
    return-void

    .line 393
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->viewer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->viewer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer;->user:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer$User;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->viewer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer;->user:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer$User;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer$User;->payment_account:Lcom/oculus/horizon/api/common/PaymentAccount;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->viewer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer;->user:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer$User;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer$User;->payment_account:Lcom/oculus/horizon/api/common/PaymentAccount;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/PaymentAccount;->stored_credit:Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mBundleModel:Lcom/oculus/model/BundleModel;

    iget-boolean v0, v0, Lcom/oculus/model/BundleModel;->isFree:Z

    if-eqz v0, :cond_2

    :cond_1
    move v0, v1

    .line 415
    :goto_2
    iget-object v4, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mStoreCreditBalanceView:Landroid/widget/TextView;

    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 417
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->price:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;

    iget v0, v0, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;->offset_amount:I

    if-lez v0, :cond_4

    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->price_without_proration:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$PriceWithoutProration;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->price:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;

    iget v0, v0, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;->offset_amount:I

    int-to-float v0, v0

    iget-object v4, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v4, v4, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v4, v4, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->price_without_proration:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$PriceWithoutProration;

    iget-object v4, v4, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$PriceWithoutProration;->amount_with_offset:Ljava/lang/String;

    .line 421
    invoke-static {v4}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v4

    cmpg-float v0, v0, v4

    if-gez v0, :cond_4

    .line 422
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mDynamicPricingTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 402
    :cond_2
    :try_start_0
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->viewer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer;->user:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer$User;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer$User;->payment_account:Lcom/oculus/horizon/api/common/PaymentAccount;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/PaymentAccount;->stored_credit:Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit;->balance:Lcom/oculus/horizon/api/common/PaymentMethod$Balance;

    .line 404
    iget v4, v0, Lcom/oculus/horizon/api/common/PaymentMethod$Balance;->amount_in_hundredths:I

    if-nez v4, :cond_3

    move v0, v1

    .line 405
    goto :goto_2

    .line 407
    :cond_3
    iget-object v4, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mStoreCreditBalanceView:Landroid/widget/TextView;

    sget v5, Lcom/oculus/horizon/R$string;->pdp_store_credit_balance_remaining_string:I

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v0, v0, Lcom/oculus/horizon/api/common/PaymentMethod$Balance;->formatted_amount:Ljava/lang/String;

    aput-object v0, v6, v7

    .line 408
    invoke-virtual {p0, v5, v6}, Lcom/oculus/horizon/pdp/BundlePdpFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 407
    invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move v0, v2

    goto :goto_2

    .line 411
    :catch_0
    move-exception v0

    move v0, v1

    .line 412
    goto :goto_2

    .line 424
    :cond_4
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mDynamicPricingTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_0

    .line 437
    :cond_5
    iget-object v4, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mBundleItemAdapter:Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;

    invoke-virtual {v4}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->getInstallingItems()Ljava/util/List;

    move-result-object v4

    invoke-static {v4}, Lcom/oculus/util/collection/CollectionUtil;->isNotNullOrEmpty(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_6

    move v4, v1

    move v1, v2

    move v2, v3

    .line 440
    goto/16 :goto_1

    .line 441
    :cond_6
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mBundleItemAdapter:Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;

    invoke-virtual {v0}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->getNotYetDownloadedItems()Ljava/util/List;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/util/collection/CollectionUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 443
    sget v0, Lcom/oculus/horizon/R$string;->common_installed:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/BundlePdpFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v4, v2

    .line 444
    goto/16 :goto_1

    .line 447
    :cond_7
    sget v0, Lcom/oculus/horizon/R$string;->common_install_all_content:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/BundlePdpFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    move v4, v2

    move v2, v3

    goto/16 :goto_1

    .line 450
    :cond_8
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mBundleModel:Lcom/oculus/model/BundleModel;

    .line 452
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/BundlePdpFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/oculus/horizon/R$string;->store_price_free:I

    sget v6, Lcom/oculus/horizon/R$string;->store_strikethrough_format:I

    sget v7, Lcom/oculus/horizon/R$string;->store_strikethrough_with_promo_benefit_format:I

    .line 451
    invoke-virtual {v0, v4, v5, v6, v7}, Lcom/oculus/model/BundleModel;->getPriceText(Landroid/content/Context;III)Ljava/lang/CharSequence;

    move-result-object v0

    move v4, v2

    move v2, v3

    goto/16 :goto_1
.end method


# virtual methods
.method public getBundleModel()Lcom/oculus/model/BundleModel;
    .locals 1

    .prologue
    .line 338
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mBundleModel:Lcom/oculus/model/BundleModel;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 228
    invoke-super {p0, p1, p2, p3}, Lcom/oculus/horizon/pdp/PdpFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 229
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mInstallationHelper:Lcom/oculus/horizon/store/BundleInstallationHelper;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mReferralView:Lcom/oculus/horizon/logging/TrackingViews$View;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/oculus/horizon/store/BundleInstallationHelper;->onActivityResult(IILandroid/content/Intent;Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 230
    return-void
.end method

.method public onChange(Ljava/lang/String;)V
    .locals 7

    .prologue
    const/4 v0, 0x0

    .line 234
    iget-object v1, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    invoke-virtual {v1}, Lcom/oculus/libraryapi/OVRLibraryInternal;->getAllApps()[Lcom/oculus/library/model/App;

    move-result-object v2

    .line 235
    array-length v3, v2

    move v1, v0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v4, v2, v1

    .line 236
    iget-object v5, v4, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    sget-object v6, Lcom/oculus/library/model/AppStatus;->DOWNLOADING:Lcom/oculus/library/model/AppStatus;

    if-eq v5, v6, :cond_0

    iget-object v5, v4, Lcom/oculus/library/model/App;->status:Lcom/oculus/library/model/AppStatus;

    sget-object v6, Lcom/oculus/library/model/AppStatus;->DOWNLOAD_QUEUED:Lcom/oculus/library/model/AppStatus;

    if-ne v5, v6, :cond_2

    :cond_0
    iget-object v4, v4, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    .line 237
    invoke-direct {p0, v4}, Lcom/oculus/horizon/pdp/BundlePdpFragment;->isPackageInBundle(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 238
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/BundlePdpFragment;->setupProductView()V

    .line 243
    :cond_1
    array-length v1, v2

    :goto_1
    if-ge v0, v1, :cond_3

    aget-object v3, v2, v0

    .line 244
    iget-object v4, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mBundleItemAdapter:Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;

    iget-object v5, v3, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->clearError(Ljava/lang/String;)V

    .line 245
    iget-object v4, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mBundleItemAdapter:Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;

    iget-object v3, v3, Lcom/oculus/library/model/App;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v3}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->notifyItemChanged(Ljava/lang/String;)V

    .line 243
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 235
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 247
    :cond_3
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 98
    invoke-super {p0, p1}, Lcom/oculus/horizon/pdp/PdpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 57
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/BundlePdpFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/pdp/BundlePdpFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/pdp/BundlePdpFragment;)V

    .line 102
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mBundleInstallationHelperProvider:Lcom/oculus/horizon/store/BundleInstallationHelperProvider;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/store/BundleInstallationHelperProvider;->get(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/store/BundleInstallationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mInstallationHelper:Lcom/oculus/horizon/store/BundleInstallationHelper;

    .line 103
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mInstallationHelper:Lcom/oculus/horizon/store/BundleInstallationHelper;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/store/BundleInstallationHelper;->onCreate(Landroid/os/Bundle;)V

    .line 104
    invoke-static {}, Lcom/oculus/appmanager/installer/events/InstallerEventBus;->getInstance()Lcom/oculus/appmanager/installer/events/InstallerEventBus;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mInstallerEventBus:Lcom/oculus/appmanager/installer/events/InstallerEventBus;

    .line 106
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/BundlePdpFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 107
    const-string v1, "arg_kickoff_purchase"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mKickoffPurchase:Z

    .line 108
    const-string v1, "arg_referral_view"

    .line 109
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/horizon/logging/TrackingViews$View;->fromStringWithDefaults(Ljava/lang/String;)Lcom/oculus/horizon/logging/TrackingViews$View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mReferralView:Lcom/oculus/horizon/logging/TrackingViews$View;

    .line 110
    new-instance v0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/BundlePdpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mPurchaseFailedAlertDialogBuilder:Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    .line 111
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 122
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/BundlePdpFragment;->setHasOptionsMenu(Z)V

    .line 123
    sget v0, Lcom/oculus/horizon/R$layout;->bundle_pdp_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 220
    iput-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mInstallerEventBus:Lcom/oculus/appmanager/installer/events/InstallerEventBus;

    .line 221
    iput-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mInstallationHelper:Lcom/oculus/horizon/store/BundleInstallationHelper;

    .line 223
    invoke-super {p0}, Lcom/oculus/horizon/pdp/PdpFragment;->onDestroy()V

    .line 224
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 200
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/BundlePdpFragment;->unregisterEventBuses()V

    .line 202
    invoke-static {v1}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->resetInstance(Lcom/oculus/horizon/payments/CheckoutFlowModel$OnStateChangedListener;)Lcom/oculus/horizon/payments/CheckoutFlowModel;

    .line 204
    iput-object v1, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mDescriptionView:Lcom/oculus/horizon/pdp/widget/ExpandableTextView;

    .line 205
    iput-object v1, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mActionButton:Landroid/widget/Button;

    .line 206
    iput-object v1, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mStoreCreditBalanceView:Landroid/widget/TextView;

    .line 207
    iput-object v1, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mDynamicPricingTextView:Landroid/widget/TextView;

    .line 208
    iput-object v1, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mProgressView:Lcom/oculus/horizon/pdp/widget/ProgressView;

    .line 209
    iput-object v1, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mItemCountHeader:Landroid/view/View;

    .line 210
    iput-object v1, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mItemCountHeaderText:Landroid/widget/TextView;

    .line 211
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/MediaView;->reset()V

    .line 212
    iput-object v1, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    .line 213
    iput-object v1, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    .line 215
    invoke-super {p0}, Lcom/oculus/horizon/pdp/PdpFragment;->onDestroyView()V

    .line 216
    return-void
.end method

.method public onInstallResponse(Lcom/oculus/appmanager/installer/events/InstallResponse;)V
    .locals 2
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 264
    invoke-virtual {p1}, Lcom/oculus/appmanager/installer/events/InstallResponse;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 265
    invoke-virtual {p1}, Lcom/oculus/appmanager/installer/events/InstallResponse;->isSuccess()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {p1}, Lcom/oculus/appmanager/installer/events/InstallResponse;->isUpdate()Z

    move-result v1

    if-nez v1, :cond_0

    .line 266
    iget-object v1, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mBundleItemAdapter:Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->setError(Ljava/lang/String;)V

    .line 268
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mBundleItemAdapter:Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->notifyItemChanged(Ljava/lang/String;)V

    .line 269
    return-void
.end method

.method public onItemDetailsResponse(Lcom/oculus/horizon/api/common/Item;)V
    .locals 9

    .prologue
    const/4 v5, 0x1

    const/4 v3, 0x0

    .line 275
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mBundleItemAdapter:Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;

    invoke-virtual {v0}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->clearItems()V

    .line 277
    new-instance v6, Ljava/util/LinkedHashMap;

    invoke-direct {v6}, Ljava/util/LinkedHashMap;-><init>()V

    .line 278
    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->bundle_items:Lcom/oculus/horizon/api/common/Item$BundleItems;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$BundleItems;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move v2, v3

    move v4, v5

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Item;

    .line 279
    if-eqz v4, :cond_0

    iget-boolean v1, v0, Lcom/oculus/horizon/api/common/Item;->is_viewer_entitled:Z

    if-eqz v1, :cond_0

    move v4, v5

    .line 280
    :goto_1
    invoke-virtual {v0}, Lcom/oculus/horizon/api/common/Item;->isAppSupportedOnCurrentDevice()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 281
    iget-object v1, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mBundleItemAdapter:Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->add(Lcom/oculus/horizon/api/common/Item;)V

    .line 282
    add-int/lit8 v2, v2, 0x1

    move v0, v2

    :goto_2
    move v2, v0

    .line 291
    goto :goto_0

    :cond_0
    move v4, v3

    .line 279
    goto :goto_1

    .line 283
    :cond_1
    iget-object v1, v0, Lcom/oculus/horizon/api/common/Item;->parent_application:Lcom/oculus/horizon/api/common/Item;

    if-eqz v1, :cond_3

    .line 284
    iget-object v1, v0, Lcom/oculus/horizon/api/common/Item;->parent_application:Lcom/oculus/horizon/api/common/Item;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item;->id:Ljava/lang/String;

    invoke-interface {v6, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 285
    if-nez v1, :cond_2

    .line 286
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 287
    iget-object v8, v0, Lcom/oculus/horizon/api/common/Item;->parent_application:Lcom/oculus/horizon/api/common/Item;

    iget-object v8, v8, Lcom/oculus/horizon/api/common/Item;->id:Ljava/lang/String;

    invoke-interface {v6, v8, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 289
    :cond_2
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    move v0, v2

    goto :goto_2

    .line 293
    :cond_4
    invoke-interface {v6}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    .line 294
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 295
    invoke-static {v0}, Lcom/oculus/util/collection/CollectionUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 299
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/horizon/api/common/Item;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item;->parent_application:Lcom/oculus/horizon/api/common/Item;

    .line 300
    iget-object v7, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mBundleItemAdapter:Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;

    invoke-virtual {v7, v1}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->addHeader(Lcom/oculus/horizon/api/common/Item;)V

    .line 301
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Item;

    .line 302
    iget-object v7, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mBundleItemAdapter:Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;

    invoke-virtual {v7, v0}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->add(Lcom/oculus/horizon/api/common/Item;)V

    goto :goto_3

    .line 306
    :cond_6
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mBundleItemAdapter:Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mBundleItemAdapter:Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;

    invoke-virtual {v1}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v3, v1}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->notifyItemRangeChanged(II)V

    .line 308
    iput-object p1, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    .line 309
    invoke-direct {p0, p1, v4}, Lcom/oculus/horizon/pdp/BundlePdpFragment;->createBundleModel(Lcom/oculus/horizon/api/common/Item;Z)Lcom/oculus/model/BundleModel;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mBundleModel:Lcom/oculus/model/BundleModel;

    .line 310
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mDescriptionView:Lcom/oculus/horizon/pdp/widget/ExpandableTextView;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mBundleModel:Lcom/oculus/model/BundleModel;

    iget-object v1, v1, Lcom/oculus/model/BundleModel;->description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 311
    if-lez v2, :cond_7

    .line 312
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mItemCountHeaderText:Landroid/widget/TextView;

    .line 313
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/BundlePdpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v4, Lcom/oculus/horizon/R$plurals;->bundle_pdp_item_count:I

    new-array v5, v5, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    invoke-virtual {v1, v4, v2, v5}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 312
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 318
    :goto_4
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mBundleModel:Lcom/oculus/model/BundleModel;

    iget-boolean v0, v0, Lcom/oculus/model/BundleModel;->isOwnedByCurrentUser:Z

    if-nez v0, :cond_8

    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/BundlePdpFragment;->shouldShowCountdownTimer(Lcom/oculus/horizon/api/common/Item$AppStoreOffer;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 319
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-wide v0, v0, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->end_time:J

    const-wide/16 v2, 0x3e8

    mul-long/2addr v0, v2

    invoke-virtual {p0, v0, v1}, Lcom/oculus/horizon/pdp/BundlePdpFragment;->startCountdownTimer(J)V

    .line 324
    :goto_5
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/BundlePdpFragment;->setupMediaView()V

    .line 325
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/BundlePdpFragment;->registerEventBuses()V

    .line 326
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/BundlePdpFragment;->updateTitleBar()V

    .line 327
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/BundlePdpFragment;->setupProductView()V

    .line 328
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->store_wide_offers:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/BundlePdpFragment;->setupStoreWideOffers(Ljava/util/List;)V

    .line 330
    iget-boolean v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mKickoffPurchase:Z

    if-eqz v0, :cond_9

    .line 331
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/BundlePdpFragment;->onActionButtonClicked()V

    .line 335
    :goto_6
    return-void

    .line 315
    :cond_7
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mItemCountHeader:Landroid/view/View;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_4

    .line 321
    :cond_8
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/BundlePdpFragment;->destroyStoreCountdownTimer()V

    goto :goto_5

    .line 333
    :cond_9
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/BundlePdpFragment;->showProductView()V

    goto :goto_6
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 193
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/MediaView;->pauseVideo()V

    .line 195
    invoke-super {p0}, Lcom/oculus/horizon/pdp/PdpFragment;->onPause()V

    .line 196
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 173
    invoke-super {p0}, Lcom/oculus/horizon/pdp/PdpFragment;->onResume()V

    .line 174
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mInstallationHelper:Lcom/oculus/horizon/store/BundleInstallationHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/BundleInstallationHelper;->onResume()V

    .line 176
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    if-nez v0, :cond_1

    .line 177
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/BundlePdpFragment;->fetchItemData()V

    .line 185
    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mCheckoutFlowModel:Lcom/oculus/horizon/payments/CheckoutFlowModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mCheckoutFlowModel:Lcom/oculus/horizon/payments/CheckoutFlowModel;

    .line 186
    invoke-virtual {v0}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->getState()Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/payments/CheckoutFlowModel$State;->ERROR:Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    if-ne v0, v1, :cond_0

    .line 187
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mPurchaseFailedAlertDialogBuilder:Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    const-string v1, "purchase_failed_fragment"

    invoke-virtual {v0, p0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->show(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 189
    :cond_0
    return-void

    .line 178
    :cond_1
    iget-boolean v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mKickoffPurchase:Z

    if-eqz v0, :cond_2

    .line 179
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/BundlePdpFragment;->onActionButtonClicked()V

    goto :goto_0

    .line 181
    :cond_2
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/BundlePdpFragment;->showProductView()V

    .line 182
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/MediaView;->playVideo()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 115
    invoke-super {p0, p1}, Lcom/oculus/horizon/pdp/PdpFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 116
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mInstallationHelper:Lcom/oculus/horizon/store/BundleInstallationHelper;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/store/BundleInstallationHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 117
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 9

    .prologue
    .line 128
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/pdp/PdpFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 130
    sget v0, Lcom/oculus/horizon/R$id;->media_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/MediaView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    .line 132
    sget v0, Lcom/oculus/horizon/R$id;->action_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mActionButton:Landroid/widget/Button;

    .line 133
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mActionButton:Landroid/widget/Button;

    new-instance v1, Lcom/oculus/horizon/pdp/BundlePdpFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/pdp/BundlePdpFragment$1;-><init>(Lcom/oculus/horizon/pdp/BundlePdpFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    sget v0, Lcom/oculus/horizon/R$id;->store_credit_balance_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mStoreCreditBalanceView:Landroid/widget/TextView;

    .line 142
    sget v0, Lcom/oculus/horizon/R$id;->dynamic_pricing_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mDynamicPricingTextView:Landroid/widget/TextView;

    .line 143
    sget v0, Lcom/oculus/horizon/R$id;->progress_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/pdp/widget/ProgressView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mProgressView:Lcom/oculus/horizon/pdp/widget/ProgressView;

    .line 145
    sget v0, Lcom/oculus/horizon/R$id;->bundle_app_count_header:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mItemCountHeader:Landroid/view/View;

    .line 146
    sget v0, Lcom/oculus/horizon/R$id;->bundle_item_header_title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mItemCountHeaderText:Landroid/widget/TextView;

    .line 148
    sget v0, Lcom/oculus/horizon/R$id;->description_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mDescriptionView:Lcom/oculus/horizon/pdp/widget/ExpandableTextView;

    .line 150
    new-instance v0, Lcom/oculus/horizon/pdp/BundlePdpFragment$2;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/pdp/BundlePdpFragment$2;-><init>(Lcom/oculus/horizon/pdp/BundlePdpFragment;)V

    iput-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mCheckoutFlowListener:Lcom/oculus/horizon/payments/CheckoutFlowModel$OnStateChangedListener;

    .line 157
    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mCheckoutFlowListener:Lcom/oculus/horizon/payments/CheckoutFlowModel$OnStateChangedListener;

    invoke-static {v0}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->resetInstance(Lcom/oculus/horizon/payments/CheckoutFlowModel$OnStateChangedListener;)Lcom/oculus/horizon/payments/CheckoutFlowModel;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mCheckoutFlowModel:Lcom/oculus/horizon/payments/CheckoutFlowModel;

    .line 159
    new-instance v0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;

    .line 161
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/BundlePdpFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    sget v3, Lcom/oculus/horizon/R$id;->item_container:I

    .line 163
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mInstallationHelper:Lcom/oculus/horizon/store/BundleInstallationHelper;

    iget-object v5, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    .line 166
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/BundlePdpFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    iget-object v7, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mStyleTheme:Lcom/oculus/model/StyleTheme;

    iget-object v8, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-direct/range {v0 .. v8}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Landroid/view/ViewGroup;Lcom/oculus/horizon/store/BundleInstallationHelper;Lcom/oculus/libraryapi/OVRLibraryInternal;Landroid/view/LayoutInflater;Lcom/oculus/model/StyleTheme;Lcom/oculus/horizon/logging/OculusLogger;)V

    iput-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mBundleItemAdapter:Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;

    .line 169
    return-void
.end method

.method public updateTitleBar()V
    .locals 2

    .prologue
    .line 357
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/BundlePdpFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/pdp/BundlePdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->display_name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 358
    return-void

    .line 357
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
