.class public Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;
.super Landroid/view/View;
.source "TouchImageView.java"

# interfaces
.implements Landroid/view/GestureDetector$OnGestureListener;
.implements Landroid/view/ScaleGestureDetector$OnScaleGestureListener;
.implements Lcom/facebook/rebound/SpringSystemListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$RenderState;,
        Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsCheck;,
        Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$DefaultBoundsDelegate;,
        Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsDelegate;
    }
.end annotation


# static fields
.field private static final COASTING:Lcom/facebook/rebound/SpringConfig;

.field private static final RUBBER_BANDING:Lcom/facebook/rebound/SpringConfig;


# instance fields
.field private mAnimatedScaleConstrainStarted:Z

.field private mBitmap:Landroid/graphics/Bitmap;

.field private final mBitmapRect:Landroid/graphics/Rect;

.field private mBoundsCheck:Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsCheck;

.field private mBoundsDelegate:Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsDelegate;

.field private mCenterCropped:Z

.field private mCriticalDrag:Z

.field private mDidFirstMove:Z

.field private mDownX:F

.field private mDownY:F

.field private final mDrawingRect:Landroid/graphics/RectF;

.field private mFlip:Z

.field private final mGestureDetector:Landroid/view/GestureDetector;

.field private mMirror:Z

.field private final mPaint:Landroid/graphics/Paint;

.field private final mPivotPoint:Landroid/graphics/PointF;

.field private final mPriorPivotPoint:Landroid/graphics/PointF;

.field private final mScaleAnimatedEndRect:Landroid/graphics/RectF;

.field private final mScaleAnimatedStartRect:Landroid/graphics/RectF;

.field private mScaleEnabled:Z

.field private final mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

.field private final mScaleSpring:Lcom/facebook/rebound/Spring;

.field private mScaleStarted:Z

.field private final mScratchRect:Landroid/graphics/RectF;

.field private mShouldSlipNearBounds:Z

.field private mTouchEnabled:Z

.field private mTouching:Z

.field private mVelocityX:F

.field private mVelocityY:F

.field private final mXSpring:Lcom/facebook/rebound/Spring;

.field private final mYSpring:Lcom/facebook/rebound/Spring;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 49
    const-wide/16 v0, 0x0

    const-wide/high16 v2, 0x3ff8000000000000L    # 1.5

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object v0

    sput-object v0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->COASTING:Lcom/facebook/rebound/SpringConfig;

    .line 50
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    const-wide/high16 v2, 0x4020000000000000L    # 8.0

    .line 51
    invoke-static {v0, v1, v2, v3}, Lcom/facebook/rebound/SpringConfig;->fromOrigamiTensionAndFriction(DD)Lcom/facebook/rebound/SpringConfig;

    move-result-object v0

    sput-object v0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->RUBBER_BANDING:Lcom/facebook/rebound/SpringConfig;

    .line 50
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v0, 0x1

    const-wide v6, 0x3f847ae147ae147bL    # 0.01

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 84
    iput-boolean v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScaleEnabled:Z

    .line 85
    iput-boolean v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mShouldSlipNearBounds:Z

    .line 97
    new-instance v0, Landroid/view/GestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V

    iput-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mGestureDetector:Landroid/view/GestureDetector;

    .line 98
    new-instance v0, Landroid/view/ScaleGestureDetector;

    invoke-direct {v0, p1, p0}, Landroid/view/ScaleGestureDetector;-><init>(Landroid/content/Context;Landroid/view/ScaleGestureDetector$OnScaleGestureListener;)V

    iput-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    .line 100
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mPaint:Landroid/graphics/Paint;

    .line 101
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScratchRect:Landroid/graphics/RectF;

    .line 102
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScaleAnimatedStartRect:Landroid/graphics/RectF;

    .line 103
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScaleAnimatedEndRect:Landroid/graphics/RectF;

    .line 104
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mBitmapRect:Landroid/graphics/Rect;

    .line 105
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDrawingRect:Landroid/graphics/RectF;

    .line 106
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mPivotPoint:Landroid/graphics/PointF;

    .line 107
    new-instance v0, Landroid/graphics/PointF;

    invoke-direct {v0}, Landroid/graphics/PointF;-><init>()V

    iput-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mPriorPivotPoint:Landroid/graphics/PointF;

    .line 108
    new-instance v0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsCheck;

    invoke-direct {v0, v3}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsCheck;-><init>(Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$1;)V

    iput-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mBoundsCheck:Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsCheck;

    .line 110
    invoke-static {}, Lcom/facebook/rebound/SpringSystem;->create()Lcom/facebook/rebound/SpringSystem;

    move-result-object v0

    .line 111
    invoke-virtual {v0, p0}, Lcom/facebook/rebound/SpringSystem;->addListener(Lcom/facebook/rebound/SpringSystemListener;)V

    .line 115
    invoke-virtual {v0}, Lcom/facebook/rebound/SpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v1

    sget-object v2, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->COASTING:Lcom/facebook/rebound/SpringConfig;

    .line 116
    invoke-virtual {v1, v2}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    move-result-object v1

    .line 117
    invoke-virtual {v1, v4, v5}, Lcom/facebook/rebound/Spring;->setRestSpeedThreshold(D)Lcom/facebook/rebound/Spring;

    move-result-object v1

    .line 118
    invoke-virtual {v1, v4, v5}, Lcom/facebook/rebound/Spring;->setRestDisplacementThreshold(D)Lcom/facebook/rebound/Spring;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mXSpring:Lcom/facebook/rebound/Spring;

    .line 121
    invoke-virtual {v0}, Lcom/facebook/rebound/SpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v1

    .line 122
    invoke-virtual {v1, v4, v5}, Lcom/facebook/rebound/Spring;->setRestSpeedThreshold(D)Lcom/facebook/rebound/Spring;

    move-result-object v1

    .line 123
    invoke-virtual {v1, v4, v5}, Lcom/facebook/rebound/Spring;->setRestDisplacementThreshold(D)Lcom/facebook/rebound/Spring;

    move-result-object v1

    sget-object v2, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->COASTING:Lcom/facebook/rebound/SpringConfig;

    .line 124
    invoke-virtual {v1, v2}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    move-result-object v1

    iput-object v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mYSpring:Lcom/facebook/rebound/Spring;

    .line 127
    invoke-virtual {v0}, Lcom/facebook/rebound/SpringSystem;->createSpring()Lcom/facebook/rebound/Spring;

    move-result-object v0

    sget-object v1, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->RUBBER_BANDING:Lcom/facebook/rebound/SpringConfig;

    .line 128
    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    move-result-object v0

    .line 129
    invoke-virtual {v0, v6, v7}, Lcom/facebook/rebound/Spring;->setRestSpeedThreshold(D)Lcom/facebook/rebound/Spring;

    move-result-object v0

    .line 130
    invoke-virtual {v0, v6, v7}, Lcom/facebook/rebound/Spring;->setRestDisplacementThreshold(D)Lcom/facebook/rebound/Spring;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScaleSpring:Lcom/facebook/rebound/Spring;

    .line 132
    new-instance v0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$DefaultBoundsDelegate;

    invoke-direct {v0, v3}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$DefaultBoundsDelegate;-><init>(Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$1;)V

    invoke-virtual {p0, v0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->setBoundsDelegate(Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsDelegate;)V

    .line 133
    return-void
.end method

.method private canBeDrawn()Z
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mBitmap:Landroid/graphics/Bitmap;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mBoundsDelegate:Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsDelegate;

    invoke-interface {v0, p0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsDelegate;->getBounds(Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private constrainToBoundsWithCenterAndScale(FFF)V
    .locals 7

    .prologue
    const/high16 v1, 0x3f800000    # 1.0f

    .line 351
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mBoundsDelegate:Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsDelegate;

    invoke-interface {v0, p0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsDelegate;->getBounds(Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;)Landroid/graphics/RectF;

    move-result-object v2

    .line 352
    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    sub-float/2addr v0, p1

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    sub-float/2addr v3, p2

    invoke-direct {p0, v0, v3}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->translateContentTo(FF)V

    .line 353
    invoke-direct {p0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->minimumScale()F

    move-result v0

    invoke-static {v0, p3}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v3

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerY()F

    move-result v4

    invoke-direct {p0, v0, v3, v4}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->scaleContentTo(FFF)V

    .line 355
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v2}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 389
    :goto_0
    return-void

    .line 360
    :cond_0
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    div-float v3, p1, v0

    .line 361
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    div-float v4, p2, v0

    .line 363
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDrawingRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v5, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    if-le v0, v5, :cond_4

    .line 364
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDrawingRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    iget v5, v2, Landroid/graphics/RectF;->left:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int/2addr v0, v5

    int-to-float v0, v0

    .line 365
    div-float/2addr v0, v3

    .line 366
    iget-object v5, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v0, v5

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 369
    :goto_1
    iget-object v5, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDrawingRect:Landroid/graphics/RectF;

    iget v5, v5, Landroid/graphics/RectF;->right:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v6, v2, Landroid/graphics/RectF;->right:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    if-ge v5, v6, :cond_1

    .line 370
    iget v5, v2, Landroid/graphics/RectF;->right:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget-object v6, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDrawingRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->right:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    sub-int/2addr v5, v6

    int-to-float v5, v5

    .line 371
    sub-float v3, v1, v3

    div-float v3, v5, v3

    .line 372
    iget-object v5, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->width()F

    move-result v5

    div-float/2addr v3, v5

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 375
    :cond_1
    iget-object v3, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDrawingRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v5, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    if-le v3, v5, :cond_2

    .line 376
    iget-object v3, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDrawingRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v5, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    sub-int/2addr v3, v5

    int-to-float v3, v3

    .line 377
    div-float/2addr v3, v4

    .line 378
    iget-object v5, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v5}, Landroid/graphics/RectF;->height()F

    move-result v5

    div-float/2addr v3, v5

    invoke-static {v3, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 381
    :cond_2
    iget-object v3, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDrawingRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v5, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    if-ge v3, v5, :cond_3

    .line 382
    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDrawingRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    .line 383
    sub-float/2addr v1, v4

    div-float v1, v2, v1

    .line 384
    iget-object v2, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v2

    div-float/2addr v1, v2

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v1

    invoke-static {v1, v0}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 387
    :cond_3
    invoke-direct {p0, v0, p1, p2}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->scaleContentBy(FFF)V

    .line 388
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->constrainToBounds(Z)Z

    goto/16 :goto_0

    :cond_4
    move v0, v1

    goto/16 :goto_1
.end method

.method private endTouch()V
    .locals 4

    .prologue
    const/4 v0, 0x0

    .line 508
    iput-boolean v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mTouching:Z

    .line 509
    iput-boolean v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScaleStarted:Z

    .line 512
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mXSpring:Lcom/facebook/rebound/Spring;

    sget-object v1, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->COASTING:Lcom/facebook/rebound/SpringConfig;

    .line 513
    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    move-result-object v0

    .line 514
    invoke-direct {p0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->getContentTranslationX()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    move-result-object v0

    iget v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mVelocityX:F

    float-to-double v2, v1

    .line 515
    invoke-virtual {v0, v2, v3}, Lcom/facebook/rebound/Spring;->setVelocity(D)Lcom/facebook/rebound/Spring;

    .line 516
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mYSpring:Lcom/facebook/rebound/Spring;

    sget-object v1, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->COASTING:Lcom/facebook/rebound/SpringConfig;

    .line 517
    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    move-result-object v0

    .line 518
    invoke-direct {p0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->getContentTranslationY()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    move-result-object v0

    iget v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mVelocityY:F

    float-to-double v2, v1

    .line 519
    invoke-virtual {v0, v2, v3}, Lcom/facebook/rebound/Spring;->setVelocity(D)Lcom/facebook/rebound/Spring;

    .line 521
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScaleSpring:Lcom/facebook/rebound/Spring;

    invoke-direct {p0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->getContentScale()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 523
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->constrainToBounds(Z)Z

    .line 524
    return-void
.end method

.method private getContentScale()F
    .locals 2

    .prologue
    .line 321
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget-object v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    return v0
.end method

.method private getContentTranslationX()F
    .locals 1

    .prologue
    .line 325
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDrawingRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->left:F

    return v0
.end method

.method private getContentTranslationY()F
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDrawingRect:Landroid/graphics/RectF;

    iget v0, v0, Landroid/graphics/RectF;->top:F

    return v0
.end method

.method private minimumScale()F
    .locals 3

    .prologue
    .line 461
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mBoundsDelegate:Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsDelegate;

    .line 462
    invoke-interface {v0, p0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsDelegate;->getBounds(Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;)Landroid/graphics/RectF;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget-object v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mBoundsDelegate:Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsDelegate;

    .line 463
    invoke-interface {v1, p0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsDelegate;->getBounds(Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;)Landroid/graphics/RectF;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v1

    iget-object v2, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    div-float/2addr v1, v2

    .line 461
    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    return v0
.end method

.method private scaleContentBy(FFF)V
    .locals 1

    .prologue
    .line 296
    invoke-direct {p0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->getContentScale()F

    move-result v0

    mul-float/2addr v0, p1

    invoke-direct {p0, v0, p2, p3}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->scaleContentTo(FFF)V

    .line 297
    return-void
.end method

.method private scaleContentTo(FFF)V
    .locals 6

    .prologue
    .line 300
    iget-object v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mBitmapRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDrawingRect:Landroid/graphics/RectF;

    move-object v0, p0

    move v3, p1

    move v4, p2

    move v5, p3

    invoke-direct/range {v0 .. v5}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->scaleRect(Landroid/graphics/Rect;Landroid/graphics/RectF;FFF)V

    .line 301
    invoke-virtual {p0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->invalidate()V

    .line 302
    return-void
.end method

.method private scaleRect(Landroid/graphics/Rect;Landroid/graphics/RectF;FFF)V
    .locals 6

    .prologue
    .line 305
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v0

    int-to-float v0, v0

    mul-float/2addr v0, p3

    .line 306
    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v1

    int-to-float v1, v1

    mul-float/2addr v1, p3

    .line 308
    iget v2, p2, Landroid/graphics/RectF;->left:F

    iget v3, p1, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    sub-float/2addr v2, v3

    sub-float v2, p4, v2

    .line 309
    iget v3, p2, Landroid/graphics/RectF;->top:F

    iget v4, p1, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    sub-float/2addr v3, v4

    sub-float v3, p5, v3

    .line 311
    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v2, v4

    .line 312
    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v3, v4

    .line 314
    iget v4, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->width()F

    move-result v5

    sub-float v5, v0, v5

    mul-float/2addr v2, v5

    sub-float v2, v4, v2

    iput v2, p2, Landroid/graphics/RectF;->left:F

    .line 315
    iget v2, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p2}, Landroid/graphics/RectF;->height()F

    move-result v4

    sub-float v4, v1, v4

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iput v2, p2, Landroid/graphics/RectF;->top:F

    .line 316
    iget v2, p2, Landroid/graphics/RectF;->left:F

    add-float/2addr v0, v2

    iput v0, p2, Landroid/graphics/RectF;->right:F

    .line 317
    iget v0, p2, Landroid/graphics/RectF;->top:F

    add-float/2addr v0, v1

    iput v0, p2, Landroid/graphics/RectF;->bottom:F

    .line 318
    return-void
.end method

.method private startTouch(Landroid/view/MotionEvent;)V
    .locals 4

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 494
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mTouching:Z

    .line 495
    iput-boolean v2, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDidFirstMove:Z

    .line 496
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    iput v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDownX:F

    .line 497
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v0

    iput v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDownY:F

    .line 498
    iput v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mVelocityX:F

    .line 499
    iput v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mVelocityY:F

    .line 500
    iput-boolean v2, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mAnimatedScaleConstrainStarted:Z

    .line 502
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mXSpring:Lcom/facebook/rebound/Spring;

    invoke-direct {p0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->getContentTranslationX()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 503
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mYSpring:Lcom/facebook/rebound/Spring;

    invoke-direct {p0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->getContentTranslationY()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 504
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScaleSpring:Lcom/facebook/rebound/Spring;

    invoke-direct {p0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->getContentScale()F

    move-result v1

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    .line 505
    return-void
.end method

.method private translateContentBy(FF)V
    .locals 1

    .prologue
    .line 279
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V

    .line 280
    invoke-virtual {p0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->invalidate()V

    .line 281
    return-void
.end method

.method private translateContentTo(FF)V
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offsetTo(FF)V

    .line 275
    invoke-virtual {p0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->invalidate()V

    .line 276
    return-void
.end method


# virtual methods
.method protected constrainToBounds(Z)Z
    .locals 10

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x0

    const/4 v7, 0x1

    .line 392
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScratchRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 393
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mBoundsDelegate:Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsDelegate;

    invoke-interface {v0, p0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsDelegate;->getBounds(Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;)Landroid/graphics/RectF;

    move-result-object v8

    .line 395
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScratchRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v8}, Landroid/graphics/RectF;->contains(Landroid/graphics/RectF;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 449
    :goto_0
    return v6

    .line 403
    :cond_0
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScratchRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v8}, Landroid/graphics/RectF;->height()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-lt v0, v1, :cond_1

    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScratchRect:Landroid/graphics/RectF;

    .line 404
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {v8}, Landroid/graphics/RectF;->width()F

    move-result v1

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    if-ge v0, v1, :cond_a

    .line 405
    :cond_1
    iget-object v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mBitmapRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScratchRect:Landroid/graphics/RectF;

    invoke-direct {p0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->minimumScale()F

    move-result v3

    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mPivotPoint:Landroid/graphics/PointF;

    iget v4, v0, Landroid/graphics/PointF;->x:F

    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mPivotPoint:Landroid/graphics/PointF;

    iget v5, v0, Landroid/graphics/PointF;->y:F

    move-object v0, p0

    invoke-direct/range {v0 .. v5}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->scaleRect(Landroid/graphics/Rect;Landroid/graphics/RectF;FFF)V

    move v0, v7

    .line 409
    :goto_1
    iget-object v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScratchRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, v8, Landroid/graphics/RectF;->left:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    if-le v1, v2, :cond_9

    .line 410
    iget-object v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScratchRect:Landroid/graphics/RectF;

    iget v2, v8, Landroid/graphics/RectF;->left:F

    iget-object v3, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScratchRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->left:F

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2, v9}, Landroid/graphics/RectF;->offset(FF)V

    move v1, v7

    .line 414
    :goto_2
    iget-object v2, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScratchRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->right:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 415
    iget-object v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScratchRect:Landroid/graphics/RectF;

    iget v2, v8, Landroid/graphics/RectF;->right:F

    iget-object v3, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScratchRect:Landroid/graphics/RectF;

    iget v3, v3, Landroid/graphics/RectF;->right:F

    sub-float/2addr v2, v3

    invoke-virtual {v1, v2, v9}, Landroid/graphics/RectF;->offset(FF)V

    move v1, v7

    .line 419
    :cond_2
    iget-object v2, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScratchRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->top:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v8, Landroid/graphics/RectF;->top:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-le v2, v3, :cond_3

    .line 420
    iget-object v2, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScratchRect:Landroid/graphics/RectF;

    iget v3, v8, Landroid/graphics/RectF;->top:F

    iget-object v4, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScratchRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->top:F

    sub-float/2addr v3, v4

    invoke-virtual {v2, v9, v3}, Landroid/graphics/RectF;->offset(FF)V

    move v6, v7

    .line 424
    :cond_3
    iget-object v2, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScratchRect:Landroid/graphics/RectF;

    iget v2, v2, Landroid/graphics/RectF;->bottom:F

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget v3, v8, Landroid/graphics/RectF;->bottom:F

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    if-ge v2, v3, :cond_4

    .line 425
    iget-object v2, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScratchRect:Landroid/graphics/RectF;

    iget v3, v8, Landroid/graphics/RectF;->bottom:F

    iget-object v4, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScratchRect:Landroid/graphics/RectF;

    iget v4, v4, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v3, v4

    invoke-virtual {v2, v9, v3}, Landroid/graphics/RectF;->offset(FF)V

    move v6, v7

    .line 429
    :cond_4
    if-nez p1, :cond_6

    .line 430
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDrawingRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScratchRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    :cond_5
    :goto_3
    move v6, v7

    .line 449
    goto/16 :goto_0

    .line 431
    :cond_6
    iget-boolean v2, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mAnimatedScaleConstrainStarted:Z

    if-nez v2, :cond_5

    .line 432
    if-eqz v0, :cond_7

    .line 433
    iput-boolean v7, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mAnimatedScaleConstrainStarted:Z

    .line 434
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mXSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->setAtRest()Lcom/facebook/rebound/Spring;

    .line 435
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mYSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->setAtRest()Lcom/facebook/rebound/Spring;

    .line 436
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScaleSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->setAtRest()Lcom/facebook/rebound/Spring;

    move-result-object v0

    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Lcom/facebook/rebound/Spring;->setCurrentValue(D)Lcom/facebook/rebound/Spring;

    move-result-object v0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v0, v2, v3}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 437
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScaleAnimatedStartRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 438
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScaleAnimatedEndRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScratchRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    goto :goto_3

    .line 440
    :cond_7
    if-eqz v1, :cond_8

    .line 441
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mXSpring:Lcom/facebook/rebound/Spring;

    sget-object v1, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->RUBBER_BANDING:Lcom/facebook/rebound/SpringConfig;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScratchRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->left:F

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    .line 443
    :cond_8
    if-eqz v6, :cond_5

    .line 444
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mYSpring:Lcom/facebook/rebound/Spring;

    sget-object v1, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->RUBBER_BANDING:Lcom/facebook/rebound/SpringConfig;

    invoke-virtual {v0, v1}, Lcom/facebook/rebound/Spring;->setSpringConfig(Lcom/facebook/rebound/SpringConfig;)Lcom/facebook/rebound/Spring;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScratchRect:Landroid/graphics/RectF;

    iget v1, v1, Landroid/graphics/RectF;->top:F

    float-to-double v2, v1

    invoke-virtual {v0, v2, v3}, Lcom/facebook/rebound/Spring;->setEndValue(D)Lcom/facebook/rebound/Spring;

    goto :goto_3

    :cond_9
    move v1, v6

    goto/16 :goto_2

    :cond_a
    move v0, v6

    goto/16 :goto_1
.end method

.method public ensureCenterCropped()V
    .locals 3

    .prologue
    .line 264
    iget-boolean v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mCenterCropped:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->canBeDrawn()Z

    move-result v0

    if-nez v0, :cond_1

    .line 271
    :cond_0
    :goto_0
    return-void

    .line 267
    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mCenterCropped:Z

    .line 268
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDrawingRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 269
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDrawingRect:Landroid/graphics/RectF;

    .line 270
    invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F

    move-result v0

    iget-object v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v1}, Landroid/graphics/RectF;->centerY()F

    move-result v1

    invoke-direct {p0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->minimumScale()F

    move-result v2

    .line 269
    invoke-direct {p0, v0, v1, v2}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->constrainToBoundsWithCenterAndScale(FFF)V

    goto :goto_0
.end method

.method public getCropRect()Landroid/graphics/Rect;
    .locals 6

    .prologue
    .line 179
    new-instance v0, Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-direct {v0, v1}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 180
    new-instance v1, Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mBoundsDelegate:Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsDelegate;

    invoke-interface {v2, p0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsDelegate;->getBounds(Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;)Landroid/graphics/RectF;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V

    .line 182
    iget v2, v0, Landroid/graphics/RectF;->left:F

    neg-float v2, v2

    .line 183
    iget v3, v0, Landroid/graphics/RectF;->top:F

    neg-float v3, v3

    .line 184
    invoke-virtual {v0, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 185
    invoke-virtual {v1, v2, v3}, Landroid/graphics/RectF;->offset(FF)V

    .line 187
    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z

    .line 188
    invoke-direct {p0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->getContentScale()F

    move-result v1

    .line 189
    new-instance v2, Landroid/graphics/Rect;

    iget v3, v0, Landroid/graphics/RectF;->left:F

    div-float/2addr v3, v1

    .line 190
    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    iget v4, v0, Landroid/graphics/RectF;->top:F

    div-float/2addr v4, v1

    .line 191
    invoke-static {v4}, Ljava/lang/Math;->round(F)I

    move-result v4

    iget v5, v0, Landroid/graphics/RectF;->right:F

    div-float/2addr v5, v1

    .line 192
    invoke-static {v5}, Ljava/lang/Math;->round(F)I

    move-result v5

    iget v0, v0, Landroid/graphics/RectF;->bottom:F

    div-float/2addr v0, v1

    .line 193
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-direct {v2, v3, v4, v5, v0}, Landroid/graphics/Rect;-><init>(IIII)V

    return-object v2
.end method

.method public getImageBitmap()Landroid/graphics/Bitmap;
    .locals 1

    .prologue
    .line 234
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public getRenderState()Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$RenderState;
    .locals 7

    .prologue
    .line 173
    new-instance v0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$RenderState;

    iget-object v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDrawingRect:Landroid/graphics/RectF;

    iget-object v2, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mBoundsDelegate:Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsDelegate;

    .line 174
    invoke-interface {v2, p0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsDelegate;->getBounds(Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;)Landroid/graphics/RectF;

    move-result-object v2

    iget-object v3, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mBitmapRect:Landroid/graphics/Rect;

    iget-object v4, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mBitmap:Landroid/graphics/Bitmap;

    iget-boolean v5, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mFlip:Z

    iget-boolean v6, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mMirror:Z

    invoke-direct/range {v0 .. v6}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$RenderState;-><init>(Landroid/graphics/RectF;Landroid/graphics/RectF;Landroid/graphics/Rect;Landroid/graphics/Bitmap;ZZ)V

    return-object v0
.end method

.method public onAfterIntegrate(Lcom/facebook/rebound/BaseSpringSystem;)V
    .locals 20

    .prologue
    .line 642
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mAnimatedScaleConstrainStarted:Z

    if-eqz v2, :cond_1

    .line 643
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScaleAnimatedStartRect:Landroid/graphics/RectF;

    iget v8, v2, Landroid/graphics/RectF;->left:F

    .line 644
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScaleAnimatedStartRect:Landroid/graphics/RectF;

    iget v12, v2, Landroid/graphics/RectF;->top:F

    .line 645
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScaleAnimatedStartRect:Landroid/graphics/RectF;

    iget v13, v2, Landroid/graphics/RectF;->right:F

    .line 646
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScaleAnimatedStartRect:Landroid/graphics/RectF;

    iget v14, v2, Landroid/graphics/RectF;->bottom:F

    .line 648
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScaleAnimatedEndRect:Landroid/graphics/RectF;

    iget v10, v2, Landroid/graphics/RectF;->left:F

    .line 649
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScaleAnimatedEndRect:Landroid/graphics/RectF;

    iget v15, v2, Landroid/graphics/RectF;->top:F

    .line 650
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScaleAnimatedEndRect:Landroid/graphics/RectF;

    iget v0, v2, Landroid/graphics/RectF;->right:F

    move/from16 v16, v0

    .line 651
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScaleAnimatedEndRect:Landroid/graphics/RectF;

    iget v0, v2, Landroid/graphics/RectF;->bottom:F

    move/from16 v17, v0

    .line 653
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScaleSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v2}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v18, v0

    .line 655
    move/from16 v0, v18

    float-to-double v2, v0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    float-to-double v8, v8

    float-to-double v10, v10

    invoke-static/range {v2 .. v11}, Lcom/facebook/rebound/SpringUtil;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v2

    double-to-float v0, v2

    move/from16 v19, v0

    .line 656
    move/from16 v0, v18

    float-to-double v2, v0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    float-to-double v8, v12

    float-to-double v10, v15

    invoke-static/range {v2 .. v11}, Lcom/facebook/rebound/SpringUtil;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v2

    double-to-float v12, v2

    .line 657
    move/from16 v0, v18

    float-to-double v2, v0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    float-to-double v8, v13

    move/from16 v0, v16

    float-to-double v10, v0

    invoke-static/range {v2 .. v11}, Lcom/facebook/rebound/SpringUtil;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v2

    double-to-float v13, v2

    .line 658
    move/from16 v0, v18

    float-to-double v2, v0

    const-wide/16 v4, 0x0

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    float-to-double v8, v14

    move/from16 v0, v17

    float-to-double v10, v0

    invoke-static/range {v2 .. v11}, Lcom/facebook/rebound/SpringUtil;->mapValueFromRangeToRange(DDDDD)D

    move-result-wide v2

    double-to-float v2, v2

    .line 660
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDrawingRect:Landroid/graphics/RectF;

    move/from16 v0, v19

    invoke-virtual {v3, v0, v12, v13, v2}, Landroid/graphics/RectF;->set(FFFF)V

    .line 662
    invoke-virtual/range {p0 .. p0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->invalidate()V

    .line 669
    :cond_0
    :goto_0
    return-void

    .line 663
    :cond_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mXSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v2}, Lcom/facebook/rebound/Spring;->isAtRest()Z

    move-result v2

    if-eqz v2, :cond_2

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mYSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v2}, Lcom/facebook/rebound/Spring;->isAtRest()Z

    move-result v2

    if-nez v2, :cond_0

    .line 664
    :cond_2
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mXSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v2}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v2

    double-to-float v2, v2

    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mYSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v3}, Lcom/facebook/rebound/Spring;->getCurrentValue()D

    move-result-wide v4

    double-to-float v3, v4

    move-object/from16 v0, p0

    invoke-direct {v0, v2, v3}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->translateContentTo(FF)V

    .line 665
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mTouching:Z

    if-nez v2, :cond_0

    .line 666
    const/4 v2, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->constrainToBounds(Z)Z

    goto :goto_0
.end method

.method public onBeforeIntegrate(Lcom/facebook/rebound/BaseSpringSystem;)V
    .locals 0

    .prologue
    .line 638
    return-void
.end method

.method public onCriticalDrag(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 585
    return-void
.end method

.method public onDown(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 530
    const/4 v0, 0x1

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 4

    .prologue
    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v1, -0x40800000    # -1.0f

    .line 164
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 165
    invoke-direct {p0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->canBeDrawn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 170
    :goto_0
    return-void

    .line 168
    :cond_0
    iget-boolean v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mMirror:Z

    if-eqz v0, :cond_1

    move v0, v1

    :goto_1
    iget-boolean v3, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mFlip:Z

    if-eqz v3, :cond_2

    :goto_2
    iget-object v2, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v2}, Landroid/graphics/RectF;->centerX()F

    move-result v2

    iget-object v3, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->centerY()F

    move-result v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 169
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mBitmap:Landroid/graphics/Bitmap;

    iget-object v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mBitmapRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDrawingRect:Landroid/graphics/RectF;

    iget-object v3, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    goto :goto_0

    :cond_1
    move v0, v2

    .line 168
    goto :goto_1

    :cond_2
    move v1, v2

    goto :goto_2
.end method

.method public onFling(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 6

    .prologue
    const-wide v4, 0x40a7700000000000L    # 3000.0

    const-wide v2, -0x3f58900000000000L    # -3000.0

    .line 593
    float-to-double v0, p3

    invoke-static/range {v0 .. v5}, Lcom/facebook/rebound/SpringUtil;->clamp(DDD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mVelocityX:F

    .line 594
    float-to-double v0, p4

    invoke-static/range {v0 .. v5}, Lcom/facebook/rebound/SpringUtil;->clamp(DDD)D

    move-result-wide v0

    double-to-float v0, v0

    iput v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mVelocityY:F

    .line 595
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 588
    return-void
.end method

.method public onScale(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .prologue
    .line 603
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mPriorPivotPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mPivotPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 604
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mPriorPivotPoint:Landroid/graphics/PointF;

    iget-object v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mPivotPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 607
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mPivotPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->x:F

    .line 608
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mPivotPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v1

    float-to-int v1, v1

    int-to-float v1, v1

    iput v1, v0, Landroid/graphics/PointF;->y:F

    .line 612
    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getCurrentSpan()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getPreviousSpan()F

    move-result v1

    div-float/2addr v0, v1

    .line 613
    iget-object v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mPivotPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    iget-object v2, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mPivotPoint:Landroid/graphics/PointF;

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v0, v1, v2}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->scaleContentBy(FFF)V

    .line 615
    const/4 v0, 0x1

    return v0
.end method

.method public onScaleBegin(Landroid/view/ScaleGestureDetector;)Z
    .locals 3

    .prologue
    const/4 v0, 0x1

    .line 620
    iget-boolean v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScaleEnabled:Z

    if-nez v1, :cond_0

    .line 621
    const/4 v0, 0x0

    .line 629
    :goto_0
    return v0

    .line 623
    :cond_0
    iput-boolean v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScaleStarted:Z

    .line 624
    invoke-virtual {p0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v0}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 625
    iget-object v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mPriorPivotPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 626
    iget-object v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mPriorPivotPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/PointF;->y:F

    .line 627
    iget-object v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mPivotPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusX()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/PointF;->x:F

    .line 628
    iget-object v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mPivotPoint:Landroid/graphics/PointF;

    invoke-virtual {p1}, Landroid/view/ScaleGestureDetector;->getFocusY()F

    move-result v2

    float-to-int v2, v2

    int-to-float v2, v2

    iput v2, v1, Landroid/graphics/PointF;->y:F

    goto :goto_0
.end method

.method public onScaleEnd(Landroid/view/ScaleGestureDetector;)V
    .locals 0

    .prologue
    .line 633
    return-void
.end method

.method public onScroll(Landroid/view/MotionEvent;Landroid/view/MotionEvent;FF)Z
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 544
    invoke-virtual {p0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    invoke-interface {v0, v3}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 546
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v0}, Landroid/view/ScaleGestureDetector;->isInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 549
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mPriorPivotPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->x:F

    iget-object v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mPivotPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->x:F

    sub-float p3, v0, v1

    .line 550
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mPriorPivotPoint:Landroid/graphics/PointF;

    iget v0, v0, Landroid/graphics/PointF;->y:F

    iget-object v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mPivotPoint:Landroid/graphics/PointF;

    iget v1, v1, Landroid/graphics/PointF;->y:F

    sub-float p4, v0, v1

    .line 558
    :cond_0
    :goto_0
    iget-boolean v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScaleStarted:Z

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mShouldSlipNearBounds:Z

    if-eqz v0, :cond_4

    .line 561
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mBoundsCheck:Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsCheck;

    iget-object v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mBoundsDelegate:Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsDelegate;

    invoke-interface {v1, p0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsDelegate;->getBounds(Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;)Landroid/graphics/RectF;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsCheck;->update(Landroid/graphics/RectF;Landroid/graphics/RectF;)V

    .line 563
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mBoundsCheck:Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsCheck;

    invoke-virtual {v0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsCheck;->xSlipFactor()F

    move-result v0

    mul-float/2addr p3, v0

    .line 564
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mBoundsCheck:Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsCheck;

    invoke-virtual {v0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsCheck;->ySlipFactor()F

    move-result v0

    mul-float/2addr p4, v0

    .line 566
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mBoundsCheck:Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsCheck;

    invoke-virtual {v0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsCheck;->critical()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 567
    iget-boolean v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mCriticalDrag:Z

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mTouching:Z

    if-eqz v0, :cond_1

    .line 568
    iput-boolean v3, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mCriticalDrag:Z

    .line 569
    invoke-virtual {p0, p2}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->onCriticalDrag(Landroid/view/MotionEvent;)V

    .line 579
    :cond_1
    :goto_1
    neg-float v0, p3

    neg-float v1, p4

    invoke-direct {p0, v0, v1}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->translateContentBy(FF)V

    .line 581
    return v3

    .line 551
    :cond_2
    iget-boolean v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDidFirstMove:Z

    if-nez v0, :cond_0

    .line 552
    iput-boolean v3, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDidFirstMove:Z

    .line 554
    iget v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDownX:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawX()F

    move-result v1

    sub-float/2addr v0, v1

    sub-float/2addr p3, v0

    .line 555
    iget v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDownY:F

    invoke-virtual {p2}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    sub-float/2addr v0, v1

    sub-float/2addr p4, v0

    goto :goto_0

    .line 572
    :cond_3
    iput-boolean v4, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mCriticalDrag:Z

    goto :goto_1

    .line 576
    :cond_4
    iput-boolean v4, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mCriticalDrag:Z

    goto :goto_1
.end method

.method public onShowPress(Landroid/view/MotionEvent;)V
    .locals 0

    .prologue
    .line 534
    return-void
.end method

.method public onSingleTapUp(Landroid/view/MotionEvent;)Z
    .locals 1

    .prologue
    .line 538
    const/4 v0, 0x0

    return v0
.end method

.method protected onSizeChanged(IIII)V
    .locals 5

    .prologue
    const/high16 v4, 0x40000000    # 2.0f

    .line 141
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 142
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScaleSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->setAtRest()Lcom/facebook/rebound/Spring;

    .line 143
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mXSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->setAtRest()Lcom/facebook/rebound/Spring;

    .line 144
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mYSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->setAtRest()Lcom/facebook/rebound/Spring;

    .line 146
    invoke-direct {p0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->canBeDrawn()Z

    move-result v0

    if-nez v0, :cond_0

    .line 160
    :goto_0
    return-void

    .line 150
    :cond_0
    int-to-float v0, p1

    div-float/2addr v0, v4

    .line 151
    int-to-float v1, p2

    div-float/2addr v1, v4

    .line 152
    int-to-float v2, p3

    div-float/2addr v2, v4

    .line 153
    int-to-float v3, p4

    div-float/2addr v3, v4

    .line 154
    sub-float/2addr v0, v2

    .line 155
    sub-float/2addr v1, v3

    .line 157
    invoke-virtual {p0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->ensureCenterCropped()V

    .line 158
    invoke-direct {p0, v0, v1}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->translateContentBy(FF)V

    .line 159
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->constrainToBounds(Z)Z

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 473
    iget-boolean v2, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mTouchEnabled:Z

    if-nez v2, :cond_1

    .line 490
    :cond_0
    :goto_0
    return v0

    .line 477
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v3

    .line 478
    if-nez v3, :cond_2

    .line 479
    invoke-direct {p0, p1}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->startTouch(Landroid/view/MotionEvent;)V

    .line 482
    :cond_2
    iget-object v2, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScaleGestureDetector:Landroid/view/ScaleGestureDetector;

    invoke-virtual {v2, p1}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    .line 483
    iget-object v4, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mGestureDetector:Landroid/view/GestureDetector;

    invoke-virtual {v4, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    if-nez v4, :cond_3

    if-eqz v2, :cond_7

    :cond_3
    move v2, v1

    .line 484
    :goto_1
    if-nez v2, :cond_4

    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v2

    if-eqz v2, :cond_5

    :cond_4
    move v0, v1

    .line 486
    :cond_5
    if-eq v3, v1, :cond_6

    const/4 v1, 0x3

    if-ne v3, v1, :cond_0

    .line 487
    :cond_6
    invoke-direct {p0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->endTouch()V

    goto :goto_0

    :cond_7
    move v2, v0

    .line 483
    goto :goto_1
.end method

.method public setBoundsDelegate(Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsDelegate;)V
    .locals 0

    .prologue
    .line 136
    iput-object p1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mBoundsDelegate:Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsDelegate;

    .line 137
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 243
    iput-object p1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mBitmap:Landroid/graphics/Bitmap;

    .line 244
    iput-boolean v3, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mCenterCropped:Z

    .line 245
    iput-boolean v3, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mFlip:Z

    .line 246
    iput-boolean v3, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mMirror:Z

    .line 247
    if-nez p1, :cond_0

    .line 248
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->setEmpty()V

    .line 252
    :goto_0
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDrawingRect:Landroid/graphics/RectF;

    iget-object v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mBitmapRect:Landroid/graphics/Rect;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 254
    invoke-virtual {p0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->ensureCenterCropped()V

    .line 255
    return-void

    .line 250
    :cond_0
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mBitmapRect:Landroid/graphics/Rect;

    iget-object v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v1}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    iget-object v2, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mBitmap:Landroid/graphics/Bitmap;

    invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v2

    invoke-virtual {v0, v3, v3, v1, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public setRenderState(Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$RenderState;)V
    .locals 6

    .prologue
    .line 197
    iget-object v0, p1, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$RenderState;->bitmap:Landroid/graphics/Bitmap;

    invoke-virtual {p0, v0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 199
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mXSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->setAtRest()Lcom/facebook/rebound/Spring;

    .line 200
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mYSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->setAtRest()Lcom/facebook/rebound/Spring;

    .line 201
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScaleSpring:Lcom/facebook/rebound/Spring;

    invoke-virtual {v0}, Lcom/facebook/rebound/Spring;->setAtRest()Lcom/facebook/rebound/Spring;

    .line 203
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mDrawingRect:Landroid/graphics/RectF;

    iget-object v1, p1, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$RenderState;->drawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0, v1}, Landroid/graphics/RectF;->set(Landroid/graphics/RectF;)V

    .line 205
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mBoundsDelegate:Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsDelegate;

    invoke-interface {v0, p0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsDelegate;->getBounds(Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;)Landroid/graphics/RectF;

    move-result-object v1

    .line 207
    iget-boolean v0, p1, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$RenderState;->flip:Z

    iput-boolean v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mFlip:Z

    .line 208
    iget-boolean v0, p1, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$RenderState;->mirror:Z

    iput-boolean v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mMirror:Z

    .line 209
    invoke-virtual {p1}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$RenderState;->getDrawingCenter()Landroid/graphics/PointF;

    move-result-object v2

    .line 210
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mPivotPoint:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->x:F

    iput v3, v0, Landroid/graphics/PointF;->x:F

    .line 211
    iget-object v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mPivotPoint:Landroid/graphics/PointF;

    iget v3, v2, Landroid/graphics/PointF;->y:F

    iput v3, v0, Landroid/graphics/PointF;->y:F

    .line 212
    invoke-virtual {p1}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$RenderState;->getScale()F

    move-result v0

    .line 214
    iget-object v3, p1, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$RenderState;->viewRect:Landroid/graphics/RectF;

    invoke-virtual {v3}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p1, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$RenderState;->viewRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v3, v4

    .line 215
    invoke-virtual {p0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->getWidth()I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {p0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->getHeight()I

    move-result v5

    int-to-float v5, v5

    div-float/2addr v4, v5

    .line 216
    sub-float/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v3, v4

    .line 218
    const v4, 0x3dcccccd    # 0.1f

    cmpg-float v3, v3, v4

    if-gez v3, :cond_0

    .line 224
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    iget-object v4, p1, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$RenderState;->viewRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->width()F

    move-result v4

    div-float/2addr v3, v4

    .line 225
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v1

    iget-object v4, p1, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$RenderState;->viewRect:Landroid/graphics/RectF;

    invoke-virtual {v4}, Landroid/graphics/RectF;->height()F

    move-result v4

    div-float/2addr v1, v4

    .line 223
    invoke-static {v3, v1}, Ljava/lang/Math;->min(FF)F

    move-result v1

    mul-float/2addr v0, v1

    .line 228
    :cond_0
    iget v1, v2, Landroid/graphics/PointF;->x:F

    iget v2, v2, Landroid/graphics/PointF;->y:F

    invoke-direct {p0, v1, v2, v0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->constrainToBoundsWithCenterAndScale(FFF)V

    .line 230
    invoke-virtual {p0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->invalidate()V

    .line 231
    return-void
.end method

.method public setScaleEnabled(Z)V
    .locals 0

    .prologue
    .line 453
    iput-boolean p1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mScaleEnabled:Z

    .line 454
    return-void
.end method

.method public setShouldSlipNearBounds(Z)V
    .locals 0

    .prologue
    .line 457
    iput-boolean p1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mShouldSlipNearBounds:Z

    .line 458
    return-void
.end method

.method public setTouchEnabled(Z)V
    .locals 0

    .prologue
    .line 468
    iput-boolean p1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;->mTouchEnabled:Z

    .line 469
    return-void
.end method
