.class public Lcom/oculus/horizon/libraryui/SavedItemsAdapter$SavedHomeFeedItemViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "SavedItemsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/libraryui/SavedItemsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "SavedHomeFeedItemViewHolder"
.end annotation


# instance fields
.field public final contextButton:Landroid/widget/ImageView;

.field public final imageView:Lcom/facebook/drawee/view/SimpleDraweeView;

.field public final nameView:Landroid/widget/TextView;

.field final synthetic this$0:Lcom/oculus/horizon/libraryui/SavedItemsAdapter;


# direct methods
.method public constructor <init>(Lcom/oculus/horizon/libraryui/SavedItemsAdapter;Landroid/view/View;)V
    .locals 1

    .prologue
    .line 32
    iput-object p1, p0, Lcom/oculus/horizon/libraryui/SavedItemsAdapter$SavedHomeFeedItemViewHolder;->this$0:Lcom/oculus/horizon/libraryui/SavedItemsAdapter;

    .line 33
    invoke-direct {p0, p2}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 35
    sget v0, Lcom/oculus/horizon/R$id;->image_view:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/SavedItemsAdapter$SavedHomeFeedItemViewHolder;->imageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 36
    sget v0, Lcom/oculus/horizon/R$id;->title:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/SavedItemsAdapter$SavedHomeFeedItemViewHolder;->nameView:Landroid/widget/TextView;

    .line 37
    sget v0, Lcom/oculus/horizon/R$id;->context_button:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/libraryui/SavedItemsAdapter$SavedHomeFeedItemViewHolder;->contextButton:Landroid/widget/ImageView;

    .line 38
    return-void
.end method


# virtual methods
.method public setClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedItemsAdapter$SavedHomeFeedItemViewHolder;->imageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, p1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 42
    return-void
.end method

.method public setContextClickListener(Landroid/view/View$OnClickListener;)V
    .locals 1

    .prologue
    .line 45
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedItemsAdapter$SavedHomeFeedItemViewHolder;->contextButton:Landroid/widget/ImageView;

    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    return-void
.end method

.method public setFaded(Z)V
    .locals 4

    .prologue
    .line 49
    if-eqz p1, :cond_0

    .line 50
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedItemsAdapter$SavedHomeFeedItemViewHolder;->imageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 51
    invoke-virtual {v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    new-instance v1, Landroid/graphics/drawable/ColorDrawable;

    iget-object v2, p0, Lcom/oculus/horizon/libraryui/SavedItemsAdapter$SavedHomeFeedItemViewHolder;->this$0:Lcom/oculus/horizon/libraryui/SavedItemsAdapter;

    .line 54
    invoke-static {v2}, Lcom/oculus/horizon/libraryui/SavedItemsAdapter;->access$000(Lcom/oculus/horizon/libraryui/SavedItemsAdapter;)Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/oculus/horizon/R$color;->saved_deletion_progress_white_overlay:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-direct {v1, v2}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    .line 52
    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->setOverlayImage(Landroid/graphics/drawable/Drawable;)V

    .line 58
    :goto_0
    return-void

    .line 56
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/libraryui/SavedItemsAdapter$SavedHomeFeedItemViewHolder;->imageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0}, Lcom/facebook/drawee/view/SimpleDraweeView;->getHierarchy()Lcom/facebook/drawee/interfaces/DraweeHierarchy;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/generic/GenericDraweeHierarchy;->setOverlayImage(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0
.end method
