.class Lcom/oculus/horizon/pdp/ReviewsFragment$1;
.super Ljava/lang/Object;
.source "ReviewsFragment.java"

# interfaces
.implements Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$OnItemClickedListener;


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
    .line 114
    iput-object p1, p0, Lcom/oculus/horizon/pdp/ReviewsFragment$1;->this$0:Lcom/oculus/horizon/pdp/ReviewsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClicked(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;Lcom/google/common/collect/ImmutableMap;)V
    .locals 2

    .prologue
    .line 119
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment$1;->this$0:Lcom/oculus/horizon/pdp/ReviewsFragment;

    invoke-static {v0, p1}, Lcom/oculus/horizon/pdp/ReviewsFragment;->access$002(Lcom/oculus/horizon/pdp/ReviewsFragment;Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;)Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;

    .line 120
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment$1;->this$0:Lcom/oculus/horizon/pdp/ReviewsFragment;

    invoke-static {v0, p2}, Lcom/oculus/horizon/pdp/ReviewsFragment;->access$102(Lcom/oculus/horizon/pdp/ReviewsFragment;Lcom/google/common/collect/ImmutableMap;)Lcom/google/common/collect/ImmutableMap;

    .line 121
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment$1;->this$0:Lcom/oculus/horizon/pdp/ReviewsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/pdp/ReviewsFragment;->access$200(Lcom/oculus/horizon/pdp/ReviewsFragment;)Lcom/oculus/horizon/pdp/adapters/ReviewsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ReviewsFragment$1;->this$0:Lcom/oculus/horizon/pdp/ReviewsFragment;

    invoke-static {v1}, Lcom/oculus/horizon/pdp/ReviewsFragment;->access$000(Lcom/oculus/horizon/pdp/ReviewsFragment;)Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/adapters/ReviewsAdapter;->setSortOption(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;)V

    .line 122
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment$1;->this$0:Lcom/oculus/horizon/pdp/ReviewsFragment;

    invoke-static {v0}, Lcom/oculus/horizon/pdp/ReviewsFragment;->access$200(Lcom/oculus/horizon/pdp/ReviewsFragment;)Lcom/oculus/horizon/pdp/adapters/ReviewsAdapter;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/pdp/ReviewsFragment$1;->this$0:Lcom/oculus/horizon/pdp/ReviewsFragment;

    invoke-static {v1}, Lcom/oculus/horizon/pdp/ReviewsFragment;->access$100(Lcom/oculus/horizon/pdp/ReviewsFragment;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/adapters/ReviewsAdapter;->setFilterMenuModel(Lcom/google/common/collect/ImmutableMap;)V

    .line 123
    iget-object v0, p0, Lcom/oculus/horizon/pdp/ReviewsFragment$1;->this$0:Lcom/oculus/horizon/pdp/ReviewsFragment;

    invoke-virtual {v0}, Lcom/oculus/horizon/pdp/ReviewsFragment;->onRefresh()V

    .line 124
    return-void
.end method
