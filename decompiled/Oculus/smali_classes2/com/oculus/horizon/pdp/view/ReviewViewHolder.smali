.class public Lcom/oculus/horizon/pdp/view/ReviewViewHolder;
.super Landroidx/recyclerview/widget/RecyclerView$ViewHolder;
.source "ReviewViewHolder.java"


# instance fields
.field private final mAvatarView:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private mBinary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

.field private final mDateText:Landroid/widget/TextView;

.field private final mDescriptionText:Landroid/widget/TextView;

.field private final mDeveloperResponse:Landroid/widget/RelativeLayout;

.field private final mDeveloperResponseBody:Landroid/widget/TextView;

.field private final mDeveloperResponseDate:Landroid/widget/TextView;

.field protected final mHelpfulButton:Lcom/oculus/horizon/pdp/widget/PdpRankReviewButton;

.field private mItemId:Ljava/lang/String;

.field protected final mMenuButton:Landroid/widget/ImageView;

.field protected final mNameText:Landroid/widget/TextView;

.field protected mRating:Lcom/oculus/horizon/api/common/Item$QualityRating;
    .annotation runtime Ljavax/annotation/Nullable;
    .end annotation
.end field

.field private final mRatingView:Lcom/oculus/horizon/widget/RatingView;

.field private final mReviewDecorator:Landroid/widget/ImageView;

.field private final mReviewRowLayout:Landroid/widget/RelativeLayout;

.field private final mShowReviewerPercentile:Z

.field private final mShowSingleReviewWhenClicked:Z

.field private final mSocialUtils:Lcom/oculus/horizon/social/SocialUtils;

.field private final mStoreItemMethods:Lcom/oculus/horizon/pdp/StoreItemMethods;

.field private final mTimeSpentText:Landroid/widget/TextView;

.field private final mTitleText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Lcom/oculus/horizon/pdp/StoreItemMethods;Lcom/oculus/horizon/social/SocialUtils;ZZ)V
    .locals 1
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ConstructorMayLeakThis"
        }
    .end annotation

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 73
    sget v0, Lcom/oculus/horizon/R$id;->avatar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mAvatarView:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 74
    iput-object p4, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mStoreItemMethods:Lcom/oculus/horizon/pdp/StoreItemMethods;

    .line 75
    iput-object p5, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mSocialUtils:Lcom/oculus/horizon/social/SocialUtils;

    .line 76
    iput-boolean p6, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mShowSingleReviewWhenClicked:Z

    .line 77
    iput-boolean p7, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mShowReviewerPercentile:Z

    .line 79
    sget v0, Lcom/oculus/horizon/R$id;->review_row_layout:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mReviewRowLayout:Landroid/widget/RelativeLayout;

    .line 80
    sget v0, Lcom/oculus/horizon/R$id;->menu_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mMenuButton:Landroid/widget/ImageView;

    .line 81
    sget v0, Lcom/oculus/horizon/R$id;->helpful_button:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/pdp/widget/PdpRankReviewButton;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mHelpfulButton:Lcom/oculus/horizon/pdp/widget/PdpRankReviewButton;

    .line 82
    sget v0, Lcom/oculus/horizon/R$id;->name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mNameText:Landroid/widget/TextView;

    .line 83
    sget v0, Lcom/oculus/horizon/R$id;->time_spent:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mTimeSpentText:Landroid/widget/TextView;

    .line 84
    sget v0, Lcom/oculus/horizon/R$id;->date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mDateText:Landroid/widget/TextView;

    .line 85
    sget v0, Lcom/oculus/horizon/R$id;->rating:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/RatingView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mRatingView:Lcom/oculus/horizon/widget/RatingView;

    .line 86
    sget v0, Lcom/oculus/horizon/R$id;->title:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mTitleText:Landroid/widget/TextView;

    .line 87
    sget v0, Lcom/oculus/horizon/R$id;->description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mDescriptionText:Landroid/widget/TextView;

    .line 89
    sget v0, Lcom/oculus/horizon/R$id;->quote_line:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mReviewDecorator:Landroid/widget/ImageView;

    .line 90
    sget v0, Lcom/oculus/horizon/R$id;->developer_response:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mDeveloperResponse:Landroid/widget/RelativeLayout;

    .line 91
    sget v0, Lcom/oculus/horizon/R$id;->developer_response_date:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mDeveloperResponseDate:Landroid/widget/TextView;

    .line 92
    sget v0, Lcom/oculus/horizon/R$id;->developer_response_body:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mDeveloperResponseBody:Landroid/widget/TextView;

    .line 94
    invoke-direct {p0, p1, p2, p3}, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->setupListeners(Landroid/view/View;Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;)V

    .line 95
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/pdp/view/ReviewViewHolder;)Ljava/lang/String;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mItemId:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/pdp/view/ReviewViewHolder;)Lcom/oculus/horizon/api/common/Item$AndroidBinary;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mBinary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/pdp/view/ReviewViewHolder;Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->registerNewRank(Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;)V

    return-void
.end method

.method static synthetic access$300(Lcom/oculus/horizon/pdp/view/ReviewViewHolder;Z)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->showToast(Z)V

    return-void
.end method

.method private rankReview(Lcom/oculus/horizon/api/common/Item$QualityRating;Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;Z)V
    .locals 3

    .prologue
    .line 279
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mStoreItemMethods:Lcom/oculus/horizon/pdp/StoreItemMethods;

    new-instance v1, Lcom/oculus/horizon/api/rating/RankReviewRequest;

    iget-object v2, p1, Lcom/oculus/horizon/api/common/Item$QualityRating;->id:Ljava/lang/String;

    invoke-direct {v1, v2, p2}, Lcom/oculus/horizon/api/rating/RankReviewRequest;-><init>(Ljava/lang/String;Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;)V

    new-instance v2, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$4;

    invoke-direct {v2, p0, p3, p2, p1}, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$4;-><init>(Lcom/oculus/horizon/pdp/view/ReviewViewHolder;ZLcom/oculus/horizon/api/common/Item$QualityRating$Rank;Lcom/oculus/horizon/api/common/Item$QualityRating;)V

    invoke-virtual {v0, v1, v2}, Lcom/oculus/horizon/pdp/StoreItemMethods;->rankReview(Lcom/oculus/horizon/api/rating/RankReviewRequest;Lretrofit/Callback;)V

    .line 301
    return-void
.end method

.method private registerNewRank(Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 146
    sget-object v0, Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;->HELPFUL:Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;

    if-ne v0, p1, :cond_1

    .line 147
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    iget v3, v0, Lcom/oculus/horizon/api/common/Item$QualityRating;->review_helpful_count:I

    add-int/lit8 v3, v3, 0x1

    iput v3, v0, Lcom/oculus/horizon/api/common/Item$QualityRating;->review_helpful_count:I

    .line 153
    :cond_0
    :goto_0
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    iget-object v3, p1, Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;->rankString:Ljava/lang/String;

    iput-object v3, v0, Lcom/oculus/horizon/api/common/Item$QualityRating;->review_rank_by_viewer:Ljava/lang/String;

    .line 154
    iget-object v3, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    sget-object v0, Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;->SPAM:Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;

    if-ne p1, v0, :cond_2

    move v0, v1

    :goto_1
    invoke-direct {p0, v3, p1, v0}, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->rankReview(Lcom/oculus/horizon/api/common/Item$QualityRating;Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;Z)V

    .line 155
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mHelpfulButton:Lcom/oculus/horizon/pdp/widget/PdpRankReviewButton;

    iget-object v3, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    iget v3, v3, Lcom/oculus/horizon/api/common/Item$QualityRating;->review_helpful_count:I

    invoke-virtual {v0, v3}, Lcom/oculus/horizon/pdp/widget/PdpRankReviewButton;->setCount(I)V

    .line 156
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mHelpfulButton:Lcom/oculus/horizon/pdp/widget/PdpRankReviewButton;

    iget-object v3, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    invoke-virtual {v3}, Lcom/oculus/horizon/api/common/Item$QualityRating;->getRank()Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;

    move-result-object v3

    sget-object v4, Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;->HELPFUL:Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;

    if-ne v3, v4, :cond_3

    :goto_2
    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/widget/PdpRankReviewButton;->setSelected(Z)V

    .line 157
    return-void

    .line 149
    :cond_1
    sget-object v0, Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;->HELPFUL:Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;

    iget-object v3, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    invoke-virtual {v3}, Lcom/oculus/horizon/api/common/Item$QualityRating;->getRank()Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;

    move-result-object v3

    if-ne v0, v3, :cond_0

    .line 150
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    iget v3, v0, Lcom/oculus/horizon/api/common/Item$QualityRating;->review_helpful_count:I

    add-int/lit8 v3, v3, -0x1

    iput v3, v0, Lcom/oculus/horizon/api/common/Item$QualityRating;->review_helpful_count:I

    goto :goto_0

    :cond_2
    move v0, v2

    .line 154
    goto :goto_1

    :cond_3
    move v1, v2

    .line 156
    goto :goto_2
.end method

.method private setupListeners(Landroid/view/View;Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;)V
    .locals 2

    .prologue
    .line 99
    iget-boolean v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mShowSingleReviewWhenClicked:Z

    if-eqz v0, :cond_0

    .line 100
    new-instance v0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$1;

    invoke-direct {v0, p0, p2, p3}, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$1;-><init>(Lcom/oculus/horizon/pdp/view/ReviewViewHolder;Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 112
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mMenuButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$2;-><init>(Lcom/oculus/horizon/pdp/view/ReviewViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 133
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mHelpfulButton:Lcom/oculus/horizon/pdp/widget/PdpRankReviewButton;

    new-instance v1, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$3;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/pdp/view/ReviewViewHolder$3;-><init>(Lcom/oculus/horizon/pdp/view/ReviewViewHolder;)V

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/widget/PdpRankReviewButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 143
    return-void
.end method

.method private showToast(Z)V
    .locals 3

    .prologue
    .line 312
    if-eqz p1, :cond_0

    .line 313
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mMenuButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->pdp_rank_review_toast:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 317
    :goto_0
    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mMenuButton:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v0, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 318
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 319
    return-void

    .line 315
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mMenuButton:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$string;->pdp_rank_review_failed_toast:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method


# virtual methods
.method public bind(Lcom/oculus/horizon/api/common/Item$QualityRating;Ljava/lang/String;Lcom/oculus/horizon/api/common/Item$AndroidBinary;)V
    .locals 6

    .prologue
    const/4 v3, 0x1

    const/16 v5, 0x8

    const/4 v4, 0x0

    .line 164
    iput-object p1, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    .line 165
    iput-object p2, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mItemId:Ljava/lang/String;

    .line 166
    iput-object p3, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mBinary:Lcom/oculus/horizon/api/common/Item$AndroidBinary;

    .line 168
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mReviewRowLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 169
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mReviewRowLayout:Landroid/widget/RelativeLayout;

    .line 170
    invoke-virtual {v0}, Landroid/widget/RelativeLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/oculus/horizon/R$dimen;->common_horizontal_padding:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    float-to-int v0, v0

    .line 171
    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mReviewRowLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v1, v0, v0, v0, v0}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 172
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mAvatarView:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v4}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    .line 173
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mDeveloperResponse:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 174
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mReviewDecorator:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 175
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 176
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 177
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mNameText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mDateText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mRatingView:Lcom/oculus/horizon/widget/RatingView;

    invoke-virtual {v0, v4}, Lcom/oculus/horizon/widget/RatingView;->setVisibility(I)V

    .line 181
    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->shouldDisplayReview()Z

    move-result v0

    if-nez v0, :cond_0

    .line 182
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mReviewRowLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 184
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mReviewRowLayout:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/RelativeLayout;->setPadding(IIII)V

    .line 185
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mAvatarView:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v5}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    .line 186
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mDeveloperResponse:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 187
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mReviewDecorator:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 188
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mReviewDecorator:Landroid/widget/ImageView;

    invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V

    .line 189
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 190
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 191
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mNameText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 192
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mDateText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    .line 193
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mRatingView:Lcom/oculus/horizon/widget/RatingView;

    invoke-virtual {v0, v5}, Lcom/oculus/horizon/widget/RatingView;->setVisibility(I)V

    .line 257
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$QualityRating;->author:Lcom/oculus/horizon/api/common/user/User;

    .line 198
    iget-object v1, v0, Lcom/oculus/horizon/api/common/user/User;->avatar:Lcom/oculus/horizon/api/common/user/ProfilePhoto;

    if-eqz v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mAvatarView:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v2, v0, Lcom/oculus/horizon/api/common/user/User;->avatar:Lcom/oculus/horizon/api/common/user/ProfilePhoto;

    iget-object v2, v2, Lcom/oculus/horizon/api/common/user/ProfilePhoto;->uri:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 205
    :goto_1
    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mNameText:Landroid/widget/TextView;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/user/User;->alias:Ljava/lang/String;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 207
    iget-boolean v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mShowReviewerPercentile:Z

    if-eqz v0, :cond_5

    .line 208
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mTimeSpentText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    iget v0, p1, Lcom/oculus/horizon/api/common/Item$QualityRating;->author_timespent_pct:I

    const/16 v1, 0x5a

    if-le v0, v1, :cond_2

    .line 210
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mTimeSpentText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mTimeSpentText:Landroid/widget/TextView;

    .line 212
    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$string;->pdp_review_time_spent_format_top:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p1, Lcom/oculus/horizon/api/common/Item$QualityRating;->author_timespent_pct:I

    rsub-int/lit8 v3, v3, 0x64

    .line 213
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 211
    invoke-static {v1, v2}, Lcom/facebook/common/util/StringLocaleUtil;->formatStrLocaleSensitive(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 210
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    :goto_2
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mDateText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    iget v1, v1, Lcom/oculus/horizon/api/common/Item$QualityRating;->date:I

    int-to-long v2, v1

    invoke-static {v2, v3}, Lcom/oculus/horizon/util/DateUtils;->getDateFromTimestampInSeconds(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 230
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mRatingView:Lcom/oculus/horizon/widget/RatingView;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    iget v1, v1, Lcom/oculus/horizon/api/common/Item$QualityRating;->score:I

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/RatingView;->setRating(F)V

    .line 232
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$QualityRating;->review_title:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_6

    .line 233
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 234
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mTitleText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item$QualityRating;->review_title:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 239
    :goto_3
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$QualityRating;->review_description:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 240
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mDescriptionText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item$QualityRating;->review_description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 246
    :goto_4
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$QualityRating;->developer_response:Lcom/oculus/horizon/api/common/Item$DeveloperResponse;

    if-nez v0, :cond_8

    .line 247
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mDeveloperResponse:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v5}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 248
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mReviewDecorator:Landroid/widget/ImageView;

    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 256
    :goto_5
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->renderRankReview(Lcom/oculus/horizon/api/common/Item$QualityRating;)V

    goto/16 :goto_0

    .line 201
    :cond_1
    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mAvatarView:Lcom/facebook/drawee/view/SimpleDraweeView;

    sget v2, Lcom/oculus/horizon/R$drawable;->social_profile_picture_unset_large:I

    .line 202
    invoke-static {v2}, Lcom/facebook/common/util/UriUtil;->getUriForResourceId(I)Landroid/net/Uri;

    move-result-object v2

    .line 201
    invoke-virtual {v1, v2}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Landroid/net/Uri;)V

    goto/16 :goto_1

    .line 214
    :cond_2
    iget v0, p1, Lcom/oculus/horizon/api/common/Item$QualityRating;->author_timespent_pct:I

    const/16 v1, 0x32

    if-le v0, v1, :cond_3

    .line 215
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mTimeSpentText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mTimeSpentText:Landroid/widget/TextView;

    .line 217
    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$string;->pdp_review_time_spent_format_avid:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-array v2, v3, [Ljava/lang/Object;

    iget v3, p1, Lcom/oculus/horizon/api/common/Item$QualityRating;->author_timespent_pct:I

    rsub-int/lit8 v3, v3, 0x64

    .line 218
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    .line 216
    invoke-static {v1, v2}, Lcom/facebook/common/util/StringLocaleUtil;->formatStrLocaleSensitive(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 215
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 219
    :cond_3
    iget v0, p1, Lcom/oculus/horizon/api/common/Item$QualityRating;->author_timespent_pct:I

    if-lez v0, :cond_4

    .line 220
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mTimeSpentText:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mTimeSpentText:Landroid/widget/TextView;

    .line 221
    invoke-virtual {v1}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/oculus/horizon/R$string;->pdp_review_time_spent_used:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 220
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_2

    .line 223
    :cond_4
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mTimeSpentText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 226
    :cond_5
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mTimeSpentText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_2

    .line 236
    :cond_6
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mTitleText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto/16 :goto_3

    .line 243
    :cond_7
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mDescriptionText:Landroid/widget/TextView;

    invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_4

    .line 250
    :cond_8
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mDeveloperResponse:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v4}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 251
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mReviewDecorator:Landroid/widget/ImageView;

    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 252
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mDeveloperResponseDate:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item$QualityRating;->developer_response:Lcom/oculus/horizon/api/common/Item$DeveloperResponse;

    iget v1, v1, Lcom/oculus/horizon/api/common/Item$DeveloperResponse;->date:I

    int-to-long v2, v1

    .line 253
    invoke-static {v2, v3}, Lcom/oculus/horizon/util/DateUtils;->getDateFromTimestampInSeconds(J)Ljava/lang/String;

    move-result-object v1

    .line 252
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 254
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mDeveloperResponseBody:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item$QualityRating;->developer_response:Lcom/oculus/horizon/api/common/Item$DeveloperResponse;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item$DeveloperResponse;->body:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_5
.end method

.method protected isViewerReview()Z
    .locals 2

    .prologue
    .line 304
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    iget-object v0, v0, Lcom/oculus/horizon/api/common/Item$QualityRating;->author:Lcom/oculus/horizon/api/common/user/User;

    if-eqz v0, :cond_0

    .line 305
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mSocialUtils:Lcom/oculus/horizon/social/SocialUtils;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    iget-object v1, v1, Lcom/oculus/horizon/api/common/Item$QualityRating;->author:Lcom/oculus/horizon/api/common/user/User;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/social/SocialUtils;->itsMe(Lcom/oculus/horizon/api/common/user/User;)Z

    move-result v0

    .line 307
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected renderRankReview(Lcom/oculus/horizon/api/common/Item$QualityRating;)V
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 264
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mHelpfulButton:Lcom/oculus/horizon/pdp/widget/PdpRankReviewButton;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/pdp/widget/PdpRankReviewButton;->setVisibility(I)V

    .line 266
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mMenuButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 267
    iget-object v3, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mMenuButton:Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->isViewerReview()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of v0, p0, Lcom/oculus/horizon/pdp/view/ViewerReviewViewHolder;

    if-eqz v0, :cond_1

    :cond_0
    move v0, v2

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setEnabled(Z)V

    .line 269
    iget-object v3, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mHelpfulButton:Lcom/oculus/horizon/pdp/widget/PdpRankReviewButton;

    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mSocialUtils:Lcom/oculus/horizon/social/SocialUtils;

    iget-object v4, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mRating:Lcom/oculus/horizon/api/common/Item$QualityRating;

    iget-object v4, v4, Lcom/oculus/horizon/api/common/Item$QualityRating;->author:Lcom/oculus/horizon/api/common/user/User;

    invoke-virtual {v0, v4}, Lcom/oculus/horizon/social/SocialUtils;->itsMe(Lcom/oculus/horizon/api/common/user/User;)Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v2

    :goto_1
    invoke-virtual {v3, v0}, Lcom/oculus/horizon/pdp/widget/PdpRankReviewButton;->setEnabled(Z)V

    .line 271
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mHelpfulButton:Lcom/oculus/horizon/pdp/widget/PdpRankReviewButton;

    iget v3, p1, Lcom/oculus/horizon/api/common/Item$QualityRating;->review_helpful_count:I

    invoke-virtual {v0, v3}, Lcom/oculus/horizon/pdp/widget/PdpRankReviewButton;->setCount(I)V

    .line 272
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/ReviewViewHolder;->mHelpfulButton:Lcom/oculus/horizon/pdp/widget/PdpRankReviewButton;

    sget-object v3, Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;->HELPFUL:Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;

    invoke-virtual {p1}, Lcom/oculus/horizon/api/common/Item$QualityRating;->getRank()Lcom/oculus/horizon/api/common/Item$QualityRating$Rank;

    move-result-object v4

    if-ne v3, v4, :cond_3

    :goto_2
    invoke-virtual {v0, v2}, Lcom/oculus/horizon/pdp/widget/PdpRankReviewButton;->setSelected(Z)V

    .line 273
    return-void

    :cond_1
    move v0, v1

    .line 267
    goto :goto_0

    :cond_2
    move v0, v1

    .line 269
    goto :goto_1

    :cond_3
    move v2, v1

    .line 272
    goto :goto_2
.end method

.method protected shouldDisplayReview()Z
    .locals 1

    .prologue
    .line 260
    const/4 v0, 0x1

    return v0
.end method
