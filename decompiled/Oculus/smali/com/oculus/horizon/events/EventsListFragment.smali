.class public abstract Lcom/oculus/horizon/events/EventsListFragment;
.super Lcom/oculus/horizon/base/OculusBaseFragment;
.source "EventsListFragment.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;",
        ">",
        "Lcom/oculus/horizon/base/OculusBaseFragment;"
    }
.end annotation


# instance fields
.field protected mAdapter:Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field protected mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

.field private final mHandler:Landroid/os/Handler;

.field protected mProgressBar:Landroid/widget/ProgressBar;

.field private mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field private final mRefreshEvents:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;-><init>()V

    .line 30
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/events/EventsListFragment;->mHandler:Landroid/os/Handler;

    .line 31
    new-instance v0, Lcom/oculus/horizon/events/EventsListFragment$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/events/EventsListFragment$1;-><init>(Lcom/oculus/horizon/events/EventsListFragment;)V

    iput-object v0, p0, Lcom/oculus/horizon/events/EventsListFragment;->mRefreshEvents:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/events/EventsListFragment;)Ljava/lang/Runnable;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oculus/horizon/events/EventsListFragment;->mRefreshEvents:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/events/EventsListFragment;)Landroid/os/Handler;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oculus/horizon/events/EventsListFragment;->mHandler:Landroid/os/Handler;

    return-object v0
.end method


# virtual methods
.method protected abstract createAdapter()Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0, p1}, Lcom/oculus/horizon/base/OculusBaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 46
    invoke-virtual {p0}, Lcom/oculus/horizon/events/EventsListFragment;->createAdapter()Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/events/EventsListFragment;->mAdapter:Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;

    .line 47
    return-void
.end method

.method public onDestroyView()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 80
    iput-object v0, p0, Lcom/oculus/horizon/events/EventsListFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    .line 81
    iput-object v0, p0, Lcom/oculus/horizon/events/EventsListFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 82
    iput-object v0, p0, Lcom/oculus/horizon/events/EventsListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 84
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onDestroyView()V

    .line 85
    return-void
.end method

.method public onPause()V
    .locals 2

    .prologue
    .line 74
    iget-object v0, p0, Lcom/oculus/horizon/events/EventsListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oculus/horizon/events/EventsListFragment;->mRefreshEvents:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 75
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onPause()V

    .line 76
    return-void
.end method

.method public onResume()V
    .locals 2

    .prologue
    .line 67
    invoke-super {p0}, Lcom/oculus/horizon/base/OculusBaseFragment;->onResume()V

    .line 69
    iget-object v0, p0, Lcom/oculus/horizon/events/EventsListFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lcom/oculus/horizon/events/EventsListFragment;->mRefreshEvents:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 70
    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p2    # Landroid/os/Bundle;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 51
    invoke-super {p0, p1, p2}, Lcom/oculus/horizon/base/OculusBaseFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    .line 54
    sget v0, Lcom/oculus/horizon/R$id;->recycler_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/oculus/horizon/events/EventsListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 55
    sget v0, Lcom/oculus/horizon/R$id;->empty_error_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/EmptyErrorView;

    iput-object v0, p0, Lcom/oculus/horizon/events/EventsListFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    .line 56
    sget v0, Lcom/oculus/horizon/R$id;->progress:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/oculus/horizon/events/EventsListFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 59
    new-instance v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/oculus/horizon/events/EventsListFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/recyclerview/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 60
    iget-object v1, p0, Lcom/oculus/horizon/events/EventsListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$LayoutManager;)V

    .line 61
    iget-object v0, p0, Lcom/oculus/horizon/events/EventsListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Lcom/oculus/horizon/events/view/LineDividerDecoration;

    invoke-virtual {p0}, Lcom/oculus/horizon/events/EventsListFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/oculus/horizon/events/view/LineDividerDecoration;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$ItemDecoration;)V

    .line 62
    iget-object v0, p0, Lcom/oculus/horizon/events/EventsListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v1, p0, Lcom/oculus/horizon/events/EventsListFragment;->mAdapter:Lcom/oculus/horizon/events/adapters/BaseEventsAdapter;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$Adapter;)V

    .line 63
    return-void
.end method

.method protected setStatusLoadFailure()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 100
    iget-object v0, p0, Lcom/oculus/horizon/events/EventsListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 101
    iget-object v0, p0, Lcom/oculus/horizon/events/EventsListFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/EmptyErrorView;->setVisibility(I)V

    .line 102
    iget-object v0, p0, Lcom/oculus/horizon/events/EventsListFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 103
    return-void
.end method

.method protected setStatusLoadSuccess()V
    .locals 3

    .prologue
    const/16 v2, 0x8

    .line 94
    iget-object v0, p0, Lcom/oculus/horizon/events/EventsListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 95
    iget-object v0, p0, Lcom/oculus/horizon/events/EventsListFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/widget/EmptyErrorView;->setVisibility(I)V

    .line 96
    iget-object v0, p0, Lcom/oculus/horizon/events/EventsListFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 97
    return-void
.end method

.method protected setStatusLoading()V
    .locals 2

    .prologue
    const/16 v1, 0x8

    .line 88
    iget-object v0, p0, Lcom/oculus/horizon/events/EventsListFragment;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 89
    iget-object v0, p0, Lcom/oculus/horizon/events/EventsListFragment;->mEmptyErrorView:Lcom/oculus/horizon/widget/EmptyErrorView;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/EmptyErrorView;->setVisibility(I)V

    .line 90
    iget-object v0, p0, Lcom/oculus/horizon/events/EventsListFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 91
    return-void
.end method
