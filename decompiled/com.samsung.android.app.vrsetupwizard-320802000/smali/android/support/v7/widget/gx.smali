.class Landroid/support/v7/widget/gx;
.super Ljava/lang/Object;


# instance fields
.field private a:I

.field private b:I

.field private c:[F


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Landroid/support/v7/widget/gx;->a:I

    const/16 v0, 0xff

    iput v0, p0, Landroid/support/v7/widget/gx;->b:I

    const/4 v0, 0x3

    new-array v0, v0, [F

    iput-object v0, p0, Landroid/support/v7/widget/gx;->c:[F

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/gx;->a:I

    return v0
.end method

.method public a(F)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/gx;->c:[F

    const/4 v1, 0x2

    aput p1, v0, v1

    iget p1, p0, Landroid/support/v7/widget/gx;->b:I

    invoke-static {p1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/gx;->a:I

    return-void
.end method

.method public a(FF)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/gx;->c:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    const/high16 p2, 0x3f800000    # 1.0f

    aput p2, v0, p1

    iget p1, p0, Landroid/support/v7/widget/gx;->b:I

    invoke-static {p1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/gx;->a:I

    return-void
.end method

.method public a(I)V
    .locals 1

    iput p1, p0, Landroid/support/v7/widget/gx;->a:I

    iget p1, p0, Landroid/support/v7/widget/gx;->a:I

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/gx;->b:I

    iget p1, p0, Landroid/support/v7/widget/gx;->a:I

    iget-object v0, p0, Landroid/support/v7/widget/gx;->c:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    return-void
.end method

.method public b()F
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/gx;->c:[F

    const/4 v1, 0x2

    aget v0, v0, v1

    return v0
.end method

.method public b(I)V
    .locals 1

    iput p1, p0, Landroid/support/v7/widget/gx;->b:I

    iget p1, p0, Landroid/support/v7/widget/gx;->b:I

    iget-object v0, p0, Landroid/support/v7/widget/gx;->c:[F

    invoke-static {p1, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/gx;->a:I

    return-void
.end method

.method public c()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/gx;->b:I

    return v0
.end method
