.class public Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;
.super Lcom/oculus/horizon/pdp/view/BundleRowViewHolder;
.source "BundleItemViewHolder.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;
    }
.end annotation


# static fields
.field private static final STATE_PRESSED:[I

.field private static final STATE_REGULAR:[I


# instance fields
.field private final mActionButton:Landroid/widget/ImageView;

.field private mGlobeBadgeView:Landroid/widget/ImageView;

.field private final mIAPBadgeView:Landroid/widget/TextView;

.field private final mImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

.field private final mInstallationHelper:Lcom/oculus/horizon/store/BundleInstallationHelper;

.field private mItem:Lcom/oculus/horizon/api/common/Item;

.field private final mLongDescriptionView:Landroid/widget/TextView;

.field private final mNameView:Landroid/widget/TextView;

.field private final mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

.field private final mPriceView:Landroid/widget/TextView;

.field private final mProgressBar:Landroid/widget/ProgressBar;

.field private final mProgressTextView:Landroid/widget/TextView;

.field private final mReviewCountView:Landroid/widget/TextView;

.field private final mStarRatingView:Lcom/oculus/horizon/widget/RatingView;

.field private mStatus:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 38
    new-array v0, v3, [I

    const v1, -0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->STATE_REGULAR:[I

    .line 39
    new-array v0, v3, [I

    const v1, 0x10100a7

    aput v1, v0, v2

    sput-object v0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->STATE_PRESSED:[I

    return-void
.end method

.method public constructor <init>(Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;Landroid/view/View;Lcom/oculus/horizon/store/BundleInstallationHelper;Lcom/oculus/horizon/logging/OculusLogger;)V
    .locals 2

    .prologue
    .line 68
    invoke-direct {p0, p3}, Lcom/oculus/horizon/pdp/view/BundleRowViewHolder;-><init>(Landroid/view/View;)V

    .line 70
    iput-object p4, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mInstallationHelper:Lcom/oculus/horizon/store/BundleInstallationHelper;

    .line 71
    iput-object p5, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    .line 73
    new-instance v0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$1;-><init>(Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;Landroidx/fragment/app/FragmentManager;Lcom/oculus/horizon/fragmentfactory/FragmentFactory;)V

    invoke-virtual {p3, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 106
    sget v0, Lcom/oculus/horizon/R$id;->iap_badge_view:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mIAPBadgeView:Landroid/widget/TextView;

    .line 107
    sget v0, Lcom/oculus/horizon/R$id;->globe_badge:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mGlobeBadgeView:Landroid/widget/ImageView;

    .line 108
    sget v0, Lcom/oculus/horizon/R$id;->name:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mNameView:Landroid/widget/TextView;

    .line 109
    sget v0, Lcom/oculus/horizon/R$id;->long_description_text_view:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mLongDescriptionView:Landroid/widget/TextView;

    .line 110
    sget v0, Lcom/oculus/horizon/R$id;->image:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 112
    sget v0, Lcom/oculus/horizon/R$id;->stars:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/oculus/horizon/widget/RatingView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mStarRatingView:Lcom/oculus/horizon/widget/RatingView;

    .line 113
    sget v0, Lcom/oculus/horizon/R$id;->review_count:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mReviewCountView:Landroid/widget/TextView;

    .line 114
    sget v0, Lcom/oculus/horizon/R$id;->price:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mPriceView:Landroid/widget/TextView;

    .line 116
    sget v0, Lcom/oculus/horizon/R$id;->progress_text:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mProgressTextView:Landroid/widget/TextView;

    .line 117
    sget v0, Lcom/oculus/horizon/R$id;->progress_bar:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    .line 119
    sget v0, Lcom/oculus/horizon/R$id;->action_button:I

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mActionButton:Landroid/widget/ImageView;

    .line 120
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mActionButton:Landroid/widget/ImageView;

    new-instance v1, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$2;

    invoke-direct {v1, p0}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$2;-><init>(Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 135
    return-void
.end method

.method static synthetic access$000(Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;)Lcom/oculus/horizon/store/BundleInstallationHelper;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mInstallationHelper:Lcom/oculus/horizon/store/BundleInstallationHelper;

    return-object v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;)Lcom/oculus/horizon/api/common/Item;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mItem:Lcom/oculus/horizon/api/common/Item;

    return-object v0
.end method

.method static synthetic access$200(Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;)Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mStatus:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

    return-object v0
.end method

.method static synthetic access$300(Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;Lcom/oculus/horizon/api/common/Item;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->onInstallClicked(Lcom/oculus/horizon/api/common/Item;)V

    return-void
.end method

.method static synthetic access$400(Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;Lcom/oculus/horizon/api/common/Item;)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->onCancelClicked(Lcom/oculus/horizon/api/common/Item;)V

    return-void
.end method

.method private static getPressableDrawableForTheme(Landroid/content/res/Resources;IILcom/oculus/model/StyleTheme;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p3    # Lcom/oculus/model/StyleTheme;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 142
    new-instance v0, Landroid/graphics/drawable/StateListDrawable;

    invoke-direct {v0}, Landroid/graphics/drawable/StateListDrawable;-><init>()V

    .line 143
    invoke-virtual {p0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 144
    invoke-virtual {p0, p2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 145
    sget-object v3, Lcom/oculus/model/StyleTheme;->HALLOWEEN:Lcom/oculus/model/StyleTheme;

    if-ne v3, p3, :cond_0

    .line 146
    const/4 v3, -0x1

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v1, v3, v4}, Landroid/graphics/drawable/Drawable;->setColorFilter(ILandroid/graphics/PorterDuff$Mode;)V

    .line 148
    :cond_0
    sget-object v3, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->STATE_REGULAR:[I

    invoke-virtual {v0, v3, v1}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 149
    sget-object v1, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->STATE_PRESSED:[I

    invoke-virtual {v0, v1, v2}, Landroid/graphics/drawable/StateListDrawable;->addState([ILandroid/graphics/drawable/Drawable;)V

    .line 150
    return-object v0
.end method

.method private onCancelClicked(Lcom/oculus/horizon/api/common/Item;)V
    .locals 2

    .prologue
    .line 355
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-virtual {p1}, Lcom/oculus/horizon/api/common/Item;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportBundleCancelItemTapped(Ljava/lang/String;)V

    .line 356
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mInstallationHelper:Lcom/oculus/horizon/store/BundleInstallationHelper;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/store/BundleInstallationHelper;->cancel(Lcom/oculus/horizon/api/common/Item;)V

    .line 357
    return-void
.end method

.method private onInstallClicked(Lcom/oculus/horizon/api/common/Item;)V
    .locals 2

    .prologue
    .line 350
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mOculusLogger:Lcom/oculus/horizon/logging/OculusLogger;

    invoke-virtual {p1}, Lcom/oculus/horizon/api/common/Item;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/logging/OculusLogger;->reportBundleDownloadItemTapped(Ljava/lang/String;)V

    .line 351
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mInstallationHelper:Lcom/oculus/horizon/store/BundleInstallationHelper;

    invoke-virtual {v0, p1}, Lcom/oculus/horizon/store/BundleInstallationHelper;->installWithPermissionsScreen(Lcom/oculus/horizon/api/common/Item;)V

    .line 352
    return-void
.end method


# virtual methods
.method public bindInAppItem(Lcom/oculus/horizon/api/common/Item;)V
    .locals 3

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    .line 158
    iput-object p1, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mItem:Lcom/oculus/horizon/api/common/Item;

    .line 160
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mStarRatingView:Lcom/oculus/horizon/widget/RatingView;

    invoke-virtual {v0, v1}, Lcom/oculus/horizon/widget/RatingView;->setVisibility(I)V

    .line 161
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mReviewCountView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mPriceView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 163
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mProgressTextView:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 164
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 165
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mActionButton:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 166
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mIAPBadgeView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 168
    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->cinema_video:Lcom/oculus/horizon/api/common/Item$CinemaVideo;

    if-eqz v0, :cond_0

    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->cinema_video:Lcom/oculus/horizon/api/common/Item$CinemaVideo;

    invoke-virtual {v0}, Lcom/oculus/horizon/api/common/Item$CinemaVideo;->is3D()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 169
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mGlobeBadgeView:Landroid/widget/ImageView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 174
    :goto_0
    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->cover_landscape_image:Lcom/oculus/http/common/Image;

    if-eqz v0, :cond_1

    iget-object v0, p1, Lcom/oculus/horizon/api/common/Item;->cover_landscape_image:Lcom/oculus/http/common/Image;

    iget-object v0, v0, Lcom/oculus/http/common/Image;->uri:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 175
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v1, p1, Lcom/oculus/horizon/api/common/Item;->cover_landscape_image:Lcom/oculus/http/common/Image;

    iget-object v1, v1, Lcom/oculus/http/common/Image;->uri:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 182
    :goto_1
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mNameView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/oculus/horizon/api/common/Item;->display_name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 184
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mLongDescriptionView:Landroid/widget/TextView;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 185
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mLongDescriptionView:Landroid/widget/TextView;

    iget-object v1, p1, Lcom/oculus/horizon/api/common/Item;->display_long_description:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 186
    return-void

    .line 171
    :cond_0
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mGlobeBadgeView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    goto :goto_0

    .line 177
    :cond_1
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-virtual {v0, v1}, Lcom/facebook/drawee/view/SimpleDraweeView;->setVisibility(I)V

    .line 178
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    .line 179
    const/4 v1, -0x2

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 180
    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1
.end method

.method public bindItem(Lcom/oculus/horizon/api/common/Item;Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;Ljava/lang/Integer;JJLcom/oculus/model/StyleTheme;)V
    .locals 10
    .param p8    # Lcom/oculus/model/StyleTheme;
        .annotation runtime Ljavax/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 195
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mItem:Lcom/oculus/horizon/api/common/Item;

    if-ne v2, p1, :cond_0

    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mStatus:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

    if-ne v2, p2, :cond_0

    sget-object v2, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;->DOWNLOADING:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

    if-eq p2, v2, :cond_0

    .line 347
    :goto_0
    return-void

    .line 200
    :cond_0
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v6

    .line 201
    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 203
    iput-object p1, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mItem:Lcom/oculus/horizon/api/common/Item;

    .line 204
    iput-object p2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mStatus:Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;

    .line 206
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    iget-object v3, p1, Lcom/oculus/horizon/api/common/Item;->cover_landscape_image:Lcom/oculus/http/common/Image;

    iget-object v3, v3, Lcom/oculus/http/common/Image;->uri:Ljava/lang/String;

    invoke-virtual {v2, v3}, Lcom/facebook/drawee/view/SimpleDraweeView;->setImageURI(Ljava/lang/String;)V

    .line 208
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mIAPBadgeView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 209
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mGlobeBadgeView:Landroid/widget/ImageView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 211
    if-eqz p3, :cond_2

    .line 212
    sget v2, Lcom/oculus/horizon/R$plurals;->app_with_iap_count:I

    .line 213
    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p3, v4, v5

    invoke-virtual {v7, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 214
    new-instance v3, Landroid/text/SpannableString;

    sget v4, Lcom/oculus/horizon/R$string;->store_app_with_iap_count_format:I

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v8, 0x0

    iget-object v9, p1, Lcom/oculus/horizon/api/common/Item;->display_name:Ljava/lang/String;

    aput-object v9, v5, v8

    const/4 v8, 0x1

    aput-object v2, v5, v8

    .line 216
    invoke-virtual {v6, v4, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 218
    new-instance v2, Landroid/text/style/ForegroundColorSpan;

    sget v4, Lcom/oculus/horizon/R$color;->oculus_black_1:I

    invoke-direct {v2, v4}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    iget-object v4, p1, Lcom/oculus/horizon/api/common/Item;->display_name:Ljava/lang/String;

    .line 220
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    .line 221
    invoke-virtual {v3}, Landroid/text/SpannableString;->length()I

    move-result v5

    const/16 v8, 0x12

    .line 218
    invoke-virtual {v3, v2, v4, v5, v8}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 223
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mNameView:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 228
    :goto_1
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mStarRatingView:Lcom/oculus/horizon/widget/RatingView;

    iget v3, p1, Lcom/oculus/horizon/api/common/Item;->quality_rating_aggregate:F

    invoke-virtual {v2, v3}, Lcom/oculus/horizon/widget/RatingView;->setRating(F)V

    .line 230
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mReviewCountView:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/oculus/horizon/api/common/Item;->quality_rating_histogram_aggregate:Ljava/util/List;

    .line 231
    invoke-static {v3}, Lcom/oculus/horizon/util/ProductUtils;->getTotalCount(Ljava/util/List;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    .line 230
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 233
    sget-object v2, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$3;->$SwitchMap$com$oculus$horizon$pdp$view$BundleItemViewHolder$Status:[I

    invoke-virtual {p2}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 269
    :goto_2
    invoke-virtual {p1}, Lcom/oculus/horizon/api/common/Item;->isAppSupportedOnCurrentDevice()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 270
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mPriceView:Landroid/widget/TextView;

    .line 271
    invoke-virtual {p1}, Lcom/oculus/horizon/api/common/Item;->getLatestApkAndObbSize()J

    move-result-wide v4

    invoke-static {v6, v4, v5}, Lcom/oculus/horizon/util/FileSizeUtils;->formatForDisplayAbbreviated(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v3

    .line 270
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 273
    :cond_1
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mPriceView:Landroid/widget/TextView;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v8, 0x0

    invoke-virtual {v2, v3, v4, v5, v8}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 275
    const/4 v5, 0x0

    .line 276
    sget v2, Lcom/oculus/horizon/R$color;->oculus_black_4:I

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 277
    const/4 v3, 0x0

    .line 278
    const/4 v2, 0x0

    .line 279
    sget-object v8, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$3;->$SwitchMap$com$oculus$horizon$pdp$view$BundleItemViewHolder$Status:[I

    invoke-virtual {p2}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder$Status;->ordinal()I

    move-result v9

    aget v8, v8, v9

    packed-switch v8, :pswitch_data_1

    .line 337
    :goto_3
    :pswitch_0
    iget-object v6, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mProgressTextView:Landroid/widget/TextView;

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setTextColor(I)V

    .line 338
    iget-object v4, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mProgressTextView:Landroid/widget/TextView;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 339
    iget-object v4, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mProgressTextView:Landroid/widget/TextView;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual {v4, v3, v5, v6, v7}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 341
    if-nez v2, :cond_5

    .line 342
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mActionButton:Landroid/widget/ImageView;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    goto/16 :goto_0

    .line 225
    :cond_2
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mNameView:Landroid/widget/TextView;

    iget-object v3, p1, Lcom/oculus/horizon/api/common/Item;->display_name:Ljava/lang/String;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 236
    :pswitch_1
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mStarRatingView:Lcom/oculus/horizon/widget/RatingView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oculus/horizon/widget/RatingView;->setVisibility(I)V

    .line 237
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mReviewCountView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 238
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mPriceView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 240
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mProgressTextView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 241
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_2

    .line 246
    :pswitch_2
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mStarRatingView:Lcom/oculus/horizon/widget/RatingView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/oculus/horizon/widget/RatingView;->setVisibility(I)V

    .line 247
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mReviewCountView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 248
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mPriceView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 250
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mProgressTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 251
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_2

    .line 254
    :pswitch_3
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mStarRatingView:Lcom/oculus/horizon/widget/RatingView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/oculus/horizon/widget/RatingView;->setVisibility(I)V

    .line 255
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mReviewCountView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 256
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mPriceView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 257
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mProgressTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 258
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_2

    .line 261
    :pswitch_4
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mStarRatingView:Lcom/oculus/horizon/widget/RatingView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/oculus/horizon/widget/RatingView;->setVisibility(I)V

    .line 262
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mReviewCountView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 263
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mPriceView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 265
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mProgressTextView:Landroid/widget/TextView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 266
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto/16 :goto_2

    .line 283
    :pswitch_5
    sget v2, Lcom/oculus/horizon/R$drawable;->bundle_download_button_inactive:I

    sget v6, Lcom/oculus/horizon/R$drawable;->bundle_download_button_active:I

    .line 284
    move-object/from16 v0, p8

    invoke-static {v7, v2, v6, v0}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->getPressableDrawableForTheme(Landroid/content/res/Resources;IILcom/oculus/model/StyleTheme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_3

    .line 291
    :pswitch_6
    invoke-static {v6, p4, p5}, Lcom/oculus/horizon/util/FileSizeUtils;->formatForDisplayAbbreviated(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v2

    .line 292
    move-wide/from16 v0, p6

    invoke-static {v6, v0, v1}, Lcom/oculus/horizon/util/FileSizeUtils;->formatForDisplayAbbreviated(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v5

    .line 293
    sget v6, Lcom/oculus/horizon/R$string;->common_download_progress:I

    const/4 v8, 0x2

    new-array v8, v8, [Ljava/lang/Object;

    const/4 v9, 0x0

    aput-object v2, v8, v9

    const/4 v2, 0x1

    aput-object v5, v8, v2

    .line 294
    invoke-virtual {v7, v6, v8}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    .line 297
    :goto_4
    const-wide/32 v8, 0x7fffffff

    cmp-long v2, p4, v8

    if-gtz v2, :cond_3

    const-wide/32 v8, 0x7fffffff

    cmp-long v2, p6, v8

    if-lez v2, :cond_4

    .line 298
    :cond_3
    const-wide/16 v8, 0x400

    div-long/2addr p4, v8

    .line 299
    const-wide/16 v8, 0x400

    div-long p6, p6, v8

    goto :goto_4

    .line 302
    :cond_4
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v6, 0x0

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 303
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    long-to-int v6, p4

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 304
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    move-wide/from16 v0, p6

    long-to-int v6, v0

    invoke-virtual {v2, v6}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 305
    sget v2, Lcom/oculus/horizon/R$drawable;->bundle_cancel_button_inactive:I

    sget v6, Lcom/oculus/horizon/R$drawable;->bundle_cancel_button_active:I

    .line 306
    move-object/from16 v0, p8

    invoke-static {v7, v2, v6, v0}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->getPressableDrawableForTheme(Landroid/content/res/Resources;IILcom/oculus/model/StyleTheme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    goto/16 :goto_3

    .line 313
    :pswitch_7
    sget v5, Lcom/oculus/horizon/R$string;->product_state_installing:I

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 314
    iget-object v6, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    goto/16 :goto_3

    .line 317
    :pswitch_8
    sget v3, Lcom/oculus/horizon/R$string;->common_installed:I

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 318
    sget v3, Lcom/oculus/horizon/R$drawable;->checkmark_gray:I

    invoke-virtual {v7, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    goto/16 :goto_3

    .line 321
    :pswitch_9
    sget v2, Lcom/oculus/horizon/R$color;->oculus_red:I

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getColor(I)I

    .line 322
    sget v2, Lcom/oculus/horizon/R$string;->product_state_install_failed:I

    invoke-virtual {v7, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    .line 323
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setIndeterminate(Z)V

    .line 324
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v4, 0x0

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setProgress(I)V

    .line 325
    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/widget/ProgressBar;->setMax(I)V

    .line 326
    sget v2, Lcom/oculus/horizon/R$drawable;->bundle_reload_button_inactive:I

    sget v4, Lcom/oculus/horizon/R$drawable;->bundle_reload_button_active:I

    .line 327
    move-object/from16 v0, p8

    invoke-static {v7, v2, v4, v0}, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->getPressableDrawableForTheme(Landroid/content/res/Resources;IILcom/oculus/model/StyleTheme;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 333
    :pswitch_a
    sget v4, Lcom/oculus/horizon/R$color;->oculus_red:I

    invoke-virtual {v7, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    .line 334
    sget v5, Lcom/oculus/horizon/R$string;->common_not_supported:I

    invoke-virtual {v7, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_3

    .line 344
    :cond_5
    iget-object v3, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mActionButton:Landroid/widget/ImageView;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 345
    iget-object v3, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->mActionButton:Landroid/widget/ImageView;

    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    goto/16 :goto_0

    .line 233
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch

    .line 279
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_5
        :pswitch_9
        :pswitch_6
        :pswitch_0
        :pswitch_7
        :pswitch_a
        :pswitch_8
    .end packed-switch
.end method

.method public setHorizontalPadding(I)V
    .locals 3

    .prologue
    .line 154
    iget-object v0, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->itemView:Landroid/view/View;

    iget-object v1, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getPaddingTop()I

    move-result v1

    iget-object v2, p0, Lcom/oculus/horizon/pdp/view/BundleItemViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getPaddingBottom()I

    move-result v2

    invoke-virtual {v0, p1, v1, p1, v2}, Landroid/view/View;->setPadding(IIII)V

    .line 155
    return-void
.end method
