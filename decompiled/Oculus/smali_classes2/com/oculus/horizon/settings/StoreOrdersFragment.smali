.class public Lcom/oculus/horizon/settings/StoreOrdersFragment;
.super Lcom/oculus/horizon/settings/SubSettingsBaseFragment;
.source "StoreOrdersFragment.java"

# interfaces
.implements Lcom/oculus/horizon/payments/RefundFlowModel$OnStateChangedListener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private final mCommerceEventBus:Lcom/oculus/horizon/payments/events/CommerceEventBus;

.field private mDebugErrorToaster:Lcom/oculus/horizon/debug/DebugErrorToaster;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

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

.field private mLibraryCacheSQLHelper:Lcom/oculus/horizon/library/cache/LibraryCacheSQLHelper;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mLoadingIndicator:Landroid/widget/ProgressBar;

.field private mNoOrdersView:Lcom/oculus/horizon/widget/EmptyErrorView;

.field private mOVRLibraryInternal:Lcom/oculus/libraryapi/OVRLibraryInternal;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOrdersRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mRefundFlowModel:Lcom/oculus/horizon/payments/RefundFlowModel;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/StoreOrdersFragment;)V
    .locals 1

    .prologue
    .line 54
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/settings/StoreOrdersFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/StoreOrdersFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/settings/StoreOrdersFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/StoreOrdersFragment;)V
    .locals 1

    .prologue
    .line 54
    invoke-static {p0}, Lcom/oculus/horizon/api/ApiRequestManager;->$ul_$xXXcom_oculus_horizon_api_ApiRequestManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/api/ApiRequestManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-static {p0}, Lcom/oculus/horizon/debug/DebugErrorToaster;->$ul_$xXXcom_oculus_horizon_debug_DebugErrorToaster$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/debug/DebugErrorToaster;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mDebugErrorToaster:Lcom/oculus/horizon/debug/DebugErrorToaster;

    invoke-static {p0}, Lcom/oculus/horizon/main/MainModule;->$ul_$xXXcom_facebook_inject_Lazy$x3Ccom_oculus_horizon_fragmentfactory_FragmentFactory$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/inject/Lazy;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mFragmentFactoryLazy:Lcom/facebook/inject/Lazy;

    invoke-static {p0}, Lcom/oculus/libraryapi/OVRLibraryModule;->$ul_$xXXcom_oculus_libraryapi_OVRLibraryInternal$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/libraryapi/OVRLibraryInternal;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mOVRLibraryInternal:Lcom/oculus/libraryapi/OVRLibraryInternal;

    invoke-static {p0}, Lcom/oculus/horizon/library/cache/LibraryCacheSQLHelper;->$ul_$xXXcom_oculus_horizon_library_cache_LibraryCacheSQLHelper$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/library/cache/LibraryCacheSQLHelper;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mLibraryCacheSQLHelper:Lcom/oculus/horizon/library/cache/LibraryCacheSQLHelper;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 57
    const-class v0, Lcom/oculus/horizon/settings/StoreOrdersFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;-><init>()V

    .line 58
    invoke-static {}, Lcom/oculus/horizon/payments/events/CommerceEventBus;->getInstance()Lcom/oculus/horizon/payments/events/CommerceEventBus;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mCommerceEventBus:Lcom/oculus/horizon/payments/events/CommerceEventBus;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/settings/StoreOrdersFragment;)Lcom/facebook/inject/Lazy;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mFragmentFactoryLazy:Lcom/facebook/inject/Lazy;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/settings/StoreOrdersFragment;Lcom/oculus/horizon/api/commerce/OrdersResponse;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0, p1}, Lcom/oculus/horizon/settings/StoreOrdersFragment;->onOrdersResponse(Lcom/oculus/horizon/api/commerce/OrdersResponse;)V

    return-void
.end method

.method static synthetic access$200()Ljava/lang/String;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/settings/StoreOrdersFragment;)V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Lcom/oculus/horizon/settings/StoreOrdersFragment;->showErrorView()V

    return-void
.end method

.method static synthetic access$400(Lcom/oculus/horizon/settings/StoreOrdersFragment;)Lcom/oculus/horizon/debug/DebugErrorToaster;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mDebugErrorToaster:Lcom/oculus/horizon/debug/DebugErrorToaster;

    return-object v0
.end method

.method private onOrdersResponse(Lcom/oculus/horizon/api/commerce/OrdersResponse;)V
    .locals 6

    .prologue
    .line 191
    iget-object v4, p1, Lcom/oculus/horizon/api/commerce/OrdersResponse;->payment_account:Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount;

    .line 192
    if-nez v4, :cond_0

    .line 193
    invoke-direct {p0}, Lcom/oculus/horizon/settings/StoreOrdersFragment;->showNoOrdersView()V

    .line 216
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, v4, Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount;->digital_orders:Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrders;

    iget-object v0, v0, Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrders;->nodes:Ljava/util/List;

    invoke-static {v0}, Lcom/oculus/util/collection/CollectionUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 198
    invoke-direct {p0}, Lcom/oculus/horizon/settings/StoreOrdersFragment;->showNoOrdersView()V

    goto :goto_0

    .line 202
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/StoreOrdersFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 203
    new-instance v0, Lcom/oculus/horizon/settings/StoreOrdersAdapter;

    .line 206
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    iget-object v3, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mOVRLibraryInternal:Lcom/oculus/libraryapi/OVRLibraryInternal;

    iget-object v4, v4, Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount;->digital_orders:Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrders;

    iget-object v4, v4, Lcom/oculus/horizon/api/commerce/OrdersResponse$PaymentAccount$DigitalOrders;->nodes:Ljava/util/List;

    iget-object v5, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mLibraryCacheSQLHelper:Lcom/oculus/horizon/library/cache/LibraryCacheSQLHelper;

    invoke-direct/range {v0 .. v5}, Lcom/oculus/horizon/settings/StoreOrdersAdapter;-><init>(Landroid/content/Context;Landroid/view/LayoutInflater;Lcom/oculus/libraryapi/OVRLibraryInternal;Ljava/util/List;Lcom/oculus/horizon/library/cache/LibraryCacheSQLHelper;)V

    .line 210
    iget-object v2, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mOrdersRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 211
    iget-object v2, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mOrdersRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v3, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 212
    iget-object v2, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mOrdersRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v3, Lcom/oculus/horizon/util/ui/LineDividerDecoration;

    invoke-direct {v3, v1}, Lcom/oculus/horizon/util/ui/LineDividerDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 213
    iget-object v1, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mOrdersRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 215
    invoke-direct {p0}, Lcom/oculus/horizon/settings/StoreOrdersFragment;->showOrdersView()V

    goto :goto_0
.end method

.method private onRefundFlowComplete(Lcom/oculus/horizon/payments/RefundFlowModel;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 237
    sget-object v0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->TAG:Ljava/lang/String;

    const-string v1, "Refund flow complete for: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/oculus/horizon/payments/RefundFlowModel;->getItemId()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 239
    new-instance v0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    .line 240
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/StoreOrdersFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/oculus/horizon/R$string;->commerce_refund_request_submitted:I

    new-array v2, v4, [Ljava/lang/Object;

    .line 241
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTitle(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->commerce_refund_request_submitted_info:I

    new-array v2, v4, [Ljava/lang/Object;

    .line 242
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setMessage(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_ok:I

    .line 243
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setPositiveButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    .line 244
    invoke-virtual {v0}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->build()Lcom/oculus/horizon/modal/AlertDialogFragment;

    move-result-object v0

    .line 245
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/StoreOrdersFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 246
    return-void
.end method

.method private onRefundFlowError(Lcom/oculus/horizon/payments/RefundFlowModel;)V
    .locals 5

    .prologue
    .line 249
    sget-object v0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->TAG:Ljava/lang/String;

    const-string v1, "Failed to refund order: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p1}, Lcom/oculus/horizon/payments/RefundFlowModel;->getErrorMsg()Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 251
    invoke-direct {p0}, Lcom/oculus/horizon/settings/StoreOrdersFragment;->showOrdersView()V

    .line 252
    new-instance v0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    .line 253
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/StoreOrdersFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;-><init>(Landroid/content/Context;)V

    .line 254
    invoke-virtual {p1}, Lcom/oculus/horizon/payments/RefundFlowModel;->getErrorTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTitle(Ljava/lang/String;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    .line 255
    invoke-virtual {p1}, Lcom/oculus/horizon/payments/RefundFlowModel;->getErrorMsg()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setMessage(Ljava/lang/String;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_ok:I

    .line 256
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setPositiveButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    .line 257
    invoke-virtual {v0}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->build()Lcom/oculus/horizon/modal/AlertDialogFragment;

    move-result-object v0

    .line 258
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/StoreOrdersFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 259
    return-void
.end method

.method private onRefundNotAvailableError(Lcom/oculus/horizon/payments/RefundFlowModel;)V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 262
    sget-object v0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->TAG:Ljava/lang/String;

    const-string v1, "Refund not available for the selected item"

    invoke-static {v0, v1}, Lcom/facebook/debug/log/BLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    .line 264
    invoke-direct {p0}, Lcom/oculus/horizon/settings/StoreOrdersFragment;->showOrdersView()V

    .line 266
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/StoreOrdersFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 267
    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$layout;->refund_not_available_error:I

    invoke-virtual {v0, v1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 268
    sget v0, Lcom/oculus/horizon/R$id;->details:I

    invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 269
    sget v1, Lcom/oculus/horizon/R$id;->support:I

    invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 271
    sget v4, Lcom/oculus/horizon/R$string;->commerce_refund_policy_label:I

    invoke-virtual {p0, v4}, Lcom/oculus/horizon/settings/StoreOrdersFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 272
    sget v5, Lcom/oculus/horizon/R$string;->common_oculus_support:I

    invoke-virtual {p0, v5}, Lcom/oculus/horizon/settings/StoreOrdersFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 277
    invoke-virtual {p1}, Lcom/oculus/horizon/payments/RefundFlowModel;->getErrorMsg()Ljava/lang/String;

    move-result-object v6

    const-string v7, "https://www.oculus.com/legal/return-policy"

    .line 279
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v7

    .line 275
    invoke-static {v2, v6, v4, v7}, Lcom/oculus/horizon/util/TextSpanUtils;->makeLink(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/CharSequence;

    move-result-object v4

    .line 274
    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 280
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v4

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 282
    sget v0, Lcom/oculus/horizon/R$string;->commerce_refund_not_available_error_more_info:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 285
    invoke-virtual {p0, v0, v4}, Lcom/oculus/horizon/settings/StoreOrdersFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v4, "https://support.oculus.com/"

    .line 287
    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    .line 283
    invoke-static {v2, v0, v5, v4}, Lcom/oculus/horizon/util/TextSpanUtils;->makeLink(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/CharSequence;

    move-result-object v0

    .line 282
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 288
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 290
    new-instance v0, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    invoke-direct {v0, v2}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 291
    invoke-virtual {p1}, Lcom/oculus/horizon/payments/RefundFlowModel;->getErrorTitle()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    .line 292
    invoke-virtual {v0, v3}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setView(Landroid/view/View;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_ok:I

    .line 293
    invoke-virtual {v0, v1, v8}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->setPositiveButton(ILcom/oculus/horizon/widget/CustomAlertDialog$OnClickListener;)Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;

    move-result-object v0

    .line 294
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomAlertDialog$Builder;->build()Lcom/oculus/horizon/widget/CustomAlertDialog;

    move-result-object v0

    .line 295
    invoke-virtual {v0}, Lcom/oculus/horizon/widget/CustomAlertDialog;->show()V

    .line 296
    return-void
.end method

.method private refresh()V
    .locals 3

    .prologue
    .line 167
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    new-instance v1, Lcom/oculus/horizon/api/commerce/OrdersRequest;

    invoke-direct {v1}, Lcom/oculus/horizon/api/commerce/OrdersRequest;-><init>()V

    new-instance v2, Lcom/oculus/horizon/settings/StoreOrdersFragment$2;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/settings/StoreOrdersFragment$2;-><init>(Lcom/oculus/horizon/settings/StoreOrdersFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/api/ApiRequestManager;->post(Lcom/oculus/http/core/base/ApiRequest;Lcom/oculus/http/core/base/ApiCallback;)V

    .line 188
    return-void
.end method

.method private showErrorView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 320
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 321
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mOrdersRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 322
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mNoOrdersView:Lcom/oculus/horizon/widget/EmptyErrorView;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/EmptyErrorView;->setVisibility(I)V

    .line 323
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/EmptyErrorView;->setVisibility(I)V

    .line 324
    return-void
.end method

.method private showLoadingView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 299
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 300
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mOrdersRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 301
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mNoOrdersView:Lcom/oculus/horizon/widget/EmptyErrorView;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/EmptyErrorView;->setVisibility(I)V

    .line 302
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/EmptyErrorView;->setVisibility(I)V

    .line 303
    return-void
.end method

.method private showNoOrdersView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 313
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 314
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mOrdersRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 315
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mNoOrdersView:Lcom/oculus/horizon/widget/EmptyErrorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/EmptyErrorView;->setVisibility(I)V

    .line 316
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/EmptyErrorView;->setVisibility(I)V

    .line 317
    return-void
.end method

.method private showOrdersView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 306
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 307
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mOrdersRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 308
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mNoOrdersView:Lcom/oculus/horizon/widget/EmptyErrorView;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/EmptyErrorView;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/EmptyErrorView;->setVisibility(I)V

    .line 310
    return-void
.end method


# virtual methods
.method protected getTitleBarTextResourceId()I
    .locals 1

    .prologue
    .line 163
    sget v0, Lcom/oculus/horizon/R$string;->settings_purchase_history:I

    return v0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 124
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->SETTINGS_ORDERS:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 74
    invoke-super {p0, p1}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 54
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/StoreOrdersFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/settings/StoreOrdersFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/StoreOrdersFragment;)V

    .line 76
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 81
    sget v0, Lcom/oculus/horizon/R$layout;->settings_orders_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 155
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/ApiRequestManager;->destroy()V

    .line 156
    invoke-static {v1}, Lcom/oculus/horizon/payments/RefundFlowModel;->resetInstance(Lcom/oculus/horizon/payments/RefundFlowModel$OnStateChangedListener;)Lcom/oculus/horizon/payments/RefundFlowModel;

    .line 157
    iput-object v1, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mRefundFlowModel:Lcom/oculus/horizon/payments/RefundFlowModel;

    .line 158
    invoke-super {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onDestroy()V

    .line 159
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 148
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/ApiRequestManager;->pause()V

    .line 149
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mCommerceEventBus:Lcom/oculus/horizon/payments/events/CommerceEventBus;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/payments/events/CommerceEventBus;->unregister(Ljava/lang/Object;)V

    .line 150
    invoke-super {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onPause()V

    .line 151
    return-void
.end method

.method public onRequestRefundEvent(Lcom/oculus/horizon/payments/events/RequestRefundEvent;)V
    .locals 6
    .annotation runtime Lcom/squareup/otto/Subscribe;
    .end annotation

    .prologue
    .line 222
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/oculus/horizon/payments/RefundFlowModel;->resetInstance(Lcom/oculus/horizon/payments/RefundFlowModel$OnStateChangedListener;)Lcom/oculus/horizon/payments/RefundFlowModel;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mRefundFlowModel:Lcom/oculus/horizon/payments/RefundFlowModel;

    .line 223
    iget-object v0, p1, Lcom/oculus/horizon/payments/events/RequestRefundEvent;->app:Lcom/oculus/library/model/App;

    .line 224
    invoke-direct {p0}, Lcom/oculus/horizon/settings/StoreOrdersFragment;->showLoadingView()V

    .line 226
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 227
    const-string v2, "ITEM_ID"

    iget-object v3, v0, Lcom/oculus/library/model/App;->id:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 228
    const-string v2, "PLAY_TIME"

    sget-object v3, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    iget-wide v4, v0, Lcom/oculus/library/model/App;->totalActivityMs:J

    .line 229
    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v4

    .line 228
    invoke-virtual {v1, v2, v4, v5}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 230
    const-string v0, "LIBRARY_TS"

    iget-wide v2, p1, Lcom/oculus/horizon/payments/events/RequestRefundEvent;->libraryCreationTimestamp:J

    invoke-virtual {v1, v0, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V

    .line 231
    new-instance v0, Lcom/oculus/horizon/settings/RequestRefundFragment;

    invoke-direct {v0}, Lcom/oculus/horizon/settings/RequestRefundFragment;-><init>()V

    .line 232
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/settings/RequestRefundFragment;->setArguments(Landroid/os/Bundle;)V

    .line 233
    new-instance v1, Lcom/oculus/horizon/navigation/FragmentNavigator;

    invoke-virtual {p0}, Lcom/oculus/horizon/settings/StoreOrdersFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    .line 234
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 129
    invoke-super {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onResume()V

    .line 130
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/StoreOrdersFragment;->updateTitleBarText()V

    .line 131
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mCommerceEventBus:Lcom/oculus/horizon/payments/events/CommerceEventBus;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/payments/events/CommerceEventBus;->register(Ljava/lang/Object;)V

    .line 132
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mApiRequestManager:Lcom/oculus/horizon/api/ApiRequestManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/ApiRequestManager;->resume()V

    .line 133
    invoke-direct {p0}, Lcom/oculus/horizon/settings/StoreOrdersFragment;->refresh()V

    .line 135
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mRefundFlowModel:Lcom/oculus/horizon/payments/RefundFlowModel;

    invoke-virtual {v0}, Lcom/oculus/horizon/payments/RefundFlowModel;->getState()Lcom/oculus/horizon/payments/RefundFlowModel$State;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/payments/RefundFlowModel$State;->RESET:Lcom/oculus/horizon/payments/RefundFlowModel$State;

    if-eq v0, v1, :cond_1

    .line 136
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mRefundFlowModel:Lcom/oculus/horizon/payments/RefundFlowModel;

    invoke-virtual {v0}, Lcom/oculus/horizon/payments/RefundFlowModel;->getState()Lcom/oculus/horizon/payments/RefundFlowModel$State;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/payments/RefundFlowModel$State;->ERROR:Lcom/oculus/horizon/payments/RefundFlowModel$State;

    if-ne v0, v1, :cond_2

    .line 137
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mRefundFlowModel:Lcom/oculus/horizon/payments/RefundFlowModel;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/settings/StoreOrdersFragment;->onRefundFlowError(Lcom/oculus/horizon/payments/RefundFlowModel;)V

    .line 142
    :cond_0
    :goto_0
    invoke-static {p0}, Lcom/oculus/horizon/payments/RefundFlowModel;->resetInstance(Lcom/oculus/horizon/payments/RefundFlowModel$OnStateChangedListener;)Lcom/oculus/horizon/payments/RefundFlowModel;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mRefundFlowModel:Lcom/oculus/horizon/payments/RefundFlowModel;

    .line 144
    :cond_1
    return-void

    .line 138
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mRefundFlowModel:Lcom/oculus/horizon/payments/RefundFlowModel;

    invoke-virtual {v0}, Lcom/oculus/horizon/payments/RefundFlowModel;->getState()Lcom/oculus/horizon/payments/RefundFlowModel$State;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/payments/RefundFlowModel$State;->REFUNDED:Lcom/oculus/horizon/payments/RefundFlowModel$State;

    if-ne v0, v1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mRefundFlowModel:Lcom/oculus/horizon/payments/RefundFlowModel;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/settings/StoreOrdersFragment;->onRefundFlowComplete(Lcom/oculus/horizon/payments/RefundFlowModel;)V

    goto :goto_0
.end method

.method public onStateChanged()V
    .locals 2

    .prologue
    .line 115
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mRefundFlowModel:Lcom/oculus/horizon/payments/RefundFlowModel;

    invoke-virtual {v0}, Lcom/oculus/horizon/payments/RefundFlowModel;->getState()Lcom/oculus/horizon/payments/RefundFlowModel$State;

    move-result-object v0

    sget-object v1, Lcom/oculus/horizon/payments/RefundFlowModel$State;->ERROR:Lcom/oculus/horizon/payments/RefundFlowModel$State;

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mRefundFlowModel:Lcom/oculus/horizon/payments/RefundFlowModel;

    .line 116
    invoke-virtual {v0}, Lcom/oculus/horizon/payments/RefundFlowModel;->getErrorCode()I

    move-result v0

    const v1, 0x1cdbbe

    if-ne v0, v1, :cond_0

    .line 117
    iget-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mRefundFlowModel:Lcom/oculus/horizon/payments/RefundFlowModel;

    invoke-direct {p0, v0}, Lcom/oculus/horizon/settings/StoreOrdersFragment;->onRefundNotAvailableError(Lcom/oculus/horizon/payments/RefundFlowModel;)V

    .line 118
    invoke-static {p0}, Lcom/oculus/horizon/payments/RefundFlowModel;->resetInstance(Lcom/oculus/horizon/payments/RefundFlowModel$OnStateChangedListener;)Lcom/oculus/horizon/payments/RefundFlowModel;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mRefundFlowModel:Lcom/oculus/horizon/payments/RefundFlowModel;

    .line 120
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 86
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 88
    sget v0, Lcom/oculus/horizon/R$id;->loading_indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 89
    sget v0, Lcom/oculus/horizon/R$id;->orders_recycler_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mOrdersRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 90
    sget v0, Lcom/oculus/horizon/R$id;->no_orders_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/EmptyErrorView;

    iput-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mNoOrdersView:Lcom/oculus/horizon/widget/EmptyErrorView;

    .line 91
    sget v0, Lcom/oculus/horizon/R$id;->error_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/EmptyErrorView;

    iput-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    .line 93
    new-instance v0, Lcom/oculus/horizon/settings/StoreOrdersFragment$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/settings/StoreOrdersFragment$1;-><init>(Lcom/oculus/horizon/settings/StoreOrdersFragment;)V

    .line 103
    iget-object v1, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mNoOrdersView:Lcom/oculus/horizon/widget/EmptyErrorView;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/widget/EmptyErrorView;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 104
    iget-object v1, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    invoke-virtual {v1, v0}, Lcom/oculus/horizon/widget/EmptyErrorView;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    invoke-static {p0}, Lcom/oculus/horizon/payments/RefundFlowModel;->resetInstance(Lcom/oculus/horizon/payments/RefundFlowModel$OnStateChangedListener;)Lcom/oculus/horizon/payments/RefundFlowModel;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/settings/StoreOrdersFragment;->mRefundFlowModel:Lcom/oculus/horizon/payments/RefundFlowModel;

    .line 108
    invoke-direct {p0}, Lcom/oculus/horizon/settings/StoreOrdersFragment;->showLoadingView()V

    .line 109
    return-void
.end method
