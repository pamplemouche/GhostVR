.class public abstract Lcom/oculus/horizon/pdp/PdpFragment;
.super Lcom/oculus/horizon/base/OculusBaseFragment;
.source "PdpFragment.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Lcom/oculus/horizon/store/StoreCountdownTimer$Listener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/pdp/PdpFragment$PdpOnScrollListener;
    }
.end annotation


# instance fields
.field private mContentArea:Landroid/view/View;

.field private mContentGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

.field protected mContext:Landroid/content/Context;
    .annotation build Lcom/facebook/inject/ForAppContext;
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mCountDownTimerClockTextView:Landroid/widget/TextView;

.field private mCountDownTimerContainer:Landroid/widget/LinearLayout;

.field private mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

.field protected mFooterBar:Lcom/oculus/horizon/pdp/widget/MessageBar;

.field protected mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mItemId:Ljava/lang/String;

.field private mLastScrollY:I

.field private mLoadingIndicator:Landroid/widget/ProgressBar;

.field private mLocaleProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider",
            "<",
            "Ljava/util/Locale;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mOnScrollListener:Lcom/oculus/horizon/pdp/PdpFragment$PdpOnScrollListener;

.field protected mSocialUtils:Lcom/oculus/horizon/social/SocialUtils;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mStoreCountdownTimer:Lcom/oculus/horizon/store/StoreCountdownTimer;

.field protected mStoreItemMethods:Lcom/oculus/horizon/pdp/StoreItemMethods;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mStoreWideOfferModel:Lcom/oculus/horizon/store/StoreWideOfferModel;

.field private mStyleManager:Lcom/oculus/horizon/style/StyleManager;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field protected mStyleTheme:Lcom/oculus/model/StyleTheme;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/pdp/PdpFragment;)V
    .locals 1

    .prologue
    .line 52
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/pdp/PdpFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/pdp/PdpFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/pdp/PdpFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/pdp/PdpFragment;)V
    .locals 1

    .prologue
    .line 52
    invoke-static {p0}, Lcom/facebook/inject/BundledAndroidModule;->$ul_$xXXandroid_content_Context$xXXcom_facebook_inject_ForAppContext$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Landroid/content/Context;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/PdpFragment;->mContext:Landroid/content/Context;

    invoke-static {p0}, Lcom/oculus/horizon/main/MainModule;->$ul_$xXXcom_oculus_horizon_fragmentfactory_FragmentFactory$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/PdpFragment;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    invoke-static {p0}, Lcom/oculus/horizon/pdp/StoreItemMethods;->$ul_$xXXcom_oculus_horizon_pdp_StoreItemMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/pdp/StoreItemMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/PdpFragment;->mStoreItemMethods:Lcom/oculus/horizon/pdp/StoreItemMethods;

    invoke-static {p0}, Lcom/oculus/horizon/social/SocialUtils;->$ul_$xXXcom_oculus_horizon_social_SocialUtils$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/social/SocialUtils;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/PdpFragment;->mSocialUtils:Lcom/oculus/horizon/social/SocialUtils;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/PdpFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-static {p0}, Lcom/oculus/horizon/style/StyleManager;->$ul_$xXXcom_oculus_horizon_style_StyleManager$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/style/StyleManager;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/PdpFragment;->mStyleManager:Lcom/oculus/horizon/style/StyleManager;

    invoke-static {p0}, Lcom/oculus/locale/LocaleModule;->$ul_$xXXjavax_inject_Provider$x3Cjava_util_Locale$x3E$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Ljavax/inject/Provider;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/PdpFragment;->mLocaleProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$100(Lcom/oculus/horizon/pdp/PdpFragment;)Landroid/view/View;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mContentArea:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/pdp/PdpFragment;)I
    .locals 1

    .prologue
    .line 52
    iget v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mLastScrollY:I

    return v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/pdp/PdpFragment;)Lcom/oculus/horizon/pdp/PdpFragment$PdpOnScrollListener;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mOnScrollListener:Lcom/oculus/horizon/pdp/PdpFragment$PdpOnScrollListener;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/pdp/PdpFragment;)V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/PdpFragment;->onItemDetailsError()V

    return-void
.end method

.method static synthetic access$500(Lcom/oculus/horizon/pdp/PdpFragment;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 1

    .prologue
    .line 52
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-object v0
.end method

.method private onItemDetailsError()V
    .locals 0

    .prologue
    .line 278
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/PdpFragment;->showErrorView()V

    .line 279
    return-void
.end method

.method private refreshCountdownTimer()V
    .locals 2

    .prologue
    .line 311
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mCountDownTimerContainer:Landroid/widget/LinearLayout;

    if-nez v0, :cond_0

    .line 321
    :goto_0
    return-void

    .line 314
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mStoreCountdownTimer:Lcom/oculus/horizon/store/StoreCountdownTimer;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/store/StoreCountdownTimer;->setListener(Lcom/oculus/horizon/store/StoreCountdownTimer$Listener;)V

    .line 315
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mStoreCountdownTimer:Lcom/oculus/horizon/store/StoreCountdownTimer;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreCountdownTimer;->refresh()Z

    move-result v0

    .line 316
    if-eqz v0, :cond_1

    .line 317
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mCountDownTimerContainer:Landroid/widget/LinearLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0

    .line 319
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mCountDownTimerContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method protected destroyStoreCountdownTimer()V
    .locals 2

    .prologue
    .line 324
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mStoreCountdownTimer:Lcom/oculus/horizon/store/StoreCountdownTimer;

    if-eqz v0, :cond_0

    .line 325
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mStoreCountdownTimer:Lcom/oculus/horizon/store/StoreCountdownTimer;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreCountdownTimer;->destroy()V

    .line 326
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mStoreCountdownTimer:Lcom/oculus/horizon/store/StoreCountdownTimer;

    .line 328
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mCountDownTimerContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_1

    .line 329
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mCountDownTimerContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 331
    :cond_1
    return-void
.end method

.method protected fetchItemData()V
    .locals 3

    .prologue
    .line 220
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/PdpFragment;->showLoadingView()V

    .line 221
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mStoreItemMethods:Lcom/oculus/horizon/pdp/StoreItemMethods;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mItemId:Ljava/lang/String;

    new-instance v2, Lcom/oculus/horizon/pdp/PdpFragment$3;

    invoke-direct {v2, p0, p0}, Lcom/oculus/horizon/pdp/PdpFragment$3;-><init>(Lcom/oculus/horizon/pdp/PdpFragment;Lcom/oculus/horizon/base/OculusBaseFragment;)V

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/pdp/StoreItemMethods;->fetchItemData(Ljava/lang/String;Lretrofit/Callback;)V

    .line 238
    return-void
.end method

.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 1

    .prologue
    .line 211
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->PRODUCT_DETAILS:Lcom/oculus/horizon/logging/TrackingViews$View;

    return-object v0
.end method

.method public onCountdownFinish()V
    .locals 2

    .prologue
    .line 340
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mCountDownTimerContainer:Landroid/widget/LinearLayout;

    if-eqz v0, :cond_0

    .line 341
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mCountDownTimerContainer:Landroid/widget/LinearLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 343
    :cond_0
    return-void
.end method

.method public onCountdownTick(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 335
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mCountDownTimerClockTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 336
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 91
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 52
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/PdpFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/pdp/PdpFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/pdp/PdpFragment;)V

    .line 95
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/PdpFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 96
    const-string v1, "arg_item_id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mItemId:Ljava/lang/String;

    .line 98
    const-string v1, "arg_item_style_theme"

    .line 99
    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;

    move-result-object v0

    check-cast v0, Lcom/oculus/model/StyleTheme;

    .line 100
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mStyleManager:Lcom/oculus/horizon/style/StyleManager;

    invoke-virtual {v0}, Lcom/oculus/horizon/style/StyleManager;->getStyleTheme()Lcom/oculus/model/StyleTheme;

    move-result-object v0

    :cond_0
    iput-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mStyleTheme:Lcom/oculus/model/StyleTheme;

    .line 101
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mStyleTheme:Lcom/oculus/model/StyleTheme;

    if-eqz v0, :cond_1

    .line 102
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mStyleTheme:Lcom/oculus/model/StyleTheme;

    invoke-static {v0}, Lcom/oculus/horizon/style/StyleManager;->getResourceIdentifierForStyle(Lcom/oculus/model/StyleTheme;)I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/PdpFragment;->setTheme(I)V

    .line 104
    :cond_1
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .locals 1

    .prologue
    .line 196
    sget v0, Lcom/oculus/horizon/R$menu;->common_search:I

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 197
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/base/OculusBaseFragment;->onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V

    .line 198
    return-void
.end method

.method public onDestroyView()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 168
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mOnScrollListener:Lcom/oculus/horizon/pdp/PdpFragment$PdpOnScrollListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mContentArea:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mContentArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mOnScrollListener:Lcom/oculus/horizon/pdp/PdpFragment$PdpOnScrollListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 170
    iput-object v2, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mOnScrollListener:Lcom/oculus/horizon/pdp/PdpFragment$PdpOnScrollListener;

    .line 172
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mContentArea:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 173
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mContentArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mContentGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 174
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mContentArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getScrollY()I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mLastScrollY:I

    .line 178
    :goto_0
    iput-object v2, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 179
    iput-object v2, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mOnScrollListener:Lcom/oculus/horizon/pdp/PdpFragment$PdpOnScrollListener;

    .line 181
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/PdpFragment;->destroyStoreCountdownTimer()V

    .line 182
    iput-object v2, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mCountDownTimerContainer:Landroid/widget/LinearLayout;

    .line 183
    iput-object v2, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mCountDownTimerClockTextView:Landroid/widget/TextView;

    .line 185
    iput-object v2, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mFooterBar:Lcom/oculus/horizon/pdp/widget/MessageBar;

    .line 187
    iput-object v2, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 188
    iput-object v2, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    .line 189
    iput-object v2, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mContentArea:Landroid/view/View;

    .line 191
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onDestroyView()V

    .line 192
    return-void

    .line 176
    :cond_1
    const/4 v0, 0x0

    iput v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mLastScrollY:I

    goto :goto_0
.end method

.method public abstract onItemDetailsResponse(Lcom/oculus/horizon/api/common/Item;)V
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2

    .prologue
    .line 202
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    sget v1, Lcom/oculus/horizon/R$id;->action_search:I

    if-ne v0, v1, :cond_0

    .line 203
    new-instance v0, Lcom/oculus/horizon/navigation/FragmentNavigator;

    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/PdpFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;-><init>(Landroidx/fragment/app/FragmentManager;)V

    iget-object v1, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mFragmentFactory:Lcom/oculus/horizon/fragmentfactory/FragmentFactory;

    invoke-virtual {v1}, Lcom/oculus/horizon/fragmentfactory/FragmentFactory;->newSearchFragment()Landroidx/fragment/app/Fragment;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/navigation/FragmentNavigator;->to(Landroidx/fragment/app/Fragment;)Lcom/oculus/horizon/navigation/FragmentNavigator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/navigation/FragmentNavigator;->go()V

    .line 204
    const/4 v0, 0x1

    .line 206
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v0

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 160
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mStoreCountdownTimer:Lcom/oculus/horizon/store/StoreCountdownTimer;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mStoreCountdownTimer:Lcom/oculus/horizon/store/StoreCountdownTimer;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreCountdownTimer;->destroy()V

    .line 163
    :cond_0
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onPause()V

    .line 164
    return-void
.end method

.method public onRefresh()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 349
    iget-object v1, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v1, v0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 350
    iget-object v1, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v1}, Landroid/widget/ProgressBar;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    const/4 v0, 0x1

    .line 351
    :cond_0
    if-nez v0, :cond_1

    .line 352
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/PdpFragment;->fetchItemData()V

    .line 354
    :cond_1
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 148
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onResume()V

    .line 150
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/PdpFragment;->updateTitleBar()V

    .line 152
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mStoreCountdownTimer:Lcom/oculus/horizon/store/StoreCountdownTimer;

    if-eqz v0, :cond_0

    .line 153
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/PdpFragment;->refreshCountdownTimer()V

    .line 155
    :cond_0
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2

    .prologue
    .line 108
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/base/OculusBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 110
    sget v0, Lcom/oculus/horizon/R$id;->swipe_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 111
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mSwipeLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 112
    new-instance v0, Lcom/oculus/horizon/pdp/PdpFragment$PdpOnScrollListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/oculus/horizon/pdp/PdpFragment$PdpOnScrollListener;-><init>(Lcom/oculus/horizon/pdp/PdpFragment;Lcom/oculus/horizon/pdp/PdpFragment$1;)V

    iput-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mOnScrollListener:Lcom/oculus/horizon/pdp/PdpFragment$PdpOnScrollListener;

    .line 114
    sget v0, Lcom/oculus/horizon/R$id;->loading_indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 115
    sget v0, Lcom/oculus/horizon/R$id;->empty:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/EmptyErrorView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    .line 116
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    new-instance v1, Lcom/oculus/horizon/pdp/PdpFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/pdp/PdpFragment$1;-><init>(Lcom/oculus/horizon/pdp/PdpFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/EmptyErrorView;->setOnButtonClickListener(Landroid/view/View$OnClickListener;)V

    .line 123
    sget v0, Lcom/oculus/horizon/R$id;->content_area:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mContentArea:Landroid/view/View;

    .line 124
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mContentArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mOnScrollListener:Lcom/oculus/horizon/pdp/PdpFragment$PdpOnScrollListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 125
    iget v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mLastScrollY:I

    if-lez v0, :cond_0

    .line 126
    new-instance v0, Lcom/oculus/horizon/pdp/PdpFragment$2;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/pdp/PdpFragment$2;-><init>(Lcom/oculus/horizon/pdp/PdpFragment;)V

    iput-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mContentGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 137
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mContentArea:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mContentGlobalLayoutListener:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 140
    :cond_0
    sget v0, Lcom/oculus/horizon/R$id;->countdown_timer:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mCountDownTimerContainer:Landroid/widget/LinearLayout;

    .line 141
    sget v0, Lcom/oculus/horizon/R$id;->countdown_timer_clock:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mCountDownTimerClockTextView:Landroid/widget/TextView;

    .line 143
    sget v0, Lcom/oculus/horizon/R$id;->footer_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/pdp/widget/MessageBar;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mFooterBar:Lcom/oculus/horizon/pdp/widget/MessageBar;

    .line 144
    return-void
.end method

.method protected reportView()V
    .locals 2

    .prologue
    .line 216
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mItemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportProductView(Ljava/lang/String;)V

    .line 217
    return-void
.end method

.method protected setupStoreWideOffers(Ljava/util/List;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/Item$StoreWideOffer;",
            ">;)V"
        }
    .end annotation

    .prologue
    const/4 v1, 0x0

    .line 245
    invoke-static {p1}, Lcom/oculus/util/collection/CollectionUtil;->isNotNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 246
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Item$StoreWideOffer;

    .line 247
    if-nez v0, :cond_1

    .line 275
    :cond_0
    :goto_0
    return-void

    .line 250
    :cond_1
    invoke-static {v0}, Lcom/oculus/horizon/store/StoreWideOfferModel;->from(Lcom/oculus/horizon/api/common/Item$StoreWideOffer;)Lcom/oculus/horizon/store/StoreWideOfferModel;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mStoreWideOfferModel:Lcom/oculus/horizon/store/StoreWideOfferModel;

    .line 251
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mStoreWideOfferModel:Lcom/oculus/horizon/store/StoreWideOfferModel;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreWideOfferModel;->isValid()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 254
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mFooterBar:Lcom/oculus/horizon/pdp/widget/MessageBar;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/widget/MessageBar;->setVisibility(I)V

    .line 255
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mFooterBar:Lcom/oculus/horizon/pdp/widget/MessageBar;

    sget v1, Lcom/oculus/horizon/R$drawable;->special_offer_gift_box_100x100:I

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/widget/MessageBar;->setImage(I)V

    .line 256
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mFooterBar:Lcom/oculus/horizon/pdp/widget/MessageBar;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mContext:Landroid/content/Context;

    .line 257
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$dimen;->common_horizontal_padding:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    float-to-int v1, v1

    .line 256
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/widget/MessageBar;->setImageRightMargin(I)V

    .line 258
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mFooterBar:Lcom/oculus/horizon/pdp/widget/MessageBar;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mStoreWideOfferModel:Lcom/oculus/horizon/store/StoreWideOfferModel;

    iget-object v1, v1, Lcom/oculus/horizon/store/StoreWideOfferModel;->displayShortDescription:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/widget/MessageBar;->setDescription(Ljava/lang/String;)V

    .line 259
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mFooterBar:Lcom/oculus/horizon/pdp/widget/MessageBar;

    .line 260
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/PdpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$dimen;->store_special_offer_footer_text_size:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    int-to-float v1, v1

    .line 259
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/widget/MessageBar;->setDescriptionTextSize(F)V

    .line 261
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mFooterBar:Lcom/oculus/horizon/pdp/widget/MessageBar;

    sget v1, Lcom/oculus/horizon/R$color;->oculus_black_10:I

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/widget/MessageBar;->setBackgroundResource(I)V

    .line 262
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mFooterBar:Lcom/oculus/horizon/pdp/widget/MessageBar;

    new-instance v1, Lcom/oculus/horizon/pdp/PdpFragment$4;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/pdp/PdpFragment$4;-><init>(Lcom/oculus/horizon/pdp/PdpFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/widget/MessageBar;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0
.end method

.method protected shouldShowCountdownTimer(Lcom/oculus/horizon/api/common/Item$AppStoreOffer;)Z
    .locals 4

    .prologue
    .line 300
    if-eqz p1, :cond_0

    iget-boolean v0, p1, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->show_timer:Z

    if-eqz v0, :cond_0

    iget-wide v0, p1, Lcom/oculus/horizon/api/common/Item$AppStoreOffer;->end_time:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected showErrorView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 288
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 289
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/EmptyErrorView;->setVisibility(I)V

    .line 290
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mContentArea:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 291
    return-void
.end method

.method protected showLoadingView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 282
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 283
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/EmptyErrorView;->setVisibility(I)V

    .line 284
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mContentArea:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 285
    return-void
.end method

.method protected showProductView()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 294
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 295
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/EmptyErrorView;->setVisibility(I)V

    .line 296
    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mContentArea:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 297
    return-void
.end method

.method protected startCountdownTimer(J)V
    .locals 3

    .prologue
    .line 304
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/PdpFragment;->destroyStoreCountdownTimer()V

    .line 305
    new-instance v1, Lcom/oculus/horizon/store/StoreCountdownTimer;

    iget-object v0, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mLocaleProvider:Ljavax/inject/Provider;

    .line 306
    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Locale;

    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/PdpFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-direct {v1, p1, p2, v0, v2}, Lcom/oculus/horizon/store/StoreCountdownTimer;-><init>(JLjava/util/Locale;Landroid/content/res/Resources;)V

    iput-object v1, p0, Lcom/oculus/horizon/pdp/PdpFragment;->mStoreCountdownTimer:Lcom/oculus/horizon/store/StoreCountdownTimer;

    .line 307
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/PdpFragment;->refreshCountdownTimer()V

    .line 308
    return-void
.end method

.method protected abstract updateTitleBar()V
.end method
