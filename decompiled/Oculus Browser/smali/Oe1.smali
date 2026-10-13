.class public LOe1;
.super LMe1;
.source "PG"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public A:F

.field public B:J

.field public final w:Landroid/view/View;

.field public final x:Landroid/graphics/Rect;

.field public y:Landroid/graphics/Bitmap;

.field public z:Landroid/graphics/Rect;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, LOe1;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 3

    .line 1
    invoke-direct {p0}, LMe1;-><init>()V

    .line 2
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, LOe1;->x:Landroid/graphics/Rect;

    .line 3
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, LOe1;->z:Landroid/graphics/Rect;

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, LOe1;->A:F

    .line 5
    iput-object p1, p0, LOe1;->w:Landroid/view/View;

    .line 6
    invoke-virtual {p1, p0}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 7
    iget-object p1, p0, LOe1;->x:Landroid/graphics/Rect;

    iget-object v0, p0, LOe1;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, LOe1;->w:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method


# virtual methods
.method public a()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, LOe1;->z:Landroid/graphics/Rect;

    return-object v0
.end method

.method public a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V
    .locals 0

    return-void
.end method

.method public a(Landroid/graphics/Rect;)V
    .locals 3

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, LOe1;->x:Landroid/graphics/Rect;

    iget-object v0, p0, LOe1;->w:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v0

    iget-object v1, p0, LOe1;->w:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    const/4 v2, 0x0

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, LOe1;->x:Landroid/graphics/Rect;

    invoke-virtual {v0, p1}, Landroid/graphics/Rect;->union(Landroid/graphics/Rect;)V

    :goto_0
    return-void
.end method

.method public final b()LPe1;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public c()Landroid/graphics/Bitmap;
    .locals 8

    .line 1
    iget-wide v0, p0, LOe1;->B:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    .line 2
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, LOe1;->B:J

    sub-long/2addr v0, v2

    const-string v2, "ViewResourceAdapter.GetBitmapInterval"

    .line 3
    invoke-static {v2, v0, v1}, LfV;->a(Ljava/lang/String;J)V

    :cond_0
    const-string v0, "ViewResourceAdapter:getBitmap"

    const/4 v1, 0x0

    .line 4
    invoke-static {v0, v1}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v2, p0, LOe1;->w:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getWidth()I

    move-result v2

    int-to-float v2, v2

    iget v3, p0, LOe1;->A:F

    mul-float v2, v2, v3

    float-to-int v2, v2

    .line 6
    iget-object v3, p0, LOe1;->w:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    int-to-float v3, v3

    iget v4, p0, LOe1;->A:F

    mul-float v3, v3, v4

    float-to-int v3, v3

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_2

    if-nez v3, :cond_1

    goto :goto_0

    :cond_1
    const/4 v6, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v6, 0x1

    :goto_1
    if-eqz v6, :cond_3

    const/4 v2, 0x1

    const/4 v3, 0x1

    .line 7
    :cond_3
    iget-object v7, p0, LOe1;->y:Landroid/graphics/Bitmap;

    if-eqz v7, :cond_5

    .line 8
    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    if-ne v7, v2, :cond_4

    iget-object v7, p0, LOe1;->y:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    if-eq v7, v3, :cond_5

    .line 9
    :cond_4
    iget-object v7, p0, LOe1;->y:Landroid/graphics/Bitmap;

    invoke-virtual {v7}, Landroid/graphics/Bitmap;->recycle()V

    .line 10
    iput-object v1, p0, LOe1;->y:Landroid/graphics/Bitmap;

    .line 11
    :cond_5
    iget-object v7, p0, LOe1;->y:Landroid/graphics/Bitmap;

    if-nez v7, :cond_6

    .line 12
    sget-object v7, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v3, v7}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v2

    iput-object v2, p0, LOe1;->y:Landroid/graphics/Bitmap;

    .line 13
    invoke-virtual {v2, v4}, Landroid/graphics/Bitmap;->setHasAlpha(Z)V

    .line 14
    iget-object v2, p0, LOe1;->z:Landroid/graphics/Rect;

    iget-object v3, p0, LOe1;->w:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    iget-object v7, p0, LOe1;->w:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    invoke-virtual {v2, v5, v5, v3, v7}, Landroid/graphics/Rect;->set(IIII)V

    .line 15
    iget-object v2, p0, LOe1;->x:Landroid/graphics/Rect;

    iget-object v3, p0, LOe1;->z:Landroid/graphics/Rect;

    invoke-virtual {v2, v3}, Landroid/graphics/Rect;->set(Landroid/graphics/Rect;)V

    :cond_6
    xor-int/lit8 v2, v6, 0x1

    if-eqz v2, :cond_9

    .line 16
    new-instance v2, Landroid/graphics/Canvas;

    iget-object v3, p0, LOe1;->y:Landroid/graphics/Bitmap;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 17
    iget-object v3, p0, LOe1;->x:Landroid/graphics/Rect;

    invoke-virtual {v3}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_7

    goto :goto_2

    :cond_7
    iget-object v1, p0, LOe1;->x:Landroid/graphics/Rect;

    :goto_2
    invoke-virtual {p0, v2, v1}, LOe1;->a(Landroid/graphics/Canvas;Landroid/graphics/Rect;)V

    .line 18
    iget-object v1, p0, LOe1;->x:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_8

    iget-object v1, p0, LOe1;->x:Landroid/graphics/Rect;

    invoke-virtual {v2, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 19
    :cond_8
    invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I

    .line 20
    iget v1, p0, LOe1;->A:F

    invoke-virtual {v2, v1, v1}, Landroid/graphics/Canvas;->scale(FF)V

    .line 21
    iget-object v1, p0, LOe1;->w:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 22
    invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V

    .line 23
    invoke-virtual {p0}, LOe1;->f()V

    goto :goto_3

    .line 24
    :cond_9
    iget-object v1, p0, LOe1;->y:Landroid/graphics/Bitmap;

    invoke-virtual {v1, v5, v5, v5}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 25
    :goto_3
    iget-object v1, p0, LOe1;->x:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->setEmpty()V

    .line 26
    invoke-static {v0}, Lorg/chromium/base/TraceEvent;->a(Ljava/lang/String;)V

    .line 27
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iput-wide v0, p0, LOe1;->B:J

    .line 28
    iget-object v0, p0, LOe1;->y:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public d()J
    .locals 2

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, LGe1;->a(LPe1;)J

    move-result-wide v0

    return-wide v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, LOe1;->x:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public f()V
    .locals 0

    return-void
.end method

.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    sub-int/2addr p4, p2

    sub-int/2addr p5, p3

    sub-int/2addr p8, p6

    sub-int/2addr p9, p7

    if-ne p4, p8, :cond_0

    if-eq p5, p9, :cond_1

    .line 1
    :cond_0
    iget-object p1, p0, LOe1;->x:Landroid/graphics/Rect;

    const/4 p2, 0x0

    invoke-virtual {p1, p2, p2, p4, p5}, Landroid/graphics/Rect;->set(IIII)V

    :cond_1
    return-void
.end method
