.class public LBK0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic w:I

.field public final synthetic x:I

.field public final synthetic y:Landroid/graphics/drawable/ColorDrawable;


# direct methods
.method public constructor <init>(Lorg/chromium/chrome/browser/toolbar/top/CustomTabToolbar;IILandroid/graphics/drawable/ColorDrawable;)V
    .locals 0

    .line 1
    iput p2, p0, LBK0;->w:I

    iput p3, p0, LBK0;->x:I

    iput-object p4, p0, LBK0;->y:Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedFraction()F

    move-result p1

    .line 2
    iget v0, p0, LBK0;->w:I

    invoke-static {v0}, Landroid/graphics/Color;->red(I)I

    move-result v0

    int-to-float v0, v0

    iget v1, p0, LBK0;->x:I

    .line 3
    invoke-static {v1}, Landroid/graphics/Color;->red(I)I

    move-result v1

    iget v2, p0, LBK0;->w:I

    invoke-static {v2}, Landroid/graphics/Color;->red(I)I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    mul-float v1, v1, p1

    add-float/2addr v1, v0

    float-to-int v0, v1

    .line 4
    iget v1, p0, LBK0;->w:I

    invoke-static {v1}, Landroid/graphics/Color;->green(I)I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, LBK0;->x:I

    .line 5
    invoke-static {v2}, Landroid/graphics/Color;->green(I)I

    move-result v2

    iget v3, p0, LBK0;->w:I

    invoke-static {v3}, Landroid/graphics/Color;->green(I)I

    move-result v3

    sub-int/2addr v2, v3

    int-to-float v2, v2

    mul-float v2, v2, p1

    add-float/2addr v2, v1

    float-to-int v1, v2

    .line 6
    iget v2, p0, LBK0;->w:I

    invoke-static {v2}, Landroid/graphics/Color;->blue(I)I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, LBK0;->x:I

    .line 7
    invoke-static {v3}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    iget v4, p0, LBK0;->w:I

    invoke-static {v4}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    sub-int/2addr v3, v4

    int-to-float v3, v3

    mul-float p1, p1, v3

    add-float/2addr p1, v2

    float-to-int p1, p1

    .line 8
    iget-object v2, p0, LBK0;->y:Landroid/graphics/drawable/ColorDrawable;

    invoke-static {v0, v1, p1}, Landroid/graphics/Color;->rgb(III)I

    move-result p1

    invoke-virtual {v2, p1}, Landroid/graphics/drawable/ColorDrawable;->setColor(I)V

    return-void
.end method
