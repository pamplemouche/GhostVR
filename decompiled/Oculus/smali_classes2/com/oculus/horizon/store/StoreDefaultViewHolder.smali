.class public Lcom/oculus/horizon/store/StoreDefaultViewHolder;
.super Lcom/oculus/horizon/store/StoreItemViewHolder;
.source "StoreDefaultViewHolder.java"


# instance fields
.field private mName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroidx/fragment/app/FragmentActivity;ILandroid/view/View;ZLcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;Lcom/oculus/horizon/logging/TrackingViews$View;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct/range {p0 .. p7}, Lcom/oculus/horizon/store/StoreItemViewHolder;-><init>(Landroidx/fragment/app/FragmentActivity;ILandroid/view/View;ZLcom/oculus/horizon/store/StoreItemAdapter$ColorScheme;Lcom/oculus/horizon/logging/TrackingViews$View;Ljava/lang/String;)V

    .line 29
    return-void
.end method


# virtual methods
.method public bindModel(Lcom/oculus/horizon/store/StoreItemModel;Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 43
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreDefaultViewHolder;->mName:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/oculus/horizon/store/StoreItemModel;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 44
    iget-boolean v0, p0, Lcom/oculus/horizon/store/StoreDefaultViewHolder;->mShouldUseSquareImage:Z

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oculus/horizon/store/StoreItemModel;->squareImageSource:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oculus/horizon/store/StoreItemModel;->squareImageSource:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/store/StoreDefaultViewHolder;->loadImageView(Ljava/lang/String;)V

    .line 48
    invoke-virtual {p0}, Lcom/oculus/horizon/store/StoreDefaultViewHolder;->setOnTouchListener()V

    .line 49
    return-void

    .line 44
    :cond_0
    iget-object v0, p1, Lcom/oculus/horizon/store/StoreItemModel;->imageSource:Ljava/lang/String;

    goto :goto_0
.end method

.method public initViews()V
    .locals 2

    .prologue
    .line 33
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreDefaultViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->name:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreDefaultViewHolder;->mName:Landroid/widget/TextView;

    .line 34
    iget-object v0, p0, Lcom/oculus/horizon/store/StoreDefaultViewHolder;->itemView:Landroid/view/View;

    sget v1, Lcom/oculus/horizon/R$id;->image:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/oculus/horizon/store/StoreDefaultViewHolder;->mImage:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 35
    sget v0, Lcom/oculus/horizon/R$id;->price:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/store/StoreDefaultViewHolder;->hideIfViewExists(I)V

    .line 36
    sget v0, Lcom/oculus/horizon/R$id;->promo_benefit_badge_view:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/store/StoreDefaultViewHolder;->hideIfViewExists(I)V

    .line 37
    sget v0, Lcom/oculus/horizon/R$id;->stars:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/store/StoreDefaultViewHolder;->hideIfViewExists(I)V

    .line 38
    sget v0, Lcom/oculus/horizon/R$id;->review_count:I

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/store/StoreDefaultViewHolder;->hideIfViewExists(I)V

    .line 39
    return-void
.end method
