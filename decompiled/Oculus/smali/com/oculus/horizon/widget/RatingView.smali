.class public Lcom/oculus/horizon/widget/RatingView;
.super Landroid/widget/LinearLayout;
.source "RatingView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/oculus/horizon/widget/RatingView$OnRatingViewChangeListener;
    }
.end annotation


# static fields
.field private static final STAR_IDS:[I


# instance fields
.field private mActiveDrawable:Landroid/graphics/drawable/Drawable;

.field private mHalfDrawable:Landroid/graphics/drawable/Drawable;

.field private mInactiveDrawable:Landroid/graphics/drawable/Drawable;

.field private mIsIndicator:Z

.field private mListener:Lcom/oculus/horizon/widget/RatingView$OnRatingViewChangeListener;

.field private mRating:F

.field private mStars:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field

.field private mStepSize:F


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 47
    const/4 v0, 0x5

    new-array v0, v0, [I

    const/4 v1, 0x0

    sget v2, Lcom/oculus/horizon/R$id;->first_star:I

    aput v2, v0, v1

    const/4 v1, 0x1

    sget v2, Lcom/oculus/horizon/R$id;->second_star:I

    aput v2, v0, v1

    const/4 v1, 0x2

    sget v2, Lcom/oculus/horizon/R$id;->third_star:I

    aput v2, v0, v1

    const/4 v1, 0x3

    sget v2, Lcom/oculus/horizon/R$id;->fourth_star:I

    aput v2, v0, v1

    const/4 v1, 0x4

    sget v2, Lcom/oculus/horizon/R$id;->fifth_star:I

    aput v2, v0, v1

    sput-object v0, Lcom/oculus/horizon/widget/RatingView;->STAR_IDS:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 63
    invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 64
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/oculus/horizon/widget/RatingView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 65
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    .prologue
    .line 68
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 69
    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/widget/RatingView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0

    .prologue
    .line 73
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 74
    invoke-direct {p0, p1, p2}, Lcom/oculus/horizon/widget/RatingView;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 75
    return-void
.end method

.method static synthetic access$000(FIF)F
    .locals 1

    .prologue
    .line 26
    invoke-static {p0, p1, p2}, Lcom/oculus/horizon/widget/RatingView;->convert(FIF)F

    move-result v0

    return v0
.end method

.method static synthetic access$100(Lcom/oculus/horizon/widget/RatingView;)F
    .locals 1

    .prologue
    .line 26
    iget v0, p0, Lcom/oculus/horizon/widget/RatingView;->mRating:F

    return v0
.end method

.method static synthetic access$102(Lcom/oculus/horizon/widget/RatingView;F)F
    .locals 0

    .prologue
    .line 26
    iput p1, p0, Lcom/oculus/horizon/widget/RatingView;->mRating:F

    return p1
.end method

.method static synthetic access$200(Lcom/oculus/horizon/widget/RatingView;F)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/oculus/horizon/widget/RatingView;->notifyRatingChanged(F)V

    return-void
.end method

.method static synthetic access$300(Lcom/oculus/horizon/widget/RatingView;F)V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/oculus/horizon/widget/RatingView;->update(F)V

    return-void
.end method

.method private static convert(FIF)F
    .locals 4

    .prologue
    .line 39
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p0, v0

    if-lez v0, :cond_0

    .line 40
    int-to-float v0, p1

    .line 44
    :goto_0
    return v0

    .line 43
    :cond_0
    int-to-float v0, p1

    mul-float/2addr v0, p0

    .line 44
    div-float/2addr v0, p2

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    float-to-double v2, p2

    mul-double/2addr v0, v2

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v0

    double-to-float v0, v0

    goto :goto_0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v3, 0x0

    .line 78
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 79
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    .line 80
    sget v1, Lcom/oculus/horizon/R$layout;->rating_view:I

    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 82
    new-instance v4, Ljava/util/ArrayList;

    sget-object v0, Lcom/oculus/horizon/widget/RatingView;->STAR_IDS:[I

    array-length v0, v0

    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 83
    sget-object v5, Lcom/oculus/horizon/widget/RatingView;->STAR_IDS:[I

    array-length v6, v5

    move v1, v3

    :goto_0
    if-ge v1, v6, :cond_0

    aget v0, v5, v1

    .line 84
    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/RatingView;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 85
    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 87
    :cond_0
    invoke-static {v4}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/widget/RatingView;->mStars:Ljava/util/List;

    .line 89
    const/high16 v1, 0x3f800000    # 1.0f

    .line 90
    sget v0, Lcom/oculus/horizon/R$drawable;->star_large:I

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 94
    new-array v2, v7, [I

    const v4, 0x1010146

    aput v4, v2, v3

    .line 95
    invoke-virtual {p1, p2, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v2

    .line 96
    if-eqz v2, :cond_1

    .line 97
    invoke-virtual {v2, v3, v1}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result v1

    .line 98
    invoke-virtual {v2}, Landroid/content/res/TypedArray;->recycle()V

    :cond_1
    move v2, v1

    .line 102
    new-array v1, v7, [I

    const v4, 0x101013c

    aput v4, v1, v3

    .line 104
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 105
    if-eqz v4, :cond_3

    .line 106
    invoke-virtual {v4, v3}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 107
    if-eqz v1, :cond_2

    move-object v0, v1

    .line 108
    check-cast v0, Landroid/graphics/drawable/LayerDrawable;

    .line 110
    :cond_2
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 114
    :cond_3
    new-array v1, v7, [I

    const v4, 0x1010147

    aput v4, v1, v3

    .line 115
    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 116
    if-eqz v4, :cond_4

    .line 117
    invoke-virtual {v4, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 118
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 121
    :goto_1
    invoke-virtual {p0, v2}, Lcom/oculus/horizon/widget/RatingView;->setStepSize(F)V

    .line 122
    const/high16 v2, 0x1020000

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/oculus/horizon/widget/RatingView;->mInactiveDrawable:Landroid/graphics/drawable/Drawable;

    .line 123
    const v2, 0x102000f

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    iput-object v2, p0, Lcom/oculus/horizon/widget/RatingView;->mHalfDrawable:Landroid/graphics/drawable/Drawable;

    .line 124
    const v2, 0x102000d

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/LayerDrawable;->findDrawableByLayerId(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/oculus/horizon/widget/RatingView;->mActiveDrawable:Landroid/graphics/drawable/Drawable;

    .line 125
    invoke-virtual {p0, v1}, Lcom/oculus/horizon/widget/RatingView;->setIsIndicator(Z)V

    .line 127
    iget v0, p0, Lcom/oculus/horizon/widget/RatingView;->mRating:F

    invoke-direct {p0, v0}, Lcom/oculus/horizon/widget/RatingView;->update(F)V

    .line 128
    return-void

    :cond_4
    move v1, v3

    goto :goto_1
.end method

.method private notifyRatingChanged(F)V
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/oculus/horizon/widget/RatingView;->mListener:Lcom/oculus/horizon/widget/RatingView$OnRatingViewChangeListener;

    if-eqz v0, :cond_0

    .line 192
    iget-object v0, p0, Lcom/oculus/horizon/widget/RatingView;->mListener:Lcom/oculus/horizon/widget/RatingView$OnRatingViewChangeListener;

    invoke-interface {v0, p0, p1}, Lcom/oculus/horizon/widget/RatingView$OnRatingViewChangeListener;->onRatingChanged(Lcom/oculus/horizon/widget/RatingView;F)V

    .line 194
    :cond_0
    return-void
.end method

.method private update(F)V
    .locals 4

    .prologue
    .line 197
    iget-object v0, p0, Lcom/oculus/horizon/widget/RatingView;->mStars:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 200
    const/high16 v2, 0x3e800000    # 0.25f

    cmpg-float v2, p1, v2

    if-gtz v2, :cond_0

    .line 201
    iget-object v2, p0, Lcom/oculus/horizon/widget/RatingView;->mInactiveDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 208
    :goto_1
    const/high16 v0, 0x3f800000    # 1.0f

    sub-float/2addr p1, v0

    .line 209
    goto :goto_0

    .line 202
    :cond_0
    iget v2, p0, Lcom/oculus/horizon/widget/RatingView;->mStepSize:F

    const/high16 v3, 0x3f000000    # 0.5f

    cmpl-float v2, v2, v3

    if-nez v2, :cond_1

    const/high16 v2, 0x3f400000    # 0.75f

    cmpg-float v2, p1, v2

    if-gez v2, :cond_1

    .line 203
    iget-object v2, p0, Lcom/oculus/horizon/widget/RatingView;->mHalfDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 205
    :cond_1
    iget-object v2, p0, Lcom/oculus/horizon/widget/RatingView;->mActiveDrawable:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    goto :goto_1

    .line 210
    :cond_2
    return-void
.end method


# virtual methods
.method public getNumStars()I
    .locals 1

    .prologue
    .line 132
    iget-object v0, p0, Lcom/oculus/horizon/widget/RatingView;->mStars:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getRating()F
    .locals 1

    .prologue
    .line 155
    iget v0, p0, Lcom/oculus/horizon/widget/RatingView;->mRating:F

    return v0
.end method

.method public getStepSize()F
    .locals 1

    .prologue
    .line 137
    iget v0, p0, Lcom/oculus/horizon/widget/RatingView;->mStepSize:F

    return v0
.end method

.method public setIsIndicator(Z)V
    .locals 1

    .prologue
    .line 164
    iput-boolean p1, p0, Lcom/oculus/horizon/widget/RatingView;->mIsIndicator:Z

    .line 166
    iget-boolean v0, p0, Lcom/oculus/horizon/widget/RatingView;->mIsIndicator:Z

    if-eqz v0, :cond_0

    .line 167
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/RatingView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 188
    :goto_0
    return-void

    .line 169
    :cond_0
    new-instance v0, Lcom/oculus/horizon/widget/RatingView$1;

    invoke-direct {v0, p0}, Lcom/oculus/horizon/widget/RatingView$1;-><init>(Lcom/oculus/horizon/widget/RatingView;)V

    invoke-virtual {p0, v0}, Lcom/oculus/horizon/widget/RatingView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_0
.end method

.method public setOnRatingViewChangedListener(Lcom/oculus/horizon/widget/RatingView$OnRatingViewChangeListener;)V
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lcom/oculus/horizon/widget/RatingView;->mListener:Lcom/oculus/horizon/widget/RatingView$OnRatingViewChangeListener;

    .line 161
    return-void
.end method

.method public setRating(F)V
    .locals 0

    .prologue
    .line 148
    iput p1, p0, Lcom/oculus/horizon/widget/RatingView;->mRating:F

    .line 149
    invoke-direct {p0, p1}, Lcom/oculus/horizon/widget/RatingView;->update(F)V

    .line 150
    invoke-direct {p0, p1}, Lcom/oculus/horizon/widget/RatingView;->notifyRatingChanged(F)V

    .line 151
    return-void
.end method

.method public setStepSize(F)V
    .locals 2

    .prologue
    .line 142
    const/high16 v0, 0x3f800000    # 1.0f

    cmpl-float v0, p1, v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f000000    # 0.5f

    cmpl-float v0, p1, v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    const-string/jumbo v1, "stepSize must be 1.0 or 0.5"

    invoke-static {v0, v1}, Lcom/google/common/base/Preconditions;->checkArgument(ZLjava/lang/Object;)V

    .line 143
    iput p1, p0, Lcom/oculus/horizon/widget/RatingView;->mStepSize:F

    .line 144
    return-void

    .line 142
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
