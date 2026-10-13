.class Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;
.super Landroidx/viewpager/widget/PagerAdapter;
.source "ProfilePicturePreselectFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PreselectPagerAdapter"
.end annotation


# instance fields
.field private mItems:Lcom/google/common/collect/ImmutableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;


# direct methods
.method private constructor <init>(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)V
    .locals 1

    .prologue
    .line 314
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;

    invoke-direct {p0}, Landroidx/viewpager/widget/PagerAdapter;-><init>()V

    .line 318
    invoke-static {}, Lcom/google/common/collect/ImmutableList;->of()Lcom/google/common/collect/ImmutableList;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;->mItems:Lcom/google/common/collect/ImmutableList;

    return-void
.end method

.method synthetic constructor <init>(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$1;)V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0, p1}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;-><init>(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)V

    return-void
.end method

.method static synthetic access$1000(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;Landroid/view/View;I)V
    .locals 0

    .prologue
    .line 314
    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;->selectView(Landroid/view/View;I)V

    return-void
.end method

.method private getLayoutParams(I)Landroid/widget/GridLayout$LayoutParams;
    .locals 3

    .prologue
    .line 410
    div-int/lit8 v0, p1, 0x3

    invoke-static {v0}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v0

    .line 411
    rem-int/lit8 v1, p1, 0x3

    invoke-static {v1}, Landroid/widget/GridLayout;->spec(I)Landroid/widget/GridLayout$Spec;

    move-result-object v1

    .line 413
    new-instance v2, Landroid/widget/GridLayout$LayoutParams;

    invoke-direct {v2, v0, v1}, Landroid/widget/GridLayout$LayoutParams;-><init>(Landroid/widget/GridLayout$Spec;Landroid/widget/GridLayout$Spec;)V

    .line 415
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->access$1300(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x3

    iput v0, v2, Landroid/widget/GridLayout$LayoutParams;->width:I

    .line 416
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->access$1300(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    div-int/lit8 v0, v0, 0x3

    iput v0, v2, Landroid/widget/GridLayout$LayoutParams;->height:I

    .line 418
    return-object v2
.end method

.method private getView(Landroid/widget/GridLayout;II)Landroid/view/View;
    .locals 3

    .prologue
    .line 370
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;

    .line 371
    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->access$900(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$layout;->profile_picture_preselect_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 372
    invoke-direct {p0, p3}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;->getLayoutParams(I)Landroid/widget/GridLayout$LayoutParams;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 374
    sget v0, Lcom/oculus/horizon/R$id;->avatar:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 375
    new-instance v2, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter$1;

    invoke-direct {v2, p0, v1, p2}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter$1;-><init>(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;Landroid/view/View;I)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 383
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;

    invoke-static {v2}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->access$200(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)I

    move-result v2

    if-ne p2, v2, :cond_0

    .line 386
    iget-object v2, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;

    invoke-static {v2, v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->access$1102(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;Landroid/view/View;)Landroid/view/View;

    .line 387
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setSelected(Z)V

    .line 390
    :cond_0
    return-object v1
.end method

.method private getViewForResIdItem(Landroid/widget/GridLayout;IILcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;)Landroid/view/View;
    .locals 3

    .prologue
    .line 363
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;->getView(Landroid/widget/GridLayout;II)Landroid/view/View;

    move-result-object v1

    .line 364
    sget v0, Lcom/oculus/horizon/R$id;->avatar:I

    invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 365
    iget v2, p4, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;->pictureResId:I

    invoke-static {v2}, Lcom/facebook/common/util/UriUtil;->getUriForResourceId(I)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 366
    return-object v1
.end method

.method private getViewForUriItem(Landroid/widget/GridLayout;IILcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectUriItem;)Landroid/view/View;
    .locals 2

    .prologue
    .line 355
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;->getView(Landroid/widget/GridLayout;II)Landroid/view/View;

    move-result-object v0

    .line 356
    sget v1, Lcom/oculus/horizon/R$id;->avatar:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 357
    iget-object v1, p4, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectUriItem;->pictureUri:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    .line 358
    return-object v0
.end method

.method private selectView(Landroid/view/View;I)V
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 395
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->access$1100(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 396
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;

    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->access$1100(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setSelected(Z)V

    .line 399
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    .line 400
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;

    invoke-static {v1, p2}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->access$202(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;I)I

    .line 401
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;

    invoke-static {v1}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->access$1200(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)V

    .line 402
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;

    invoke-static {v1, p1}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->access$1102(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;Landroid/view/View;)Landroid/view/View;

    move v1, v2

    .line 403
    :goto_0
    invoke-virtual {v0}, Landroid/widget/GridLayout;->getChildCount()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 404
    invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 405
    if-ne p1, v4, :cond_1

    const/4 v3, 0x1

    :goto_1
    invoke-virtual {v4, v3}, Landroid/view/View;->setSelected(Z)V

    .line 403
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move v3, v2

    .line 405
    goto :goto_1

    .line 407
    :cond_2
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .prologue
    .line 423
    check-cast p3, Landroid/widget/GridLayout;

    .line 425
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 426
    return-void
.end method

.method public getCount()I
    .locals 2

    .prologue
    .line 430
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;->mItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v0}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x41100000    # 9.0f

    div-float/2addr v0, v1

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method

.method public getItems()Lcom/google/common/collect/ImmutableList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 434
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;->mItems:Lcom/google/common/collect/ImmutableList;

    return-object v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 322
    iget-object v0, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;->this$0:Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;

    .line 324
    invoke-static {v0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;->access$900(Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$layout;->profile_picture_preselect_fragment_page:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/GridLayout;

    .line 327
    mul-int/lit8 v1, p2, 0x9

    move v2, v1

    .line 328
    :goto_0
    mul-int/lit8 v1, p2, 0x9

    add-int/lit8 v1, v1, 0x9

    if-ge v2, v1, :cond_0

    .line 330
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;->mItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1}, Lcom/google/common/collect/ImmutableList;->size()I

    move-result v1

    if-lt v2, v1, :cond_1

    .line 348
    :cond_0
    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 350
    return-object v0

    .line 334
    :cond_1
    mul-int/lit8 v1, p2, 0x9

    sub-int v3, v2, v1

    .line 336
    iget-object v1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;->mItems:Lcom/google/common/collect/ImmutableList;

    invoke-virtual {v1, v2}, Lcom/google/common/collect/ImmutableList;->get(I)Ljava/lang/Object;

    move-result-object v1

    .line 337
    instance-of v4, v1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectUriItem;

    if-eqz v4, :cond_3

    .line 338
    check-cast v1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectUriItem;

    .line 339
    invoke-direct {p0, v0, v2, v3, v1}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;->getViewForUriItem(Landroid/widget/GridLayout;IILcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectUriItem;)Landroid/view/View;

    move-result-object v1

    .line 338
    invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    .line 329
    :cond_2
    :goto_1
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_0

    .line 341
    :cond_3
    instance-of v4, v1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;

    if-eqz v4, :cond_2

    .line 342
    check-cast v1, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;

    .line 343
    invoke-direct {p0, v0, v2, v3, v1}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;->getViewForResIdItem(Landroid/widget/GridLayout;IILcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectResIdItem;)Landroid/view/View;

    move-result-object v1

    .line 342
    invoke-virtual {v0, v1}, Landroid/widget/GridLayout;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 439
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setItems(Lcom/google/common/collect/ImmutableList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/common/collect/ImmutableList",
            "<",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 443
    iput-object p1, p0, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;->mItems:Lcom/google/common/collect/ImmutableList;

    .line 444
    invoke-virtual {p0}, Lcom/oculus/horizon/legacy/social/fragments/ProfilePicturePreselectFragment$PreselectPagerAdapter;->notifyDataSetChanged()V

    .line 445
    return-void
.end method
