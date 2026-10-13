.class Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$2;
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
    .line 58
    iput-object p1, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$2;->this$0:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onMenuItemClick(Landroid/view/MenuItem;)Z
    .locals 3

    .prologue
    .line 61
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$2;->this$0:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->access$500(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;)Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$2;->this$0:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;

    invoke-static {v1}, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->access$400(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/widget/SortFilterDropDownMenuWidget;->setText(Ljava/lang/String;)V

    .line 62
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    invoke-static {v0}, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->access$600(I)Ljava/lang/String;

    move-result-object v0

    .line 63
    invoke-static {v0}, Lcom/facebook/common/string/StringUtil;->isEmptyOrNull(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$2;->this$0:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;

    invoke-static {v1}, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->access$700(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 64
    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$2;->this$0:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;

    invoke-static {v1}, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->access$700(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;

    invoke-interface {p1}, Landroid/view/MenuItem;->isChecked()Z

    move-result v1

    iput-boolean v1, v0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;->selected:Z

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$2;->this$0:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;

    invoke-static {v0}, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->access$300(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;)Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$OnItemClickedListener;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$2;->this$0:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;

    invoke-static {v1}, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->access$000(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;)Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;

    move-result-object v1

    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$2;->this$0:Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;

    invoke-static {v2}, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;->access$200(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder;)Lcom/google/common/collect/ImmutableMap;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$OnItemClickedListener;->onItemClicked(Lcom/oculus/horizon/pdp/view/ReviewSortFilterMenuViewHolder$SortFilterOption;Lcom/google/common/collect/ImmutableMap;)V

    .line 67
    const/4 v0, 0x1

    return v0
.end method
