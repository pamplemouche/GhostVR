.class public LRb1;
.super Landroid/graphics/drawable/Drawable;
.source "PG"

# interfaces
.implements Landroid/graphics/drawable/Animatable;


# static fields
.field public static final I:Landroid/view/animation/Interpolator;

.field public static final J:Landroid/view/animation/Interpolator;


# instance fields
.field public A:Landroid/content/res/Resources;

.field public B:Landroid/view/View;

.field public C:Landroid/view/animation/Animation;

.field public D:F

.field public E:D

.field public F:D

.field public G:Z

.field public final H:Landroid/graphics/drawable/Drawable$Callback;

.field public final w:[I

.field public final x:Ljava/util/ArrayList;

.field public final y:LQb1;

.field public z:F


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v0}, Landroid/view/animation/LinearInterpolator;-><init>()V

    sput-object v0, LRb1;->I:Landroid/view/animation/Interpolator;

    .line 2
    new-instance v0, Lc8;

    invoke-direct {v0}, Lc8;-><init>()V

    sput-object v0, LRb1;->J:Landroid/view/animation/Interpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/view/View;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Landroid/graphics/drawable/Drawable;-><init>()V

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/high16 v2, -0x1000000

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 2
    iput-object v1, p0, LRb1;->w:[I

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, LRb1;->x:Ljava/util/ArrayList;

    .line 4
    new-instance v1, LPb1;

    invoke-direct {v1, p0}, LPb1;-><init>(LRb1;)V

    iput-object v1, p0, LRb1;->H:Landroid/graphics/drawable/Drawable$Callback;

    .line 5
    iput-object p2, p0, LRb1;->B:Landroid/view/View;

    .line 6
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, LRb1;->A:Landroid/content/res/Resources;

    .line 7
    new-instance p1, LQb1;

    iget-object p2, p0, LRb1;->H:Landroid/graphics/drawable/Drawable$Callback;

    invoke-direct {p1, p2}, LQb1;-><init>(Landroid/graphics/drawable/Drawable$Callback;)V

    iput-object p1, p0, LRb1;->y:LQb1;

    .line 8
    iget-object p2, p0, LRb1;->w:[I

    .line 9
    iput-object p2, p1, LQb1;->j:[I

    .line 10
    invoke-virtual {p1, v3}, LQb1;->a(I)V

    .line 11
    invoke-virtual {p0, v0}, LRb1;->a(I)V

    .line 12
    iget-object p1, p0, LRb1;->y:LQb1;

    .line 13
    new-instance p2, LNb1;

    invoke-direct {p2, p0, p1}, LNb1;-><init>(LRb1;LQb1;)V

    const/4 v1, -0x1

    .line 14
    invoke-virtual {p2, v1}, Landroid/view/animation/Animation;->setRepeatCount(I)V

    .line 15
    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setRepeatMode(I)V

    .line 16
    sget-object v0, LRb1;->I:Landroid/view/animation/Interpolator;

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 17
    new-instance v0, LOb1;

    invoke-direct {v0, p0, p1}, LOb1;-><init>(LRb1;LQb1;)V

    invoke-virtual {p2, v0}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 18
    iput-object p2, p0, LRb1;->C:Landroid/view/animation/Animation;

    return-void
.end method


# virtual methods
.method public final a(DDDDFF)V
    .locals 4

    .line 1
    iget-object v0, p0, LRb1;->y:LQb1;

    .line 2
    iget-object v1, p0, LRb1;->A:Landroid/content/res/Resources;

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 3
    iget v1, v1, Landroid/util/DisplayMetrics;->density:F

    float-to-double v2, v1

    mul-double p1, p1, v2

    .line 4
    iput-wide p1, p0, LRb1;->E:D

    mul-double p3, p3, v2

    .line 5
    iput-wide p3, p0, LRb1;->F:D

    double-to-float p1, p7

    mul-float p1, p1, v1

    .line 6
    iput p1, v0, LQb1;->h:F

    .line 7
    iget-object p2, v0, LQb1;->b:Landroid/graphics/Paint;

    invoke-virtual {p2, p1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 8
    invoke-virtual {v0}, LQb1;->a()V

    mul-double p5, p5, v2

    .line 9
    iput-wide p5, v0, LQb1;->r:D

    const/4 p1, 0x0

    .line 10
    invoke-virtual {v0, p1}, LQb1;->a(I)V

    mul-float p9, p9, v1

    mul-float p10, p10, v1

    float-to-int p1, p9

    .line 11
    iput p1, v0, LQb1;->s:I

    float-to-int p1, p10

    .line 12
    iput p1, v0, LQb1;->t:I

    .line 13
    iget-wide p1, p0, LRb1;->E:D

    double-to-int p1, p1

    iget-wide p2, p0, LRb1;->F:D

    double-to-int p2, p2

    .line 14
    invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I

    move-result p1

    int-to-float p1, p1

    .line 15
    iget-wide p2, v0, LQb1;->r:D

    const-wide/16 p4, 0x0

    const/high16 p6, 0x40000000    # 2.0f

    cmpg-double p7, p2, p4

    if-lez p7, :cond_1

    const/4 p4, 0x0

    cmpg-float p4, p1, p4

    if-gez p4, :cond_0

    goto :goto_0

    :cond_0
    div-float/2addr p1, p6

    float-to-double p4, p1

    sub-double/2addr p4, p2

    goto :goto_1

    .line 16
    :cond_1
    :goto_0
    iget p1, v0, LQb1;->h:F

    div-float/2addr p1, p6

    float-to-double p1, p1

    invoke-static {p1, p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide p4

    :goto_1
    double-to-float p1, p4

    .line 17
    iput p1, v0, LQb1;->i:F

    return-void
.end method

.method public final a(FLQb1;)V
    .locals 8

    const/high16 v0, 0x3f400000    # 0.75f

    cmpl-float v1, p1, v0

    if-lez v1, :cond_0

    sub-float/2addr p1, v0

    const/high16 v0, 0x3e800000    # 0.25f

    div-float/2addr p1, v0

    .line 20
    iget-object v0, p2, LQb1;->j:[I

    iget v1, p2, LQb1;->k:I

    aget v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    .line 21
    array-length v3, v0

    rem-int/2addr v1, v3

    .line 22
    aget v0, v0, v1

    .line 23
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    shr-int/lit8 v2, v1, 0x18

    and-int/lit16 v2, v2, 0xff

    shr-int/lit8 v3, v1, 0x10

    and-int/lit16 v3, v3, 0xff

    shr-int/lit8 v4, v1, 0x8

    and-int/lit16 v4, v4, 0xff

    and-int/lit16 v1, v1, 0xff

    .line 24
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    shr-int/lit8 v5, v0, 0x18

    and-int/lit16 v5, v5, 0xff

    shr-int/lit8 v6, v0, 0x10

    and-int/lit16 v6, v6, 0xff

    shr-int/lit8 v7, v0, 0x8

    and-int/lit16 v7, v7, 0xff

    and-int/lit16 v0, v0, 0xff

    sub-int/2addr v5, v2

    int-to-float v5, v5

    mul-float v5, v5, p1

    float-to-int v5, v5

    add-int/2addr v2, v5

    shl-int/lit8 v2, v2, 0x18

    sub-int/2addr v6, v3

    int-to-float v5, v6

    mul-float v5, v5, p1

    float-to-int v5, v5

    add-int/2addr v3, v5

    shl-int/lit8 v3, v3, 0x10

    or-int/2addr v2, v3

    sub-int/2addr v7, v4

    int-to-float v3, v7

    mul-float v3, v3, p1

    float-to-int v3, v3

    add-int/2addr v4, v3

    shl-int/lit8 v3, v4, 0x8

    or-int/2addr v2, v3

    sub-int/2addr v0, v1

    int-to-float v0, v0

    mul-float p1, p1, v0

    float-to-int p1, p1

    add-int/2addr v1, p1

    or-int p1, v2, v1

    .line 25
    iput p1, p2, LQb1;->x:I

    :cond_0
    return-void
.end method

.method public a(I)V
    .locals 22

    if-nez p1, :cond_0

    const-wide/high16 v1, 0x404c000000000000L    # 56.0

    const-wide/high16 v3, 0x404c000000000000L    # 56.0

    const-wide/high16 v5, 0x4029000000000000L    # 12.5

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    const/high16 v9, 0x41400000    # 12.0f

    const/high16 v10, 0x40c00000    # 6.0f

    move-object/from16 v0, p0

    .line 18
    invoke-virtual/range {v0 .. v10}, LRb1;->a(DDDDFF)V

    goto :goto_0

    :cond_0
    const-wide/high16 v12, 0x4044000000000000L    # 40.0

    const-wide/high16 v14, 0x4044000000000000L    # 40.0

    const-wide v16, 0x4021800000000000L    # 8.75

    const-wide/high16 v18, 0x4004000000000000L    # 2.5

    const/high16 v20, 0x41200000    # 10.0f

    const/high16 v21, 0x40a00000    # 5.0f

    move-object/from16 v11, p0

    .line 19
    invoke-virtual/range {v11 .. v21}, LRb1;->a(DDDDFF)V

    :goto_0
    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v7, p1

    .line 1
    iget-object v1, v0, LRb1;->B:Landroid/view/View;

    .line 2
    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    const/4 v8, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    const/4 v8, 0x0

    .line 3
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v9

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I

    move-result v10

    const/high16 v11, 0x3f800000    # 1.0f

    const/high16 v12, -0x40800000    # -1.0f

    if-eqz v8, :cond_1

    .line 5
    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    invoke-virtual {v7, v12, v11, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 6
    :cond_1
    iget v1, v0, LRb1;->z:F

    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v2

    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-virtual {v7, v1, v2, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 7
    iget-object v13, v0, LRb1;->y:LQb1;

    .line 8
    iget-object v2, v13, LQb1;->a:Landroid/graphics/RectF;

    .line 9
    invoke-virtual {v2, v9}, Landroid/graphics/RectF;->set(Landroid/graphics/Rect;)V

    .line 10
    iget v1, v13, LQb1;->i:F

    invoke-virtual {v2, v1, v1}, Landroid/graphics/RectF;->inset(FF)V

    .line 11
    iget v1, v13, LQb1;->e:F

    iget v3, v13, LQb1;->g:F

    add-float/2addr v1, v3

    const/high16 v4, 0x43b40000    # 360.0f

    mul-float v14, v1, v4

    .line 12
    iget v1, v13, LQb1;->f:F

    add-float/2addr v1, v3

    mul-float v1, v1, v4

    sub-float v15, v1, v14

    .line 13
    iget-object v1, v13, LQb1;->b:Landroid/graphics/Paint;

    iget v3, v13, LQb1;->x:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 14
    iget-object v6, v13, LQb1;->b:Landroid/graphics/Paint;

    const/4 v5, 0x0

    move-object/from16 v1, p1

    move v3, v14

    move v4, v15

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V

    .line 15
    iget-boolean v1, v13, LQb1;->o:Z

    const/high16 v2, 0x40000000    # 2.0f

    if-eqz v1, :cond_3

    .line 16
    iget-object v1, v13, LQb1;->p:Landroid/graphics/Path;

    if-nez v1, :cond_2

    .line 17
    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, v13, LQb1;->p:Landroid/graphics/Path;

    .line 18
    sget-object v3, Landroid/graphics/Path$FillType;->EVEN_ODD:Landroid/graphics/Path$FillType;

    invoke-virtual {v1, v3}, Landroid/graphics/Path;->setFillType(Landroid/graphics/Path$FillType;)V

    goto :goto_1

    .line 19
    :cond_2
    invoke-virtual {v1}, Landroid/graphics/Path;->reset()V

    .line 20
    :goto_1
    iget v1, v13, LQb1;->i:F

    float-to-int v1, v1

    int-to-float v1, v1

    div-float/2addr v1, v2

    iget v3, v13, LQb1;->q:F

    mul-float v1, v1, v3

    .line 21
    iget-wide v3, v13, LQb1;->r:D

    const-wide/16 v5, 0x0

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    mul-double v16, v16, v3

    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v3

    float-to-double v3, v3

    add-double v3, v16, v3

    double-to-float v3, v3

    .line 22
    iget-wide v11, v13, LQb1;->r:D

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v5, v5, v11

    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v11

    float-to-double v11, v11

    add-double/2addr v5, v11

    double-to-float v5, v5

    .line 23
    iget-object v6, v13, LQb1;->p:Landroid/graphics/Path;

    const/4 v11, 0x0

    invoke-virtual {v6, v11, v11}, Landroid/graphics/Path;->moveTo(FF)V

    .line 24
    iget-object v6, v13, LQb1;->p:Landroid/graphics/Path;

    iget v12, v13, LQb1;->s:I

    int-to-float v12, v12

    iget v4, v13, LQb1;->q:F

    mul-float v12, v12, v4

    invoke-virtual {v6, v12, v11}, Landroid/graphics/Path;->lineTo(FF)V

    .line 25
    iget-object v4, v13, LQb1;->p:Landroid/graphics/Path;

    iget v6, v13, LQb1;->s:I

    int-to-float v6, v6

    iget v11, v13, LQb1;->q:F

    mul-float v6, v6, v11

    div-float/2addr v6, v2

    iget v12, v13, LQb1;->t:I

    int-to-float v12, v12

    mul-float v12, v12, v11

    invoke-virtual {v4, v6, v12}, Landroid/graphics/Path;->lineTo(FF)V

    .line 26
    iget-object v4, v13, LQb1;->p:Landroid/graphics/Path;

    sub-float/2addr v3, v1

    invoke-virtual {v4, v3, v5}, Landroid/graphics/Path;->offset(FF)V

    .line 27
    iget-object v1, v13, LQb1;->p:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    .line 28
    iget-object v1, v13, LQb1;->c:Landroid/graphics/Paint;

    iget v3, v13, LQb1;->x:I

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setColor(I)V

    add-float/2addr v14, v15

    const/high16 v1, 0x40a00000    # 5.0f

    sub-float/2addr v14, v1

    .line 29
    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    .line 30
    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    .line 31
    invoke-virtual {v7, v14, v1, v3}, Landroid/graphics/Canvas;->rotate(FFF)V

    .line 32
    iget-object v1, v13, LQb1;->p:Landroid/graphics/Path;

    iget-object v3, v13, LQb1;->c:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    .line 33
    :cond_3
    iget v1, v13, LQb1;->u:I

    const/16 v3, 0xff

    if-ge v1, v3, :cond_4

    .line 34
    iget-object v1, v13, LQb1;->v:Landroid/graphics/Paint;

    iget v4, v13, LQb1;->w:I

    invoke-virtual {v1, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 35
    iget-object v1, v13, LQb1;->v:Landroid/graphics/Paint;

    iget v4, v13, LQb1;->u:I

    sub-int/2addr v3, v4

    invoke-virtual {v1, v3}, Landroid/graphics/Paint;->setAlpha(I)V

    .line 36
    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v3

    invoke-virtual {v9}, Landroid/graphics/Rect;->width()I

    move-result v4

    int-to-float v4, v4

    div-float/2addr v4, v2

    iget-object v2, v13, LQb1;->v:Landroid/graphics/Paint;

    invoke-virtual {v7, v1, v3, v4, v2}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    :cond_4
    if-eqz v8, :cond_5

    .line 37
    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterX()F

    move-result v1

    invoke-virtual {v9}, Landroid/graphics/Rect;->exactCenterY()F

    move-result v2

    const/high16 v3, 0x3f800000    # 1.0f

    const/high16 v4, -0x40800000    # -1.0f

    invoke-virtual {v7, v4, v3, v1, v2}, Landroid/graphics/Canvas;->scale(FFFF)V

    .line 38
    :cond_5
    invoke-virtual {v7, v10}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public getAlpha()I
    .locals 1

    .line 1
    iget-object v0, p0, LRb1;->y:LQb1;

    .line 2
    iget v0, v0, LQb1;->u:I

    return v0
.end method

.method public getIntrinsicHeight()I
    .locals 2

    .line 1
    iget-wide v0, p0, LRb1;->F:D

    double-to-int v0, v0

    return v0
.end method

.method public getIntrinsicWidth()I
    .locals 2

    .line 1
    iget-wide v0, p0, LRb1;->E:D

    double-to-int v0, v0

    return v0
.end method

.method public getOpacity()I
    .locals 1

    const/4 v0, -0x3

    return v0
.end method

.method public isRunning()Z
    .locals 6

    .line 1
    iget-object v0, p0, LRb1;->x:Ljava/util/ArrayList;

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    .line 3
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/animation/Animation;

    .line 4
    invoke-virtual {v4}, Landroid/view/animation/Animation;->hasStarted()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-virtual {v4}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method public setAlpha(I)V
    .locals 2

    .line 1
    iget-object v0, p0, LRb1;->y:LQb1;

    .line 2
    iget v1, v0, LQb1;->u:I

    if-eq v1, p1, :cond_0

    .line 3
    iput p1, v0, LQb1;->u:I

    .line 4
    invoke-virtual {v0}, LQb1;->a()V

    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)V
    .locals 2

    .line 1
    iget-object v0, p0, LRb1;->y:LQb1;

    .line 2
    iget-object v1, v0, LQb1;->b:Landroid/graphics/Paint;

    invoke-virtual {v1, p1}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 3
    invoke-virtual {v0}, LQb1;->a()V

    return-void
.end method

.method public start()V
    .locals 4

    .line 1
    iget-object v0, p0, LRb1;->C:Landroid/view/animation/Animation;

    invoke-virtual {v0}, Landroid/view/animation/Animation;->reset()V

    .line 2
    iget-object v0, p0, LRb1;->y:LQb1;

    .line 3
    iget v1, v0, LQb1;->e:F

    iput v1, v0, LQb1;->l:F

    .line 4
    iget v2, v0, LQb1;->f:F

    iput v2, v0, LQb1;->m:F

    .line 5
    iget v3, v0, LQb1;->g:F

    iput v3, v0, LQb1;->n:F

    cmpl-float v1, v2, v1

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, LRb1;->G:Z

    .line 7
    iget-object v0, p0, LRb1;->C:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x29a

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 8
    iget-object v0, p0, LRb1;->B:Landroid/view/View;

    iget-object v1, p0, LRb1;->C:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 9
    invoke-virtual {v0, v1}, LQb1;->a(I)V

    .line 10
    iget-object v0, p0, LRb1;->y:LQb1;

    invoke-virtual {v0}, LQb1;->b()V

    .line 11
    iget-object v0, p0, LRb1;->C:Landroid/view/animation/Animation;

    const-wide/16 v1, 0x534

    invoke-virtual {v0, v1, v2}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 12
    iget-object v0, p0, LRb1;->B:Landroid/view/View;

    iget-object v1, p0, LRb1;->C:Landroid/view/animation/Animation;

    invoke-virtual {v0, v1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :goto_0
    return-void
.end method

.method public stop()V
    .locals 2

    .line 1
    iget-object v0, p0, LRb1;->B:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->clearAnimation()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, LRb1;->z:F

    .line 3
    invoke-virtual {p0}, Landroid/graphics/drawable/Drawable;->invalidateSelf()V

    .line 4
    iget-object v0, p0, LRb1;->y:LQb1;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, LQb1;->a(Z)V

    .line 5
    iget-object v0, p0, LRb1;->y:LQb1;

    invoke-virtual {v0, v1}, LQb1;->a(I)V

    .line 6
    iget-object v0, p0, LRb1;->y:LQb1;

    invoke-virtual {v0}, LQb1;->b()V

    return-void
.end method
