.class public LhN0;
.super Landroid/graphics/drawable/Drawable;
.source "PG"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# instance fields
.field public final A:Landroid/graphics/Rect;

.field public B:LgN0;

.field public C:Z

.field public D:Z

.field public E:J

.field public final F:LfN0;

.field public final w:Ljava/lang/Runnable;

.field public final x:Landroid/graphics/Paint;

.field public final y:Landroid/graphics/Rect;

.field public final z:Landroid/graphics/Rect;


# direct methods
.method public constructor <init>(LgN0;LfN0;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    .line 2
    new-instance v0, LbN0;

    invoke-direct {v0, p0}, LbN0;-><init>(LhN0;)V

    iput-object v0, p0, LhN0;->w:Ljava/lang/Runnable;

    .line 3
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, LhN0;->x:Landroid/graphics/Paint;

    .line 4
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, LhN0;->y:Landroid/graphics/Rect;

    .line 5
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, LhN0;->z:Landroid/graphics/Rect;

    .line 6
    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, LhN0;->A:Landroid/graphics/Rect;

    .line 7
    iput-object p1, p0, LhN0;->B:LgN0;

    .line 8
    iput-object p2, p0, LhN0;->F:LfN0;

    return-void
.end method

.method public static a(Landroid/content/Context;)LhN0;
    .locals 8

    .line 1
    new-instance v0, LdN0;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, LdN0;-><init>(LZM0;)V

    .line 2
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f070163

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3
    new-instance v2, LaN0;

    invoke-direct {v2, v1}, LaN0;-><init>(I)V

    .line 4
    new-instance v1, LZM0;

    invoke-direct {v1, v2}, LZM0;-><init>(LcN0;)V

    .line 5
    new-instance v2, LhN0;

    const v3, 0x3f4ccccd    # 0.8f

    const/4 v4, 0x0

    const v5, 0x3f19999a    # 0.6f

    const/high16 v6, 0x3f800000    # 1.0f

    .line 6
    new-instance v7, Landroid/view/animation/PathInterpolator;

    invoke-direct {v7, v3, v4, v5, v6}, Landroid/view/animation/PathInterpolator;-><init>(FFFF)V

    .line 7
    new-instance v3, LgN0;

    invoke-direct {v3, v7, v1}, LgN0;-><init>(Landroid/view/animation/Interpolator;LeN0;)V

    invoke-direct {v2, v3, v0}, LhN0;-><init>(LgN0;LfN0;)V

    .line 8
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {v2, p0, v0}, LhN0;->a(Landroid/content/res/Resources;Z)V

    const/16 p0, 0x4c

    .line 9
    invoke-virtual {v2, p0}, LhN0;->setAlpha(I)V

    return-object v2
.end method


# virtual methods
.method public a(Landroid/content/res/Resources;Z)V
    .locals 1

    if-eqz p2, :cond_0

    const p2, 0x7f060107

    goto :goto_0

    :cond_0
    const p2, 0x7f06007a

    .line 10
    :goto_0
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p1

    .line 11
    iget-object p2, p0, LhN0;->B:LgN0;

    iget p2, p2, LgN0;->b:I

    if-ne p2, p1, :cond_1

    return-void

    .line 12
    :cond_1
    invoke-virtual {p0}, LhN0;->getAlpha()I

    move-result p2

    .line 13
    iget-object v0, p0, LhN0;->B:LgN0;

    iput p1, v0, LgN0;->a:I

    iput p1, v0, LgN0;->b:I

    .line 14
    invoke-virtual {p0, p2}, LhN0;->setAlpha(I)V

    .line 15
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 3

    .line 1
    iget-object v0, p0, LhN0;->x:Landroid/graphics/Paint;

    iget-object v1, p0, LhN0;->B:LgN0;

    iget v1, v1, LgN0;->a:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 2
    iget-object v0, p0, LhN0;->B:LgN0;

    iget-object v1, v0, LgN0;->f:LeN0;

    iget-object v2, p0, LhN0;->x:Landroid/graphics/Paint;

    iget v0, v0, LgN0;->d:F

    invoke-interface {v1, p0, v2, p1, v0}, LeN0;->a(LhN0;Landroid/graphics/Paint;Landroid/graphics/Canvas;F)V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget-object v0, p0, LhN0;->B:LgN0;

    iget v0, v0, LgN0;->a:I

    ushr-int/lit8 v0, v0, 0x18

    return v0
.end method

.method public getConstantState()Landroid/graphics/drawable/Drawable$ConstantState;
    .locals 1

    .line 1
    iget-object v0, p0, LhN0;->B:LgN0;

    return-object v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, LhN0;->D:Z

    return v0
.end method

.method public mutate()Landroid/graphics/drawable/Drawable;
    .locals 2

    .line 1
    iget-boolean v0, p0, LhN0;->C:Z

    if-nez v0, :cond_0

    invoke-super {p0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-ne v0, p0, :cond_0

    .line 2
    new-instance v0, LgN0;

    iget-object v1, p0, LhN0;->B:LgN0;

    invoke-direct {v0, v1}, LgN0;-><init>(LgN0;)V

    iput-object v0, p0, LhN0;->B:LgN0;

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, LhN0;->C:Z

    :cond_0
    return-object p0
.end method

.method public setAlpha(I)V
    .locals 3

    shr-int/lit8 v0, p1, 0x7

    add-int/2addr p1, v0

    .line 1
    iget-object v0, p0, LhN0;->B:LgN0;

    iget v1, v0, LgN0;->b:I

    ushr-int/lit8 v2, v1, 0x18

    mul-int v2, v2, p1

    shr-int/lit8 p1, v2, 0x8

    shl-int/lit8 v1, v1, 0x8

    ushr-int/lit8 v1, v1, 0x8

    shl-int/lit8 p1, p1, 0x18

    or-int/2addr p1, v1

    .line 2
    iget v1, v0, LgN0;->a:I

    if-eq v1, p1, :cond_0

    .line 3
    iput p1, v0, LgN0;->a:I

    .line 4
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    :cond_0
    return-void
.end method

.method public setBounds(IIII)V
    .locals 3

    .line 1
    iget-object v0, p0, LhN0;->z:Landroid/graphics/Rect;

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 2
    iget-object v0, p0, LhN0;->A:Landroid/graphics/Rect;

    iget-object v1, p0, LhN0;->y:Landroid/graphics/Rect;

    iget v2, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr p1, v2

    iget v2, v1, Landroid/graphics/Rect;->top:I

    add-int/2addr p2, v2

    iget v2, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, v2

    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr p4, v1

    invoke-virtual {v0, p1, p2, p3, p4}, Landroid/graphics/Rect;->set(IIII)V

    .line 3
    iget-object p1, p0, LhN0;->A:Landroid/graphics/Rect;

    iget p2, p1, Landroid/graphics/Rect;->left:I

    iget p3, p1, Landroid/graphics/Rect;->top:I

    iget p4, p1, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->bottom:I

    invoke-super {p0, p2, p3, p4, p1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 1

    .line 1
    iget-object v0, p0, LhN0;->x:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    return-void
.end method

.method public setVisible(ZZ)Z
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/graphics/drawable/Drawable;->setVisible(ZZ)Z

    move-result v0

    if-eqz p1, :cond_1

    if-nez v0, :cond_0

    if-eqz p2, :cond_2

    .line 2
    :cond_0
    invoke-virtual {p0}, LhN0;->start()V

    goto :goto_0

    .line 3
    :cond_1
    invoke-virtual {p0}, LhN0;->stop()V

    :cond_2
    :goto_0
    return v0
.end method

.method public start()V
    .locals 6

    .line 1
    iget-boolean v0, p0, LhN0;->D:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, LhN0;->w:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, LhN0;->w:Ljava/lang/Runnable;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x10

    add-long/2addr v1, v3

    invoke-virtual {p0, v0, v1, v2}, Landroid/graphics/drawable/Drawable;->scheduleSelf(Ljava/lang/Runnable;J)V

    goto :goto_0

    :cond_0
    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, LhN0;->D:Z

    .line 5
    iget-object v0, p0, LhN0;->B:LgN0;

    iget-wide v1, v0, LgN0;->c:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_1

    .line 6
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    iput-wide v1, v0, LgN0;->c:J

    .line 7
    iget-object v0, p0, LhN0;->B:LgN0;

    iget-wide v0, v0, LgN0;->c:J

    iput-wide v0, p0, LhN0;->E:J

    .line 8
    :cond_1
    iget-object v0, p0, LhN0;->w:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 3

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, LhN0;->D:Z

    .line 2
    iget-object v0, p0, LhN0;->B:LgN0;

    const-wide/16 v1, 0x0

    iput-wide v1, v0, LgN0;->c:J

    .line 3
    iget-object v0, p0, LhN0;->w:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/graphics/drawable/Drawable;->unscheduleSelf(Ljava/lang/Runnable;)V

    return-void
.end method
