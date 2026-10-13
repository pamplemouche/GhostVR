.class public abstract Lcom/oculus/horizon/feed/BaseFeedFragment;
.super Lcom/oculus/horizon/base/OculusBaseFragment;
.source "BaseFeedFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/feed/BaseFeedFragment$Status;
    }
.end annotation


# instance fields
.field protected mAdapter:Lcom/oculus/horizon/feedbuilder/FeedAdapter;

.field private mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field protected mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field protected mScrollToId:Ljava/lang/String;

.field protected mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;-><init>()V

    return-void
.end method


# virtual methods
.method protected addItemDecorations()V
    .locals 4

    .prologue
    .line 83
    new-instance v0, Lcom/oculus/horizon/util/ui/LineDividerDecoration;

    invoke-virtual {p0}, Lcom/oculus/horizon/feed/BaseFeedFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lcom/oculus/horizon/util/ui/LineDividerDecoration;-><init>(Landroid/content/Context;ZZ)V

    .line 84
    iget-object v1, p0, Lcom/oculus/horizon/feed/BaseFeedFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 85
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .param p1    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 38
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    invoke-virtual {p0}, Lcom/oculus/horizon/feed/BaseFeedFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    .line 41
    if-eqz v0, :cond_0

    .line 42
    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/feed/BaseFeedFragment;->mScrollToId:Ljava/lang/String;

    .line 44
    :cond_0
    return-void
.end method

.method public onDestroyView()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 70
    iput-object v1, p0, Lcom/oculus/horizon/feed/BaseFeedFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 72
    iput-object v1, p0, Lcom/oculus/horizon/feed/BaseFeedFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 73
    iput-object v1, p0, Lcom/oculus/horizon/feed/BaseFeedFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    .line 74
    iput-object v1, p0, Lcom/oculus/horizon/feed/BaseFeedFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 76
    iget-object v0, p0, Lcom/oculus/horizon/feed/BaseFeedFragment;->mAdapter:Lcom/oculus/horizon/feedbuilder/FeedAdapter;

    invoke-virtual {v0}, Lcom/oculus/horizon/feedbuilder/FeedAdapter;->resetBoundViewHolders()V

    .line 77
    iput-object v1, p0, Lcom/oculus/horizon/feed/BaseFeedFragment;->mAdapter:Lcom/oculus/horizon/feedbuilder/FeedAdapter;

    .line 79
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onDestroyView()V

    .line 80
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 48
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/base/OculusBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 49
    invoke-virtual {p0}, Lcom/oculus/horizon/feed/BaseFeedFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 51
    sget v0, Lcom/oculus/horizon/R$id;->progress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/oculus/horizon/feed/BaseFeedFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 53
    sget v0, Lcom/oculus/horizon/R$id;->swipe_refresh_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    iput-object v0, p0, Lcom/oculus/horizon/feed/BaseFeedFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    .line 55
    sget v0, Lcom/oculus/horizon/R$id;->empty_error_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/EmptyErrorView;

    iput-object v0, p0, Lcom/oculus/horizon/feed/BaseFeedFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    .line 57
    sget v0, Lcom/oculus/horizon/R$id;->recycler_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/oculus/horizon/feed/BaseFeedFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 58
    iget-object v0, p0, Lcom/oculus/horizon/feed/BaseFeedFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 60
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 61
    iget-object v1, p0, Lcom/oculus/horizon/feed/BaseFeedFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 63
    invoke-virtual {p0}, Lcom/oculus/horizon/feed/BaseFeedFragment;->addItemDecorations()V

    .line 65
    new-instance v0, Lcom/oculus/horizon/feedbuilder/FeedAdapter;

    invoke-direct {v0}, Lcom/oculus/horizon/feedbuilder/FeedAdapter;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/feed/BaseFeedFragment;->mAdapter:Lcom/oculus/horizon/feedbuilder/FeedAdapter;

    .line 66
    return-void
.end method

.method protected setStatus(Lcom/oculus/horizon/feed/BaseFeedFragment$Status;)V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 97
    sget-object v0, Lcom/oculus/horizon/feed/BaseFeedFragment$1;->$SwitchMap$com$oculus$horizon$feed$BaseFeedFragment$Status:[I

    invoke-virtual {p1}, Lcom/oculus/horizon/feed/BaseFeedFragment$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 105
    iget-object v0, p0, Lcom/oculus/horizon/feed/BaseFeedFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 106
    iget-object v0, p0, Lcom/oculus/horizon/feed/BaseFeedFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setRefreshing(Z)V

    .line 108
    sget-object v0, Lcom/oculus/horizon/feed/BaseFeedFragment$1;->$SwitchMap$com$oculus$horizon$feed$BaseFeedFragment$Status:[I

    invoke-virtual {p1}, Lcom/oculus/horizon/feed/BaseFeedFragment$Status;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_1

    .line 122
    :goto_0
    return-void

    .line 100
    :pswitch_0
    iget-object v0, p0, Lcom/oculus/horizon/feed/BaseFeedFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/oculus/horizon/feed/BaseFeedFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v3}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setVisibility(I)V

    goto :goto_0

    .line 111
    :pswitch_1
    iget-object v0, p0, Lcom/oculus/horizon/feed/BaseFeedFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    invoke-virtual {v0, v3}, Lcom/oculus/horizon/widget/EmptyErrorView;->setVisibility(I)V

    .line 112
    iget-object v0, p0, Lcom/oculus/horizon/feed/BaseFeedFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setVisibility(I)V

    goto :goto_0

    .line 116
    :pswitch_2
    iget-object v0, p0, Lcom/oculus/horizon/feed/BaseFeedFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/EmptyErrorView;->setVisibility(I)V

    .line 117
    iget-object v0, p0, Lcom/oculus/horizon/feed/BaseFeedFragment;->mSwipeRefreshLayout:Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;

    invoke-virtual {v0, v2}, Landroidx/swiperefreshlayout/widget/SwipeRefreshLayout;->setVisibility(I)V

    goto :goto_0

    .line 97
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
    .end packed-switch

    .line 108
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
