.class public Lcom/oculus/horizon/pdp/InAppPdpFragment;
.super Lcom/oculus/horizon/pdp/PdpFragment;
.source "InAppPdpFragment.java"

# interfaces
.implements Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBundleInstallationHelperProvider:Lcom/oculus/horizon/store/BundleInstallationHelperProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mCheckoutFlowListener:Lcom/oculus/horizon/payments/CheckoutFlowModel$OnStateChangedListener;

.field private mCheckoutFlowModel:Lcom/oculus/horizon/payments/CheckoutFlowModel;

.field private mCheckoutItem:Lcom/oculus/horizon/api/common/Item;

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

.field private mEventBusesRegistered:Z

.field private mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mInstallationHelper:Lcom/oculus/horizon/store/BundleInstallationHelper;

.field private mInstallerEventBus:Lcom/oculus/appmanager/installer/events/InstallerEventBus;

.field private mItem:Lcom/oculus/horizon/api/common/Item;

.field private mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mMediaView:Lcom/oculus/horizon/widget/MediaView;

.field private mParentItemAdapter:Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;

.field private mPdpVideoLoggerProvider:Lcom/oculus/horizon/pdp/PdpVideoLoggerProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPurchaseActionButton:Landroid/widget/Button;

.field private mPurchaseCaptionTextView:Landroid/widget/TextView;

.field private mPurchaseFailedAlertDialogBuilder:Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

.field private mPurchaseItem:Lcom/oculus/horizon/api/common/Item;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mPurchaseMethods:Lcom/oculus/horizon/commerce/PurchaseMethods;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mRatingView:Landroid/widget/TextView;

.field private mRentalActionButton:Landroid/widget/Button;

.field private mRentalCaptionTextView:Landroid/widget/TextView;

.field private mRentalItem:Lcom/oculus/horizon/api/common/Item;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mStoreCreditBalanceCaptionTextView:Landroid/widget/TextView;

.field private mThreeDFormatView:Landroid/widget/TextView;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/pdp/InAppPdpFragment;)V
    .locals 1

    .prologue
    .line 62
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/pdp/InAppPdpFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/pdp/InAppPdpFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/pdp/InAppPdpFragment;)V
    .locals 1

    .prologue
    .line 62
    invoke-static {p0}, Lcom/oculus/auth/credentials/CredentialsModule;->$ul_$xXXjavax_inject_Provider$x3Ccom_oculus_auth_credentials_Credentials$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mCredentialsProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/horizon/commerce/PurchaseMethods;->$ul_$xXXcom_oculus_horizon_commerce_PurchaseMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/commerce/PurchaseMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mPurchaseMethods:Lcom/oculus/horizon/commerce/PurchaseMethods;

    invoke-static {p0}, Lcom/oculus/horizon/pdp/PdpVideoLogger;->$ul_$xXXcom_oculus_horizon_pdp_PdpVideoLoggerProvider$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/pdp/PdpVideoLoggerProvider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mPdpVideoLoggerProvider:Lcom/oculus/horizon/pdp/PdpVideoLoggerProvider;

    invoke-static {p0}, Lcom/oculus/libraryapi/OVRLibraryModule;->$ul_$xXXcom_oculus_libraryapi_OVRLibraryInternal$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/libraryapi/OVRLibraryInternal;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    invoke-static {p0}, Lcom/oculus/horizon/store/BundleInstallationHelper;->$ul_$xXXcom_oculus_horizon_store_BundleInstallationHelperProvider$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/store/BundleInstallationHelperProvider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mBundleInstallationHelperProvider:Lcom/oculus/horizon/store/BundleInstallationHelperProvider;

    invoke-static {p0}, Lcom/oculus/horizon/main/MainModule;->$ul_$xXXcom_oculus_horizon_fragmentfactory_FragmentFactory$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 64
    const-class v0, Lcom/oculus/horizon/pdp/InAppPdpFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/PdpFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/pdp/InAppPdpFragment;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->onPurchaseActionButtonClicked()V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/horizon/pdp/InAppPdpFragment;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->onRentalActionButtonClicked()V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/horizon/pdp/InAppPdpFragment;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->onCheckoutFlowModelUpdate()V

    return-void
.end method

.method static synthetic access$300()Ljava/lang/String;
    .locals 1

    .prologue
    .line 62
    sget-object v0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/pdp/InAppPdpFragment;Lcom/oculus/horizon/commerce/CreateOrderResponse;Lcom/oculus/horizon/api/common/Item;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->createPreparePurchaseActivityIntent(Lcom/oculus/horizon/commerce/CreateOrderResponse;Lcom/oculus/horizon/api/common/Item;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$500(Lcom/oculus/horizon/pdp/InAppPdpFragment;Lcom/oculus/horizon/api/common/Item;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->createAddPaymentActivityIntent(Lcom/oculus/horizon/api/common/Item;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$600(Lcom/oculus/horizon/pdp/InAppPdpFragment;)V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->setupProductView()V

    return-void
.end method

.method static synthetic access$702(Lcom/oculus/horizon/pdp/InAppPdpFragment;Lcom/oculus/horizon/payments/CheckoutFlowModel;)Lcom/oculus/horizon/payments/CheckoutFlowModel;
    .locals 0

    .prologue
    .line 62
    iput-object p1, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mCheckoutFlowModel:Lcom/oculus/horizon/payments/CheckoutFlowModel;

    return-object p1
.end method

.method static synthetic access$800(Lcom/oculus/horizon/pdp/InAppPdpFragment;)Lcom/oculus/horizon/payments/CheckoutFlowModel$OnStateChangedListener;
    .locals 1

    .prologue
    .line 62
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mCheckoutFlowListener:Lcom/oculus/horizon/payments/CheckoutFlowModel$OnStateChangedListener;

    return-object v0
.end method

.method private createAddPaymentActivityIntent(Lcom/oculus/horizon/api/common/Item;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 596
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 597
    const-string v1, "extra_offer_id"

    iget-object v2, p1, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 598
    const-string v1, "extra_image_url"

    invoke-direct {p0, p1}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->getImageUrl(Lcom/oculus/horizon/api/common/Item;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 599
    const-string v1, "extra_item_name"

    iget-object v2, p1, Lcom/oculus/horizon/api/common/Item;->display_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 600
    const-string v1, "extra_item_is_rental"

    .line 601
    invoke-virtual {p1}, Lcom/oculus/horizon/api/common/Item;->isValidInAppRentalItem()Z

    move-result v2

    .line 600
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 602
    const-string v1, "extra_package_name"

    const-string v2, "package_placeholder_for_iap"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 605
    new-instance v1, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const-class v3, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 606
    const-string v2, "extra_continue_checkout"

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 607
    const-string v2, "extra_offer_id"

    iget-object v3, p1, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 609
    const-string v2, "extra_prepare_purchase_intent"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 611
    return-object v1
.end method

.method private createPreparePurchaseActivityIntent(Lcom/oculus/horizon/commerce/CreateOrderResponse;Lcom/oculus/horizon/api/common/Item;)Landroid/content/Intent;
    .locals 5

    .prologue
    .line 616
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 617
    const-string v1, "extra_offer_id"

    iget-object v2, p2, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 618
    const-string v1, "extra_image_url"

    invoke-direct {p0, p2}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->getImageUrl(Lcom/oculus/horizon/api/common/Item;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 619
    const-string v1, "extra_item_name"

    iget-object v2, p2, Lcom/oculus/horizon/api/common/Item;->display_name:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 620
    const-string v1, "extra_item_is_rental"

    invoke-virtual {p2}, Lcom/oculus/horizon/api/common/Item;->isValidInAppRentalItem()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 621
    const-string v1, "extra_item_price"

    .line 622
    invoke-virtual {p1}, Lcom/oculus/horizon/commerce/CreateOrderResponse;->getPurchaseDetails()Lcom/oculus/horizon/api/common/PurchaseDetails;

    move-result-object v2

    iget-object v2, v2, Lcom/oculus/horizon/api/common/PurchaseDetails;->price:Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;->formatted:Ljava/lang/String;

    .line 621
    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 623
    const-string v1, "extra_package_name"

    const-string v2, "package_placeholder_for_iap"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    invoke-virtual {p1}, Lcom/oculus/horizon/commerce/CreateOrderResponse;->getPurchaseDetails()Lcom/oculus/horizon/api/common/PurchaseDetails;

    move-result-object v1

    .line 627
    invoke-virtual {p1}, Lcom/oculus/horizon/commerce/CreateOrderResponse;->getPaymentMethod()Lcom/oculus/horizon/api/common/PaymentMethod;

    move-result-object v2

    invoke-static {v2}, Lcom/oculus/horizon/commerce/PaymentMethodModel;->fromServerResponse(Lcom/oculus/horizon/api/common/PaymentMethod;)Lcom/oculus/horizon/commerce/PaymentMethodModel;

    move-result-object v2

    .line 630
    iget-object v3, v1, Lcom/oculus/horizon/api/common/PurchaseDetails;->exemptions:Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/oculus/horizon/api/common/PurchaseDetails;->exemptions:Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;->offset_amount:Ljava/lang/String;

    .line 631
    invoke-static {v3}, Lcom/oculus/horizon/util/ProductUtils;->isNonZeroPrice(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 632
    const-string v3, "extra_item_exemptions"

    iget-object v4, v1, Lcom/oculus/horizon/api/common/PurchaseDetails;->exemptions:Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;

    iget-object v4, v4, Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;->formatted:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 636
    :cond_0
    iget-object v3, p1, Lcom/oculus/horizon/commerce/CreateOrderResponse;->order:Lcom/oculus/horizon/commerce/CreateOrderResponse$Order;

    iget-object v3, v3, Lcom/oculus/horizon/commerce/CreateOrderResponse$Order;->app_store_item:Lcom/oculus/horizon/commerce/CreateOrderResponse$Item;

    iget-object v3, v3, Lcom/oculus/horizon/commerce/CreateOrderResponse$Item;->current_offer:Lcom/oculus/horizon/commerce/CreateOrderResponse$Item$CurrentOffer;

    iget-object v3, v3, Lcom/oculus/horizon/commerce/CreateOrderResponse$Item$CurrentOffer;->viewer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer;->user:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer$User;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer$User;->payment_account:Lcom/oculus/horizon/api/common/PaymentAccount;

    if-eqz v3, :cond_3

    .line 637
    iget-object v3, p1, Lcom/oculus/horizon/commerce/CreateOrderResponse;->order:Lcom/oculus/horizon/commerce/CreateOrderResponse$Order;

    iget-object v3, v3, Lcom/oculus/horizon/commerce/CreateOrderResponse$Order;->app_store_item:Lcom/oculus/horizon/commerce/CreateOrderResponse$Item;

    iget-object v3, v3, Lcom/oculus/horizon/commerce/CreateOrderResponse$Item;->current_offer:Lcom/oculus/horizon/commerce/CreateOrderResponse$Item$CurrentOffer;

    iget-object v3, v3, Lcom/oculus/horizon/commerce/CreateOrderResponse$Item$CurrentOffer;->viewer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer;->user:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer$User;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer$User;->payment_account:Lcom/oculus/horizon/api/common/PaymentAccount;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/PaymentAccount;->stored_credit:Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit;

    .line 640
    if-eqz v3, :cond_1

    iget-object v4, v3, Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit;->balance:Lcom/oculus/horizon/api/common/PaymentMethod$Balance;

    iget v4, v4, Lcom/oculus/horizon/api/common/PaymentMethod$Balance;->amount_in_hundredths:I

    if-lez v4, :cond_1

    .line 641
    const-string v4, "extra_item_store_credit_balance"

    iget-object v3, v3, Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit;->balance:Lcom/oculus/horizon/api/common/PaymentMethod$Balance;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/PaymentMethod$Balance;->formatted_amount:Ljava/lang/String;

    invoke-virtual {v0, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 649
    :cond_1
    iget-object v3, v1, Lcom/oculus/horizon/api/common/PurchaseDetails;->usable_store_credit:Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;

    if-eqz v3, :cond_2

    .line 650
    const-string v3, "extra_item_usable_store_credit"

    iget-object v4, v1, Lcom/oculus/horizon/api/common/PurchaseDetails;->usable_store_credit:Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;

    iget-object v4, v4, Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;->formatted:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 654
    :cond_2
    const-string v3, "extra_item_store_credit_warning"

    iget-boolean v4, v1, Lcom/oculus/horizon/api/common/PurchaseDetails;->show_store_credit_warning:Z

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 659
    :cond_3
    const-string v3, "extra_item_tax"

    iget-object v4, v1, Lcom/oculus/horizon/api/common/PurchaseDetails;->tax:Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;

    iget-object v4, v4, Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;->formatted:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 660
    const-string v3, "extra_item_total_price"

    iget-object v4, v1, Lcom/oculus/horizon/api/common/PurchaseDetails;->total:Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;

    iget-object v4, v4, Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;->formatted:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 662
    const-string v3, "extra_payment_method_info"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 663
    const-string v2, "extra_terms_of_service"

    iget-object v1, v1, Lcom/oculus/horizon/api/common/PurchaseDetails;->terms_of_service:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 666
    const-string v1, "extra_purchase_token"

    iget-object v2, p1, Lcom/oculus/horizon/commerce/CreateOrderResponse;->order:Lcom/oculus/horizon/commerce/CreateOrderResponse$Order;

    iget-object v2, v2, Lcom/oculus/horizon/commerce/CreateOrderResponse$Order;->id:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 667
    return-object v0
.end method

.method private getImageUrl(Lcom/oculus/horizon/api/common/Item;)Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 350
    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->cover_landscape_image:Lcom/oculus/http/common/Image;

    .line 351
    if-nez v0, :cond_0

    .line 352
    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->parent_application:Lcom/oculus/horizon/api/common/Item;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->parent_application:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->cover_landscape_image:Lcom/oculus/http/common/Image;

    .line 355
    :cond_0
    :goto_0
    if-nez v0, :cond_2

    :goto_1
    return-object v1

    :cond_1
    move-object v0, v1

    .line 352
    goto :goto_0

    .line 355
    :cond_2
    iget-object v1, v0, Lcom/oculus/http/common/Image;->uri:Ljava/lang/String;

    goto :goto_1
.end method

.method private onCheckoutFlowModelUpdate()V
    .locals 3

    .prologue
    .line 672
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mCheckoutFlowModel:Lcom/oculus/horizon/payments/CheckoutFlowModel;

    invoke-virtual {v0}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->getState()Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    move-result-object v0

    .line 673
    sget-object v1, Lcom/oculus/horizon/payments/CheckoutFlowModel$State;->ERROR:Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    if-ne v1, v0, :cond_1

    .line 675
    invoke-static {}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->getInstance()Lcom/oculus/horizon/payments/CheckoutFlowModel;

    move-result-object v0

    .line 676
    iget-object v1, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mPurchaseFailedAlertDialogBuilder:Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    .line 677
    invoke-virtual {v0}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->getErrorTitle()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTitle(Ljava/lang/String;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v1

    .line 678
    invoke-virtual {v0}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->getErrorMsg()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setMessage(Ljava/lang/String;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_ok:I

    new-instance v2, Lcom/oculus/horizon/pdp/InAppPdpFragment$5;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/pdp/InAppPdpFragment$5;-><init>(Lcom/oculus/horizon/pdp/InAppPdpFragment;)V

    .line 679
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setPositiveButton(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    .line 693
    :cond_0
    :goto_0
    return-void

    .line 688
    :cond_1
    sget-object v1, Lcom/oculus/horizon/payments/CheckoutFlowModel$State;->PURCHASED:Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    if-ne v1, v0, :cond_0

    .line 689
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->updateEntitlementStatusFromCheckout()V

    .line 690
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mCheckoutItem:Lcom/oculus/horizon/api/common/Item;

    .line 691
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->setupProductView()V

    goto :goto_0
.end method

.method private onPurchaseActionButtonClicked()V
    .locals 1

    .prologue
    .line 545
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mPurchaseItem:Lcom/oculus/horizon/api/common/Item;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mCheckoutItem:Lcom/oculus/horizon/api/common/Item;

    .line 546
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mCheckoutItem:Lcom/oculus/horizon/api/common/Item;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->preparePurchase(Lcom/oculus/horizon/api/common/Item;)V

    .line 547
    return-void
.end method

.method private onRentalActionButtonClicked()V
    .locals 1

    .prologue
    .line 550
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mRentalItem:Lcom/oculus/horizon/api/common/Item;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mCheckoutItem:Lcom/oculus/horizon/api/common/Item;

    .line 551
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mCheckoutItem:Lcom/oculus/horizon/api/common/Item;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->preparePurchase(Lcom/oculus/horizon/api/common/Item;)V

    .line 552
    return-void
.end method

.method private preparePurchase(Lcom/oculus/horizon/api/common/Item;)V
    .locals 3

    .prologue
    .line 556
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->showLoadingView()V

    .line 557
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mPurchaseMethods:Lcom/oculus/horizon/commerce/PurchaseMethods;

    new-instance v1, Lcom/oculus/horizon/commerce/CreateOrderParams;

    iget-object v2, p1, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->id:Ljava/lang/String;

    invoke-direct {v1, v2}, Lcom/oculus/horizon/commerce/CreateOrderParams;-><init>(Ljava/lang/String;)V

    new-instance v2, Lcom/oculus/horizon/pdp/InAppPdpFragment$4;

    invoke-direct {v2, p0, p1}, Lcom/oculus/horizon/pdp/InAppPdpFragment$4;-><init>(Lcom/oculus/horizon/pdp/InAppPdpFragment;Lcom/oculus/horizon/api/common/Item;)V

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/commerce/PurchaseMethods;->createOrder(Lcom/oculus/horizon/commerce/CreateOrderParams;Lretrofit/Callback;)V

    .line 593
    return-void
.end method

.method private registerEventBuses()V
    .locals 1

    .prologue
    .line 244
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    invoke-virtual {v0, p0}, Lcom/oculus/libraryapi/OVRLibraryInternal;->registerAppsChangeListener(Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;)V

    .line 245
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mInstallerEventBus:Lcom/oculus/appmanager/installer/events/InstallerEventBus;

    invoke-virtual {v0, p0}, Lcom/oculus/appmanager/installer/events/InstallerEventBus;->register(Ljava/lang/Object;)V

    .line 246
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mEventBusesRegistered:Z

    .line 247
    return-void
.end method

.method private setActionButton(Lcom/oculus/horizon/api/common/Item;Landroid/widget/Button;)V
    .locals 10

    .prologue
    const/4 v3, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 481
    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    if-nez v0, :cond_2

    move v6, v1

    .line 482
    :goto_0
    if-nez v6, :cond_0

    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->strikethrough_price:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;

    if-nez v0, :cond_3

    :cond_0
    move v5, v1

    .line 483
    :goto_1
    if-nez v6, :cond_4

    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->price:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;

    iget v0, v0, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;->offset_amount:I

    if-nez v0, :cond_4

    move v0, v1

    .line 484
    :goto_2
    sget v4, Lcom/oculus/horizon/R$string;->store_not_available:I

    invoke-virtual {p0, v4}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 487
    if-nez v6, :cond_1

    .line 490
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->getContext()Landroid/content/Context;

    move-result-object v4

    iget-object v7, p1, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v7, v7, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->price:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;

    iget v7, v7, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;->offset_amount:I

    if-nez v7, :cond_5

    :goto_3
    iget-object v7, p1, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v7, v7, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->price:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;

    iget-object v7, v7, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;->formatted:Ljava/lang/String;

    .line 489
    invoke-static {v4, v1, v7}, Lcom/oculus/horizon/util/ProductUtils;->getPriceLabel(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v4, v1

    .line 495
    :cond_1
    if-nez v5, :cond_7

    .line 498
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v5, p1, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v5, v5, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->strikethrough_price:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;

    iget-object v5, v5, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;->formatted:Ljava/lang/String;

    .line 497
    invoke-static {v1, v2, v5}, Lcom/oculus/horizon/util/ProductUtils;->getPriceLabel(Landroid/content/Context;ZLjava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 501
    :goto_4
    new-instance v2, Lcom/oculus/model/OfferPriceHelper;

    .line 503
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v7, Lcom/oculus/horizon/R$string;->store_price_free:I

    sget v8, Lcom/oculus/horizon/R$string;->store_strikethrough_format:I

    sget v9, Lcom/oculus/horizon/R$string;->store_strikethrough_with_promo_benefit_format:I

    invoke-direct {v2, v5, v7, v8, v9}, Lcom/oculus/model/OfferPriceHelper;-><init>(Landroid/content/Context;III)V

    .line 507
    if-eqz v6, :cond_6

    .line 508
    :goto_5
    invoke-virtual {v2, v0, v4, v1, v3}, Lcom/oculus/model/OfferPriceHelper;->getPriceText(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 507
    invoke-virtual {p2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 513
    return-void

    :cond_2
    move v6, v2

    .line 481
    goto :goto_0

    :cond_3
    move v5, v2

    .line 482
    goto :goto_1

    :cond_4
    move v0, v2

    .line 483
    goto :goto_2

    :cond_5
    move v1, v2

    .line 490
    goto :goto_3

    .line 507
    :cond_6
    iget-object v3, p1, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->promo_benefit:Ljava/lang/String;

    goto :goto_5

    :cond_7
    move-object v1, v3

    goto :goto_4
.end method

.method private setStoreCreditBalanceView(Lcom/oculus/horizon/api/common/Item;)V
    .locals 7

    .prologue
    const/16 v2, 0x8

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 516
    iget-object v3, p1, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    if-nez v3, :cond_1

    move v3, v0

    .line 517
    :goto_0
    if-nez v3, :cond_2

    iget-object v3, p1, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->price:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;

    iget v3, v3, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Price;->offset_amount:I

    if-nez v3, :cond_2

    .line 519
    :goto_1
    iget-object v3, p1, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->viewer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->viewer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer;->user:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer$User;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->viewer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer;->user:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer$User;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer$User;->payment_account:Lcom/oculus/horizon/api/common/PaymentAccount;

    if-eqz v3, :cond_0

    iget-object v3, p1, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->viewer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer;->user:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer$User;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer$User;->payment_account:Lcom/oculus/horizon/api/common/PaymentAccount;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/PaymentAccount;->stored_credit:Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit;

    if-eqz v3, :cond_0

    if-eqz v0, :cond_3

    .line 541
    :cond_0
    :goto_2
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mStoreCreditBalanceCaptionTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 542
    return-void

    :cond_1
    move v3, v1

    .line 516
    goto :goto_0

    :cond_2
    move v0, v1

    .line 517
    goto :goto_1

    .line 528
    :cond_3
    :try_start_0
    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->viewer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer;->user:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer$User;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer$User;->payment_account:Lcom/oculus/horizon/api/common/PaymentAccount;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/PaymentAccount;->stored_credit:Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit;->balance:Lcom/oculus/horizon/api/common/PaymentMethod$Balance;

    .line 530
    iget v3, v0, Lcom/oculus/horizon/api/common/PaymentMethod$Balance;->amount_in_hundredths:I

    if-nez v3, :cond_4

    move v1, v2

    :goto_3
    move v2, v1

    .line 539
    goto :goto_2

    .line 533
    :cond_4
    iget-object v3, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mStoreCreditBalanceCaptionTextView:Landroid/widget/TextView;

    sget v4, Lcom/oculus/horizon/R$string;->pdp_store_credit_balance_remaining_string:I

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v0, v0, Lcom/oculus/horizon/api/common/PaymentMethod$Balance;->formatted_amount:Ljava/lang/String;

    aput-object v0, v5, v6

    .line 534
    invoke-virtual {p0, v4, v5}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 533
    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    .line 537
    :catch_0
    move-exception v0

    goto :goto_2
.end method

.method private setupMediaView()V
    .locals 5

    .prologue
    .line 364
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/MediaView;->reset()V

    .line 366
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    if-nez v0, :cond_1

    .line 386
    :cond_0
    :goto_0
    return-void

    .line 370
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->getImageUrl(Lcom/oculus/horizon/api/common/Item;)Ljava/lang/String;

    move-result-object v0

    .line 371
    if-eqz v0, :cond_2

    .line 372
    iget-object v1, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/widget/MediaView;->setMediaUri(Ljava/lang/String;)V

    .line 375
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->video_trailer:Lcom/oculus/horizon/api/common/Video;

    if-eqz v0, :cond_0

    .line 376
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/MediaView;->enableMuteUnmute()V

    .line 378
    :try_start_0
    iget-object v1, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mCredentialsProvider:Ljavax/inject/Provider;

    .line 380
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/auth/credentials/Credentials;

    iget-object v2, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/Item;->video_trailer:Lcom/oculus/horizon/api/common/Video;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/Video;->uri:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    .line 379
    invoke-static {v0, v2}, Lcom/oculus/auth/util/AccessTokenUtils;->appendAccessToken(Lcom/oculus/auth/credentials/Credentials;Landroid/net/Uri;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mPdpVideoLoggerProvider:Lcom/oculus/horizon/pdp/PdpVideoLoggerProvider;

    iget-object v3, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/Item;->id:Ljava/lang/String;

    iget-object v4, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v4, v4, Lcom/oculus/horizon/api/common/Item;->video_trailer:Lcom/oculus/horizon/api/common/Video;

    .line 381
    invoke-virtual {v2, v3, v4}, Lcom/oculus/horizon/pdp/PdpVideoLoggerProvider;->get(Ljava/lang/String;Lcom/oculus/horizon/api/common/Video;)Lcom/oculus/horizon/pdp/PdpVideoLogger;

    move-result-object v2

    .line 378
    invoke-virtual {v1, v0, v2}, Lcom/oculus/horizon/widget/MediaView;->loadVideo(Landroid/net/Uri;Lcom/oculus/horizon/media/MediaPlayerLogger;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 382
    :catch_0
    move-exception v0

    .line 383
    sget-object v1, Lcom/oculus/horizon/pdp/InAppPdpFragment;->TAG:Ljava/lang/String;

    const-string v2, "Could not prepare MediaPlayer"

    invoke-static {v1, v2, v0}, Lcom/oculus/errorreporting/ErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0
.end method

.method private setupProductView()V
    .locals 15

    .prologue
    const/4 v8, 0x1

    const/4 v1, 0x0

    const/16 v2, 0x8

    .line 390
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-boolean v0, v0, Lcom/oculus/horizon/api/common/Item;->is_viewer_entitled:Z

    if-eqz v0, :cond_0

    .line 391
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->destroyStoreCountdownTimer()V

    .line 392
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mFooterBar:Lcom/oculus/horizon/pdp/widget/MessageBar;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/pdp/widget/MessageBar;->setVisibility(I)V

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mPurchaseItem:Lcom/oculus/horizon/api/common/Item;

    if-nez v0, :cond_2

    move v0, v1

    move v3, v1

    move v4, v2

    move v5, v2

    move v6, v2

    move v7, v1

    .line 423
    :goto_0
    iget-object v9, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mRentalItem:Lcom/oculus/horizon/api/common/Item;

    if-nez v9, :cond_4

    move v0, v2

    move v3, v2

    move v5, v2

    .line 453
    :goto_1
    if-eqz v7, :cond_7

    if-ne v5, v2, :cond_7

    .line 457
    iget-object v1, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mPurchaseItem:Lcom/oculus/horizon/api/common/Item;

    invoke-direct {p0, v1}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->setStoreCreditBalanceView(Lcom/oculus/horizon/api/common/Item;)V

    .line 462
    :goto_2
    iget-object v1, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mPurchaseActionButton:Landroid/widget/Button;

    invoke-virtual {v1, v6}, Landroid/widget/Button;->setVisibility(I)V

    .line 463
    iget-object v1, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mPurchaseCaptionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 464
    iget-object v1, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mStoreCreditBalanceCaptionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 466
    iget-object v1, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mRentalActionButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    .line 467
    iget-object v1, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mRentalCaptionTextView:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 470
    if-nez v6, :cond_1

    if-nez v3, :cond_1

    .line 471
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mStyleTheme:Lcom/oculus/model/StyleTheme;

    sget-object v1, Lcom/oculus/model/StyleTheme;->SUMMER:Lcom/oculus/model/StyleTheme;

    if-ne v0, v1, :cond_8

    .line 472
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mPurchaseActionButton:Landroid/widget/Button;

    sget v1, Lcom/oculus/horizon/R$drawable;->button_white_on_blue_background:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 473
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mRentalActionButton:Landroid/widget/Button;

    sget v1, Lcom/oculus/horizon/R$drawable;->button_white_on_black_background:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 478
    :cond_1
    :goto_3
    return-void

    .line 408
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mPurchaseItem:Lcom/oculus/horizon/api/common/Item;

    iget-boolean v0, v0, Lcom/oculus/horizon/api/common/Item;->is_viewer_entitled:Z

    if-eqz v0, :cond_3

    .line 410
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mPurchaseActionButton:Landroid/widget/Button;

    iget-object v3, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mContext:Landroid/content/Context;

    sget v4, Lcom/oculus/horizon/R$string;->store_purchased:I

    invoke-virtual {v3, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 411
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mPurchaseActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    move v0, v2

    move v3, v2

    move v4, v1

    move v5, v2

    move v6, v1

    move v7, v1

    .line 416
    goto :goto_0

    .line 420
    :cond_3
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mPurchaseItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v3, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mPurchaseActionButton:Landroid/widget/Button;

    invoke-direct {p0, v0, v3}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->setActionButton(Lcom/oculus/horizon/api/common/Item;Landroid/widget/Button;)V

    move v0, v1

    move v3, v1

    move v4, v1

    move v5, v1

    move v6, v1

    move v7, v8

    goto :goto_0

    .line 430
    :cond_4
    iget-object v9, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mRentalItem:Lcom/oculus/horizon/api/common/Item;

    iget-boolean v9, v9, Lcom/oculus/horizon/api/common/Item;->is_viewer_entitled:Z

    if-eqz v9, :cond_5

    .line 432
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mRentalActionButton:Landroid/widget/Button;

    iget-object v8, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mContext:Landroid/content/Context;

    sget v9, Lcom/oculus/horizon/R$string;->store_rented:I

    invoke-virtual {v8, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 433
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mRentalActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    move v0, v2

    .line 434
    goto/16 :goto_1

    .line 437
    :cond_5
    iget-object v9, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mRentalItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v10, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mRentalActionButton:Landroid/widget/Button;

    invoke-direct {p0, v9, v10}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->setActionButton(Lcom/oculus/horizon/api/common/Item;Landroid/widget/Button;)V

    .line 439
    iget-object v9, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mRentalItem:Lcom/oculus/horizon/api/common/Item;

    iget v9, v9, Lcom/oculus/horizon/api/common/Item;->term_in_sec:I

    if-lez v9, :cond_6

    .line 440
    sget-object v9, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v10, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mRentalItem:Lcom/oculus/horizon/api/common/Item;

    iget v10, v10, Lcom/oculus/horizon/api/common/Item;->term_in_sec:I

    int-to-long v10, v10

    invoke-virtual {v9, v10, v11}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v10

    .line 441
    iget-object v9, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mContext:Landroid/content/Context;

    .line 443
    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    sget v12, Lcom/oculus/horizon/R$plurals;->store_countdown_days:I

    long-to-int v13, v10

    new-array v14, v8, [Ljava/lang/Object;

    .line 445
    invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v14, v1

    .line 444
    invoke-virtual {v9, v12, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v9

    .line 446
    iget-object v10, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mContext:Landroid/content/Context;

    sget v11, Lcom/oculus/horizon/R$string;->in_app_rental_term_string:I

    new-array v8, v8, [Ljava/lang/Object;

    aput-object v9, v8, v1

    invoke-virtual {v10, v11, v8}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 450
    :goto_4
    iget-object v8, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mRentalCaptionTextView:Landroid/widget/TextView;

    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 448
    :cond_6
    iget-object v1, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mContext:Landroid/content/Context;

    sget v8, Lcom/oculus/horizon/R$string;->in_app_rental_string:I

    invoke-virtual {v1, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_4

    :cond_7
    move v4, v2

    .line 459
    goto/16 :goto_2

    .line 475
    :cond_8
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mPurchaseActionButton:Landroid/widget/Button;

    sget v1, Lcom/oculus/horizon/R$drawable;->button_white_on_blue_background:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto/16 :goto_3
.end method

.method private unregisterEventBuses()V
    .locals 1

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mEventBusesRegistered:Z

    if-eqz v0, :cond_0

    .line 251
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    invoke-virtual {v0, p0}, Lcom/oculus/libraryapi/OVRLibraryInternal;->unregisterAppChangeListener(Lcom/oculus/libraryapi/OVRLibrary$OnChangeListener;)V

    .line 252
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mInstallerEventBus:Lcom/oculus/appmanager/installer/events/InstallerEventBus;

    invoke-virtual {v0, p0}, Lcom/oculus/appmanager/installer/events/InstallerEventBus;->unregister(Ljava/lang/Object;)V

    .line 253
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mEventBusesRegistered:Z

    .line 255
    :cond_0
    return-void
.end method

.method private updateEntitlementStatusFromCheckout()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 696
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mCheckoutItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mPurchaseItem:Lcom/oculus/horizon/api/common/Item;

    if-ne v0, v1, :cond_2

    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mPurchaseItem:Lcom/oculus/horizon/api/common/Item;

    if-eqz v0, :cond_2

    .line 697
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mPurchaseItem:Lcom/oculus/horizon/api/common/Item;

    iput-boolean v2, v0, Lcom/oculus/horizon/api/common/Item;->is_viewer_entitled:Z

    .line 701
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mPurchaseItem:Lcom/oculus/horizon/api/common/Item;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mPurchaseItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 702
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mPurchaseItem:Lcom/oculus/horizon/api/common/Item;

    iget-boolean v1, v1, Lcom/oculus/horizon/api/common/Item;->is_viewer_entitled:Z

    iput-boolean v1, v0, Lcom/oculus/horizon/api/common/Item;->is_viewer_entitled:Z

    .line 706
    :cond_1
    :goto_1
    return-void

    .line 698
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mCheckoutItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mRentalItem:Lcom/oculus/horizon/api/common/Item;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mRentalItem:Lcom/oculus/horizon/api/common/Item;

    if-eqz v0, :cond_0

    .line 699
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mRentalItem:Lcom/oculus/horizon/api/common/Item;

    iput-boolean v2, v0, Lcom/oculus/horizon/api/common/Item;->is_viewer_entitled:Z

    goto :goto_0

    .line 703
    :cond_3
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mRentalItem:Lcom/oculus/horizon/api/common/Item;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mRentalItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->id:Ljava/lang/String;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item;->id:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 704
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mRentalItem:Lcom/oculus/horizon/api/common/Item;

    iget-boolean v1, v1, Lcom/oculus/horizon/api/common/Item;->is_viewer_entitled:Z

    iput-boolean v1, v0, Lcom/oculus/horizon/api/common/Item;->is_viewer_entitled:Z

    goto :goto_1
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 259
    invoke-super {p0, p1, p2, p3}, Lcom/oculus/horizon/pdp/PdpFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 260
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mInstallationHelper:Lcom/oculus/horizon/store/BundleInstallationHelper;

    sget-object v1, Lcom/oculus/horizon/logging/TrackingViews$View;->PRODUCT_DETAILS:Lcom/oculus/horizon/logging/TrackingViews$View;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/oculus/horizon/store/BundleInstallationHelper;->onActivityResult(IILandroid/content/Intent;Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 262
    return-void
.end method

.method public onChange(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 266
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->parent_application:Lcom/oculus/horizon/api/common/Item;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->parent_application:Lcom/oculus/horizon/api/common/Item;

    .line 267
    invoke-virtual {v0}, Lcom/oculus/horizon/api/common/Item;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mParentItemAdapter:Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->clearError(Ljava/lang/String;)V

    .line 269
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mParentItemAdapter:Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->notifyItemChanged(Ljava/lang/String;)V

    .line 271
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 104
    invoke-super {p0, p1}, Lcom/oculus/horizon/pdp/PdpFragment;->onCreate(Landroid/os/Bundle;)V

    .line 62
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/pdp/InAppPdpFragment;)V

    .line 108
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mBundleInstallationHelperProvider:Lcom/oculus/horizon/store/BundleInstallationHelperProvider;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/store/BundleInstallationHelperProvider;->get(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/store/BundleInstallationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mInstallationHelper:Lcom/oculus/horizon/store/BundleInstallationHelper;

    .line 109
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mInstallationHelper:Lcom/oculus/horizon/store/BundleInstallationHelper;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/store/BundleInstallationHelper;->onCreate(Landroid/os/Bundle;)V

    .line 110
    invoke-static {}, Lcom/oculus/appmanager/installer/events/InstallerEventBus;->getInstance()Lcom/oculus/appmanager/installer/events/InstallerEventBus;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mInstallerEventBus:Lcom/oculus/appmanager/installer/events/InstallerEventBus;

    .line 112
    new-instance v0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;-><init>(Landroid/content/res/Resources;)V

    iput-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mPurchaseFailedAlertDialogBuilder:Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    .line 113
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 124
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->setHasOptionsMenu(Z)V

    .line 125
    sget v0, Lcom/oculus/horizon/R$layout;->iap_pdp_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 237
    iput-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mInstallerEventBus:Lcom/oculus/appmanager/installer/events/InstallerEventBus;

    .line 238
    iput-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mInstallationHelper:Lcom/oculus/horizon/store/BundleInstallationHelper;

    .line 240
    invoke-super {p0}, Lcom/oculus/horizon/pdp/PdpFragment;->onDestroy()V

    .line 241
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 211
    invoke-static {v1}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->resetInstance(Lcom/oculus/horizon/payments/CheckoutFlowModel$OnStateChangedListener;)Lcom/oculus/horizon/payments/CheckoutFlowModel;

    .line 212
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->unregisterEventBuses()V

    .line 214
    iput-object v1, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mDescriptionView:Lcom/oculus/horizon/pdp/widget/ExpandableTextView;

    .line 215
    iput-object v1, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mPurchaseActionButton:Landroid/widget/Button;

    .line 216
    iput-object v1, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mPurchaseCaptionTextView:Landroid/widget/TextView;

    .line 217
    iput-object v1, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mStoreCreditBalanceCaptionTextView:Landroid/widget/TextView;

    .line 218
    iput-object v1, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mRentalActionButton:Landroid/widget/Button;

    .line 219
    iput-object v1, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mRentalCaptionTextView:Landroid/widget/TextView;

    .line 220
    iput-object v1, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mRatingView:Landroid/widget/TextView;

    .line 221
    iput-object v1, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mThreeDFormatView:Landroid/widget/TextView;

    .line 223
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/MediaView;->reset()V

    .line 224
    iput-object v1, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    .line 225
    iput-object v1, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mParentItemAdapter:Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;

    .line 227
    iput-object v1, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    .line 228
    iput-object v1, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mCheckoutItem:Lcom/oculus/horizon/api/common/Item;

    .line 229
    iput-object v1, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mPurchaseItem:Lcom/oculus/horizon/api/common/Item;

    .line 230
    iput-object v1, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mRentalItem:Lcom/oculus/horizon/api/common/Item;

    .line 232
    invoke-super {p0}, Lcom/oculus/horizon/pdp/PdpFragment;->onDestroyView()V

    .line 233
    return-void
.end method

.method public onItemDetailsResponse(Lcom/oculus/horizon/api/common/Item;)V
    .locals 6

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 275
    iput-object p1, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    .line 276
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/common/Item;->getOtherInAppItem()Lcom/oculus/horizon/api/common/Item;

    move-result-object v0

    .line 277
    iget-object v3, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    invoke-virtual {v3}, Lcom/oculus/horizon/api/common/Item;->isValidInAppItem()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 278
    iget-object v3, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iput-object v3, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mPurchaseItem:Lcom/oculus/horizon/api/common/Item;

    .line 279
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oculus/horizon/api/common/Item;->isValidInAppRentalItem()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 280
    iput-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mRentalItem:Lcom/oculus/horizon/api/common/Item;

    .line 289
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->parent_application:Lcom/oculus/horizon/api/common/Item;

    if-nez v0, :cond_3

    .line 290
    sget-object v0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->TAG:Ljava/lang/String;

    const-string v1, "IAP item %s has no parent app"

    iget-object v2, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/Item;->id:Ljava/lang/String;

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 291
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->showErrorView()V

    .line 346
    :cond_1
    :goto_1
    return-void

    .line 282
    :cond_2
    iget-object v3, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    invoke-virtual {v3}, Lcom/oculus/horizon/api/common/Item;->isValidInAppRentalItem()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 283
    iget-object v3, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iput-object v3, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mRentalItem:Lcom/oculus/horizon/api/common/Item;

    .line 284
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/oculus/horizon/api/common/Item;->isValidInAppItem()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 285
    iput-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mPurchaseItem:Lcom/oculus/horizon/api/common/Item;

    goto :goto_0

    .line 295
    :cond_3
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mDescriptionView:Lcom/oculus/horizon/pdp/widget/ExpandableTextView;

    iget-object v3, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/Item;->display_long_description:Ljava/lang/String;

    invoke-virtual {v0, v3}, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->cinema_video:Lcom/oculus/horizon/api/common/Item$CinemaVideo;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->cinema_video:Lcom/oculus/horizon/api/common/Item$CinemaVideo;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$CinemaVideo;->rating:Ljava/lang/String;

    if-eqz v0, :cond_5

    .line 297
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mRatingView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 298
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mRatingView:Landroid/widget/TextView;

    sget v3, Lcom/oculus/horizon/R$string;->movie_rating:I

    new-array v4, v2, [Ljava/lang/Object;

    iget-object v5, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v5, v5, Lcom/oculus/horizon/api/common/Item;->cinema_video:Lcom/oculus/horizon/api/common/Item$CinemaVideo;

    iget-object v5, v5, Lcom/oculus/horizon/api/common/Item$CinemaVideo;->rating:Ljava/lang/String;

    aput-object v5, v4, v1

    invoke-virtual {p0, v3, v4}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 300
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->cinema_video:Lcom/oculus/horizon/api/common/Item$CinemaVideo;

    iget-object v3, v0, Lcom/oculus/horizon/api/common/Item$CinemaVideo;->rating:Ljava/lang/String;

    const/4 v0, -0x1

    invoke-virtual {v3}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_4
    :goto_2
    packed-switch v0, :pswitch_data_0

    move v0, v1

    .line 321
    :goto_3
    iget-object v2, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mRatingView:Landroid/widget/TextView;

    invoke-virtual {v2, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    .line 323
    :cond_5
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->cinema_video:Lcom/oculus/horizon/api/common/Item$CinemaVideo;

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->cinema_video:Lcom/oculus/horizon/api/common/Item$CinemaVideo;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$CinemaVideo;->format:Ljava/lang/String;

    invoke-static {v0}, Lcom/oculus/horizon/api/common/Item$CinemaVideo;->is3D(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 324
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mThreeDFormatView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 327
    :cond_6
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-boolean v0, v0, Lcom/oculus/horizon/api/common/Item;->is_viewer_entitled:Z

    if-nez v0, :cond_7

    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->shouldShowCountdownTimer(Lcom/oculus/horizon/api/common/Item$AppStoreOffer;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 328
    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->current_offer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer;

    iget-wide v2, v0, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->end_time:J

    const-wide/16 v4, 0x3e8

    mul-long/2addr v2, v4

    invoke-virtual {p0, v2, v3}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->startCountdownTimer(J)V

    .line 333
    :goto_4
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->setupMediaView()V

    .line 334
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->registerEventBuses()V

    .line 335
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->updateTitleBar()V

    .line 336
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->setupProductView()V

    .line 337
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->store_wide_offers:Ljava/util/List;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->setupStoreWideOffers(Ljava/util/List;)V

    .line 339
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->showProductView()V

    .line 341
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mParentItemAdapter:Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;

    invoke-virtual {v0}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->parent_application:Lcom/oculus/horizon/api/common/Item;

    .line 342
    invoke-virtual {v0}, Lcom/oculus/horizon/api/common/Item;->isAppSupportedOnCurrentDevice()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 343
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mParentItemAdapter:Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;

    iget-object v2, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/Item;->parent_application:Lcom/oculus/horizon/api/common/Item;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->add(Lcom/oculus/horizon/api/common/Item;)V

    .line 344
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mParentItemAdapter:Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->notifyItemChanged(I)V

    goto/16 :goto_1

    .line 300
    :sswitch_0
    const-string v2, "G"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    move v0, v1

    goto :goto_2

    :sswitch_1
    const-string v4, "NC-17"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move v0, v2

    goto/16 :goto_2

    :sswitch_2
    const-string v2, "NOT_RATED"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x2

    goto/16 :goto_2

    :sswitch_3
    const-string v2, "NR"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x3

    goto/16 :goto_2

    :sswitch_4
    const-string v2, "PG"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x4

    goto/16 :goto_2

    :sswitch_5
    const-string v2, "PG-13"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x5

    goto/16 :goto_2

    :sswitch_6
    const-string v2, "R"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    const/4 v0, 0x6

    goto/16 :goto_2

    .line 302
    :pswitch_0
    sget v0, Lcom/oculus/horizon/R$drawable;->movie_rating_g:I

    goto/16 :goto_3

    .line 305
    :pswitch_1
    sget v0, Lcom/oculus/horizon/R$drawable;->movie_rating_nc17:I

    goto/16 :goto_3

    .line 309
    :pswitch_2
    sget v0, Lcom/oculus/horizon/R$drawable;->movie_rating_nr:I

    goto/16 :goto_3

    .line 312
    :pswitch_3
    sget v0, Lcom/oculus/horizon/R$drawable;->movie_rating_pg:I

    goto/16 :goto_3

    .line 315
    :pswitch_4
    sget v0, Lcom/oculus/horizon/R$drawable;->movie_rating_pg13:I

    goto/16 :goto_3

    .line 318
    :pswitch_5
    sget v0, Lcom/oculus/horizon/R$drawable;->movie_rating_r:I

    goto/16 :goto_3

    .line 330
    :cond_7
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->destroyStoreCountdownTimer()V

    goto/16 :goto_4

    .line 300
    :sswitch_data_0
    .sparse-switch
        0x47 -> :sswitch_0
        0x52 -> :sswitch_6
        0x9c4 -> :sswitch_3
        0x9f7 -> :sswitch_4
        0x46a4d3e -> :sswitch_1
        0x4884db8 -> :sswitch_5
        0x3da0d6d8 -> :sswitch_2
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 205
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/MediaView;->pauseVideo()V

    .line 206
    invoke-super {p0}, Lcom/oculus/horizon/pdp/PdpFragment;->onPause()V

    .line 207
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 181
    invoke-super {p0}, Lcom/oculus/horizon/pdp/PdpFragment;->onResume()V

    .line 182
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mInstallationHelper:Lcom/oculus/horizon/store/BundleInstallationHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/BundleInstallationHelper;->onResume()V

    .line 184
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    if-nez v0, :cond_1

    .line 185
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->fetchItemData()V

    .line 197
    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mCheckoutFlowModel:Lcom/oculus/horizon/payments/CheckoutFlowModel;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mCheckoutFlowModel:Lcom/oculus/horizon/payments/CheckoutFlowModel;

    .line 198
    invoke-virtual {v0}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->getState()Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/payments/CheckoutFlowModel$State;->ERROR:Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    if-ne v0, v1, :cond_0

    .line 199
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mPurchaseFailedAlertDialogBuilder:Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    const-string v1, "purchase_failed_fragment"

    invoke-virtual {v0, p0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->show(Landroidx/fragment/app/Fragment;Ljava/lang/String;)V

    .line 201
    :cond_0
    return-void

    .line 187
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mCheckoutFlowModel:Lcom/oculus/horizon/payments/CheckoutFlowModel;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mCheckoutFlowModel:Lcom/oculus/horizon/payments/CheckoutFlowModel;

    .line 188
    invoke-virtual {v0}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->getState()Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/payments/CheckoutFlowModel$State;->PURCHASED:Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    if-ne v0, v1, :cond_2

    .line 189
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->updateEntitlementStatusFromCheckout()V

    .line 190
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mCheckoutItem:Lcom/oculus/horizon/api/common/Item;

    .line 192
    :cond_2
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->setupProductView()V

    .line 193
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->showProductView()V

    .line 194
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/MediaView;->playVideo()V

    goto :goto_0
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 117
    invoke-super {p0, p1}, Lcom/oculus/horizon/pdp/PdpFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 118
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mInstallationHelper:Lcom/oculus/horizon/store/BundleInstallationHelper;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/store/BundleInstallationHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 119
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 8

    .prologue
    .line 130
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/pdp/PdpFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 132
    sget v0, Lcom/oculus/horizon/R$id;->media_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/MediaView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mMediaView:Lcom/oculus/horizon/widget/MediaView;

    .line 134
    sget v0, Lcom/oculus/horizon/R$id;->action_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mPurchaseActionButton:Landroid/widget/Button;

    .line 135
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mPurchaseActionButton:Landroid/widget/Button;

    new-instance v1, Lcom/oculus/horizon/pdp/InAppPdpFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/pdp/InAppPdpFragment$1;-><init>(Lcom/oculus/horizon/pdp/InAppPdpFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    sget v0, Lcom/oculus/horizon/R$id;->buy_now_text_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mPurchaseCaptionTextView:Landroid/widget/TextView;

    .line 143
    sget v0, Lcom/oculus/horizon/R$id;->store_credit_balance_view:I

    .line 144
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mStoreCreditBalanceCaptionTextView:Landroid/widget/TextView;

    .line 145
    sget v0, Lcom/oculus/horizon/R$id;->rental_action_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mRentalActionButton:Landroid/widget/Button;

    .line 146
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mRentalActionButton:Landroid/widget/Button;

    new-instance v1, Lcom/oculus/horizon/pdp/InAppPdpFragment$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/pdp/InAppPdpFragment$2;-><init>(Lcom/oculus/horizon/pdp/InAppPdpFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 153
    sget v0, Lcom/oculus/horizon/R$id;->rental_term_text_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mRentalCaptionTextView:Landroid/widget/TextView;

    .line 154
    sget v0, Lcom/oculus/horizon/R$id;->info_rating:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mRatingView:Landroid/widget/TextView;

    .line 155
    sget v0, Lcom/oculus/horizon/R$id;->info_3d_format:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mThreeDFormatView:Landroid/widget/TextView;

    .line 157
    sget v0, Lcom/oculus/horizon/R$id;->description_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/pdp/widget/ExpandableTextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mDescriptionView:Lcom/oculus/horizon/pdp/widget/ExpandableTextView;

    .line 159
    new-instance v0, Lcom/oculus/horizon/pdp/InAppPdpFragment$3;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/pdp/InAppPdpFragment$3;-><init>(Lcom/oculus/horizon/pdp/InAppPdpFragment;)V

    iput-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mCheckoutFlowListener:Lcom/oculus/horizon/payments/CheckoutFlowModel$OnStateChangedListener;

    .line 166
    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mCheckoutFlowListener:Lcom/oculus/horizon/payments/CheckoutFlowModel$OnStateChangedListener;

    invoke-static {v0}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->resetInstance(Lcom/oculus/horizon/payments/CheckoutFlowModel$OnStateChangedListener;)Lcom/oculus/horizon/payments/CheckoutFlowModel;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mCheckoutFlowModel:Lcom/oculus/horizon/payments/CheckoutFlowModel;

    .line 168
    new-instance v0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;

    .line 170
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    sget v3, Lcom/oculus/horizon/R$id;->item_container:I

    .line 172
    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mInstallationHelper:Lcom/oculus/horizon/store/BundleInstallationHelper;

    iget-object v5, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    .line 175
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    iget-object v7, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-direct/range {v0 .. v7}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Landroid/view/ViewGroup;Lcom/oculus/horizon/store/BundleInstallationHelper;Lcom/oculus/libraryapi/OVRLibraryInternal;Landroid/view/LayoutInflater;Lcom/oculus/horizon/logging/OculusLogger;)V

    iput-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mParentItemAdapter:Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;

    .line 177
    return-void
.end method

.method public updateTitleBar()V
    .locals 2

    .prologue
    .line 360
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/InAppPdpFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/pdp/InAppPdpFragment;->mItem:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->display_name:Ljava/lang/String;

    :goto_0
    invoke-virtual {v1, v0}, Landroidx/fragment/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 361
    return-void

    .line 360
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
