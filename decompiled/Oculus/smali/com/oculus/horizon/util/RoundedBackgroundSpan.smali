.class public Lcom/oculus/horizon/util/RoundedBackgroundSpan;
.super Landroid/text/style/ReplacementSpan;
.source "RoundedBackgroundSpan.java"


# instance fields
.field private final mBackgroundColor:I

.field private final mBaselineAdjustmentPx:I

.field private final mCornerRadius:F

.field private final mFontMetrics:Landroid/graphics/Paint$FontMetrics;

.field private final mHorizontalPadding:F

.field private final mTextColor:I

.field private final mVerticalPadding:F


# direct methods
.method public constructor <init>(FIIFFI)V
    .locals 1

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/text/style/ReplacementSpan;-><init>()V

    .line 19
    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    iput-object v0, p0, Lcom/oculus/horizon/util/RoundedBackgroundSpan;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    .line 29
    iput p1, p0, Lcom/oculus/horizon/util/RoundedBackgroundSpan;->mCornerRadius:F

    .line 30
    iput p2, p0, Lcom/oculus/horizon/util/RoundedBackgroundSpan;->mBackgroundColor:I

    .line 31
    iput p3, p0, Lcom/oculus/horizon/util/RoundedBackgroundSpan;->mTextColor:I

    .line 32
    iput p4, p0, Lcom/oculus/horizon/util/RoundedBackgroundSpan;->mVerticalPadding:F

    .line 33
    iput p5, p0, Lcom/oculus/horizon/util/RoundedBackgroundSpan;->mHorizontalPadding:F

    .line 34
    iput p6, p0, Lcom/oculus/horizon/util/RoundedBackgroundSpan;->mBaselineAdjustmentPx:I

    .line 35
    return-void
.end method

.method private measureText(Landroid/graphics/Paint;Ljava/lang/CharSequence;II)F
    .locals 3

    .prologue
    .line 66
    invoke-virtual {p1, p2, p3, p4}, Landroid/graphics/Paint;->measureText(Ljava/lang/CharSequence;II)F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    iget v2, p0, Lcom/oculus/horizon/util/RoundedBackgroundSpan;->mHorizontalPadding:F

    mul-float/2addr v1, v2

    add-float/2addr v0, v1

    return v0
.end method


# virtual methods
.method public draw(Landroid/graphics/Canvas;Ljava/lang/CharSequence;IIFIIILandroid/graphics/Paint;)V
    .locals 8

    .prologue
    .line 48
    iget-object v1, p0, Lcom/oculus/horizon/util/RoundedBackgroundSpan;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    move-object/from16 v0, p9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 49
    iget v1, p0, Lcom/oculus/horizon/util/RoundedBackgroundSpan;->mBaselineAdjustmentPx:I

    add-int/2addr v1, p7

    .line 50
    iget-object v2, p0, Lcom/oculus/horizon/util/RoundedBackgroundSpan;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v2, v2, Landroid/graphics/Paint$FontMetrics;->descent:F

    iget-object v3, p0, Lcom/oculus/horizon/util/RoundedBackgroundSpan;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v3, v3, Landroid/graphics/Paint$FontMetrics;->ascent:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40000000    # 2.0f

    iget v4, p0, Lcom/oculus/horizon/util/RoundedBackgroundSpan;->mVerticalPadding:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    .line 51
    int-to-float v3, v1

    sub-float/2addr v3, v2

    .line 52
    int-to-float v1, v1

    iget-object v4, p0, Lcom/oculus/horizon/util/RoundedBackgroundSpan;->mFontMetrics:Landroid/graphics/Paint$FontMetrics;

    iget v4, v4, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v1, v4

    iget v4, p0, Lcom/oculus/horizon/util/RoundedBackgroundSpan;->mVerticalPadding:F

    sub-float v6, v1, v4

    .line 53
    new-instance v1, Landroid/graphics/RectF;

    move-object/from16 v0, p9

    invoke-direct {p0, v0, p2, p3, p4}, Lcom/oculus/horizon/util/RoundedBackgroundSpan;->measureText(Landroid/graphics/Paint;Ljava/lang/CharSequence;II)F

    move-result v4

    add-float/2addr v4, p5

    add-float/2addr v2, v3

    invoke-direct {v1, p5, v3, v4, v2}, Landroid/graphics/RectF;-><init>(FFFF)V

    .line 54
    iget v2, p0, Lcom/oculus/horizon/util/RoundedBackgroundSpan;->mBackgroundColor:I

    move-object/from16 v0, p9

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 55
    iget v2, p0, Lcom/oculus/horizon/util/RoundedBackgroundSpan;->mCornerRadius:F

    iget v3, p0, Lcom/oculus/horizon/util/RoundedBackgroundSpan;->mCornerRadius:F

    move-object/from16 v0, p9

    invoke-virtual {p1, v1, v2, v3, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 56
    iget v1, p0, Lcom/oculus/horizon/util/RoundedBackgroundSpan;->mTextColor:I

    move-object/from16 v0, p9

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 57
    iget v1, p0, Lcom/oculus/horizon/util/RoundedBackgroundSpan;->mHorizontalPadding:F

    add-float v5, p5, v1

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object/from16 v7, p9

    invoke-virtual/range {v1 .. v7}, Landroid/graphics/Canvas;->drawText(Ljava/lang/CharSequence;IIFFLandroid/graphics/Paint;)V

    .line 58
    return-void
.end method

.method public getSize(Landroid/graphics/Paint;Ljava/lang/CharSequence;IILandroid/graphics/Paint$FontMetricsInt;)I
    .locals 2

    .prologue
    .line 62
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/oculus/horizon/util/RoundedBackgroundSpan;->measureText(Landroid/graphics/Paint;Ljava/lang/CharSequence;II)F

    move-result v0

    float-to-double v0, v0

    invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v0

    double-to-int v0, v0

    return v0
.end method
