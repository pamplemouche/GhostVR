.class public Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$SavedCategoryViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SavedCategoriesAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "SavedCategoryViewHolder"
.end annotation


# instance fields
.field public final nameView:Landroid/widget/TextView;

.field public final noItemsMessageView:Landroid/widget/TextView;

.field public final rowRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

.field public final seeAllTextView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 38
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 40
    sget v0, Lcom/oculus/horizon/R$id;->row_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$SavedCategoryViewHolder;->nameView:Landroid/widget/TextView;

    .line 41
    sget v0, Lcom/oculus/horizon/R$id;->see_all_text:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$SavedCategoryViewHolder;->seeAllTextView:Landroid/widget/TextView;

    .line 42
    sget v0, Lcom/oculus/horizon/R$id;->row_recycler_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$SavedCategoryViewHolder;->rowRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 43
    sget v0, Lcom/oculus/horizon/R$id;->no_items_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$SavedCategoryViewHolder;->noItemsMessageView:Landroid/widget/TextView;

    .line 44
    return-void
.end method


# virtual methods
.method public setSeeAllClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedCategoriesAdapter$SavedCategoryViewHolder;->seeAllTextView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 48
    return-void
.end method
