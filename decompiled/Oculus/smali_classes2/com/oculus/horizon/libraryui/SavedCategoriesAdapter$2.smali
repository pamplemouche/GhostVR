.class Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$2;
.super Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;
.source "SavedCategoriesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter;->onBindViewHolder(Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$SavedCategoryViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter;

.field final synthetic val$category:Lcom/oculus/horizon/libraryui/SavedCategory;

.field final synthetic val$viewHolder:Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$SavedCategoryViewHolder;


# direct methods
.method constructor <init>(Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter;Lcom/oculus/horizon/libraryui/SavedCategory;Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$SavedCategoryViewHolder;)V
    .locals 0

    .prologue
    .line 134
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$2;->this$0:Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter;

    iput-object p2, p0, Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$2;->val$category:Lcom/oculus/horizon/libraryui/SavedCategory;

    iput-object p3, p0, Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$2;->val$viewHolder:Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$SavedCategoryViewHolder;

    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$AdapterDataObserver;-><init>()V

    return-void
.end method

.method private onDataUpdate()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 136
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$2;->this$0:Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter;

    invoke-static {v0}, Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter;->access$100(Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter;)Ljava/util/Map;

    move-result-object v0

    iget-object v1, p0, Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$2;->val$category:Lcom/oculus/horizon/libraryui/SavedCategory;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView$Adapter;

    .line 137
    if-eqz v0, :cond_0

    .line 138
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 139
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$2;->val$viewHolder:Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$SavedCategoryViewHolder;

    iget-object v0, v0, Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$SavedCategoryViewHolder;->noItemsMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 140
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$2;->val$viewHolder:Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$SavedCategoryViewHolder;

    iget-object v0, v0, Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$SavedCategoryViewHolder;->seeAllTextView:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 141
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$2;->val$viewHolder:Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$SavedCategoryViewHolder;

    iget-object v0, v0, Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$SavedCategoryViewHolder;->rowRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v3}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    .line 148
    :cond_0
    :goto_0
    return-void

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$2;->val$viewHolder:Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$SavedCategoryViewHolder;

    iget-object v0, v0, Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$SavedCategoryViewHolder;->noItemsMessageView:Landroid/widget/TextView;

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 144
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$2;->val$viewHolder:Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$SavedCategoryViewHolder;

    iget-object v0, v0, Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$SavedCategoryViewHolder;->seeAllTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 145
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$2;->val$viewHolder:Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$SavedCategoryViewHolder;

    iget-object v0, v0, Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$SavedCategoryViewHolder;->rowRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setVisibility(I)V

    goto :goto_0
.end method


# virtual methods
.method public onChanged()V
    .locals 0

    .prologue
    .line 152
    invoke-direct {p0}, Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$2;->onDataUpdate()V

    .line 153
    return-void
.end method

.method public onItemRangeRemoved(II)V
    .locals 0

    .prologue
    .line 157
    invoke-direct {p0}, Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$2;->onDataUpdate()V

    .line 158
    return-void
.end method
