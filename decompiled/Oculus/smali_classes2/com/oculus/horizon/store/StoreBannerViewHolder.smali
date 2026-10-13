.class public Lcom/oculus/horizon/store/StoreBannerViewHolder;
.super Lcom/oculus/horizon/store/StoreItemViewHolder;
.source "StoreBannerViewHolder.java"


# instance fields
.field private mName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;ILandroid/view/View;ZLcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;Lcom/oculus/horizon/logging/TrackingViews$View;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 26
    invoke-direct/range {p0 .. p7}, Lcom/oculus/horizon/store/StoreItemViewHolder;-><init>(Landroidx/fragment/app/FragmentActivity;ILandroid/view/View;ZLcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;Lcom/oculus/horizon/logging/TrackingViews$View;Ljava/lang/String;)V

    .line 27
    return-void
.end method


# virtual methods
.method public bindModel(Lcom/oculus/horizon/store/StoreItemModel;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 41
    instance-of v0, p1, Lcom/oculus/horizon/store/StoreBannerModel;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkArgument(Z)V

    .line 42
    check-cast p1, Lcom/oculus/horizon/store/StoreBannerModel;

    .line 44
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreBannerViewHolder;->mName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/oculus/horizon/store/StoreBannerModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 45
    iget-boolean v0, p0, Lcom/oculus/horizon/store/StoreBannerViewHolder;->mShouldUseSquareImage:Z

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/oculus/horizon/store/StoreBannerModel;->squareImageSource:Ljava/lang/String;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/oculus/horizon/store/StoreBannerModel;->squareImageSource:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/store/StoreBannerViewHolder;->loadImageView(Ljava/lang/String;)V

    .line 50
    iget-object v0, p1, Lcom/oculus/horizon/store/StoreBannerModel;->navigateToSection:Lcom/oculus/horizon/store/StoreSection;

    if-nez v0, :cond_0

    iget-object v0, p1, Lcom/oculus/horizon/store/StoreBannerModel;->storeWideOffer:Lcom/oculus/horizon/store/StoreWideOfferModel;

    if-eqz v0, :cond_2

    .line 51
    :cond_0
    invoke-virtual {p0, p1}, Lcom/oculus/horizon/store/StoreBannerViewHolder;->setOnClickListener(Lcom/oculus/horizon/store/StoreItemModel;)V

    .line 52
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreBannerViewHolder;->setOnTouchListener()V

    .line 56
    :goto_1
    return-void

    .line 45
    :cond_1
    iget-object v0, p1, Lcom/oculus/horizon/store/StoreBannerModel;->imageSource:Ljava/lang/String;

    goto :goto_0

    .line 54
    :cond_2
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreBannerViewHolder;->disableOnTouchListener()V

    goto :goto_1
.end method

.method public initViews()V
    .locals 2

    .prologue
    .line 31
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreBannerViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreBannerViewHolder;->mName:Landroid/widget/TextView;

    .line 32
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreBannerViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreBannerViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 33
    sget v0, Lcom/oculus/horizon/R$id;->price:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/store/StoreBannerViewHolder;->hideIfViewExists(I)V

    .line 34
    sget v0, Lcom/oculus/horizon/R$id;->promo_benefit_badge_view:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/store/StoreBannerViewHolder;->hideIfViewExists(I)V

    .line 35
    sget v0, Lcom/oculus/horizon/R$id;->stars:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/store/StoreBannerViewHolder;->hideIfViewExists(I)V

    .line 36
    sget v0, Lcom/oculus/horizon/R$id;->review_count:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/store/StoreBannerViewHolder;->hideIfViewExists(I)V

    .line 37
    return-void
.end method
