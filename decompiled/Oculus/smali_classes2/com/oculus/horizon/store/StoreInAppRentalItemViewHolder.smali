.class public Lcom/oculus/horizon/store/StoreInAppRentalItemViewHolder;
.super Lcom/oculus/horizon/store/StoreItemViewHolder;
.source "StoreInAppRentalItemViewHolder.java"


# instance fields
.field private mGlobeBadgeView:Landroid/widget/ImageView;

.field private mName:Landroid/widget/TextView;

.field private mPrice:Landroid/widget/TextView;

.field private mPromBenefitBadgeView:Landroid/widget/TextView;

.field private mShouldHideName:Z


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;ILandroid/view/View;ZLcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;Lcom/oculus/horizon/logging/TrackingViews$View;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 35
    invoke-direct/range {p0 .. p7}, Lcom/oculus/horizon/store/StoreItemViewHolder;-><init>(Landroidx/fragment/app/FragmentActivity;ILandroid/view/View;ZLcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;Lcom/oculus/horizon/logging/TrackingViews$View;Ljava/lang/String;)V

    .line 36
    return-void
.end method


# virtual methods
.method public bindModel(Lcom/oculus/horizon/store/StoreItemModel;Ljava/lang/String;)V
    .locals 7

    .prologue
    const/16 v6, 0x8

    const/4 v5, 0x0

    .line 51
    instance-of v0, p1, Lcom/oculus/horizon/store/StoreInAppRentalModel;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 52
    check-cast p1, Lcom/oculus/horizon/store/StoreInAppRentalModel;

    .line 54
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreInAppRentalItemViewHolder;->mName:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oculus/horizon/store/StoreInAppRentalItemViewHolder;->mActivity:Landroidx/fragment/app/FragmentActivity;

    iget-object v2, p1, Lcom/oculus/horizon/store/StoreInAppRentalModel;->name:Ljava/lang/String;

    invoke-static {v1, v2, p2}, Lcom/oculus/horizon/util/TextSpanUtils;->highlightText(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 55
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreInAppRentalItemViewHolder;->mName:Landroid/widget/TextView;

    iget-boolean v0, p0, Lcom/oculus/horizon/store/StoreInAppRentalItemViewHolder;->mShouldHideName:Z

    if-eqz v0, :cond_0

    move v0, v6

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 57
    iget-object v0, p1, Lcom/oculus/horizon/store/StoreInAppRentalModel;->format:Ljava/lang/String;

    invoke-static {v0}, Lcom/oculus/horizon/api/common/Item$CinemaVideo;->is3D(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 58
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreInAppRentalItemViewHolder;->mGlobeBadgeView:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 63
    :goto_1
    iget-object v1, p0, Lcom/oculus/horizon/store/StoreInAppRentalItemViewHolder;->mPrice:Landroid/widget/TextView;

    iget-object v2, p1, Lcom/oculus/horizon/store/StoreInAppRentalModel;->strikethroughPrice:Ljava/lang/String;

    iget-object v3, p1, Lcom/oculus/horizon/store/StoreInAppRentalModel;->price:Ljava/lang/String;

    iget-boolean v4, p1, Lcom/oculus/horizon/store/StoreInAppRentalModel;->isOwnedByCurrentUser:Z

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Lcom/oculus/horizon/store/StoreInAppRentalItemViewHolder;->setPriceTextView(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 65
    iget-boolean v0, p1, Lcom/oculus/horizon/store/StoreInAppRentalModel;->isOwnedByCurrentUser:Z

    if-nez v0, :cond_2

    iget-object v0, p1, Lcom/oculus/horizon/store/StoreInAppRentalModel;->promoBenfit:Ljava/lang/String;

    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 66
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreInAppRentalItemViewHolder;->mPromBenefitBadgeView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/oculus/horizon/store/StoreInAppRentalModel;->promoBenfit:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 67
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreInAppRentalItemViewHolder;->mPromBenefitBadgeView:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 71
    :goto_2
    iget-boolean v0, p0, Lcom/oculus/horizon/store/StoreInAppRentalItemViewHolder;->mShouldUseSquareImage:Z

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/oculus/horizon/store/StoreInAppRentalModel;->squareImageSource:Ljava/lang/String;

    .line 72
    invoke-static {v0}, Lcom/google/common/base/Strings;->isNullOrEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p1, Lcom/oculus/horizon/store/StoreInAppRentalModel;->squareImageSource:Ljava/lang/String;

    .line 71
    :goto_3
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/store/StoreInAppRentalItemViewHolder;->loadImageView(Ljava/lang/String;)V

    .line 76
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/store/StoreInAppRentalItemViewHolder;->setOnClickListener(Lcom/oculus/horizon/store/StoreItemModel;)V

    .line 77
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreInAppRentalItemViewHolder;->setOnTouchListener()V

    .line 78
    return-void

    :cond_0
    move v0, v5

    .line 55
    goto :goto_0

    .line 60
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreInAppRentalItemViewHolder;->mGlobeBadgeView:Landroid/widget/ImageView;

    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_1

    .line 69
    :cond_2
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreInAppRentalItemViewHolder;->mPromBenefitBadgeView:Landroid/widget/TextView;

    invoke-virtual {v0, v6}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_2

    .line 72
    :cond_3
    iget-object v0, p1, Lcom/oculus/horizon/store/StoreInAppRentalModel;->imageSource:Ljava/lang/String;

    goto :goto_3
.end method

.method public initViews()V
    .locals 2

    .prologue
    .line 40
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreInAppRentalItemViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreInAppRentalItemViewHolder;->mName:Landroid/widget/TextView;

    .line 41
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreInAppRentalItemViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->price:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreInAppRentalItemViewHolder;->mPrice:Landroid/widget/TextView;

    .line 42
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreInAppRentalItemViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->globe_badge:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreInAppRentalItemViewHolder;->mGlobeBadgeView:Landroid/widget/ImageView;

    .line 43
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreInAppRentalItemViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreInAppRentalItemViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 44
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreInAppRentalItemViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->promo_benefit_badge_view:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreInAppRentalItemViewHolder;->mPromBenefitBadgeView:Landroid/widget/TextView;

    .line 45
    sget v0, Lcom/oculus/horizon/R$id;->stars:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/store/StoreInAppRentalItemViewHolder;->hideIfViewExists(I)V

    .line 46
    sget v0, Lcom/oculus/horizon/R$id;->review_count:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/store/StoreInAppRentalItemViewHolder;->hideIfViewExists(I)V

    .line 47
    return-void
.end method

.method protected setShouldHideName(Z)V
    .locals 0

    .prologue
    .line 82
    iput-boolean p1, p0, Lcom/oculus/horizon/store/StoreInAppRentalItemViewHolder;->mShouldHideName:Z

    .line 83
    return-void
.end method
