.class public Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder;
.super Lcom/oculus/horizon/pdp/view/ReviewViewHolder;
.source "ViewerReviewViewHolder.java"


# instance fields
.field private mBinary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

.field private mItemId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Lcom/oculus/horizon/pdp/StoreItemMethods;Lcom/oculus/horizon/social/SocialUtils;ZZ)V
    .locals 2
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ConstructorMayLeakThis"
        }
    .end annotation

    .prologue
    .line 33
    invoke-direct/range {p0 .. p7}, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;-><init>(Landroid/view/View;Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Lcom/oculus/horizon/pdp/StoreItemMethods;Lcom/oculus/horizon/social/SocialUtils;ZZ)V

    .line 42
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder;->mMenuButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder$1;

    invoke-direct {v1, p0, p1, p2, p3}, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder$1;-><init>(Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder;Landroid/view/View;Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 68
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder;->mItemId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder;)Lcom/oculus/horizon/api/common/Item$AndroidBinary;
    .locals 1

    .prologue
    .line 19
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder;->mBinary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    return-object v0
.end method


# virtual methods
.method public bind(Lcom/oculus/horizon/api/common/Item$QualityRating;Ljava/lang/String;Lcom/oculus/horizon/api/common/Item$AndroidBinary;)V
    .locals 5

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 79
    invoke-super {p0, p1, p2, p3}, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->bind(Lcom/oculus/horizon/api/common/Item$QualityRating;Ljava/lang/String;Lcom/oculus/horizon/api/common/Item$AndroidBinary;)V

    .line 80
    iput-object p2, p0, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder;->mItemId:Ljava/lang/String;

    .line 81
    iput-object p3, p0, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder;->mBinary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    .line 82
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder;->mNameText:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder;->mHelpfulButton:Lcom/oculus/horizon/pdp/widget/PdpRankReviewButton;

    invoke-virtual {v2}, Lcom/oculus/horizon/pdp/widget/PdpRankReviewButton;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v4, Lcom/oculus/horizon/R$string;->pdp_viewer_review_title:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 84
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/oculus/horizon/api/common/Item$QualityRating;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    .line 85
    :goto_0
    iget-object v4, p0, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder;->mHelpfulButton:Lcom/oculus/horizon/pdp/widget/PdpRankReviewButton;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder;->shouldDisplayReview()Z

    move-result v2

    if-eqz v2, :cond_1

    move v2, v1

    :goto_1
    invoke-virtual {v4, v2}, Lcom/oculus/horizon/pdp/widget/PdpRankReviewButton;->setVisibility(I)V

    .line 86
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder;->mMenuButton:Landroid/widget/ImageView;

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder;->shouldDisplayReview()Z

    move-result v0

    if-eqz v0, :cond_2

    :goto_2
    invoke-virtual {v2, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 87
    return-void

    :cond_0
    move v0, v1

    .line 84
    goto :goto_0

    :cond_1
    move v2, v3

    .line 85
    goto :goto_1

    :cond_2
    move v1, v3

    .line 86
    goto :goto_2
.end method

.method protected renderRankReview(Lcom/oculus/horizon/api/common/Item$QualityRating;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 72
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder;->mHelpfulButton:Lcom/oculus/horizon/pdp/widget/PdpRankReviewButton;

    invoke-virtual {v0, v2}, Lcom/oculus/horizon/pdp/widget/PdpRankReviewButton;->setEnabled(Z)V

    .line 73
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder;->mHelpfulButton:Lcom/oculus/horizon/pdp/widget/PdpRankReviewButton;

    iget v1, p1, Lcom/oculus/horizon/api/common/Item$QualityRating;->review_helpful_count:I

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/widget/PdpRankReviewButton;->setCount(I)V

    .line 74
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder;->mMenuButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 75
    return-void
.end method

.method protected shouldDisplayReview()Z
    .locals 1

    .prologue
    .line 91
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder;->mRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
