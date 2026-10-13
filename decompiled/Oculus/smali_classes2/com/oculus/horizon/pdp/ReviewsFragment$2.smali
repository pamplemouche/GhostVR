.class Lcom/oculus/horizon/pdp/ReviewsFragment$2;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "ReviewsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/pdp/ReviewsFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/pdp/ReviewsFragment;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/pdp/ReviewsFragment;)V
    .locals 0

    .prologue
    .line 135
    iput-object p1, p0, Lcom/oculus/horizon/pdp/ReviewsFragment$2;->this$0:Lcom/oculus/horizon/pdp/ReviewsFragment;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    .prologue
    .line 139
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 142
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment$2;->this$0:Lcom/oculus/horizon/pdp/ReviewsFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/pdp/ReviewsFragment;->isViewDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 146
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    .line 147
    iget-object v1, p0, Lcom/oculus/horizon/pdp/ReviewsFragment$2;->this$0:Lcom/oculus/horizon/pdp/ReviewsFragment;

    invoke-static {v1}, Lcom/oculus/horizon/pdp/ReviewsFragment;->access$300(Lcom/oculus/horizon/pdp/ReviewsFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getItemCount()I

    move-result v1

    .line 148
    iget-object v2, p0, Lcom/oculus/horizon/pdp/ReviewsFragment$2;->this$0:Lcom/oculus/horizon/pdp/ReviewsFragment;

    invoke-static {v2}, Lcom/oculus/horizon/pdp/ReviewsFragment;->access$300(Lcom/oculus/horizon/pdp/ReviewsFragment;)Landroidx/recyclerview/widget/LinearLayoutManager;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    .line 150
    add-int/2addr v0, v2

    if-lt v0, v1, :cond_0

    .line 151
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment$2;->this$0:Lcom/oculus/horizon/pdp/ReviewsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/pdp/ReviewsFragment;->access$400(Lcom/oculus/horizon/pdp/ReviewsFragment;)Lcom/oculus/horizon/util/Pager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/oculus/horizon/util/Pager;->loadNextPage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment$2;->this$0:Lcom/oculus/horizon/pdp/ReviewsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/pdp/ReviewsFragment;->access$200(Lcom/oculus/horizon/pdp/ReviewsFragment;)Lcom/oculus/horizon/pdp/adapters/ReviewsAdapter;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/adapters/ReviewsAdapter;->setIsLoading(Z)V

    goto :goto_0
.end method
