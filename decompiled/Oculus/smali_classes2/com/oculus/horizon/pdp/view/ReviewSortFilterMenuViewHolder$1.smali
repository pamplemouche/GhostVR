.class Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$1;
.super Ljava/lang/Object;
.source "ReviewSortFilterMenuViewHolder.java"

# interfaces
.implements Landroidx/appcompat/widget/PopupMenu$OnMenuItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;-><init>(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;)V
    .locals 0

    .prologue
    .line 40
    iput-object p1, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$1;->this$0:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$1;->this$0:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v1

    invoke-static {v1}, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->access$100(I)Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->access$002(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;)Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;

    .line 44
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$1;->this$0:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->access$300(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;)Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$OnItemClickedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$1;->this$0:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;

    invoke-static {v1}, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->access$000(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;)Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$1;->this$0:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;

    invoke-static {v2}, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->access$200(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$OnItemClickedListener;->onItemClicked(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;Lcom/google/common/collect/ImmutableMap;)V

    .line 45
    const/4 v0, 0x1

    return v0
.end method
