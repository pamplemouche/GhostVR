.class public Lcom/oculus/horizon/pdp/ReviewsFragment;
.super Lcom/oculus/horizon/base/OculusBaseFragment;
.source "ReviewsFragment.java"

# interfaces
.implements Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;
.implements Lcom/oculus/horizon/pdp/util/ReviewPager$Listener;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

.field private mFilterMenuModel:Lcom/google/common/collect/ImmutableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableMap",
            "<",
            "Ljava/lang/String;",
            "Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;",
            ">;"
        }
    .end annotation
.end field

.field private mHasFirstPage:Z

.field private mItemId:Ljava/lang/String;

.field private mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

.field private mLoadingIndicator:Landroid/widget/ProgressBar;

.field private mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mPager:Lcom/oculus/horizon/util/Pager;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private mReviewCount:I

.field private mReviewsAdapter:Lcom/oculus/horizon/pdp/adapters/ReviewsAdapter;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mSortOption:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;

.field private mStoreItemMethods:Lcom/oculus/horizon/pdp/StoreItemMethods;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field private mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

.field private mViewerQualityRating:Lcom/oculus/horizon/api/common/Item$QualityRating;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field


# direct methods
.method private static final $ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/pdp/ReviewsFragment;)V
    .locals 1

    .prologue
    .line 39
    sget-boolean v0, Lcom/facebook/ultralight/UL;->USE_STATIC_DI:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Lcom/facebook/inject/FbInjector;->get(Landroid/content/Context;)Lcom/facebook/inject/FbInjector;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/oculus/horizon/pdp/ReviewsFragment;->$ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/pdp/ReviewsFragment;)V

    :goto_0
    return-void

    :cond_0
    const-class v0, Lcom/oculus/horizon/pdp/ReviewsFragment;

    invoke-static {v0, p1, p0}, Lcom/facebook/inject/FbInjector;->injectMe(Ljava/lang/Class;Ljava/lang/Object;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public static final $ul_staticInjectMe(Lcom/facebook/inject/InjectorLike;Lcom/oculus/horizon/pdp/ReviewsFragment;)V
    .locals 1

    .prologue
    .line 39
    invoke-static {p0}, Lcom/oculus/horizon/pdp/StoreItemMethods;->$ul_$xXXcom_oculus_horizon_pdp_StoreItemMethods$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/pdp/StoreItemMethods;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/ReviewsFragment;->mStoreItemMethods:Lcom/oculus/horizon/pdp/StoreItemMethods;

    invoke-static {p0}, Lcom/oculus/horizon/pdp/adapters/ReviewsAdapter;->$ul_$xXXcom_oculus_horizon_pdp_adapters_ReviewsAdapter$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/pdp/adapters/ReviewsAdapter;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/ReviewsFragment;->mReviewsAdapter:Lcom/oculus/horizon/pdp/adapters/ReviewsAdapter;

    invoke-static {p0}, Lcom/oculus/libraryapi/OVRLibraryModule;->$ul_$xXXcom_oculus_libraryapi_OVRLibraryInternal$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/libraryapi/OVRLibraryInternal;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/ReviewsFragment;->mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    invoke-static {p0}, Lcom/oculus/horizon/logging/OculusLogger;->$ul_$xXXcom_oculus_horizon_logging_OculusLogger$xXXACCESS_METHOD(Lcom/facebook/inject/InjectorLike;)Lcom/oculus/horizon/logging/OculusLogger;

    move-result-object v0

    iput-object v0, p1, Lcom/oculus/horizon/pdp/ReviewsFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const-class v0, Lcom/oculus/horizon/pdp/ReviewFragment;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/oculus/horizon/pdp/ReviewsFragment;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/pdp/ReviewsFragment;)Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mSortOption:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;

    return-object v0
.end method

.method static synthetic access$002(Lcom/oculus/horizon/pdp/ReviewsFragment;Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;)Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mSortOption:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;

    return-object p1
.end method

.method static synthetic access$100(Lcom/oculus/horizon/pdp/ReviewsFragment;)Lcom/google/common/collect/ImmutableMap;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mFilterMenuModel:Lcom/google/common/collect/ImmutableMap;

    return-object v0
.end method

.method static synthetic access$102(Lcom/oculus/horizon/pdp/ReviewsFragment;Lcom/google/common/collect/ImmutableMap;)Lcom/google/common/collect/ImmutableMap;
    .locals 0

    .prologue
    .line 39
    iput-object p1, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mFilterMenuModel:Lcom/google/common/collect/ImmutableMap;

    return-object p1
.end method

.method static synthetic access$200(Lcom/oculus/horizon/pdp/ReviewsFragment;)Lcom/oculus/horizon/pdp/adapters/ReviewsAdapter;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mReviewsAdapter:Lcom/oculus/horizon/pdp/adapters/ReviewsAdapter;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/pdp/ReviewsFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object v0
.end method

.method static synthetic access$400(Lcom/oculus/horizon/pdp/ReviewsFragment;)Lcom/oculus/horizon/util/Pager;
    .locals 1

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/ReviewsFragment;->getPager()Lcom/oculus/horizon/util/Pager;

    move-result-object v0

    return-object v0
.end method

.method private getPager()Lcom/oculus/horizon/util/Pager;
    .locals 6

    .prologue
    .line 215
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mPager:Lcom/oculus/horizon/util/Pager;

    if-nez v0, :cond_0

    .line 216
    new-instance v0, Lcom/oculus/horizon/pdp/util/ReviewPager;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mItemId:Ljava/lang/String;

    iget-object v2, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mStoreItemMethods:Lcom/oculus/horizon/pdp/StoreItemMethods;

    iget-object v3, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mSortOption:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;

    iget-object v4, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mFilterMenuModel:Lcom/google/common/collect/ImmutableMap;

    const/16 v5, 0xa

    invoke-direct/range {v0 .. v5}, Lcom/oculus/horizon/pdp/util/ReviewPager;-><init>(Ljava/lang/String;Lcom/oculus/horizon/pdp/StoreItemMethods;Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;Lcom/google/common/collect/ImmutableMap;I)V

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mPager:Lcom/oculus/horizon/util/Pager;

    .line 218
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mPager:Lcom/oculus/horizon/util/Pager;

    invoke-virtual {v0, p0}, Lcom/oculus/horizon/util/Pager;->setListener(Lcom/oculus/horizon/util/Pager$Listener;)V

    .line 220
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mPager:Lcom/oculus/horizon/util/Pager;

    return-object v0
.end method

.method private isOwned(Lcom/oculus/horizon/api/common/Item;)Z
    .locals 2

    .prologue
    .line 243
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mLibrary:Lcom/oculus/libraryapi/OVRLibraryInternal;

    invoke-virtual {p1}, Lcom/oculus/horizon/api/common/Item;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/libraryapi/OVRLibraryInternal;->getApp(Ljava/lang/String;)Lcom/oculus/library/model/App;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private showContentView()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 236
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 237
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/EmptyErrorView;->setVisibility(I)V

    .line 238
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 239
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 240
    return-void
.end method

.method private showErrorView()V
    .locals 2

    .prologue
    .line 230
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 231
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/EmptyErrorView;->setVisibility(I)V

    .line 232
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 233
    return-void
.end method

.method private showLoadingView()V
    .locals 2

    .prologue
    .line 224
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 225
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/EmptyErrorView;->setVisibility(I)V

    .line 226
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 227
    return-void
.end method

.method private updateHeader()V
    .locals 6

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ReviewsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ReviewsFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$string;->reviews_header:I

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mReviewCount:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/fragment/app/FragmentActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 190
    return-void
.end method


# virtual methods
.method protected getTrackingView()Lcom/oculus/horizon/logging/TrackingViews$View;
    .locals 2

    .prologue
    .line 173
    sget-object v0, Lcom/oculus/horizon/pdp/ReviewsFragment;->TAG:Ljava/lang/String;

    const-string v1, "getTrackingView was called when it shouldn\'t be due to overridden reportView"

    invoke-static {v0, v1}, Lcom/oculus/errorreporting/ErrorReporter;->softReport(Ljava/lang/String;Ljava/lang/String;)V

    .line 175
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 70
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 39
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ReviewsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/oculus/horizon/pdp/ReviewsFragment;->$ul_injectMe(Landroid/content/Context;Lcom/oculus/horizon/pdp/ReviewsFragment;)V

    .line 74
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ReviewsFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    .line 75
    if-eqz v1, :cond_0

    .line 76
    const-string v0, "item_id"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mItemId:Ljava/lang/String;

    .line 77
    const-string v0, "viewer_rating"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Item$QualityRating;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mViewerQualityRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    .line 78
    const-string v0, "review_count"

    invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mReviewCount:I

    .line 81
    :cond_0
    new-instance v0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;

    sget-object v1, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;->MOST_HELPFUL:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;-><init>(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption$SortFilterOptionEnum;ZLjava/lang/String;)V

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mSortOption:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;

    .line 87
    new-instance v0, Lcom/google/common/collect/ImmutableMap$Builder;

    invoke-direct {v0}, Lcom/google/common/collect/ImmutableMap$Builder;-><init>()V

    .line 88
    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableMap$Builder;->build()Lcom/google/common/collect/ImmutableMap;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mFilterMenuModel:Lcom/google/common/collect/ImmutableMap;

    .line 90
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mItemId:Ljava/lang/String;

    const-string v1, "ItemId is null."

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 91
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2
    .param p2    # Landroid/view/ViewGroup;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param
    .param p3    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 96
    sget v0, Lcom/oculus/horizon/R$layout;->reviews_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 210
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mReviewsAdapter:Lcom/oculus/horizon/pdp/adapters/ReviewsAdapter;

    .line 211
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onDestroy()V

    .line 212
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 194
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mPager:Lcom/oculus/horizon/util/Pager;

    if-eqz v0, :cond_0

    .line 195
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mPager:Lcom/oculus/horizon/util/Pager;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/util/Pager;->setListener(Lcom/oculus/horizon/util/Pager$Listener;)V

    .line 196
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mPager:Lcom/oculus/horizon/util/Pager;

    .line 199
    :cond_0
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 200
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 201
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    .line 202
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 203
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 205
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onDestroyView()V

    .line 206
    return-void
.end method

.method public bridge synthetic onError(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 39
    check-cast p1, Ljava/lang/String;

    check-cast p2, Lcom/oculus/http/core/base/ApiError;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/pdp/ReviewsFragment;->onError(Ljava/lang/String;Lcom/oculus/http/core/base/ApiError;)V

    return-void
.end method

.method public onError(Ljava/lang/String;Lcom/oculus/http/core/base/ApiError;)V
    .locals 3

    .prologue
    .line 281
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mReviewsAdapter:Lcom/oculus/horizon/pdp/adapters/ReviewsAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/adapters/ReviewsAdapter;->setIsLoading(Z)V

    .line 283
    iget-boolean v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mHasFirstPage:Z

    if-eqz v0, :cond_0

    .line 284
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ReviewsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p2}, Lcom/oculus/http/core/base/ApiError;->getMessage()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 288
    :goto_0
    return-void

    .line 286
    :cond_0
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/ReviewsFragment;->showErrorView()V

    goto :goto_0
.end method

.method public onItem(Lcom/oculus/horizon/api/common/Item;)V
    .locals 2

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/ReviewsFragment;->updateHeader()V

    .line 258
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mReviewsAdapter:Lcom/oculus/horizon/pdp/adapters/ReviewsAdapter;

    invoke-direct {p0, p1}, Lcom/oculus/horizon/pdp/ReviewsFragment;->isOwned(Lcom/oculus/horizon/api/common/Item;)Z

    move-result v1

    invoke-virtual {v0, p1, v1}, Lcom/oculus/horizon/pdp/adapters/ReviewsAdapter;->setItem(Lcom/oculus/horizon/api/common/Item;Z)V

    .line 259
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/ReviewsFragment;->showContentView()V

    .line 260
    return-void
.end method

.method public bridge synthetic onPage(Ljava/lang/Object;Ljava/util/List;)V
    .locals 0

    .prologue
    .line 39
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1, p2}, Lcom/oculus/horizon/pdp/ReviewsFragment;->onPage(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method public onPage(Ljava/lang/String;Ljava/util/List;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/oculus/horizon/api/common/Item$QualityRating;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 264
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mHasFirstPage:Z

    .line 266
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mReviewsAdapter:Lcom/oculus/horizon/pdp/adapters/ReviewsAdapter;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/adapters/ReviewsAdapter;->setIsLoading(Z)V

    .line 267
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 277
    :goto_0
    return-void

    .line 271
    :cond_0
    if-nez p1, :cond_1

    .line 272
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mReviewsAdapter:Lcom/oculus/horizon/pdp/adapters/ReviewsAdapter;

    invoke-virtual {v0, p2}, Lcom/oculus/horizon/pdp/adapters/ReviewsAdapter;->setRatings(Ljava/util/List;)V

    .line 273
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mReviewsAdapter:Lcom/oculus/horizon/pdp/adapters/ReviewsAdapter;

    invoke-virtual {v0}, Lcom/oculus/horizon/pdp/adapters/ReviewsAdapter;->notifyDataSetChanged()V

    goto :goto_0

    .line 275
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mReviewsAdapter:Lcom/oculus/horizon/pdp/adapters/ReviewsAdapter;

    invoke-virtual {v0, p2}, Lcom/oculus/horizon/pdp/adapters/ReviewsAdapter;->addRatings(Ljava/util/List;)V

    goto :goto_0
.end method

.method public onRefresh()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 248
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mPager:Lcom/oculus/horizon/util/Pager;

    if-eqz v0, :cond_0

    .line 249
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mPager:Lcom/oculus/horizon/util/Pager;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/util/Pager;->setListener(Lcom/oculus/horizon/util/Pager$Listener;)V

    .line 250
    iput-object v1, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mPager:Lcom/oculus/horizon/util/Pager;

    .line 252
    :cond_0
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/ReviewsFragment;->getPager()Lcom/oculus/horizon/util/Pager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/util/Pager;->loadNextPage()Z

    .line 253
    return-void
.end method

.method public onResume()V
    .locals 0

    .prologue
    .line 163
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onResume()V

    .line 165
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/ReviewsFragment;->updateHeader()V

    .line 167
    invoke-direct {p0}, Lcom/oculus/horizon/pdp/ReviewsFragment;->showLoadingView()V

    .line 168
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ReviewsFragment;->onRefresh()V

    .line 169
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 2
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 101
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/base/OculusBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 103
    sget v0, Lcom/oculus/horizon/R$id;->swipe_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 104
    sget v0, Lcom/oculus/horizon/R$id;->loading_indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 105
    sget v0, Lcom/oculus/horizon/R$id;->empty:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/EmptyErrorView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    .line 106
    sget v0, Lcom/oculus/horizon/R$id;->recycler_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 107
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ReviewsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 109
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mReviewsAdapter:Lcom/oculus/horizon/pdp/adapters/ReviewsAdapter;

    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ReviewsFragment;->getFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/adapters/ReviewsAdapter;->setFragmentManager(Landroidx/fragment/app/FragmentManager;)V

    .line 110
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mReviewsAdapter:Lcom/oculus/horizon/pdp/adapters/ReviewsAdapter;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mViewerQualityRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/adapters/ReviewsAdapter;->setViewerQualityRating(Lcom/oculus/horizon/api/common/Item$QualityRating;)V

    .line 111
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mReviewsAdapter:Lcom/oculus/horizon/pdp/adapters/ReviewsAdapter;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mSortOption:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/adapters/ReviewsAdapter;->setSortOption(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;)V

    .line 113
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mReviewsAdapter:Lcom/oculus/horizon/pdp/adapters/ReviewsAdapter;

    new-instance v1, Lcom/oculus/horizon/pdp/ReviewsFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/pdp/ReviewsFragment$1;-><init>(Lcom/oculus/horizon/pdp/ReviewsFragment;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/adapters/ReviewsAdapter;->setOnSortFilterClickedListener(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$OnItemClickedListener;)V

    .line 126
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, p0}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 128
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 129
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mReviewsAdapter:Lcom/oculus/horizon/pdp/adapters/ReviewsAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 130
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 131
    new-instance v0, Lcom/oculus/horizon/util/ui/LineDividerDecoration;

    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/ReviewsFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/oculus/horizon/util/ui/LineDividerDecoration;-><init>(Landroid/content/Context;)V

    .line 132
    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/util/ui/LineDividerDecoration;->setHeaderCount(I)V

    .line 133
    iget-object v1, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 134
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/oculus/horizon/pdp/ReviewsFragment$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/pdp/ReviewsFragment$2;-><init>(Lcom/oculus/horizon/pdp/ReviewsFragment;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 158
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mHasFirstPage:Z

    .line 159
    return-void
.end method

.method protected reportView()V
    .locals 2

    .prologue
    .line 180
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ReviewsFragment;->mItemId:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportUserReviewsSeeAllView(Ljava/lang/String;)V

    .line 181
    return-void
.end method

.method protected reportViewEnd()V
    .locals 1

    .prologue
    .line 185
    sget-object v0, Lcom/oculus/horizon/logging/TrackingViews$View;->USER_REVIEWS_SEE_ALL:Lcom/oculus/horizon/logging/TrackingViews$View;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/ReviewsFragment;->reportViewEndInternal(Lcom/oculus/horizon/logging/TrackingViews$View;)V

    .line 186
    return-void
.end method
