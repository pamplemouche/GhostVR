.class Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsCheck;
.super Ljava/lang/Object;
.source "TouchImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/instagram/common/ui/widget/touchimageview/TouchImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "BoundsCheck"
.end annotation


# instance fields
.field public bottom:F

.field public left:F

.field public right:F

.field public top:F


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 671
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$1;)V
    .locals 0

    .prologue
    .line 671
    invoke-direct {p0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsCheck;-><init>()V

    return-void
.end method


# virtual methods
.method public critical()Z
    .locals 2

    .prologue
    const/high16 v1, 0x3e800000    # 0.25f

    .line 695
    invoke-virtual {p0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsCheck;->xSlipFactor()F

    move-result v0

    cmpg-float v0, v0, v1

    if-ltz v0, :cond_0

    invoke-virtual {p0}, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsCheck;->ySlipFactor()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public update(Landroid/graphics/RectF;Landroid/graphics/RectF;)V
    .locals 4

    .prologue
    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 680
    iget v0, p2, Landroid/graphics/RectF;->left:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsCheck;->left:F

    .line 681
    iget v0, p2, Landroid/graphics/RectF;->top:F

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsCheck;->top:F

    .line 682
    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v0

    iget v1, p2, Landroid/graphics/RectF;->right:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->width()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsCheck;->right:F

    .line 683
    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v0

    iget v1, p2, Landroid/graphics/RectF;->bottom:F

    sub-float/2addr v0, v1

    invoke-virtual {p1}, Landroid/graphics/RectF;->height()F

    move-result v1

    div-float/2addr v0, v1

    invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    invoke-static {v0, v3}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iput v0, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsCheck;->bottom:F

    .line 684
    return-void
.end method

.method public xSlipFactor()F
    .locals 4

    .prologue
    .line 691
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsCheck;->left:F

    iget v2, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsCheck;->right:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method

.method public ySlipFactor()F
    .locals 4

    .prologue
    .line 687
    const/high16 v0, 0x3f800000    # 1.0f

    iget v1, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsCheck;->top:F

    iget v2, p0, Lcom/instagram/common/ui/widget/touchimageview/TouchImageView$BoundsCheck;->bottom:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4010000000000000L    # 4.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    return v0
.end method
