.class public Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;
.super Landroidx/fragment/app/FragmentActivity;
.source "PurchaseSummaryActivity.java"


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mAreTermsOfServiceEnabled:Ljavax/inject/Provider;
    .annotation runtime Lcom/google/inject/name/Named;
        value = "oculus_horizon_enable_terms_of_service"
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

.field private mBuyButton:Landroid/widget/TextView;

.field private mContext:Landroid/content/Context;
    .annotation build Lcom/facebook/inject/ForAppContext;
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mDebugErrorToaster:Lcom/oculus/horizon/debug/DebugErrorToaster;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mIsRental:Z

.field private mItemId:Ljava/lang/String;

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOfferID:Ljava/lang/String;

.field private mPackageName:Ljava/lang/String;

.field private mReferralView:Lcom/oculus/horizon/logging/TrackingViews$View;

.field private mStoreWideOfferModel:Lcom/oculus/horizon/store/StoreWideOfferModel;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;)V
    .locals 1

    .prologue
    .line 44
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;)V
    .locals 1

    .prologue
    .line 44
    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXcom_facebook_inject_ForAppContext$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oculus/horizon/debug/DebugErrorToaster;->$ul_$xXXcom_oculus_horizon_debug_DebugErrorToaster$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/debug/DebugErrorToaster;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->mDebugErrorToaster:Lcom/oculus/horizon/debug/DebugErrorToaster;

    invoke-static {p0}, Lcom/oculus/horizon/payments/PaymentsModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_lang_Boolean$x3E$xXXcom_google_inject_name_Named$x5Foculus$x5Fhorizon$x5Fenable$x5Fterms$x5Fof$x5Fservice$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->mAreTermsOfServiceEnabled:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Landroidx/fragment/app/FragmentActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;)Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->mBuyButton:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 44
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->mOfferID:Ljava/lang/String;

    return-object v0
.end method

.method public static newStartIntent(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IFLcom/oculus/horizon/store/StoreWideOfferModel;Lcom/oculus/horizon/logging/TrackingViews$View;Ljava/lang/String;)Landroid/content/Intent;
    .locals 3
    .param p5    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p6    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p9    # Lcom/oculus/horizon/store/StoreWideOfferModel;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 107
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 108
    const-string v1, "extra_offer_id"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 109
    const-string v1, "extra_image_url"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 110
    const-string v1, "extra_item_name"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 111
    const-string v1, "extra_package_name"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 112
    const-string v1, "extra_comfort_rating"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 113
    const-string v1, "extra_comfort_rating_name"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 114
    const-string v1, "extra_referral_view"

    invoke-virtual {p10}, Lcom/oculus/horizon/logging/TrackingViews$View;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 115
    const-string v1, "extra_item_id"

    invoke-virtual {v0, v1, p11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 116
    if-ltz p7, :cond_0

    .line 117
    const-string v1, "extra_quality_rating_count"

    invoke-virtual {v0, v1, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 119
    :cond_0
    const/4 v1, 0x0

    cmpl-float v1, p8, v1

    if-ltz v1, :cond_1

    .line 120
    const-string v1, "extra_quality_rating_average"

    invoke-virtual {v0, v1, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;F)Landroid/content/Intent;

    .line 122
    :cond_1
    const-string v1, "store_wide_offer_key"

    invoke-virtual {v0, v1, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 124
    return-object v0
.end method


# virtual methods
.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    .line 338
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/FragmentActivity;->onActivityResult(IILandroid/content/Intent;)V

    .line 339
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->mBuyButton:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 341
    if-ne p1, v1, :cond_0

    if-nez p2, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 345
    :cond_1
    const/4 v0, -0x1

    if-ne p2, v0, :cond_3

    .line 346
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->mOfferID:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->mPackageName:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->mReferralView:Lcom/oculus/horizon/logging/TrackingViews$View;

    iget-object v4, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->mItemId:Ljava/lang/String;

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/oculus/horizon/logging/OculusLogger;->reportPurchaseSuccess(Ljava/lang/String;Ljava/lang/String;Lcom/oculus/horizon/logging/TrackingViews$View;Ljava/lang/String;)V

    .line 347
    invoke-static {}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->getInstance()Lcom/oculus/horizon/payments/CheckoutFlowModel;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/payments/CheckoutFlowModel$State;->PURCHASED:Lcom/oculus/horizon/payments/CheckoutFlowModel$State;

    iget-object v2, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->mOfferID:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->mPackageName:Ljava/lang/String;

    .line 348
    invoke-virtual {v0, v1, v2, v3}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->setState(Lcom/oculus/horizon/payments/CheckoutFlowModel$State;Ljava/lang/String;Ljava/lang/String;)V

    .line 350
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->mStoreWideOfferModel:Lcom/oculus/horizon/store/StoreWideOfferModel;

    if-eqz v0, :cond_2

    .line 351
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/oculus/horizon/payments/ui/SpecialOfferActivatedActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    .line 353
    const-string v1, "store_wide_offer_key"

    iget-object v2, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->mStoreWideOfferModel:Lcom/oculus/horizon/store/StoreWideOfferModel;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 355
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->startActivity(Landroid/content/Intent;)V

    .line 364
    :cond_2
    :goto_1
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->finish()V

    goto :goto_0

    .line 360
    :cond_3
    invoke-static {}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->getInstance()Lcom/oculus/horizon/payments/CheckoutFlowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->getErrorCode()I

    move-result v0

    .line 361
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    iget-object v2, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->mOfferID:Ljava/lang/String;

    iget-object v3, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->mPackageName:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Error code: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v2, v3, v0}, Lcom/oculus/horizon/logging/OculusLogger;->reportPurchaseFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 370
    invoke-static {}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->getInstance()Lcom/oculus/horizon/payments/CheckoutFlowModel;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/payments/CheckoutFlowModel;->reset()V

    .line 371
    invoke-super {p0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    .line 372
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 13

    .prologue
    const/4 v12, 0x1

    const/4 v11, 0x0

    const/16 v10, 0x8

    .line 149
    invoke-super {p0, p1}, Landroidx/fragment/app/FragmentActivity;->onCreate(Landroid/os/Bundle;)V

    .line 44
    invoke-static {p0, p0}, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;)V

    .line 153
    invoke-virtual {p0}, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->getIntent()Landroid/content/Intent;

    move-result-object v7

    .line 154
    sget v0, Lcom/oculus/horizon/R$layout;->purchase_summary_activity:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->setContentView(I)V

    .line 156
    const-string v0, "extra_item_is_rental"

    invoke-virtual {v7, v0, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->mIsRental:Z

    .line 157
    iget-boolean v0, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->mIsRental:Z

    if-eqz v0, :cond_0

    .line 158
    sget v0, Lcom/oculus/horizon/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 159
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->mContext:Landroid/content/Context;

    sget v2, Lcom/oculus/horizon/R$string;->commerce_rental_total:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    :cond_0
    const-string v0, "store_wide_offer_key"

    .line 163
    invoke-virtual {v7, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/store/StoreWideOfferModel;

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->mStoreWideOfferModel:Lcom/oculus/horizon/store/StoreWideOfferModel;

    .line 165
    const-string v0, "extra_offer_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->mOfferID:Ljava/lang/String;

    .line 166
    const-string v0, "extra_package_name"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->mPackageName:Ljava/lang/String;

    .line 167
    const-string v0, "extra_item_id"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->mItemId:Ljava/lang/String;

    .line 168
    const-string v0, "extra_referral_view"

    .line 169
    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/horizon/logging/TrackingViews$View;->fromStringWithDefaults(Ljava/lang/String;)Lcom/oculus/horizon/logging/TrackingViews$View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->mReferralView:Lcom/oculus/horizon/logging/TrackingViews$View;

    .line 170
    const-string v0, "extra_item_name"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 171
    const-string v0, "extra_purchase_token"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 172
    invoke-static {v3}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 173
    const-string v0, "Purchase token is null or empty for offer %s. Please fix!"

    .line 174
    invoke-static {v0, v2}, Lcom/facebook/common/stringformat/StringFormatUtil;->formatStrLocaleSafe(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 176
    sget-object v1, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->TAG:Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/facebook/debug/log/BLog;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 177
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->mDebugErrorToaster:Lcom/oculus/horizon/debug/DebugErrorToaster;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/debug/DebugErrorToaster;->toast(Ljava/lang/String;)V

    .line 180
    :cond_1
    sget v0, Lcom/oculus/horizon/R$id;->image:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 181
    const-string v1, "extra_image_url"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 182
    if-eqz v1, :cond_6

    .line 184
    invoke-static {}, Lcom/facebook/drawee/backends/pipeline/Fresco;->newDraweeControllerBuilder()Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v4

    .line 185
    invoke-virtual {v4, v1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setUri(Ljava/lang/String;)Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    move-result-object v1

    new-instance v4, Lcom/oculus/horizon/util/AspectRatioControllerListener;

    invoke-direct {v4, v0}, Lcom/oculus/horizon/util/AspectRatioControllerListener;-><init>(Lcom/facebook/drawee/view/SimpleDraweeView;)V

    .line 186
    invoke-virtual {v1, v4}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->setControllerListener(Lcom/facebook/drawee/controller/ControllerListener;)Lcom/facebook/drawee/controller/AbstractDraweeControllerBuilder;

    move-result-object v1

    check-cast v1, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;

    .line 187
    invoke-virtual {v1}, Lcom/facebook/drawee/backends/pipeline/PipelineDraweeControllerBuilder;->build()Lcom/facebook/drawee/controller/AbstractDraweeController;

    move-result-object v1

    .line 183
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setController(Lcom/facebook/drawee/interfaces/DraweeController;)V

    .line 188
    invoke-virtual {v0, v11}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    .line 193
    :goto_0
    sget v0, Lcom/oculus/horizon/R$id;->product_title:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 194
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    sget v0, Lcom/oculus/horizon/R$id;->close_button:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 197
    new-instance v1, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity$1;-><init>(Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 207
    sget v0, Lcom/oculus/horizon/R$id;->payment_method_info:I

    .line 208
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/commerce/PaymentMethodInfoView;

    .line 209
    const-string v1, "extra_payment_method_info"

    .line 210
    invoke-virtual {v7, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/oculus/horizon/commerce/PaymentMethodModel;

    .line 209
    invoke-virtual {v0, v1, v12}, Lcom/oculus/horizon/commerce/PaymentMethodInfoView;->setPaymentModel(Lcom/oculus/horizon/commerce/PaymentMethodModel;Z)V

    .line 212
    sget v0, Lcom/oculus/horizon/R$id;->item_price:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 213
    const-string v1, "extra_item_price"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 215
    sget v0, Lcom/oculus/horizon/R$id;->dynamic_pricing_view:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 216
    const-string v1, "EXTRA_ITEM_DYNAMIC_BUNDLE_STRING"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 217
    invoke-static {v1}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 218
    invoke-virtual {v0, v11}, Landroid/widget/TextView;->setVisibility(I)V

    .line 219
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 222
    :cond_2
    sget v0, Lcom/oculus/horizon/R$id;->tax_amount:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 223
    const-string v1, "extra_item_tax"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 225
    sget v0, Lcom/oculus/horizon/R$id;->exemptions_row:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 226
    sget v1, Lcom/oculus/horizon/R$id;->exemptions_field:I

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 227
    const-string v2, "extra_item_exemptions"

    invoke-virtual {v7, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 228
    if-eqz v2, :cond_3

    .line 229
    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 230
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    :cond_3
    sget v0, Lcom/oculus/horizon/R$id;->store_credit_row:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    .line 234
    sget v1, Lcom/oculus/horizon/R$id;->store_credit_label:I

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 235
    sget v2, Lcom/oculus/horizon/R$id;->usable_store_credit:I

    invoke-virtual {p0, v2}, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 236
    const-string v4, "extra_item_store_credit_balance"

    invoke-virtual {v7, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 237
    const-string v5, "extra_item_usable_store_credit"

    invoke-virtual {v7, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 238
    if-eqz v4, :cond_4

    .line 239
    invoke-virtual {v0, v11}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 240
    sget v0, Lcom/oculus/horizon/R$string;->commerce_store_credit_available_balance:I

    new-array v6, v12, [Ljava/lang/Object;

    aput-object v4, v6, v11

    .line 241
    invoke-virtual {p0, v0, v6}, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 240
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    const-string v0, "extra_item_store_credit_warning"

    invoke-virtual {v7, v0, v11}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 245
    sget v0, Lcom/oculus/horizon/R$id;->store_credit_warning_container:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v11}, Landroid/view/View;->setVisibility(I)V

    .line 249
    :cond_4
    sget v0, Lcom/oculus/horizon/R$id;->total_price:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 250
    const-string v1, "extra_item_total_price"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 252
    sget v0, Lcom/oculus/horizon/R$id;->buy_button:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->mBuyButton:Landroid/widget/TextView;

    .line 253
    iget-boolean v0, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->mIsRental:Z

    if-eqz v0, :cond_5

    .line 254
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->mBuyButton:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->mContext:Landroid/content/Context;

    sget v2, Lcom/oculus/horizon/R$string;->in_app_rental_string:I

    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 256
    :cond_5
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->mBuyButton:Landroid/widget/TextView;

    new-instance v1, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity$2;

    invoke-direct {v1, p0, v3}, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity$2;-><init>(Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 270
    const-string v0, "extra_quality_rating_average"

    const/4 v1, 0x0

    invoke-virtual {v7, v0, v1}, Landroid/content/Intent;->getFloatExtra(Ljava/lang/String;F)F

    move-result v8

    .line 271
    const-string v0, "extra_quality_rating_count"

    invoke-virtual {v7, v0, v11}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v9

    .line 273
    sget v0, Lcom/oculus/horizon/R$id;->rating_text:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 274
    sget v1, Lcom/oculus/horizon/R$id;->rating_count:I

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 275
    sget v2, Lcom/oculus/horizon/R$id;->rating_stars:I

    invoke-virtual {p0, v2}, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/oculus/horizon/widget/RatingView;

    .line 276
    sget v3, Lcom/oculus/horizon/R$id;->comfort_image:I

    invoke-virtual {p0, v3}, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 277
    sget v4, Lcom/oculus/horizon/R$id;->comfort_text:I

    invoke-virtual {p0, v4}, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    .line 278
    sget v5, Lcom/oculus/horizon/R$id;->terms_of_service:I

    invoke-virtual {p0, v5}, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    .line 280
    iget-object v6, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->mAreTermsOfServiceEnabled:Ljavax/inject/Provider;

    invoke-interface {v6}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_b

    .line 281
    if-eqz v9, :cond_7

    .line 282
    invoke-virtual {v2, v8}, Lcom/oculus/horizon/widget/RatingView;->setRating(F)V

    .line 283
    const-string v2, "%.1f"

    new-array v6, v12, [Ljava/lang/Object;

    .line 284
    invoke-static {v8}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    aput-object v8, v6, v11

    invoke-static {v2, v6}, Lcom/facebook/common/util/StringLocaleUtil;->formatStrLocaleSensitive(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 283
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 285
    const-string v0, "%,d"

    new-array v2, v12, [Ljava/lang/Object;

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v2, v11

    invoke-static {v0, v2}, Lcom/facebook/common/util/StringLocaleUtil;->formatStrLocaleSensitive(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 292
    :goto_1
    const-string v0, "extra_comfort_rating"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 293
    const-string v1, "extra_comfort_rating_name"

    invoke-virtual {v7, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 294
    if-eqz v0, :cond_9

    .line 295
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    if-eqz v1, :cond_9

    .line 297
    invoke-virtual {v1}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    .line 298
    invoke-virtual {v4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 299
    invoke-static {v0}, Lcom/oculus/horizon/pdp/ComfortRating;->getComfortRatingIconResourceId(Ljava/lang/String;)I

    move-result v0

    .line 300
    const/4 v1, -0x1

    if-eq v0, v1, :cond_8

    .line 301
    invoke-virtual {v3, v11}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 302
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 311
    :goto_2
    const-string v0, "extra_terms_of_service"

    invoke-virtual {v7, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 312
    if-eqz v0, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_a

    .line 313
    iget-object v1, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->mContext:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget v2, Lcom/oculus/horizon/R$string;->terms_of_service:I

    .line 316
    invoke-virtual {p0, v2}, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget v2, Lcom/oculus/horizon/R$string;->terms_of_service:I

    .line 317
    invoke-virtual {p0, v2}, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v3, "https://www.oculus.com/legal/terms-of-service"

    .line 318
    invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 314
    invoke-static {v1, v0, v2, v3}, Lcom/oculus/horizon/util/TextSpanUtils;->makeLink(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 313
    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 320
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v5, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 333
    :goto_3
    iget-object v0, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    const-string v1, "purchase_summary"

    iget-object v2, p0, Lcom/oculus/horizon/payments/ui/PurchaseSummaryActivity;->mOfferID:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/logging/OculusLogger;->reportCheckoutView(Ljava/lang/String;Ljava/lang/String;)V

    .line 334
    return-void

    .line 190
    :cond_6
    invoke-virtual {v0, v10}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    goto/16 :goto_0

    .line 287
    :cond_7
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 288
    invoke-virtual {v2, v10}, Lcom/oculus/horizon/widget/RatingView;->setVisibility(I)V

    .line 289
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_1

    .line 304
    :cond_8
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_2

    .line 307
    :cond_9
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 308
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 322
    :cond_a
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3

    .line 325
    :cond_b
    invoke-virtual {v3, v10}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 326
    invoke-virtual {v4, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 327
    invoke-virtual {v0, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 328
    invoke-virtual {v1, v10}, Landroid/widget/TextView;->setVisibility(I)V

    .line 329
    invoke-virtual {v2, v10}, Lcom/oculus/horizon/widget/RatingView;->setVisibility(I)V

    .line 330
    invoke-virtual {v5, v10}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_3
.end method
