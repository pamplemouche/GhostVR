.class public LZM0;
.super Ljava/lang/Object;
.source "PG"

# interfaces
.implements LeN0;


# instance fields
.field public final synthetic a:LcN0;


# direct methods
.method public constructor <init>(LcN0;)V
    .locals 0

    .line 1
    iput-object p1, p0, LZM0;->a:LcN0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(LhN0;F)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public a(LhN0;Landroid/graphics/Paint;Landroid/graphics/Canvas;F)V
    .locals 5

    .line 2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p1

    .line 3
    iget-object v0, p0, LZM0;->a:LcN0;

    check-cast v0, LaN0;

    .line 4
    iget v0, v0, LaN0;->a:I

    int-to-float v0, v0

    .line 5
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v1

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v2

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    int-to-float v1, v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    .line 6
    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    .line 7
    iget-object v1, p0, LZM0;->a:LcN0;

    check-cast v1, LaN0;

    .line 8
    iget v1, v1, LaN0;->a:I

    int-to-float v1, v1

    const v3, 0x3f99999a    # 1.2f

    mul-float v1, v1, v3

    .line 9
    invoke-virtual {p1}, Landroid/graphics/Rect;->width()I

    move-result v3

    invoke-virtual {p1}, Landroid/graphics/Rect;->height()I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    int-to-float v3, v3

    div-float/2addr v3, v2

    .line 10
    invoke-static {v1, v3}, Ljava/lang/Math;->min(FF)F

    move-result v1

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float/2addr v2, p4

    .line 11
    invoke-static {v0, v1, v2}, LEO0;->b(FFF)F

    move-result p4

    .line 12
    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v0

    invoke-virtual {p1}, Landroid/graphics/Rect;->exactCenterY()F

    move-result p1

    invoke-virtual {p3, v0, p1, p4, p2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    return-void
.end method
