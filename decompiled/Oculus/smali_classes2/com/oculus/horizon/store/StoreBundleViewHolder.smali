.class public Lcom/oculus/horizon/store/StoreBundleViewHolder;
.super Lcom/oculus/horizon/store/StoreItemViewHolder;
.source "StoreBundleViewHolder.java"


# instance fields
.field private mName:Landroid/widget/TextView;

.field private mPrice:Landroid/widget/TextView;

.field private mPromBenefitBadgeView:Landroid/widget/TextView;

.field private mShouldHideName:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;ILandroid/view/View;ZLcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;Lcom/oculus/horizon/logging/TrackingViews$View;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 32
    invoke-direct/range {p0 .. p7}, Lcom/oculus/horizon/store/StoreItemViewHolder;-><init>(Landroidx/fragment/app/FragmentActivity;ILandroid/view/View;ZLcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;Lcom/oculus/horizon/logging/TrackingViews$View;Ljava/lang/String;)V

    .line 33
    return-void
.end method


# virtual methods
.method public bindModel(Lcom/oculus/horizon/store/StoreItemModel;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 47
    instance-of v0, p1, Lcom/oculus/horizon/store/StoreBundleModel;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 48
    check-cast p1, Lcom/oculus/horizon/store/StoreBundleModel;

    .line 50
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreBundleViewHolder;->mName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreBundleViewHolder;->mActivity:Landroidx/fragment/app/FragmentActivity;

    iget-object v2, p1, Lcom/oculus/horizon/store/StoreBundleModel;->name:Ljava/lang/String;

    invoke-static {v1, v2, p2}, Lcom/oculus/horizon/util/TextSpanUtils;->highlightText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 51
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreBundleViewHolder;->mName:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/oculus/horizon/store/StoreBundleViewHolder;->mShouldHideName:Z

    if-eqz v0, :cond_0

    move v0, v6

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 53
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreBundleViewHolder;->mPrice:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/oculus/horizon/store/StoreBundleModel;->strikethroughPrice:Ljava/lang/String;

    iget-object v3, p1, Lcom/oculus/horizon/store/StoreBundleModel;->price:Ljava/lang/String;

    iget-boolean v4, p1, Lcom/oculus/horizon/store/StoreBundleModel;->isOwnedByCurrentUser:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/oculus/horizon/store/StoreBundleViewHolder;->setPriceTextView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 55
    iget-boolean v0, p1, Lcom/oculus/horizon/store/StoreBundleModel;->isOwnedByCurrentUser:Z

    if-nez v0, :cond_1

    iget-object v0, p1, Lcom/oculus/horizon/store/StoreBundleModel;->promoBenfit:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 56
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreBundleViewHolder;->mPromBenefitBadgeView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/oculus/horizon/store/StoreBundleModel;->promoBenfit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 57
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreBundleViewHolder;->mPromBenefitBadgeView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 61
    :goto_1
    iget-boolean v0, p0, Lcom/oculus/horizon/store/StoreBundleViewHolder;->mShouldUseSquareImage:Z

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/oculus/horizon/store/StoreBundleModel;->squareImageSource:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p1, Lcom/oculus/horizon/store/StoreBundleModel;->squareImageSource:Ljava/lang/String;

    :goto_2
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/store/StoreBundleViewHolder;->loadImageView(Ljava/lang/String;)V

    .line 66
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/store/StoreBundleViewHolder;->setOnClickListener(Lcom/oculus/horizon/store/StoreItemModel;)V

    .line 67
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreBundleViewHolder;->setOnTouchListener()V

    .line 68
    return-void

    :cond_0
    move v0, v5

    .line 51
    goto :goto_0

    .line 59
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreBundleViewHolder;->mPromBenefitBadgeView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_1

    .line 61
    :cond_2
    iget-object v0, p1, Lcom/oculus/horizon/store/StoreBundleModel;->imageSource:Ljava/lang/String;

    goto :goto_2
.end method

.method public initViews()V
    .locals 2

    .prologue
    .line 37
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreBundleViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreBundleViewHolder;->mName:Landroid/widget/TextView;

    .line 38
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreBundleViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->price:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreBundleViewHolder;->mPrice:Landroid/widget/TextView;

    .line 39
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreBundleViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreBundleViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 40
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreBundleViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->promo_benefit_badge_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreBundleViewHolder;->mPromBenefitBadgeView:Landroid/widget/TextView;

    .line 41
    sget v0, Lcom/oculus/horizon/R$id;->stars:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/store/StoreBundleViewHolder;->hideIfViewExists(I)V

    .line 42
    sget v0, Lcom/oculus/horizon/R$id;->review_count:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/store/StoreBundleViewHolder;->hideIfViewExists(I)V

    .line 43
    return-void
.end method

.method protected setShouldHideName(Z)V
    .locals 0

    .prologue
    .line 72
    iput-boolean p1, p0, Lcom/oculus/horizon/store/StoreBundleViewHolder;->mShouldHideName:Z

    .line 73
    return-void
.end method
