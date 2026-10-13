.class public Lcom/oculus/horizon/pdp/view/ReviewsHeaderViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ReviewsHeaderViewHolder.java"


# instance fields
.field private mItem:Lcom/oculus/horizon/api/common/Item;

.field private mReviewButton:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;)V
    .locals 2

    .prologue
    .line 28
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 29
    sget v0, Lcom/oculus/horizon/R$id;->action_review:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewsHeaderViewHolder;->mReviewButton:Landroid/view/View;

    .line 30
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewsHeaderViewHolder;->mReviewButton:Landroid/view/View;

    new-instance v1, Lcom/oculus/horizon/pdp/view/ReviewsHeaderViewHolder$1;

    invoke-direct {v1, p0, p2, p3}, Lcom/oculus/horizon/pdp/view/ReviewsHeaderViewHolder$1;-><init>(Lcom/oculus/horizon/pdp/view/ReviewsHeaderViewHolder;Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/pdp/view/ReviewsHeaderViewHolder;)Lcom/oculus/horizon/api/common/Item;
    .locals 1

    .prologue
    .line 20
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewsHeaderViewHolder;->mItem:Lcom/oculus/horizon/api/common/Item;

    return-object v0
.end method


# virtual methods
.method public bind(Lcom/oculus/horizon/api/common/Item;Z)V
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 47
    iput-object p1, p0, Lcom/oculus/horizon/pdp/view/ReviewsHeaderViewHolder;->mItem:Lcom/oculus/horizon/api/common/Item;

    .line 49
    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->quality_ratings_by_viewer:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->quality_ratings_by_viewer:Ljava/util/List;

    .line 51
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->quality_ratings_by_viewer:Ljava/util/List;

    .line 52
    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/api/common/Item$QualityRating;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/common/Item$QualityRating;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 53
    :goto_0
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/ReviewsHeaderViewHolder;->mReviewButton:Landroid/view/View;

    if-nez v0, :cond_1

    if-eqz p2, :cond_1

    :goto_1
    invoke-virtual {v2, v1}, Landroid/view/View;->setVisibility(I)V

    .line 54
    return-void

    :cond_0
    move v0, v1

    .line 52
    goto :goto_0

    .line 53
    :cond_1
    const/16 v1, 0x8

    goto :goto_1
.end method
