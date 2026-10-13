.class Lcom/oculus/horizon/store/StoreSectionFragment$3;
.super Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;
.source "StoreSectionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/store/StoreSectionFragment;->loadItems(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/store/StoreSectionFragment;

.field final synthetic val$mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/store/StoreSectionFragment;Landroidx/recyclerview/widget/LinearLayoutManager;)V
    .locals 0

    .prologue
    .line 473
    iput-object p1, p0, Lcom/oculus/horizon/store/StoreSectionFragment$3;->this$0:Lcom/oculus/horizon/store/StoreSectionFragment;

    iput-object p2, p0, Lcom/oculus/horizon/store/StoreSectionFragment$3;->val$mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V
    .locals 3

    .prologue
    .line 477
    invoke-super {p0, p1, p2, p3}, Landroidx/recyclerview/widget/RecyclerView$OnScrollListener;->onScrolled(Landroidx/recyclerview/widget/RecyclerView;II)V

    .line 481
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment$3;->this$0:Lcom/oculus/horizon/store/StoreSectionFragment;

    invoke-static {v0}, Lcom/oculus/horizon/store/StoreSectionFragment;->access$1000(Lcom/oculus/horizon/store/StoreSectionFragment;)Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment$3;->this$0:Lcom/oculus/horizon/store/StoreSectionFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreSectionFragment;->isViewDestroyed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 493
    :cond_0
    :goto_0
    return-void

    .line 485
    :cond_1
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getChildCount()I

    move-result v0

    .line 486
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSectionFragment$3;->val$mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v1}, Landroidx/recyclerview/widget/LinearLayoutManager;->getItemCount()I

    move-result v1

    .line 487
    iget-object v2, p0, Lcom/oculus/horizon/store/StoreSectionFragment$3;->val$mLinearLayoutManager:Landroidx/recyclerview/widget/LinearLayoutManager;

    invoke-virtual {v2}, Landroidx/recyclerview/widget/LinearLayoutManager;->findFirstVisibleItemPosition()I

    move-result v2

    .line 489
    add-int/2addr v0, v2

    if-lt v0, v1, :cond_0

    .line 490
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment$3;->this$0:Lcom/oculus/horizon/store/StoreSectionFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/store/StoreSectionFragment;->startLoadingState()V

    .line 491
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreSectionFragment$3;->this$0:Lcom/oculus/horizon/store/StoreSectionFragment;

    invoke-static {v0}, Lcom/oculus/horizon/store/StoreSectionFragment;->access$1200(Lcom/oculus/horizon/store/StoreSectionFragment;)Lcom/oculus/horizon/store/StoreSectionCache;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreSectionFragment$3;->this$0:Lcom/oculus/horizon/store/StoreSectionFragment;

    invoke-static {v1}, Lcom/oculus/horizon/store/StoreSectionFragment;->access$1100(Lcom/oculus/horizon/store/StoreSectionFragment;)Lcom/oculus/horizon/store/StoreItemAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/oculus/horizon/store/StoreItemAdapter;->getItemCount()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/store/StoreSectionCache;->loadNext(I)V

    goto :goto_0
.end method
