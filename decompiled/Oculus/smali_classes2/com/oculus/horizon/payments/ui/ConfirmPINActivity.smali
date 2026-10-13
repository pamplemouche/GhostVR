.class public Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "ConfirmPINActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mClose:Landroid/view/MenuItem;

.field private mDebugErrorToaster:Lcom/oculus/horizon/debug/DebugErrorToaster;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mErrorMessage:Landroid/widget/TextView;

.field private mIsProcessing:Z

.field private mNumericKeyboard:Lcom/oculus/horizon/widget/NumericKeyboard;

.field private mOVRLibraryInternal:Lcom/oculus/libraryapi/OVRLibraryInternal;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOfferID:Ljava/lang/String;

.field private mPINIndicator:Lcom/oculus/horizon/widget/PINIndicator;

.field private mPinBuilder:Ljava/lang/StringBuilder;

.field private mPurchaseMethods:Lcom/oculus/horizon/commerce/PurchaseMethods;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mRefundBundle:Landroid/os/Bundle;

.field private mStoresManager:Lcom/oculus/horizon/store/StoresManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;)V
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;)V
    .locals 1

    .prologue
    .line 52
    invoke-static {p0}, Lcom/oculus/horizon/api/ApiRequestManager;->$ul_$xXXcom_oculus_horizon_api_ApiRequestManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/api/ApiRequestManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-static {p0}, Lcom/oculus/horizon/commerce/PurchaseMethods;->$ul_$xXXcom_oculus_horizon_commerce_PurchaseMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/commerce/PurchaseMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mPurchaseMethods:Lcom/oculus/horizon/commerce/PurchaseMethods;

    invoke-static {p0}, Lcom/oculus/horizon/debug/DebugErrorToaster;->$ul_$xXXcom_oculus_horizon_debug_DebugErrorToaster$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/debug/DebugErrorToaster;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mDebugErrorToaster:Lcom/oculus/horizon/debug/DebugErrorToaster;

    invoke-static {p0}, Lcom/oculus/horizon/profile/UserProfileHelper;->$ul_$xXXcom_oculus_horizon_profile_UserProfileHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/profile/UserProfileHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-static {p0}, Lcom/oculus/horizon/store/StoresManager;->$ul_$xXXcom_oculus_horizon_store_StoresManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/store/StoresManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mStoresManager:Lcom/oculus/horizon/store/StoresManager;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-static {p0}, Lcom/oculus/libraryapi/OVRLibraryModule;->$ul_$xXXcom_oculus_libraryapi_OVRLibraryInternal$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/libraryapi/OVRLibraryInternal;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mOVRLibraryInternal:Lcom/oculus/libraryapi/OVRLibraryInternal;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 54
    const-class v0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    sget-object v0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mOfferID:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->stopAnimation()V

    return-void
.end method

.method static synthetic access$300(Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;)Z
    .locals 1

    .prologue
    .line 52
    iget-boolean v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mIsProcessing:Z

    return v0
.end method

.method static synthetic access$302(Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;Z)Z
    .locals 0

    .prologue
    .line 52
    iput-boolean p1, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mIsProcessing:Z

    return p1
.end method

.method static synthetic access$400(Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;Lcom/oculus/http/core/base/ApiError;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->onPurchaseError(Lcom/oculus/http/core/base/ApiError;)V

    return-void
.end method

.method static synthetic access$500(Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->processRefund()V

    return-void
.end method

.method static synthetic access$600(Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;)Lcom/oculus/horizon/store/StoresManager;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mStoresManager:Lcom/oculus/horizon/store/StoresManager;

    return-object v0
.end method

.method static synthetic access$700(Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;)Lcom/oculus/libraryapi/OVRLibraryInternal;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mOVRLibraryInternal:Lcom/oculus/libraryapi/OVRLibraryInternal;

    return-object v0
.end method

.method static synthetic access$800(Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;Lcom/oculus/http/core/base/ApiError;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->onRefundError(Lcom/oculus/http/core/base/ApiError;)V

    return-void
.end method

.method private confirmRefund()V
    .locals 6

    .prologue
    .line 262
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$layout;->request_refund_confirm_dialog:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 263
    sget v0, Lcom/oculus/horizon/R$id;->ack_text:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 265
    sget v2, Lcom/oculus/horizon/R$string;->commerce_refund_policy_label:I

    invoke-virtual {p0, v2}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 266
    sget v3, Lcom/oculus/horizon/R$string;->commerce_refund_request_submit_message_ack:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    .line 269
    invoke-virtual {p0, v3, v4}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "https://www.oculus.com/legal/return-policy"

    .line 271
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 267
    invoke-static {p0, v3, v2, v4}, Lcom/oculus/horizon/util/TextSpanUtils;->makeLink(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/CharSequence;

    move-result-object v2

    .line 266
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 272
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 274
    new-instance v0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v2, Lcom/oculus/horizon/R$string;->commerce_refund_request_submit_title:I

    .line 276
    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setTitle(I)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    .line 277
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_submit:I

    new-instance v2, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$3;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$3;-><init>(Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;)V

    .line 278
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setPositiveButton(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_cancel:I

    new-instance v2, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$2;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$2;-><init>(Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;)V

    .line 287
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setNegativeButton(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->build()Lcom/oculus/horizon/widget/CustomAlertDialog;

    move-result-object v0

    .line 297
    new-instance v1, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$4;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$4;-><init>(Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomAlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 308
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomAlertDialog;->show()V

    .line 309
    return-void
.end method

.method private displayError()V
    .locals 1

    .prologue
    .line 405
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mPINIndicator:Lcom/oculus/horizon/widget/PINIndicator;

    invoke-virtual {v0}, Lcom/oculus/horizon/widget/PINIndicator;->setError()V

    .line 406
    return-void
.end method

.method private onInputChanged()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 180
    invoke-direct {p0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->updateDisplay()V

    .line 181
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mPinBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    .line 189
    :cond_0
    :goto_0
    return-void

    .line 184
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "action_continue_checkout"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 185
    invoke-direct {p0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->tryProcessCheckout()V

    goto :goto_0

    .line 186
    :cond_2
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "action_continue_refund"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 187
    invoke-direct {p0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->confirmRefund()V

    goto :goto_0
.end method

.method private onPurchaseError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 226
    invoke-direct {p0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->stopAnimation()V

    .line 227
    iput-boolean v4, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mIsProcessing:Z

    .line 228
    const-string v0, "Failed to purchase offer %s."

    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mOfferID:Ljava/lang/String;

    .line 229
    invoke-static {v0, v1}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 230
    sget-object v1, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 231
    invoke-direct {p0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->displayError()V

    .line 233
    const v0, 0x1cdac9

    invoke-virtual {p1, v0}, Lcom/oculus/http/core/base/ApiError;->fbErrorSubCodeEquals(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-virtual {v0}, Lcom/oculus/horizon/logging/OculusLogger;->reportPINFailed()V

    .line 236
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mPinBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 237
    invoke-direct {p0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->onInputChanged()V

    .line 238
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mErrorMessage:Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->commerce_pin_error_incorrect:I

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 259
    :goto_0
    return-void

    .line 242
    :cond_0
    sget v0, Lcom/oculus/horizon/R$string;->product_purchase_error_unavailable_title:I

    .line 243
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oculus/http/core/base/ApiError;->getFBErrorTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 244
    sget v0, Lcom/oculus/horizon/R$string;->product_purchase_error_unavailable_description:I

    .line 246
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 245
    invoke-virtual {p1, v0}, Lcom/oculus/http/core/base/ApiError;->getFBErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 247
    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->getFBErrorSubErrorCode()I

    move-result v0

    .line 249
    iget-object v3, p1, Lcom/oculus/http/core/base/ApiError;->type:Lcom/oculus/http/core/base/ApiError$Type;

    sget-object v4, Lcom/oculus/http/core/base/ApiError$Type;->NETWORK_ERROR:Lcom/oculus/http/core/base/ApiError$Type;

    if-ne v3, v4, :cond_2

    .line 250
    sget v1, Lcom/oculus/horizon/R$string;->common_error_network_title:I

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 251
    sget v1, Lcom/oculus/horizon/R$string;->common_error_network_description:I

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 255
    :cond_1
    :goto_1
    invoke-static {}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->getInstance()Lcom/oculus/horizon/payments/CheckoutFlowModel;

    move-result-object v3

    sget-object v4, Lcom/oculus/horizon/payments/CheckoutFlowModel$State;->ERROR:Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    .line 256
    invoke-virtual {v3, v4, v0, v2, v1}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->setStateWithError(Lcom/oculus/horizon/payments/CheckoutFlowModel$State;ILjava/lang/String;Ljava/lang/String;)V

    .line 257
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->setResult(I)V

    .line 258
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->finish()V

    goto :goto_0

    .line 252
    :cond_2
    const/16 v3, 0x170

    invoke-virtual {p1, v3}, Lcom/oculus/http/core/base/ApiError;->fbErrorCodeEquals(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 253
    iget-object v0, p1, Lcom/oculus/http/core/base/ApiError;->fbApiErrorResponse:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;

    iget-object v0, v0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;->error:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;

    iget v0, v0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;->code:I

    goto :goto_1
.end method

.method private onRefundError(Lcom/oculus/http/core/base/ApiError;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 361
    invoke-direct {p0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->stopAnimation()V

    .line 362
    iput-boolean v4, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mIsProcessing:Z

    .line 363
    const-string v0, "Failed to request refund for item %s."

    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mRefundBundle:Landroid/os/Bundle;

    const-string v2, "ITEM_ID"

    .line 366
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 364
    invoke-static {v0, v1}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 367
    sget-object v1, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->TAG:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->getMessage()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v0, v2}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 368
    invoke-direct {p0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->displayError()V

    .line 370
    const v0, 0x1cdac9

    invoke-virtual {p1, v0}, Lcom/oculus/http/core/base/ApiError;->fbErrorSubCodeEquals(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 372
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-virtual {v0}, Lcom/oculus/horizon/logging/OculusLogger;->reportPINFailed()V

    .line 373
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mPinBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 374
    invoke-direct {p0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->onInputChanged()V

    .line 375
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mErrorMessage:Landroid/widget/TextView;

    sget v1, Lcom/oculus/horizon/R$string;->commerce_pin_error_incorrect:I

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 396
    :goto_0
    return-void

    .line 379
    :cond_0
    sget v0, Lcom/oculus/horizon/R$string;->commerce_request_refund_error_title:I

    .line 380
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oculus/http/core/base/ApiError;->getFBErrorTitle(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 381
    sget v0, Lcom/oculus/horizon/R$string;->commerce_request_refund_error_message:I

    .line 382
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/oculus/http/core/base/ApiError;->getFBErrorMessage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 383
    invoke-virtual {p1}, Lcom/oculus/http/core/base/ApiError;->getFBErrorSubErrorCode()I

    move-result v0

    .line 385
    iget-object v3, p1, Lcom/oculus/http/core/base/ApiError;->type:Lcom/oculus/http/core/base/ApiError$Type;

    sget-object v4, Lcom/oculus/http/core/base/ApiError$Type;->NETWORK_ERROR:Lcom/oculus/http/core/base/ApiError$Type;

    if-ne v3, v4, :cond_2

    .line 386
    sget v1, Lcom/oculus/horizon/R$string;->common_error_network_title:I

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 387
    sget v1, Lcom/oculus/horizon/R$string;->common_error_network_description:I

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 392
    :cond_1
    :goto_1
    invoke-static {}, Lcom/oculus/horizon/payments/RefundFlowModel;->getInstance()Lcom/oculus/horizon/payments/RefundFlowModel;

    move-result-object v3

    sget-object v4, Lcom/oculus/horizon/payments/RefundFlowModel$State;->ERROR:Lcom/oculus/horizon/payments/RefundFlowModel$State;

    .line 393
    invoke-virtual {v3, v4, v0, v2, v1}, Lcom/oculus/horizon/payments/RefundFlowModel;->setStateWithError(Lcom/oculus/horizon/payments/RefundFlowModel$State;ILjava/lang/String;Ljava/lang/String;)V

    .line 394
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->setResult(I)V

    .line 395
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->finish()V

    goto :goto_0

    .line 388
    :cond_2
    const/16 v3, 0x170

    invoke-virtual {p1, v3}, Lcom/oculus/http/core/base/ApiError;->fbErrorCodeEquals(I)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 389
    iget-object v0, p1, Lcom/oculus/http/core/base/ApiError;->fbApiErrorResponse:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;

    iget-object v0, v0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse;->error:Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;

    iget v0, v0, Lcom/oculus/http/core/base/ApiError$FBApiErrorResponse$Error;->code:I

    goto :goto_1
.end method

.method private processRefund()V
    .locals 10

    .prologue
    .line 313
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mRefundBundle:Landroid/os/Bundle;

    if-nez v0, :cond_0

    .line 314
    const-string v0, "Refund bundle is missing. Please fix!"

    .line 315
    invoke-static {v0}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 316
    sget-object v1, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 317
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mDebugErrorToaster:Lcom/oculus/horizon/debug/DebugErrorToaster;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/debug/DebugErrorToaster;->toast(Ljava/lang/String;)V

    .line 358
    :goto_0
    return-void

    .line 320
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mIsProcessing:Z

    .line 321
    invoke-direct {p0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->startAnimation()V

    .line 323
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mRefundBundle:Landroid/os/Bundle;

    const-string v1, "ITEM_ID"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 324
    iget-object v9, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    new-instance v0, Lcom/oculus/horizon/api/commerce/RefundRequest;

    iget-object v2, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mRefundBundle:Landroid/os/Bundle;

    const-string v3, "PLAY_TIME"

    .line 327
    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v2

    iget-object v4, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mRefundBundle:Landroid/os/Bundle;

    const-string v5, "LIBRARY_TS"

    .line 328
    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J

    move-result-wide v4

    iget-object v6, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mRefundBundle:Landroid/os/Bundle;

    const-string v7, "REASON"

    .line 329
    invoke-virtual {v6, v7}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    iget-object v7, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mRefundBundle:Landroid/os/Bundle;

    const-string v8, "COMMENT"

    .line 330
    invoke-virtual {v7, v8}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    iget-object v8, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mPinBuilder:Ljava/lang/StringBuilder;

    .line 331
    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct/range {v0 .. v8}, Lcom/oculus/horizon/api/commerce/RefundRequest;-><init>(Ljava/lang/String;JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v2, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$5;

    invoke-direct {v2, p0, v1}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$5;-><init>(Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;Ljava/lang/String;)V

    .line 324
    invoke-virtual {v9, v0, v2}, Lcom/oculus/horizon/api/ApiRequestManager;->postUnique(Lcom/oculus/http/core/base/ApiRequest;Lcom/oculus/http/core/base/ApiCallback;)V

    goto :goto_0
.end method

.method private startAnimation()V
    .locals 2

    .prologue
    .line 409
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mClose:Landroid/view/MenuItem;

    sget v1, Lcom/oculus/horizon/R$layout;->action_progress:I

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 410
    return-void
.end method

.method private stopAnimation()V
    .locals 2

    .prologue
    .line 413
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mClose:Landroid/view/MenuItem;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    .line 414
    return-void
.end method

.method private tryProcessCheckout()V
    .locals 5

    .prologue
    .line 193
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_purchase_token"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 194
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 195
    const-string v0, "Purchase token is null or empty for offer %s. Please fix!"

    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mOfferID:Ljava/lang/String;

    .line 196
    invoke-static {v0, v1}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 198
    sget-object v1, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 199
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mDebugErrorToaster:Lcom/oculus/horizon/debug/DebugErrorToaster;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/debug/DebugErrorToaster;->toast(Ljava/lang/String;)V

    .line 223
    :goto_0
    return-void

    .line 202
    :cond_0
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mIsProcessing:Z

    .line 203
    invoke-direct {p0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->startAnimation()V

    .line 205
    invoke-static {p0}, Lcom/oculus/util/device/DeviceUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 206
    iget-object v2, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mPurchaseMethods:Lcom/oculus/horizon/commerce/PurchaseMethods;

    new-instance v3, Lcom/oculus/horizon/commerce/ConfirmOrderParams;

    iget-object v4, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mPinBuilder:Ljava/lang/StringBuilder;

    .line 207
    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v0, v4, v1}, Lcom/oculus/horizon/commerce/ConfirmOrderParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity$1;-><init>(Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;)V

    .line 206
    invoke-virtual {v2, v3, v0}, Lcom/oculus/horizon/commerce/PurchaseMethods;->confirmOrder(Lcom/oculus/horizon/commerce/ConfirmOrderParams;Lretrofit/Callback;)V

    goto :goto_0
.end method

.method private updateDisplay()V
    .locals 2

    .prologue
    .line 399
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mPINIndicator:Lcom/oculus/horizon/widget/PINIndicator;

    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mPinBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/PINIndicator;->setDigitCount(I)V

    .line 400
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mNumericKeyboard:Lcom/oculus/horizon/widget/NumericKeyboard;

    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mPinBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->length()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Lcom/oculus/horizon/widget/NumericKeyboard;->toggleDeleteButton(Z)V

    .line 401
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mErrorMessage:Landroid/widget/TextView;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 402
    return-void

    .line 400
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public onBackPressed()V
    .locals 1

    .prologue
    .line 142
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->setResult(I)V

    .line 143
    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onBackPressed()V

    .line 144
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3

    .prologue
    .line 82
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-static {p0, p0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;)V

    .line 86
    sget v0, Lcom/oculus/horizon/R$layout;->confirm_pin_activity:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->setContentView(I)V

    .line 88
    sget v0, Lcom/oculus/horizon/R$id;->toolbar:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/Toolbar;

    .line 89
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->setSupportActionBar(Landroidx/appcompat/widget/Toolbar;)V

    .line 90
    sget v0, Lcom/oculus/horizon/R$string;->commerce_enter_pin:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->setTitle(I)V

    .line 92
    sget v0, Lcom/oculus/horizon/R$id;->enter_pin:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/PINIndicator;

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mPINIndicator:Lcom/oculus/horizon/widget/PINIndicator;

    .line 94
    sget v0, Lcom/oculus/horizon/R$id;->description:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 95
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mUserProfileHelper:Lcom/oculus/horizon/profile/UserProfileHelper;

    invoke-virtual {v1}, Lcom/oculus/horizon/profile/UserProfileHelper;->getEmail()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 96
    sget v0, Lcom/oculus/horizon/R$id;->error_message:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mErrorMessage:Landroid/widget/TextView;

    .line 98
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mPinBuilder:Ljava/lang/StringBuilder;

    .line 99
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mIsProcessing:Z

    .line 100
    sget v0, Lcom/oculus/horizon/R$id;->numeric_keyboard:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/NumericKeyboard;

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mNumericKeyboard:Lcom/oculus/horizon/widget/NumericKeyboard;

    .line 102
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "extra_offer_id"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mOfferID:Ljava/lang/String;

    .line 103
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mOfferID:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 104
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    const-string v1, "checkout_confirm_pin"

    iget-object v2, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mOfferID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/logging/OculusLogger;->reportCheckoutView(Ljava/lang/String;Ljava/lang/String;)V

    .line 107
    :cond_0
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    const-string v1, "REFUND_BUNDLE"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getBundleExtra(Ljava/lang/String;)Landroid/os/Bundle;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mRefundBundle:Landroid/os/Bundle;

    .line 108
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2

    .prologue
    .line 112
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$menu;->common_close:I

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 113
    sget v0, Lcom/oculus/horizon/R$id;->action_close:I

    invoke-interface {p1, v0}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mClose:Landroid/view/MenuItem;

    .line 114
    const/4 v0, 0x1

    return v0
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v3, 0x4

    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 148
    iget-boolean v2, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mIsProcessing:Z

    if-eqz v2, :cond_1

    .line 176
    :cond_0
    :goto_0
    return v0

    .line 153
    :cond_1
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_2

    if-ne p1, v3, :cond_2

    .line 154
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->onBackPressed()V

    move v0, v1

    .line 155
    goto :goto_0

    .line 158
    :cond_2
    invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I

    move-result v2

    if-nez v2, :cond_3

    iget-object v2, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mNumericKeyboard:Lcom/oculus/horizon/widget/NumericKeyboard;

    invoke-virtual {v2, p2}, Lcom/oculus/horizon/widget/NumericKeyboard;->isEligibleKeyCode(Landroid/view/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_4

    :cond_3
    move v0, v1

    .line 159
    goto :goto_0

    .line 162
    :cond_4
    const/16 v2, 0x43

    if-ne p1, v2, :cond_5

    .line 163
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mPinBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I

    move-result v1

    if-lez v1, :cond_0

    .line 164
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mPinBuilder:Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mPinBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->deleteCharAt(I)Ljava/lang/StringBuilder;

    .line 165
    invoke-direct {p0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->onInputChanged()V

    goto :goto_0

    .line 170
    :cond_5
    iget-object v2, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mPinBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v2

    if-ge v2, v3, :cond_6

    .line 171
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->mPinBuilder:Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Landroid/view/KeyEvent;->getDisplayLabel()C

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 172
    invoke-direct {p0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->onInputChanged()V

    goto :goto_0

    :cond_6
    move v0, v1

    .line 176
    goto :goto_0
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 119
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 120
    sget v1, Lcom/oculus/horizon/R$id;->action_close:I

    if-ne v1, v0, :cond_0

    .line 121
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->setResult(I)V

    .line 122
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->finish()V

    .line 123
    const/4 v0, 0x1

    .line 125
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public setTitle(I)V
    .locals 1

    .prologue
    .line 136
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setTitle(I)V

    .line 137
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(I)V

    .line 138
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1

    .prologue
    .line 130
    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 131
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/ConfirmPINActivity;->getSupportActionBar()Landroidx/appcompat/app/ActionBar;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroidx/appcompat/app/ActionBar;->setTitle(Ljava/lang/CharSequence;)V

    .line 132
    return-void
.end method
