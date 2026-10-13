.class public Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "AddPaymentMethodActivity.java"

# interfaces
.implements Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$CreditCardFormEventListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mBillingProfileMethods:Lcom/oculus/horizon/commerce/BillingProfileMethods;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mCreditCardFormFragment:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

.field private mDebugErrorToaster:Lcom/oculus/horizon/debug/DebugErrorToaster;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mEmptyFocusView:Landroid/view/View;

.field private mIsInCheckoutFlow:Z

.field private mIsInRoadblockFlow:Z

.field private mMainFragment:Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPurchaseMethods:Lcom/oculus/horizon/commerce/PurchaseMethods;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mStyleManager:Lcom/oculus/horizon/style/StyleManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mTemporaryHideCloseButton:Z


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;)V
    .locals 1

    .prologue
    .line 56
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;)V
    .locals 1

    .prologue
    .line 56
    invoke-static {p0}, Lcom/oculus/horizon/style/StyleManager;->$ul_$xXXcom_oculus_horizon_style_StyleManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/style/StyleManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mStyleManager:Lcom/oculus/horizon/style/StyleManager;

    invoke-static {p0}, Lcom/oculus/horizon/debug/DebugErrorToaster;->$ul_$xXXcom_oculus_horizon_debug_DebugErrorToaster$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/debug/DebugErrorToaster;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mDebugErrorToaster:Lcom/oculus/horizon/debug/DebugErrorToaster;

    invoke-static {p0}, Lcom/oculus/horizon/commerce/BillingProfileMethods;->$ul_$xXXcom_oculus_horizon_commerce_BillingProfileMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/commerce/BillingProfileMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mBillingProfileMethods:Lcom/oculus/horizon/commerce/BillingProfileMethods;

    invoke-static {p0}, Lcom/oculus/horizon/commerce/PurchaseMethods;->$ul_$xXXcom_oculus_horizon_commerce_PurchaseMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/commerce/PurchaseMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mPurchaseMethods:Lcom/oculus/horizon/commerce/PurchaseMethods;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;)Lcom/oculus/horizon/debug/DebugErrorToaster;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mDebugErrorToaster:Lcom/oculus/horizon/debug/DebugErrorToaster;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->enableMainFragment()V

    return-void
.end method

.method static synthetic access$1002(Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;Z)Z
    .locals 0

    .prologue
    .line 56
    iput-boolean p1, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mTemporaryHideCloseButton:Z

    return p1
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 56
    sget-object v0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;)Lcom/oculus/horizon/logging/OculusLogger;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->continueCheckout()V

    return-void
.end method

.method static synthetic access$500(Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;)Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;
    .locals 1

    .prologue
    .line 56
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mCreditCardFormFragment:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    return-object v0
.end method

.method static synthetic access$600(Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;II)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->createAndShowErrorModal(II)V

    return-void
.end method

.method static synthetic access$700(Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;Lcom/oculus/http/core/base/ApiError;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->onAddCreditCardError(Lcom/oculus/http/core/base/ApiError;)V

    return-void
.end method

.method static synthetic access$800(Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;Landroid/content/Intent;Lcom/oculus/horizon/commerce/CreateOrderResponse;)Landroid/content/Intent;
    .locals 1

    .prologue
    .line 56
    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->createPreparePurchaseActivityIntent(Landroid/content/Intent;Lcom/oculus/horizon/commerce/CreateOrderResponse;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$900(Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;)V
    .locals 0

    .prologue
    .line 56
    invoke-direct {p0, p1}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->createAndShowErrorModal(Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;)V

    return-void
.end method

.method private continueCheckout()V
    .locals 5

    .prologue
    .line 342
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 343
    const-string v1, "extra_offer_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 344
    const-string v1, "extra_prepare_purchase_intent"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    .line 345
    if-eqz v2, :cond_0

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-static {v1}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 346
    const-class v1, Lcom/oculus/horizon/store/StoreWideOfferModel;

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setExtrasClassLoader(Ljava/lang/ClassLoader;)V

    .line 350
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mPurchaseMethods:Lcom/oculus/horizon/commerce/PurchaseMethods;

    new-instance v3, Lcom/oculus/horizon/commerce/CreateOrderParams;

    invoke-direct {v3, v2}, Lcom/oculus/horizon/commerce/CreateOrderParams;-><init>(Ljava/lang/String;)V

    new-instance v4, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$4;

    invoke-direct {v4, p0, p0, v2, v0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$4;-><init>(Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;Landroid/app/Activity;Ljava/lang/String;Landroid/content/Intent;)V

    invoke-virtual {v1, v3, v4}, Lcom/oculus/horizon/commerce/PurchaseMethods;->createOrder(Lcom/oculus/horizon/commerce/CreateOrderParams;Lretrofit/Callback;)V

    .line 377
    return-void

    .line 345
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private createAndShowCancellationModal()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 315
    new-instance v0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;-><init>(Landroid/content/res/Resources;)V

    sget v1, Lcom/oculus/horizon/R$string;->roadblock_title_payment:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 316
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTitle(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->roadblock_payment_cancel_confirmation:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 317
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setMessage(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_continue:I

    new-instance v2, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$3;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$3;-><init>(Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;)V

    .line 318
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setPositiveButton(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_go_back:I

    .line 330
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setNegativeButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    const-string v1, "payment_roadblock_dialog_fragment"

    .line 331
    invoke-virtual {v0, p0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    .line 333
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    sget-object v1, Lcom/oculus/horizon/logging/TrackingViews$View;->ROADBLOCK_ADD_PAYMENT_METHOD_DISPLAY_CANCEL_CONFIRM:Lcom/oculus/horizon/logging/TrackingViews$View;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportView(Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 335
    return-void
.end method

.method private createAndShowErrorModal(II)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 434
    new-instance v0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;-><init>(Landroid/content/res/Resources;)V

    new-array v1, v2, [Ljava/lang/Object;

    .line 435
    invoke-virtual {v0, p1, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTitle(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    new-array v1, v2, [Ljava/lang/Object;

    .line 436
    invoke-virtual {v0, p2, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setMessage(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_ok:I

    .line 437
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setPositiveButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    const-string v1, "add_payment_error"

    .line 438
    invoke-virtual {v0, p0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    .line 439
    return-void
.end method

.method private createAndShowErrorModal(Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;)V
    .locals 2

    .prologue
    .line 442
    new-instance v0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;-><init>(Landroid/content/res/Resources;)V

    iget-object v1, p1, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;->error:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;

    iget-object v1, v1, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;->error_user_title:Ljava/lang/String;

    .line 443
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTitle(Ljava/lang/String;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    iget-object v1, p1, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;->error:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;

    iget-object v1, v1, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;->error_user_msg:Ljava/lang/String;

    .line 444
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setMessage(Ljava/lang/String;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_ok:I

    .line 445
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setPositiveButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    const-string v1, "create_order_error"

    .line 446
    invoke-virtual {v0, p0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->show(Landroidx/fragment/app/FragmentActivity;Ljava/lang/String;)V

    .line 447
    return-void
.end method

.method private createPreparePurchaseActivityIntent(Landroid/content/Intent;Lcom/oculus/horizon/commerce/CreateOrderResponse;)Landroid/content/Intent;
    .locals 4

    .prologue
    .line 387
    invoke-virtual {p2}, Lcom/oculus/horizon/commerce/CreateOrderResponse;->getPaymentMethod()Lcom/oculus/horizon/api/common/PaymentMethod;

    move-result-object v0

    .line 388
    invoke-virtual {p2}, Lcom/oculus/horizon/commerce/CreateOrderResponse;->getPurchaseDetails()Lcom/oculus/horizon/api/common/PurchaseDetails;

    move-result-object v1

    .line 389
    const-string v2, "extra_item_price"

    iget-object v3, v1, Lcom/oculus/horizon/api/common/PurchaseDetails;->price:Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;->formatted:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 391
    const-string v2, "extra_item_tax"

    iget-object v3, v1, Lcom/oculus/horizon/api/common/PurchaseDetails;->tax:Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;->formatted:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 393
    const-string v2, "extra_item_total_price"

    iget-object v3, v1, Lcom/oculus/horizon/api/common/PurchaseDetails;->total:Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;

    iget-object v3, v3, Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;->formatted:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 395
    const-string v2, "extra_payment_method_info"

    .line 397
    invoke-static {v0}, Lcom/oculus/horizon/commerce/PaymentMethodModel;->fromServerResponse(Lcom/oculus/horizon/api/common/PaymentMethod;)Lcom/oculus/horizon/commerce/PaymentMethodModel;

    move-result-object v0

    .line 395
    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 398
    const-string v0, "extra_purchase_token"

    iget-object v2, p2, Lcom/oculus/horizon/commerce/CreateOrderResponse;->order:Lcom/oculus/horizon/commerce/CreateOrderResponse$Order;

    iget-object v2, v2, Lcom/oculus/horizon/commerce/CreateOrderResponse$Order;->id:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    iget-object v0, v1, Lcom/oculus/horizon/api/common/PurchaseDetails;->exemptions:Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;

    if-eqz v0, :cond_0

    iget-object v0, v1, Lcom/oculus/horizon/api/common/PurchaseDetails;->exemptions:Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;->offset_amount:Ljava/lang/String;

    .line 402
    invoke-static {v0}, Lcom/oculus/horizon/util/ProductUtils;->isNonZeroPrice(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 403
    const-string v0, "extra_item_exemptions"

    iget-object v2, v1, Lcom/oculus/horizon/api/common/PurchaseDetails;->exemptions:Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;->formatted:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 407
    :cond_0
    iget-object v0, p2, Lcom/oculus/horizon/commerce/CreateOrderResponse;->order:Lcom/oculus/horizon/commerce/CreateOrderResponse$Order;

    iget-object v0, v0, Lcom/oculus/horizon/commerce/CreateOrderResponse$Order;->app_store_item:Lcom/oculus/horizon/commerce/CreateOrderResponse$Item;

    iget-object v0, v0, Lcom/oculus/horizon/commerce/CreateOrderResponse$Item;->current_offer:Lcom/oculus/horizon/commerce/CreateOrderResponse$Item$CurrentOffer;

    iget-object v0, v0, Lcom/oculus/horizon/commerce/CreateOrderResponse$Item$CurrentOffer;->viewer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer;->user:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer$User;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer$User;->payment_account:Lcom/oculus/horizon/api/common/PaymentAccount;

    if-eqz v0, :cond_3

    .line 408
    iget-object v0, p2, Lcom/oculus/horizon/commerce/CreateOrderResponse;->order:Lcom/oculus/horizon/commerce/CreateOrderResponse$Order;

    iget-object v0, v0, Lcom/oculus/horizon/commerce/CreateOrderResponse$Order;->app_store_item:Lcom/oculus/horizon/commerce/CreateOrderResponse$Item;

    iget-object v0, v0, Lcom/oculus/horizon/commerce/CreateOrderResponse$Item;->current_offer:Lcom/oculus/horizon/commerce/CreateOrderResponse$Item$CurrentOffer;

    iget-object v0, v0, Lcom/oculus/horizon/commerce/CreateOrderResponse$Item$CurrentOffer;->viewer:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer;->user:Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer$User;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$AppStoreOffer$Viewer$User;->payment_account:Lcom/oculus/horizon/api/common/PaymentAccount;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/PaymentAccount;->stored_credit:Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit;

    .line 411
    if-eqz v0, :cond_1

    iget-object v2, v0, Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit;->balance:Lcom/oculus/horizon/api/common/PaymentMethod$Balance;

    iget v2, v2, Lcom/oculus/horizon/api/common/PaymentMethod$Balance;->amount_in_hundredths:I

    if-lez v2, :cond_1

    .line 412
    const-string v2, "extra_item_store_credit_balance"

    iget-object v0, v0, Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit;->balance:Lcom/oculus/horizon/api/common/PaymentMethod$Balance;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/PaymentMethod$Balance;->formatted_amount:Ljava/lang/String;

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 420
    :cond_1
    iget-object v0, v1, Lcom/oculus/horizon/api/common/PurchaseDetails;->usable_store_credit:Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;

    if-eqz v0, :cond_2

    .line 421
    const-string v0, "extra_item_usable_store_credit"

    iget-object v2, v1, Lcom/oculus/horizon/api/common/PurchaseDetails;->usable_store_credit:Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/PurchaseDetails$PriceLabel;->formatted:Ljava/lang/String;

    invoke-virtual {p1, v0, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 425
    :cond_2
    const-string v0, "extra_item_store_credit_warning"

    iget-boolean v1, v1, Lcom/oculus/horizon/api/common/PurchaseDetails;->show_store_credit_warning:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 430
    :cond_3
    return-object p1
.end method

.method private enableMainFragment()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mMainFragment:Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;

    if-eqz v0, :cond_0

    .line 287
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mMainFragment:Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;->enableButtons()V

    .line 288
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mMainFragment:Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;->hideLoadingState()V

    .line 290
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mTemporaryHideCloseButton:Z

    .line 291
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->invalidateOptionsMenu()V

    .line 292
    return-void
.end method

.method private isCloseButtonEnabled()Z
    .locals 1

    .prologue
    .line 151
    iget-boolean v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mTemporaryHideCloseButton:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static newStartIntent(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)Landroid/content/Intent;
    .locals 3

    .prologue
    .line 69
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 70
    const-string v1, "extra_continue_checkout"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    .line 71
    const-string v1, "extra_offer_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 73
    const-string v1, "extra_prepare_purchase_intent"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 74
    return-object v0
.end method

.method private onAddCreditCardError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 2

    .prologue
    .line 380
    sget-object v0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->TAG:Ljava/lang/String;

    const-string v1, "Fail to add credit card."

    invoke-static {v0, v1, p1}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 381
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mCreditCardFormFragment:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->showError(Lcom/oculus/http/core/base/ApiError;)V

    .line 382
    return-void
.end method

.method private onCloseButtonClicked()V
    .locals 3

    .prologue
    .line 296
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->getCurrentFocus()Landroid/view/View;

    move-result-object v1

    .line 297
    if-eqz v1, :cond_0

    .line 298
    const-string v0, "input_method"

    .line 299
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 301
    invoke-virtual {v1}, Landroid/view/View;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x2

    .line 300
    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 303
    :cond_0
    iget-boolean v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mIsInRoadblockFlow:Z

    if-eqz v0, :cond_1

    .line 304
    invoke-direct {p0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->createAndShowCancellationModal()V

    .line 312
    :goto_0
    return-void

    .line 307
    :cond_1
    iget-boolean v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mIsInCheckoutFlow:Z

    if-eqz v0, :cond_2

    .line 309
    invoke-static {}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->getInstance()Lcom/oculus/horizon/payments/CheckoutFlowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->reset()V

    .line 311
    :cond_2
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->finish()V

    goto :goto_0
.end method

.method private onSaveInput()V
    .locals 3

    .prologue
    .line 228
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mCreditCardFormFragment:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->validateAndCreateCreditCardModel()Lcom/oculus/horizon/commerce/CreditCardModel;

    move-result-object v0

    .line 229
    if-nez v0, :cond_0

    .line 272
    :goto_0
    return-void

    .line 234
    :cond_0
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mCreditCardFormFragment:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    invoke-virtual {v1}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->startLoadingState()V

    .line 235
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mBillingProfileMethods:Lcom/oculus/horizon/commerce/BillingProfileMethods;

    new-instance v2, Lcom/oculus/horizon/commerce/common/AddPaymentMethodRequest;

    invoke-direct {v2, v0}, Lcom/oculus/horizon/commerce/common/AddPaymentMethodRequest;-><init>(Lcom/oculus/horizon/commerce/CreditCardModel;)V

    new-instance v0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$2;

    invoke-direct {v0, p0, p0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$2;-><init>(Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v0}, Lcom/oculus/horizon/commerce/BillingProfileMethods;->addCreditCard(Lcom/oculus/horizon/commerce/common/AddPaymentMethodRequest;Lretrofit/Callback;)V

    goto :goto_0
.end method


# virtual methods
.method public hideKeyboardAndRemoveFocus()V
    .locals 1

    .prologue
    .line 276
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/oculus/horizon/util/KeyboardUtils;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 277
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mEmptyFocusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 278
    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 185
    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 186
    const/16 v0, 0x65

    if-ne p1, v0, :cond_0

    .line 187
    if-nez p2, :cond_1

    .line 188
    invoke-direct {p0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->enableMainFragment()V

    .line 212
    :cond_0
    :goto_0
    return-void

    .line 189
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_0

    .line 190
    const-string v0, "PAYPAL_TOKEN"

    invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 191
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mDebugErrorToaster:Lcom/oculus/horizon/debug/DebugErrorToaster;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Success from PayPal "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/oculus/horizon/debug/DebugErrorToaster;->toast(Ljava/lang/String;)V

    .line 192
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mBillingProfileMethods:Lcom/oculus/horizon/commerce/BillingProfileMethods;

    new-instance v2, Lcom/oculus/horizon/commerce/PayPalBillingAgreementParams;

    invoke-direct {v2, v0}, Lcom/oculus/horizon/commerce/PayPalBillingAgreementParams;-><init>(Ljava/lang/String;)V

    new-instance v0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$1;

    invoke-direct {v0, p0, p0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$1;-><init>(Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;Landroid/app/Activity;)V

    invoke-virtual {v1, v2, v0}, Lcom/oculus/horizon/commerce/BillingProfileMethods;->generatePayPalBillingAgreement(Lcom/oculus/horizon/commerce/PayPalBillingAgreementParams;Lretrofit/Callback;)V

    goto :goto_0
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 168
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mCreditCardFormFragment:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mCreditCardFormFragment:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 181
    :goto_0
    return-void

    .line 172
    :cond_0
    iget-boolean v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mIsInRoadblockFlow:Z

    if-eqz v0, :cond_1

    .line 173
    invoke-direct {p0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->createAndShowCancellationModal()V

    goto :goto_0

    .line 176
    :cond_1
    iget-boolean v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mIsInCheckoutFlow:Z

    if-eqz v0, :cond_2

    .line 178
    invoke-static {}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->getInstance()Lcom/oculus/horizon/payments/CheckoutFlowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->reset()V

    .line 180
    :cond_2
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 99
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 56
    invoke-static {p0, p0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;)V

    .line 103
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mStyleManager:Lcom/oculus/horizon/style/StyleManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/style/StyleManager;->getStyleTheme()Lcom/oculus/model/StyleTheme;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mStyleManager:Lcom/oculus/horizon/style/StyleManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/style/StyleManager;->getStyleThemeResourceIdentifier()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->setTheme(I)V

    .line 106
    :cond_0
    sget v0, Lcom/oculus/horizon/R$layout;->add_payment_method_activity:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->setContentView(I)V

    .line 108
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 109
    if-eqz v0, :cond_1

    .line 110
    const-string v1, "extra_continue_checkout"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mIsInCheckoutFlow:Z

    .line 111
    const-string v1, "roadblock"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mIsInRoadblockFlow:Z

    .line 114
    :cond_1
    sget v0, Lcom/oculus/horizon/R$id;->empty_focus:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mEmptyFocusView:Landroid/view/View;

    .line 117
    iget-boolean v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mIsInRoadblockFlow:Z

    invoke-static {v0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;->createAddPaymentMethodFragment(Z)Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mMainFragment:Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;

    .line 118
    new-instance v0, Lcom/oculus/horizon/navigation/FragmentNavigator;

    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mMainFragment:Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    .line 119
    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->noBackStack()Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    .line 121
    sget v0, Lcom/oculus/horizon/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 122
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->commerce_add_payment_method:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 124
    iget-boolean v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mIsInCheckoutFlow:Z

    if-eqz v0, :cond_3

    .line 125
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    const-string v1, "checkout_add_payment_method_employee"

    .line 126
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->getIntent()Landroid/content/Intent;

    move-result-object v2

    const-string v3, "extra_offer_id"

    invoke-virtual {v2, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 125
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/logging/OculusLogger;->reportCheckoutView(Ljava/lang/String;Ljava/lang/String;)V

    .line 132
    :cond_2
    :goto_0
    return-void

    .line 127
    :cond_3
    iget-boolean v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mIsInRoadblockFlow:Z

    if-nez v0, :cond_2

    .line 130
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    sget-object v1, Lcom/oculus/horizon/logging/TrackingViews$View;->SETTINGS_ADD_PAYMENT_METHOD:Lcom/oculus/horizon/logging/TrackingViews$View;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportView(Lcom/oculus/horizon/logging/TrackingViews$View;)V

    goto :goto_0
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    .line 137
    sget v1, Lcom/oculus/horizon/R$menu;->common_close:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 138
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    return v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 216
    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mMainFragment:Lcom/oculus/horizon/payments/ui/AddPaymentMethodFragment;

    .line 217
    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mCreditCardFormFragment:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    .line 218
    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mEmptyFocusView:Landroid/view/View;

    .line 219
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    .line 220
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 143
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/oculus/horizon/R$id;->action_close:I

    if-ne v0, v1, :cond_0

    .line 144
    invoke-direct {p0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->onCloseButtonClicked()V

    .line 145
    const/4 v0, 0x1

    .line 147
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 156
    sget v0, Lcom/oculus/horizon/R$id;->action_close:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    invoke-direct {p0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->isCloseButtonEnabled()Z

    move-result v1

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    .line 157
    const/4 v0, 0x1

    return v0
.end method

.method public removeFocus()V
    .locals 1

    .prologue
    .line 224
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mEmptyFocusView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 225
    return-void
.end method

.method public setupCreditCardFormFragment()Lcom/oculus/horizon/navigation/FragmentNavigator;
    .locals 2

    .prologue
    .line 161
    new-instance v0, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mCreditCardFormFragment:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    .line 162
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mCreditCardFormFragment:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;->setCreditCardFormEventListener(Lcom/oculus/horizon/payments/ui/CreditCardFormFragment$CreditCardFormEventListener;)V

    .line 163
    new-instance v0, Lcom/oculus/horizon/navigation/FragmentNavigator;

    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mCreditCardFormFragment:Lcom/oculus/horizon/payments/ui/CreditCardFormFragment;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    return-object v0
.end method

.method public setupPayPal()V
    .locals 4

    .prologue
    .line 451
    new-instance v0, Lcom/oculus/horizon/commerce/PayPalTokenMutationParams;

    const-string v1, "en_US"

    sget-object v2, Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity;->RETURN_URL:Ljava/net/URL;

    sget-object v3, Lcom/oculus/horizon/payments/ui/AddPayPalMethodActivity;->CANCEL_URL:Ljava/net/URL;

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/commerce/PayPalTokenMutationParams;-><init>(Ljava/lang/String;Ljava/net/URL;Ljava/net/URL;)V

    .line 454
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->mBillingProfileMethods:Lcom/oculus/horizon/commerce/BillingProfileMethods;

    new-instance v2, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$5;

    invoke-direct {v2, p0, p0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity$5;-><init>(Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;Landroid/app/Activity;)V

    invoke-virtual {v1, v0, v2}, Lcom/oculus/horizon/commerce/BillingProfileMethods;->generatePayPalToken(Lcom/oculus/horizon/commerce/PayPalTokenMutationParams;Lretrofit/Callback;)V

    .line 476
    return-void
.end method

.method public submit()V
    .locals 0

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/oculus/horizon/payments/ui/AddPaymentMethodActivity;->onSaveInput()V

    .line 283
    return-void
.end method
