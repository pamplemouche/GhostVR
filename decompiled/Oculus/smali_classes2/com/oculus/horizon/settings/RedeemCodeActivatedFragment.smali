.class public Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;
.super Lcom/oculus/horizon/settings/SubSettingsBaseFragment;
.source "RedeemCodeActivatedFragment.java"

# interfaces
.implements Lcom/oculus/horizon/common/BackPressListener;
.implements Lcom/oculus/horizon/modal/AlertDialogFragment$OnClickListener;
.implements Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter$BundleSelectedListener;


# instance fields
.field private mActionButton:Landroid/widget/Button;

.field private mActivatedItemsContainer:Landroid/widget/LinearLayout;

.field private mBundleIds:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mBundleIdsToBundlesHashMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/api/common/ParcelableBundle;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mBundleInstallationHelper:Lcom/oculus/horizon/store/BundleInstallationHelper;

.field private mBundleInstallationHelperProvider:Lcom/oculus/horizon/store/BundleInstallationHelperProvider;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mBundlesSelectionContainer:Landroid/widget/LinearLayout;

.field private mCode:Ljava/lang/String;

.field private mCodeActivatedContainer:Landroid/widget/RelativeLayout;

.field private mDidUserConfirmExit:Z

.field private mExpandableBundlesAdapter:Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter;

.field private mExpandableBundlesListView:Landroid/widget/ExpandableListView;

.field private mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mHasCompletedRedemption:Z

.field private mItemsContainer:Landroid/widget/LinearLayout;

.field private mItemsTable:Landroid/widget/LinearLayout;

.field private mLastSelectedBundlePosition:I

.field private mLayoutInflater:Landroid/view/LayoutInflater;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mLoadingIndicator:Landroid/widget/ProgressBar;

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPurchaseMethods:Lcom/oculus/horizon/commerce/PurchaseMethods;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mStoreCreditContainer:Landroid/widget/LinearLayout;

.field private mStoreCredits:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/commerce/StoreCreditModel$SubcreditModel;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mStoreCreditsTable:Landroid/widget/LinearLayout;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;)V
    .locals 1

    .prologue
    .line 59
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;)V
    .locals 1

    .prologue
    .line 59
    invoke-static {p0}, Lcom/oculus/horizon/commerce/PurchaseMethods;->$ul_$xXXcom_oculus_horizon_commerce_PurchaseMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/commerce/PurchaseMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mPurchaseMethods:Lcom/oculus/horizon/commerce/PurchaseMethods;

    invoke-static {p0}, Lcom/facebook/common/android/AndroidModule;->$ul_$xXXandroid_view_LayoutInflater$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    invoke-static {p0}, Lcom/oculus/libraryapi/OVRLibraryModule;->$ul_$xXXcom_oculus_libraryapi_OVRLibraryInternal$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/libraryapi/OVRLibraryInternal;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    invoke-static {p0}, Lcom/oculus/horizon/store/BundleInstallationHelper;->$ul_$xXXcom_oculus_horizon_store_BundleInstallationHelperProvider$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/store/BundleInstallationHelperProvider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundleInstallationHelperProvider:Lcom/oculus/horizon/store/BundleInstallationHelperProvider;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-static {p0}, Lcom/oculus/horizon/main/MainModule;->$ul_$xXXcom_oculus_horizon_fragmentfactory_FragmentFactory$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;-><init>()V

    .line 102
    const/4 v0, -0x1

    iput v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mLastSelectedBundlePosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->showAppropriatePermissionsTab(Ljava/util/List;)V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;)Ljava/util/List;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundleIds:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;)Ljava/util/HashMap;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundleIdsToBundlesHashMap:Ljava/util/HashMap;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;)I
    .locals 1

    .prologue
    .line 59
    iget v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mLastSelectedBundlePosition:I

    return v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->showClaimBundleModal(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$500(Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;Lcom/oculus/horizon/commerce/RedeemCodeResponse;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->onClaimSelectionResponse(Lcom/oculus/horizon/commerce/RedeemCodeResponse;)V

    return-void
.end method

.method static synthetic access$600(Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->stopLoadingState()V

    return-void
.end method

.method static synthetic access$700(Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 59
    invoke-direct {p0, p1}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->showErrorToast(Ljava/lang/String;)V

    return-void
.end method

.method private claimSelection()V
    .locals 6

    .prologue
    .line 341
    iget v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mLastSelectedBundlePosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundleIds:Ljava/util/List;

    if-nez v0, :cond_1

    .line 342
    :cond_0
    invoke-direct {p0}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->stopLoadingState()V

    .line 343
    sget v0, Lcom/oculus/horizon/R$string;->commerce_redeem_code_claim_bundle_failed:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->showErrorToast(Ljava/lang/String;)V

    .line 369
    :goto_0
    return-void

    .line 346
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/util/device/DeviceUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 347
    iget-object v2, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mPurchaseMethods:Lcom/oculus/horizon/commerce/PurchaseMethods;

    new-instance v3, Lcom/oculus/horizon/commerce/RedeemCodeParams;

    iget-object v4, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mCode:Ljava/lang/String;

    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundleIds:Ljava/util/List;

    iget v5, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mLastSelectedBundlePosition:I

    .line 348
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {v3, v4, v0, v1}, Lcom/oculus/horizon/commerce/RedeemCodeParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment$4;

    invoke-direct {v0, p0, p0}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment$4;-><init>(Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;Lcom/oculus/horizon/base/OculusBaseFragment;)V

    .line 347
    invoke-virtual {v2, v3, v0}, Lcom/oculus/horizon/commerce/PurchaseMethods;->redeemCode(Lcom/oculus/horizon/commerce/RedeemCodeParams;Lretrofit/Callback;)V

    goto :goto_0
.end method

.method protected static getBundleName(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;I)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/api/common/ParcelableBundle;",
            ">;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .line 328
    const/4 v0, 0x0

    .line 329
    invoke-static {p1}, Lcom/oculus/util/collection/CollectionUtil;->isNotNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 330
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    if-ge p3, v1, :cond_0

    if-eqz p2, :cond_0

    .line 332
    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/ParcelableBundle;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/ParcelableBundle;->displayName:Ljava/lang/String;

    .line 334
    :cond_0
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 335
    sget v0, Lcom/oculus/horizon/R$string;->store_bundle:I

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 337
    :cond_1
    return-object v0
.end method

.method private onClaimSelectionResponse(Lcom/oculus/horizon/commerce/RedeemCodeResponse;)V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 376
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mStoreCredits:Ljava/util/List;

    .line 377
    invoke-virtual {p1}, Lcom/oculus/horizon/commerce/RedeemCodeResponse;->getStoreCredits()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit$Subcredits$Subcredit;

    .line 378
    iget-object v2, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mStoreCredits:Ljava/util/List;

    invoke-static {v0}, Lcom/oculus/horizon/commerce/StoreCreditModel$SubcreditModel;->from(Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit$Subcredits$Subcredit;)Lcom/oculus/horizon/commerce/StoreCreditModel$SubcreditModel;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 380
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 381
    invoke-virtual {p1}, Lcom/oculus/horizon/commerce/RedeemCodeResponse;->getAppEntitlements()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Entitlement;

    .line 382
    iget-object v0, v0, Lcom/oculus/horizon/api/common/Entitlement;->item:Lcom/oculus/horizon/api/common/Item;

    invoke-static {v0}, Lcom/oculus/horizon/api/common/ParcelableItem;->from(Lcom/oculus/horizon/api/common/Item;)Lcom/oculus/horizon/api/common/ParcelableItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 384
    :cond_1
    invoke-virtual {p1}, Lcom/oculus/horizon/commerce/RedeemCodeResponse;->getInAppEntitlements()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v2

    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/InAppItemEntitlement;

    .line 385
    iget-object v0, v0, Lcom/oculus/horizon/api/common/InAppItemEntitlement;->item:Lcom/oculus/horizon/api/common/InAppItem;

    invoke-static {v0}, Lcom/oculus/horizon/api/common/ParcelableItem;->from(Lcom/oculus/horizon/api/common/InAppItem;)Lcom/oculus/horizon/api/common/ParcelableItem;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 387
    :cond_2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundleIds:Ljava/util/List;

    .line 388
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundleIdsToBundlesHashMap:Ljava/util/HashMap;

    .line 389
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundleIds:Ljava/util/List;

    const-string v2, "fake_default_item_id"

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 390
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundleIdsToBundlesHashMap:Ljava/util/HashMap;

    const-string v2, "fake_default_item_id"

    new-instance v3, Lcom/oculus/horizon/api/common/ParcelableBundle;

    invoke-direct {v3, v4, v4, v1}, Lcom/oculus/horizon/api/common/ParcelableBundle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    invoke-direct {p0}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->refresh()V

    .line 394
    invoke-direct {p0}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->stopLoadingState()V

    .line 395
    return-void
.end method

.method private refresh()V
    .locals 14

    .prologue
    const/4 v13, 0x1

    const/16 v12, 0x8

    const/4 v9, 0x0

    .line 197
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mStoreCredits:Ljava/util/List;

    invoke-static {v0}, Lcom/oculus/util/collection/CollectionUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 198
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mStoreCreditContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 217
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundleIds:Ljava/util/List;

    invoke-static {v0}, Lcom/oculus/util/collection/CollectionUtil;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundleIdsToBundlesHashMap:Ljava/util/HashMap;

    .line 218
    invoke-static {v0}, Lcom/oculus/util/collection/CollectionUtil;->isNullOrEmpty(Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 219
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 220
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundlesSelectionContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 221
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mActionButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$string;->common_ok:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 222
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mActionButton:Landroid/widget/Button;

    new-instance v1, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment$1;-><init>(Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 314
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mStoreCreditContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v12, :cond_7

    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mItemsContainer:Landroid/widget/LinearLayout;

    .line 315
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getVisibility()I

    move-result v0

    if-ne v0, v12, :cond_7

    .line 316
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mActivatedItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 320
    :goto_1
    return-void

    .line 200
    :cond_3
    iput-boolean v13, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mHasCompletedRedemption:Z

    .line 202
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mStoreCreditContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    move v3, v9

    .line 203
    :goto_2
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mStoreCredits:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_0

    .line 204
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mStoreCredits:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/commerce/StoreCreditModel$SubcreditModel;

    .line 205
    iget-object v1, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mLayoutInflater:Landroid/view/LayoutInflater;

    sget v2, Lcom/oculus/horizon/R$layout;->store_credit_row_item:I

    iget-object v4, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mStoreCreditsTable:Landroid/widget/LinearLayout;

    .line 206
    invoke-virtual {v1, v2, v4, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v4

    .line 207
    sget v1, Lcom/oculus/horizon/R$id;->value:I

    invoke-virtual {v4, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 208
    sget v2, Lcom/oculus/horizon/R$id;->expiration_date:I

    invoke-virtual {v4, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 209
    iget-object v5, v0, Lcom/oculus/horizon/commerce/StoreCreditModel$SubcreditModel;->formattedAmount:Ljava/lang/String;

    invoke-virtual {v1, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 210
    const-string v1, "dd MMMM yyyy"

    iget-object v0, v0, Lcom/oculus/horizon/commerce/StoreCreditModel$SubcreditModel;->expirationDate:Ljava/util/Calendar;

    .line 212
    invoke-virtual {v0}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v6

    const-wide/16 v10, 0x3e8

    div-long/2addr v6, v10

    .line 211
    invoke-static {v1, v6, v7}, Lcom/oculus/horizon/util/DateUtils;->format(Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    .line 210
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 213
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mStoreCreditsTable:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v4, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;I)V

    .line 203
    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_2

    .line 229
    :cond_4
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundleIds:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ne v0, v13, :cond_5

    .line 230
    iput-boolean v13, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mHasCompletedRedemption:Z

    .line 232
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundlesSelectionContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 235
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundleIdsToBundlesHashMap:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundleIds:Ljava/util/List;

    .line 237
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/ParcelableBundle;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/ParcelableBundle;->bundleItems:Ljava/util/List;

    sget-object v1, Lcom/oculus/horizon/store/StoreUtils$FilteringSet;->APPS_ONLY:Lcom/oculus/horizon/store/StoreUtils$FilteringSet;

    .line 236
    invoke-static {v0, v1}, Lcom/oculus/horizon/store/StoreUtils;->filterForSupportedItems(Ljava/util/List;Lcom/oculus/horizon/store/StoreUtils$FilteringSet;)Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    .line 239
    iget-object v1, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mActionButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oculus/horizon/R$string;->common_install_all_content:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v1, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mActionButton:Landroid/widget/Button;

    invoke-static {v0}, Lcom/oculus/util/collection/CollectionUtil;->isNotNullOrEmpty(Ljava/util/Collection;)Z

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 241
    iget-object v1, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mActionButton:Landroid/widget/Button;

    new-instance v2, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment$2;

    invoke-direct {v2, p0, v0}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment$2;-><init>(Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;Ljava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 249
    new-instance v0, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;

    .line 251
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    iget-object v3, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mItemsTable:Landroid/widget/LinearLayout;

    iget-object v4, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundleInstallationHelper:Lcom/oculus/horizon/store/BundleInstallationHelper;

    iget-object v5, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    .line 256
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    iget-object v7, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-direct/range {v0 .. v7}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Landroid/view/ViewGroup;Lcom/oculus/horizon/store/BundleInstallationHelper;Lcom/oculus/libraryapi/OVRLibraryInternal;Landroid/view/LayoutInflater;Lcom/oculus/horizon/logging/OculusLogger;)V

    .line 258
    iget-object v1, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundleIdsToBundlesHashMap:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundleIds:Ljava/util/List;

    .line 259
    invoke-interface {v2, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/horizon/api/common/ParcelableBundle;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/ParcelableBundle;->bundleItems:Ljava/util/List;

    .line 260
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/horizon/api/common/ParcelableItem;

    .line 261
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->add(Lcom/oculus/horizon/api/common/Item;)V

    .line 262
    invoke-virtual {v0}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->getItemCount()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/adapters/BundleItemAdapter;->notifyItemInserted(I)V

    goto :goto_3

    .line 265
    :cond_5
    iput-boolean v9, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mHasCompletedRedemption:Z

    .line 267
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v12}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundlesSelectionContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 270
    new-instance v0, Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter;

    .line 272
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    iget-object v3, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundleIds:Ljava/util/List;

    iget-object v4, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundleIdsToBundlesHashMap:Ljava/util/HashMap;

    iget-object v6, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundleInstallationHelper:Lcom/oculus/horizon/store/BundleInstallationHelper;

    iget-object v7, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    iget-object v8, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    move-object v5, p0

    invoke-direct/range {v0 .. v8}, Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter;-><init>(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Ljava/util/List;Ljava/util/HashMap;Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter$BundleSelectedListener;Lcom/oculus/horizon/store/BundleInstallationHelper;Lcom/oculus/libraryapi/OVRLibraryInternal;Lcom/oculus/horizon/logging/OculusLogger;)V

    iput-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mExpandableBundlesAdapter:Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter;

    .line 280
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mExpandableBundlesListView:Landroid/widget/ExpandableListView;

    iget-object v1, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mExpandableBundlesAdapter:Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setAdapter(Landroid/widget/ExpandableListAdapter;)V

    .line 282
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mActionButton:Landroid/widget/Button;

    new-instance v1, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment$3;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment$3;-><init>(Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 295
    iget v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mLastSelectedBundlePosition:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_6

    .line 296
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mActionButton:Landroid/widget/Button;

    .line 297
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$string;->settings_redeem_code_activated_select_bundle_prompt:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 296
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 298
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v9}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 304
    :cond_6
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundleIds:Ljava/util/List;

    iget-object v2, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundleIdsToBundlesHashMap:Ljava/util/HashMap;

    iget v3, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mLastSelectedBundlePosition:I

    .line 303
    invoke-static {v0, v1, v2, v3}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->getBundleName(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;I)Ljava/lang/String;

    move-result-object v0

    .line 305
    iget-object v1, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mActionButton:Landroid/widget/Button;

    .line 306
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oculus/horizon/R$string;->settings_redeem_code_activated_bundles_confirm_selection:I

    new-array v4, v13, [Ljava/lang/Object;

    aput-object v0, v4, v9

    .line 307
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 305
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 309
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v13}, Landroid/widget/Button;->setEnabled(Z)V

    goto/16 :goto_0

    .line 318
    :cond_7
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mActivatedItemsContainer:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v9}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto/16 :goto_1
.end method

.method private showAppropriatePermissionsTab(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<+",
            "Lcom/oculus/horizon/api/common/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 408
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 412
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundleInstallationHelper:Lcom/oculus/horizon/store/BundleInstallationHelper;

    const/4 v1, 0x0

    sget-object v2, Lcom/oculus/horizon/logging/TrackingViews$View;->REDEEM_CODE_ACTIVATED:Lcom/oculus/horizon/logging/TrackingViews$View;

    invoke-virtual {v0, p1, v1, v2}, Lcom/oculus/horizon/store/BundleInstallationHelper;->installWithPermissionsScreen(Ljava/util/List;Lcom/oculus/model/BundleModel;Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 415
    :pswitch_0
    return-void

    .line 408
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private showClaimBundleModal(Ljava/lang/String;)V
    .locals 5

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 428
    new-instance v0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/oculus/horizon/R$string;->settings_redeem_code_activated_bundles_confirm_selection:I

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    .line 430
    invoke-virtual {p0, v1, v2}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 429
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTitle(Ljava/lang/String;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->settings_redeem_code_activated_claim_modal_subtitle:I

    new-array v2, v4, [Ljava/lang/Object;

    aput-object p1, v2, v3

    .line 433
    invoke-virtual {p0, v1, v2}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 432
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setMessage(Ljava/lang/String;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_cancel:I

    .line 434
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setNegativeButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_claim:I

    .line 435
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setPositiveButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    const/4 v1, 0x3

    .line 436
    invoke-virtual {v0, p0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTargetFragment(Landroidx/fragment/app/Fragment;I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    .line 437
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "claim_bundle_redeem_code_modal_fragment"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Lcom/oculus/horizon/modal/AlertDialogFragment;

    .line 438
    return-void
.end method

.method private showErrorToast(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 372
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 373
    return-void
.end method

.method private showExitModal()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 418
    new-instance v0, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Lcom/oculus/horizon/R$string;->settings_redeem_code_activated_exit_title:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 419
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTitle(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->settings_redeem_code_activated_exit_subtitle:I

    new-array v2, v3, [Ljava/lang/Object;

    .line 420
    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setMessage(I[Ljava/lang/Object;)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_cancel:I

    .line 421
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setNegativeButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->common_exit:I

    .line 422
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setPositiveButton(I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    const/4 v1, 0x2

    .line 423
    invoke-virtual {v0, p0, v1}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->setTargetFragment(Landroidx/fragment/app/Fragment;I)Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;

    move-result-object v0

    .line 424
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    const-string v2, "exit_redeem_code_modal_fragment"

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/modal/AlertDialogFragment$Builder;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)Lcom/oculus/horizon/modal/AlertDialogFragment;

    .line 425
    return-void
.end method

.method private showLoadingState()V
    .locals 2

    .prologue
    .line 398
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 399
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mCodeActivatedContainer:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 400
    return-void
.end method

.method private stopLoadingState()V
    .locals 2

    .prologue
    .line 403
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 404
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mCodeActivatedContainer:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 405
    return-void
.end method


# virtual methods
.method protected getTitleBarTextResourceId()I
    .locals 1

    .prologue
    .line 486
    sget v0, Lcom/oculus/horizon/R$string;->settings_redeem_code_activated:I

    return v0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 464
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->SETTINGS_REDEEM_CODE_ACTIVATED:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .locals 2

    .prologue
    .line 454
    invoke-super {p0, p1, p2, p3}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onActivityResult(IILandroid/content/Intent;)V

    .line 455
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundleIds:Ljava/util/List;

    invoke-static {v0}, Lcom/oculus/util/collection/CollectionUtil;->isNotNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundleIdsToBundlesHashMap:Ljava/util/HashMap;

    .line 456
    invoke-static {v0}, Lcom/oculus/util/collection/CollectionUtil;->isNotNullOrEmpty(Ljava/util/HashMap;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 457
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundleInstallationHelper:Lcom/oculus/horizon/store/BundleInstallationHelper;

    sget-object v1, Lcom/oculus/horizon/logging/TrackingViews$View;->REDEEM_CODE_ACTIVATED:Lcom/oculus/horizon/logging/TrackingViews$View;

    invoke-virtual {v0, p1, p2, p3, v1}, Lcom/oculus/horizon/store/BundleInstallationHelper;->onActivityResult(IILandroid/content/Intent;Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 460
    :cond_0
    return-void
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 476
    iget-boolean v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mDidUserConfirmExit:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mHasCompletedRedemption:Z

    if-eqz v0, :cond_1

    .line 477
    :cond_0
    const/4 v0, 0x0

    .line 480
    :goto_0
    return v0

    .line 479
    :cond_1
    invoke-direct {p0}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->showExitModal()V

    .line 480
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public onBundleCollapsed(I)V
    .locals 3

    .prologue
    .line 508
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mActionButton:Landroid/widget/Button;

    .line 509
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$string;->settings_redeem_code_activated_select_bundle_prompt:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 508
    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 510
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mActionButton:Landroid/widget/Button;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 511
    return-void
.end method

.method public onBundleExpanded(I)V
    .locals 7

    .prologue
    const/4 v6, 0x1

    .line 491
    iget v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mLastSelectedBundlePosition:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_0

    iget v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mLastSelectedBundlePosition:I

    if-eq v0, p1, :cond_0

    .line 492
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mExpandableBundlesListView:Landroid/widget/ExpandableListView;

    iget v1, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mLastSelectedBundlePosition:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->collapseGroup(I)Z

    .line 494
    :cond_0
    iput p1, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mLastSelectedBundlePosition:I

    .line 497
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundleIds:Ljava/util/List;

    iget-object v2, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundleIdsToBundlesHashMap:Ljava/util/HashMap;

    iget v3, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mLastSelectedBundlePosition:I

    .line 496
    invoke-static {v0, v1, v2, v3}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->getBundleName(Landroid/content/Context;Ljava/util/List;Ljava/util/HashMap;I)Ljava/lang/String;

    move-result-object v0

    .line 498
    iget-object v1, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mActionButton:Landroid/widget/Button;

    .line 499
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oculus/horizon/R$string;->settings_redeem_code_activated_bundles_confirm_selection:I

    new-array v4, v6, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v0, v4, v5

    .line 500
    invoke-virtual {v2, v3, v4}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 498
    invoke-virtual {v1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 502
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mActionButton:Landroid/widget/Button;

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setEnabled(Z)V

    .line 503
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mExpandableBundlesListView:Landroid/widget/ExpandableListView;

    iget v1, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mLastSelectedBundlePosition:I

    invoke-virtual {v0, v1}, Landroid/widget/ExpandableListView;->setSelection(I)V

    .line 504
    return-void
.end method

.method public onClick(Lcom/oculus/horizon/modal/AlertDialogFragment;II)V
    .locals 2

    .prologue
    const/4 v1, -0x1

    .line 442
    const/4 v0, 0x2

    if-ne p2, v0, :cond_1

    if-ne p3, v1, :cond_1

    .line 443
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mDidUserConfirmExit:Z

    .line 444
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->onBackPressed()V

    .line 450
    :cond_0
    :goto_0
    return-void

    .line 445
    :cond_1
    const/4 v0, 0x3

    if-ne p2, v0, :cond_0

    if-ne p3, v1, :cond_0

    .line 447
    invoke-direct {p0}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->showLoadingState()V

    .line 448
    invoke-direct {p0}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->claimSelection()V

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 5

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 59
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;)V

    .line 113
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundleInstallationHelperProvider:Lcom/oculus/horizon/store/BundleInstallationHelperProvider;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/store/BundleInstallationHelperProvider;->get(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/store/BundleInstallationHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundleInstallationHelper:Lcom/oculus/horizon/store/BundleInstallationHelper;

    .line 114
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundleInstallationHelper:Lcom/oculus/horizon/store/BundleInstallationHelper;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/store/BundleInstallationHelper;->onCreate(Landroid/os/Bundle;)V

    .line 116
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    .line 117
    const-string v0, "code_key"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mCode:Ljava/lang/String;

    .line 118
    const-string v0, "store_credits_key"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mStoreCredits:Ljava/util/List;

    .line 120
    const-string v0, "bundle_ids_list_key"

    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v0

    .line 121
    invoke-static {v0}, Lcom/oculus/util/collection/CollectionUtil;->isNotNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 122
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundleIds:Ljava/util/List;

    .line 123
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    iput-object v1, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundleIdsToBundlesHashMap:Ljava/util/HashMap;

    .line 124
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 125
    invoke-virtual {v2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/oculus/horizon/api/common/ParcelableBundle;

    .line 126
    iget-object v4, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundleIds:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 127
    iget-object v4, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundleIdsToBundlesHashMap:Ljava/util/HashMap;

    invoke-virtual {v4, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 130
    :cond_0
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 165
    sget v0, Lcom/oculus/horizon/R$menu;->common_close:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 166
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 167
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 159
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->setHasOptionsMenu(Z)V

    .line 160
    sget v0, Lcom/oculus/horizon/R$layout;->settings_redeem_code_activated_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 140
    iput-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 141
    iput-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mCodeActivatedContainer:Landroid/widget/RelativeLayout;

    .line 142
    iput-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mActionButton:Landroid/widget/Button;

    .line 143
    iput-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mActivatedItemsContainer:Landroid/widget/LinearLayout;

    .line 144
    iput-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mStoreCreditContainer:Landroid/widget/LinearLayout;

    .line 145
    iput-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mStoreCreditsTable:Landroid/widget/LinearLayout;

    .line 146
    iput-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mItemsContainer:Landroid/widget/LinearLayout;

    .line 147
    iput-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mItemsTable:Landroid/widget/LinearLayout;

    .line 148
    iput-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundlesSelectionContainer:Landroid/widget/LinearLayout;

    .line 150
    iput-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mExpandableBundlesListView:Landroid/widget/ExpandableListView;

    .line 151
    iput-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mExpandableBundlesAdapter:Lcom/oculus/horizon/settings/RedeemCodeExpandableBundlesAdapter;

    .line 153
    invoke-super {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onDestroy()V

    .line 154
    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 171
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/oculus/horizon/R$id;->action_close:I

    if-ne v0, v1, :cond_0

    .line 172
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->onBackPressed()Z

    .line 173
    const/4 v0, 0x1

    .line 175
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 469
    invoke-super {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onResume()V

    .line 470
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundleInstallationHelper:Lcom/oculus/horizon/store/BundleInstallationHelper;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/BundleInstallationHelper;->onResume()V

    .line 471
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->updateTitleBarText()V

    .line 472
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 134
    invoke-super {p0, p1}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 135
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundleInstallationHelper:Lcom/oculus/horizon/store/BundleInstallationHelper;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/store/BundleInstallationHelper;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 136
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 180
    sget v0, Lcom/oculus/horizon/R$id;->loading_indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 181
    sget v0, Lcom/oculus/horizon/R$id;->code_activated_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mCodeActivatedContainer:Landroid/widget/RelativeLayout;

    .line 183
    sget v0, Lcom/oculus/horizon/R$id;->action_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mActionButton:Landroid/widget/Button;

    .line 184
    sget v0, Lcom/oculus/horizon/R$id;->activated_items_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mActivatedItemsContainer:Landroid/widget/LinearLayout;

    .line 185
    sget v0, Lcom/oculus/horizon/R$id;->store_credit_table_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mStoreCreditContainer:Landroid/widget/LinearLayout;

    .line 186
    sget v0, Lcom/oculus/horizon/R$id;->store_credit_table:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mStoreCreditsTable:Landroid/widget/LinearLayout;

    .line 187
    sget v0, Lcom/oculus/horizon/R$id;->content_table_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mItemsContainer:Landroid/widget/LinearLayout;

    .line 188
    sget v0, Lcom/oculus/horizon/R$id;->content_table:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mItemsTable:Landroid/widget/LinearLayout;

    .line 189
    sget v0, Lcom/oculus/horizon/R$id;->bundle_selection_container:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mBundlesSelectionContainer:Landroid/widget/LinearLayout;

    .line 190
    sget v0, Lcom/oculus/horizon/R$id;->bundles_selection_expandable_list_view:I

    .line 191
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ExpandableListView;

    iput-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->mExpandableBundlesListView:Landroid/widget/ExpandableListView;

    .line 193
    invoke-direct {p0}, Lcom/oculus/horizon/settings/RedeemCodeActivatedFragment;->refresh()V

    .line 194
    return-void
.end method
