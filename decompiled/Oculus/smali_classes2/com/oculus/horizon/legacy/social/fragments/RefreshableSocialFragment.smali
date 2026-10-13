.class public abstract Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;
.super Lcom/oculus/horizon/legacy/social/fragments/SocialFragment;
.source "RefreshableSocialFragment.java"

# interfaces
.implements Lcom/oculus/horizon/social/SocialDataObserver$SocialDataChangedListener;


# instance fields
.field private mErrorView:Landroid/widget/ScrollView;

.field private mLineDividers:Lcom/oculus/horizon/util/ui/LineDividerDecoration;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private mLoadingIndicator:Landroid/widget/ProgressBar;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mSocialDataObserver:Lcom/oculus/horizon/social/SocialDataObserver;

.field private mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 21
    invoke-direct {p0}, Lcom/oculus/horizon/legacy/social/fragments/SocialFragment;-><init>()V

    .line 30
    new-instance v0, Lcom/oculus/horizon/social/SocialDataObserver;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/social/SocialDataObserver;-><init>(Lcom/oculus/horizon/social/SocialDataObserver$SocialDataChangedListener;)V

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mSocialDataObserver:Lcom/oculus/horizon/social/SocialDataObserver;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;)Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;
    .locals 1

    .prologue
    .line 21
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    return-object v0
.end method


# virtual methods
.method protected canScroll()Z
    .locals 1

    .prologue
    .line 103
    const/4 v0, 0x1

    return v0
.end method

.method protected final destroyViews()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->getAdapter()Lcom/oculus/horizon/legacy/social/adapters/RefreshableSocialAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mSocialDataObserver:Lcom/oculus/horizon/social/SocialDataObserver;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/legacy/social/adapters/RefreshableSocialAdapter;->unregisterAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 126
    iput-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mErrorView:Landroid/widget/ScrollView;

    .line 127
    iput-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 128
    iput-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 129
    iput-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 130
    iput-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mLineDividers:Lcom/oculus/horizon/util/ui/LineDividerDecoration;

    .line 131
    return-void
.end method

.method protected abstract getAdapter()Lcom/oculus/horizon/legacy/social/adapters/RefreshableSocialAdapter;
.end method

.method protected bridge synthetic getAdapter()Lcom/oculus/horizon/legacy/social/adapters/SocialAdapter;
    .locals 1

    .prologue
    .line 21
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->getAdapter()Lcom/oculus/horizon/legacy/social/adapters/RefreshableSocialAdapter;

    move-result-object v0

    return-object v0
.end method

.method protected isRefreshSwipeEnabled()Z
    .locals 1

    .prologue
    .line 108
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->canScroll()Z

    move-result v0

    return v0
.end method

.method public final onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 2

    .prologue
    .line 35
    sget v0, Lcom/oculus/horizon/R$layout;->social_fragment:I

    const/4 v1, 0x0

    invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final onSocialDataChanged()V
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    if-eqz v0, :cond_0

    .line 115
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->getAdapter()Lcom/oculus/horizon/legacy/social/adapters/RefreshableSocialAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/adapters/RefreshableSocialAdapter;->isInErrorState()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 116
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->showErrorState()V

    .line 121
    :cond_0
    :goto_0
    return-void

    .line 117
    :cond_1
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->getAdapter()Lcom/oculus/horizon/legacy/social/adapters/RefreshableSocialAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/legacy/social/adapters/RefreshableSocialAdapter;->isLoaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 118
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->showLoadedState()V

    goto :goto_0
.end method

.method public final onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 40
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/legacy/social/fragments/SocialFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 41
    sget v0, Lcom/oculus/horizon/R$id;->swipe_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 42
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-array v1, v4, [I

    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oculus/horizon/R$color;->oculus_black_4:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    aput v2, v1, v5

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setColorSchemeColors([I)V

    .line 43
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    new-instance v1, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment$1;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment$1;-><init>(Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;)V

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setOnRefreshListener(Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout$OnRefreshListener;)V

    .line 50
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->isRefreshSwipeEnabled()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setEnabled(Z)V

    .line 52
    sget v0, Lcom/oculus/horizon/R$id;->social_error_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ScrollView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mErrorView:Landroid/widget/ScrollView;

    .line 53
    sget v0, Lcom/oculus/horizon/R$id;->social_loading_indicator:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    .line 55
    new-instance v1, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment$2;

    .line 56
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-direct {v1, p0, v0, v4, v5}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment$2;-><init>(Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;Landroid/content/Context;IZ)V

    .line 63
    sget v0, Lcom/oculus/horizon/R$id;->recycler_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 64
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v4}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 65
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 66
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->getAdapter()Lcom/oculus/horizon/legacy/social/adapters/RefreshableSocialAdapter;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 68
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment$3;

    invoke-direct {v2, p0, v1}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment$3;-><init>(Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;Landroidx/recyclerview/widget/LinearLayoutManager;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;)V

    .line 91
    new-instance v0, Lcom/oculus/horizon/util/ui/LineDividerDecoration;

    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v4}, Lcom/oculus/horizon/util/ui/LineDividerDecoration;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mLineDividers:Lcom/oculus/horizon/util/ui/LineDividerDecoration;

    .line 92
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mLineDividers:Lcom/oculus/horizon/util/ui/LineDividerDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 94
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->showLoadingState()V

    .line 95
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->getAdapter()Lcom/oculus/horizon/legacy/social/adapters/RefreshableSocialAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mSocialDataObserver:Lcom/oculus/horizon/social/SocialDataObserver;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/legacy/social/adapters/RefreshableSocialAdapter;->registerAdapterDataObserver(Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;)V

    .line 96
    return-void
.end method

.method protected setLineDividersVisible(Z)V
    .locals 3

    .prologue
    .line 157
    if-eqz p1, :cond_1

    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mLineDividers:Lcom/oculus/horizon/util/ui/LineDividerDecoration;

    if-nez v0, :cond_1

    .line 158
    new-instance v0, Lcom/oculus/horizon/util/ui/LineDividerDecoration;

    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Lcom/oculus/horizon/util/ui/LineDividerDecoration;-><init>(Landroid/content/Context;Z)V

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mLineDividers:Lcom/oculus/horizon/util/ui/LineDividerDecoration;

    .line 159
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mLineDividers:Lcom/oculus/horizon/util/ui/LineDividerDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 164
    :cond_0
    :goto_0
    return-void

    .line 160
    :cond_1
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mLineDividers:Lcom/oculus/horizon/util/ui/LineDividerDecoration;

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mLineDividers:Lcom/oculus/horizon/util/ui/LineDividerDecoration;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->removeItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 162
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mLineDividers:Lcom/oculus/horizon/util/ui/LineDividerDecoration;

    goto :goto_0
.end method

.method protected showErrorState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 142
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 143
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mErrorView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 146
    return-void
.end method

.method protected showLoadedState()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    const/4 v1, 0x0

    .line 150
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 151
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mErrorView:Landroid/widget/ScrollView;

    invoke-virtual {v0, v2}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 152
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 153
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v1}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 154
    return-void
.end method

.method protected showLoadingState()V
    .locals 2

    .prologue
    .line 135
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mLoadingIndicator:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 136
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mErrorView:Landroid/widget/ScrollView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ScrollView;->setVisibility(I)V

    .line 137
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/RefreshableSocialFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 138
    return-void
.end method
