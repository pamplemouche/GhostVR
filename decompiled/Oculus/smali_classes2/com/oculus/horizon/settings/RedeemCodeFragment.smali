.class public Lcom/oculus/horizon/settings/RedeemCodeFragment;
.super Lcom/oculus/horizon/settings/SubSettingsBaseFragment;
.source "RedeemCodeFragment.java"

# interfaces
.implements Lcom/oculus/horizon/common/BackPressListener;


# static fields
.field private static final NON_ALPHA_NUMERIC_PATTERN:Ljava/util/regex/Pattern;


# instance fields
.field private mCode:Ljava/lang/String;

.field mFragmentFactoryLazy:Lcom/facebook/inject/Lazy;
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

.field private mInputEditText:Lcom/google/android/material/textfield/TextInputLayout;

.field private mIsProcessing:Z

.field mPurchaseMethods:Lcom/oculus/horizon/commerce/PurchaseMethods;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mSubmitButton:Lcom/oculus/horizon/widget/ProgressButton;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/RedeemCodeFragment;)V
    .locals 1

    .prologue
    .line 49
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/RedeemCodeFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/settings/RedeemCodeFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/settings/RedeemCodeFragment;)V
    .locals 1

    .prologue
    .line 49
    invoke-static {p0}, Lcom/oculus/horizon/commerce/PurchaseMethods;->$ul_$xXXcom_oculus_horizon_commerce_PurchaseMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/commerce/PurchaseMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/RedeemCodeFragment;->mPurchaseMethods:Lcom/oculus/horizon/commerce/PurchaseMethods;

    invoke-static {p0}, Lcom/oculus/horizon/main/MainModule;->$ul_$xXXcom_facebook_inject_Lazy$x3Ccom_oculus_horizon_fragmentfactory_FragmentFactory$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/facebook/inject/Lazy;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/settings/RedeemCodeFragment;->mFragmentFactoryLazy:Lcom/facebook/inject/Lazy;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 52
    const-string v0, "[^a-zA-Z0-9]"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/settings/RedeemCodeFragment;->NON_ALPHA_NUMERIC_PATTERN:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;-><init>()V

    .line 63
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment;->mIsProcessing:Z

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/settings/RedeemCodeFragment;)Lcom/google/android/material/textfield/TextInputLayout;
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment;->mInputEditText:Lcom/google/android/material/textfield/TextInputLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/settings/RedeemCodeFragment;Landroid/text/Editable;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->formatCode(Landroid/text/Editable;)V

    return-void
.end method

.method static synthetic access$200(Lcom/oculus/horizon/settings/RedeemCodeFragment;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->onSubmit()V

    return-void
.end method

.method static synthetic access$300(Lcom/oculus/horizon/settings/RedeemCodeFragment;Lcom/oculus/horizon/commerce/RedeemCodeResponse;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->onRedeemCodeResponse(Lcom/oculus/horizon/commerce/RedeemCodeResponse;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oculus/horizon/settings/RedeemCodeFragment;)V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->stopLoadingState()V

    return-void
.end method

.method private formatCode(Landroid/text/Editable;)V
    .locals 6

    .prologue
    const/16 v5, 0x11

    const/16 v4, 0xb

    const/4 v2, 0x5

    const/4 v3, 0x0

    .line 158
    new-instance v1, Ljava/lang/StringBuilder;

    .line 159
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->stripNonAlphaNumericCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 161
    :try_start_0
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v0

    if-gt v0, v2, :cond_0

    .line 179
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 181
    :goto_0
    return-void

    .line 165
    :cond_0
    const/4 v0, 0x5

    const/16 v2, 0x2d

    :try_start_1
    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 166
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    if-gt v0, v4, :cond_1

    .line 179
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 169
    :cond_1
    const/16 v0, 0xb

    const/16 v2, 0x2d

    :try_start_2
    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 170
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result v0

    if-gt v0, v5, :cond_2

    .line 179
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 173
    :cond_2
    const/16 v0, 0x11

    const/16 v2, 0x2d

    :try_start_3
    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;

    .line 174
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->length()I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result v0

    const/16 v2, 0x17

    if-gt v0, v2, :cond_3

    .line 179
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    .line 177
    :cond_3
    const/16 v0, 0x17

    const/16 v2, 0x2d

    :try_start_4
    invoke-virtual {v1, v0, v2}, Ljava/lang/StringBuilder;->insert(IC)Ljava/lang/StringBuilder;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 179
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v0, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v2

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p1, v3, v2, v1}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    throw v0
.end method

.method private onRedeemCodeResponse(Lcom/oculus/horizon/commerce/RedeemCodeResponse;)V
    .locals 9

    .prologue
    const/4 v3, 0x0

    .line 219
    invoke-direct {p0}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->stopLoadingState()V

    .line 220
    iget-object v0, p1, Lcom/oculus/horizon/commerce/RedeemCodeResponse;->app_redeem_coupon:Lcom/oculus/horizon/commerce/RedeemCodeResponse$AppRedeemCoupon;

    iget-object v7, v0, Lcom/oculus/horizon/commerce/RedeemCodeResponse$AppRedeemCoupon;->default_item:Lcom/oculus/horizon/api/common/Item;

    .line 221
    invoke-virtual {p1}, Lcom/oculus/horizon/commerce/RedeemCodeResponse;->getAppEntitlements()Lcom/google/common/collect/ImmutableList;

    move-result-object v1

    .line 222
    invoke-virtual {p1}, Lcom/oculus/horizon/commerce/RedeemCodeResponse;->getInAppEntitlements()Lcom/google/common/collect/ImmutableList;

    move-result-object v2

    .line 223
    invoke-virtual {p1}, Lcom/oculus/horizon/commerce/RedeemCodeResponse;->getAlternativeItems()Lcom/google/common/collect/ImmutableList;

    move-result-object v4

    .line 225
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 226
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 228
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 229
    :cond_0
    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Entitlement;

    .line 230
    iget-object v0, v0, Lcom/oculus/horizon/api/common/Entitlement;->item:Lcom/oculus/horizon/api/common/Item;

    invoke-static {v0}, Lcom/oculus/horizon/api/common/ParcelableItem;->from(Lcom/oculus/horizon/api/common/Item;)Lcom/oculus/horizon/api/common/ParcelableItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 232
    :cond_1
    invoke-virtual {v2}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v4

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/InAppItemEntitlement;

    .line 233
    iget-object v0, v0, Lcom/oculus/horizon/api/common/InAppItemEntitlement;->item:Lcom/oculus/horizon/api/common/InAppItem;

    invoke-static {v0}, Lcom/oculus/horizon/api/common/ParcelableItem;->from(Lcom/oculus/horizon/api/common/InAppItem;)Lcom/oculus/horizon/api/common/ParcelableItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 235
    :cond_2
    if-eqz v7, :cond_4

    iget-object v0, v7, Lcom/oculus/horizon/api/common/Item;->bundle_items:Lcom/oculus/horizon/api/common/Item$BundleItems;

    if-eqz v0, :cond_4

    iget-object v0, v7, Lcom/oculus/horizon/api/common/Item;->bundle_items:Lcom/oculus/horizon/api/common/Item$BundleItems;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$BundleItems;->nodes:Ljava/util/List;

    if-eqz v0, :cond_4

    iget-object v0, v7, Lcom/oculus/horizon/api/common/Item;->bundle_items:Lcom/oculus/horizon/api/common/Item$BundleItems;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$BundleItems;->nodes:Ljava/util/List;

    .line 238
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 239
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 240
    iget-object v0, v7, Lcom/oculus/horizon/api/common/Item;->bundle_items:Lcom/oculus/horizon/api/common/Item$BundleItems;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$BundleItems;->nodes:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_2
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Item;

    .line 241
    invoke-static {v0}, Lcom/oculus/horizon/api/common/ParcelableItem;->from(Lcom/oculus/horizon/api/common/Item;)Lcom/oculus/horizon/api/common/ParcelableItem;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 243
    :cond_3
    invoke-virtual {v4}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v4

    :goto_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Item;

    .line 244
    invoke-interface {v6, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 248
    :cond_4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 249
    invoke-virtual {p1}, Lcom/oculus/horizon/commerce/RedeemCodeResponse;->getStoreCredits()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->iterator()Lcom/google/common/collect/UnmodifiableIterator;

    move-result-object v8

    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit$Subcredits$Subcredit;

    .line 250
    invoke-static {v0}, Lcom/oculus/horizon/commerce/StoreCreditModel$SubcreditModel;->from(Lcom/oculus/horizon/api/common/PaymentAccount$StoredCredit$Subcredits$Subcredit;)Lcom/oculus/horizon/commerce/StoreCreditModel$SubcreditModel;

    move-result-object v0

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 254
    :cond_5
    invoke-interface {v6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 255
    invoke-direct {p0, v1, v2}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->showAppropriateToastOnSuccess(Ljava/util/List;Ljava/util/List;)V

    .line 257
    :cond_6
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->isViewDestroyed()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 267
    :goto_5
    return-void

    .line 260
    :cond_7
    if-nez v7, :cond_8

    const-string v1, "fake_default_item_id"

    :goto_6
    if-nez v7, :cond_9

    move-object v2, v3

    :goto_7
    if-nez v7, :cond_a

    :goto_8
    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->showCodeActivatedFragment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    goto :goto_5

    :cond_8
    iget-object v1, v7, Lcom/oculus/horizon/api/common/Item;->id:Ljava/lang/String;

    goto :goto_6

    :cond_9
    iget-object v2, v7, Lcom/oculus/horizon/api/common/Item;->display_name:Ljava/lang/String;

    goto :goto_7

    :cond_a
    iget-object v3, v7, Lcom/oculus/horizon/api/common/Item;->display_short_description:Ljava/lang/String;

    goto :goto_8
.end method

.method private onSubmit()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 188
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment;->mInputEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0, v4}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 189
    invoke-direct {p0}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->validateInput()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment;->mCode:Ljava/lang/String;

    .line 190
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment;->mCode:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 216
    :goto_0
    return-void

    .line 193
    :cond_0
    invoke-direct {p0}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->startLoadingState()V

    .line 194
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/oculus/util/device/DeviceUtils;->getDeviceId(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 195
    iget-object v1, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment;->mPurchaseMethods:Lcom/oculus/horizon/commerce/PurchaseMethods;

    new-instance v2, Lcom/oculus/horizon/commerce/RedeemCodeParams;

    iget-object v3, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment;->mCode:Ljava/lang/String;

    invoke-direct {v2, v3, v4, v0}, Lcom/oculus/horizon/commerce/RedeemCodeParams;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Lcom/oculus/horizon/settings/RedeemCodeFragment$4;

    invoke-direct {v0, p0, p0}, Lcom/oculus/horizon/settings/RedeemCodeFragment$4;-><init>(Lcom/oculus/horizon/settings/RedeemCodeFragment;Lcom/oculus/horizon/base/OculusBaseFragment;)V

    invoke-virtual {v1, v2, v0}, Lcom/oculus/horizon/commerce/PurchaseMethods;->redeemCode(Lcom/oculus/horizon/commerce/RedeemCodeParams;Lretrofit/Callback;)V

    goto :goto_0
.end method

.method private showAppropriateToastOnSuccess(Ljava/util/List;Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/Entitlement;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/InAppItemEntitlement;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 271
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 317
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->settings_redeem_code_success_toast:I

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 320
    :goto_0
    return-void

    .line 273
    :pswitch_0
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->settings_redeem_code_success_toast:I

    invoke-static {v0, v1, v7}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    .line 274
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 278
    :pswitch_1
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/InAppItemEntitlement;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/InAppItemEntitlement;->item:Lcom/oculus/horizon/api/common/InAppItem;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/InAppItem;->parent_application:Lcom/oculus/horizon/api/common/Item;

    iget-object v1, v0, Lcom/oculus/horizon/api/common/Item;->display_name:Ljava/lang/String;

    .line 279
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/InAppItemEntitlement;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/InAppItemEntitlement;->item:Lcom/oculus/horizon/api/common/InAppItem;

    iget-object v2, v0, Lcom/oculus/horizon/api/common/InAppItem;->display_name:Ljava/lang/String;

    .line 281
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    packed-switch v0, :pswitch_data_1

    .line 306
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/oculus/horizon/R$string;->settings_redeem_many_app_and_iap_code_success_toast:I

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v2, v4, v6

    aput-object v1, v4, v7

    .line 307
    invoke-virtual {p0, v3, v4}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 305
    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 312
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 284
    :pswitch_2
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v3, Lcom/oculus/horizon/R$string;->settings_redeem_only_iap_code_success_toast:I

    new-array v4, v8, [Ljava/lang/Object;

    aput-object v2, v4, v6

    aput-object v1, v4, v7

    .line 285
    invoke-virtual {p0, v3, v4}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 283
    invoke-static {v0, v1, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 290
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0

    .line 293
    :pswitch_3
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Entitlement;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Entitlement;->item:Lcom/oculus/horizon/api/common/Item;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->display_name:Ljava/lang/String;

    .line 295
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    sget v4, Lcom/oculus/horizon/R$string;->settings_redeem_one_app_and_iap_code_success_toast:I

    const/4 v5, 0x3

    new-array v5, v5, [Ljava/lang/Object;

    aput-object v0, v5, v6

    aput-object v2, v5, v7

    aput-object v1, v5, v8

    .line 296
    invoke-virtual {p0, v4, v5}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 294
    invoke-static {v3, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 302
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto/16 :goto_0

    .line 271
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 281
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private showCodeActivatedFragment(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
    .locals 8
    .param p2    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Ljava/lang/String;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/commerce/StoreCreditModel$SubcreditModel;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/ParcelableItem;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/Item;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 329
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 330
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 331
    if-eqz p5, :cond_0

    invoke-interface {p5}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 332
    invoke-interface {v2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 333
    new-instance v0, Lcom/oculus/horizon/api/common/ParcelableBundle;

    invoke-direct {v0, p2, p3, p5}, Lcom/oculus/horizon/api/common/ParcelableBundle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v3, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 340
    :cond_0
    if-eqz p6, :cond_3

    invoke-interface {p6}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 341
    invoke-interface {p6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Item;

    .line 342
    if-eqz v0, :cond_1

    iget-object v1, v0, Lcom/oculus/horizon/api/common/Item;->bundle_items:Lcom/oculus/horizon/api/common/Item$BundleItems;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/oculus/horizon/api/common/Item;->bundle_items:Lcom/oculus/horizon/api/common/Item$BundleItems;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item$BundleItems;->nodes:Ljava/util/List;

    if-eqz v1, :cond_1

    iget-object v1, v0, Lcom/oculus/horizon/api/common/Item;->bundle_items:Lcom/oculus/horizon/api/common/Item$BundleItems;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item$BundleItems;->nodes:Ljava/util/List;

    .line 345
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 346
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 347
    iget-object v1, v0, Lcom/oculus/horizon/api/common/Item;->bundle_items:Lcom/oculus/horizon/api/common/Item$BundleItems;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item$BundleItems;->nodes:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/oculus/horizon/api/common/Item;

    .line 349
    invoke-static {v1}, Lcom/oculus/horizon/api/common/ParcelableItem;->from(Lcom/oculus/horizon/api/common/Item;)Lcom/oculus/horizon/api/common/ParcelableItem;

    move-result-object v1

    .line 348
    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 351
    :cond_2
    invoke-interface {v5}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 352
    iget-object v1, v0, Lcom/oculus/horizon/api/common/Item;->id:Ljava/lang/String;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 353
    iget-object v1, v0, Lcom/oculus/horizon/api/common/Item;->id:Ljava/lang/String;

    new-instance v6, Lcom/oculus/horizon/api/common/ParcelableBundle;

    iget-object v7, v0, Lcom/oculus/horizon/api/common/Item;->display_name:Ljava/lang/String;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item;->display_short_description:Ljava/lang/String;

    invoke-direct {v6, v7, v0, v5}, Lcom/oculus/horizon/api/common/ParcelableBundle;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V

    invoke-virtual {v3, v1, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 364
    :cond_3
    new-instance v0, Lcom/oculus/horizon/navigation/FragmentNavigator;

    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    .line 365
    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->clearBackStack()Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v1

    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment;->mFragmentFactoryLazy:Lcom/facebook/inject/Lazy;

    .line 368
    invoke-interface {v0}, Lcom/facebook/inject/Lazy;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    iget-object v4, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment;->mCode:Ljava/lang/String;

    .line 369
    invoke-virtual {v0, v4, p4, v2, v3}, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;->newRedeemCodeActivatedFragment(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/HashMap;)Landroidx/fragment/app/Fragment;

    move-result-object v0

    .line 366
    invoke-virtual {v1, v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    .line 371
    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    .line 372
    return-void
.end method

.method private startLoadingState()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 389
    iput-boolean v2, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment;->mIsProcessing:Z

    .line 390
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment;->mInputEditText:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    .line 392
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment;->mSubmitButton:Lcom/oculus/horizon/widget/ProgressButton;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 393
    return-void
.end method

.method private stopLoadingState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 396
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment;->mSubmitButton:Lcom/oculus/horizon/widget/ProgressButton;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/ProgressButton;->setLoading(Z)V

    .line 398
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment;->mInputEditText:Lcom/google/android/material/textfield/TextInputLayout;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setEnabled(Z)V

    .line 399
    iput-boolean v2, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment;->mIsProcessing:Z

    .line 400
    return-void
.end method

.method private stripNonAlphaNumericCharacters(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .prologue
    .line 184
    sget-object v0, Lcom/oculus/horizon/settings/RedeemCodeFragment;->NON_ALPHA_NUMERIC_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v0, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/util/regex/Matcher;->replaceAll(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private validateInput()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation

    .prologue
    .line 380
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment;->mInputEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->stripNonAlphaNumericCharacters(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 381
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    .line 382
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment;->mInputEditText:Lcom/google/android/material/textfield/TextInputLayout;

    sget v1, Lcom/oculus/horizon/R$string;->commerce_redeem_code_failed:I

    invoke-virtual {p0, v1}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/google/android/material/textfield/TextInputLayout;->setError(Ljava/lang/CharSequence;)V

    .line 383
    const/4 v0, 0x0

    .line 385
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected getTitleBarTextResourceId()I
    .locals 1

    .prologue
    .line 154
    sget v0, Lcom/oculus/horizon/R$string;->settings_redeem_code:I

    return v0
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 129
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->SETTINGS_REDEEM_CODE:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onBackPressed()Z
    .locals 1

    .prologue
    .line 149
    iget-boolean v0, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment;->mIsProcessing:Z

    return v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/settings/RedeemCodeFragment;)V

    .line 73
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3

    .prologue
    .line 78
    sget v0, Lcom/oculus/horizon/R$layout;->settings_redeem_code_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 79
    sget v0, Lcom/oculus/horizon/R$id;->code:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/textfield/TextInputLayout;

    iput-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment;->mInputEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 80
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment;->mInputEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 81
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v2, Lcom/oculus/horizon/settings/RedeemCodeFragment$1;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/settings/RedeemCodeFragment$1;-><init>(Lcom/oculus/horizon/settings/RedeemCodeFragment;)V

    .line 82
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 101
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment;->mInputEditText:Lcom/google/android/material/textfield/TextInputLayout;

    .line 102
    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    new-instance v2, Lcom/oculus/horizon/settings/RedeemCodeFragment$2;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/settings/RedeemCodeFragment$2;-><init>(Lcom/oculus/horizon/settings/RedeemCodeFragment;)V

    .line 103
    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 115
    sget v0, Lcom/oculus/horizon/R$id;->submit_button:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/ProgressButton;

    iput-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment;->mSubmitButton:Lcom/oculus/horizon/widget/ProgressButton;

    .line 116
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment;->mSubmitButton:Lcom/oculus/horizon/widget/ProgressButton;

    new-instance v2, Lcom/oculus/horizon/settings/RedeemCodeFragment$3;

    invoke-direct {v2, p0}, Lcom/oculus/horizon/settings/RedeemCodeFragment$3;-><init>(Lcom/oculus/horizon/settings/RedeemCodeFragment;)V

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/ProgressButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 124
    return-object v1
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 142
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment;->mInputEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/horizon/util/KeyboardUtils;->hideKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 143
    invoke-super {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onPause()V

    .line 144
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 134
    invoke-super {p0}, Lcom/oculus/horizon/settings/SubSettingsBaseFragment;->onResume()V

    .line 135
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->updateTitleBarText()V

    .line 136
    iget-object v0, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment;->mInputEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z

    .line 137
    invoke-virtual {p0}, Lcom/oculus/horizon/settings/RedeemCodeFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/settings/RedeemCodeFragment;->mInputEditText:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-virtual {v1}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/horizon/util/KeyboardUtils;->showKeyboard(Landroid/content/Context;Landroid/view/View;)V

    .line 138
    return-void
.end method
