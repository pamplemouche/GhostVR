.class public Landroid/support/v4/widget/aw;
.super Landroid/widget/EdgeEffect;


# static fields
.field private static final A:[I

.field private static final c:F

.field private static final d:F


# instance fields
.field private B:Landroid/view/View;

.field private C:F

.field private D:F

.field private E:Landroid/os/Handler;

.field private F:Ljava/lang/Runnable;

.field private a:F

.field private b:F

.field private e:F

.field private f:F

.field private g:F

.field private h:F

.field private i:F

.field private j:F

.field private k:J

.field private l:F

.field private final m:Landroid/view/animation/Interpolator;

.field private n:I

.field private o:Z

.field private p:F

.field private final q:Landroid/graphics/Rect;

.field private final r:Landroid/graphics/Paint;

.field private s:F

.field private t:F

.field private final u:F

.field private final v:F

.field private w:F

.field private x:F

.field private final y:Landroid/graphics/Path;

.field private final z:Landroid/util/DisplayMetrics;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    const-wide v0, 0x3fe0c152382d7365L    # 0.5235987755982988

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    double-to-float v2, v2

    sput v2, Landroid/support/v4/widget/aw;->c:F

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    double-to-float v0, v0

    sput v0, Landroid/support/v4/widget/aw;->d:F

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10104ce

    aput v2, v0, v1

    sput-object v0, Landroid/support/v4/widget/aw;->A:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    invoke-direct {p0, p1}, Landroid/widget/EdgeEffect;-><init>(Landroid/content/Context;)V

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Landroid/support/v4/widget/aw;->a:F

    const v0, 0x3e19999a    # 0.15f

    iput v0, p0, Landroid/support/v4/widget/aw;->b:F

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/aw;->n:I

    iput-boolean v0, p0, Landroid/support/v4/widget/aw;->o:Z

    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    iput-object v1, p0, Landroid/support/v4/widget/aw;->q:Landroid/graphics/Rect;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/support/v4/widget/aw;->r:Landroid/graphics/Paint;

    const/high16 v1, 0x3f000000    # 0.5f

    iput v1, p0, Landroid/support/v4/widget/aw;->s:F

    iput v1, p0, Landroid/support/v4/widget/aw;->t:F

    new-instance v1, Landroid/graphics/Path;

    invoke-direct {v1}, Landroid/graphics/Path;-><init>()V

    iput-object v1, p0, Landroid/support/v4/widget/aw;->y:Landroid/graphics/Path;

    new-instance v1, Landroid/support/v4/widget/ax;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Landroid/support/v4/widget/ax;-><init>(Landroid/support/v4/widget/aw;Landroid/os/Looper;)V

    iput-object v1, p0, Landroid/support/v4/widget/aw;->E:Landroid/os/Handler;

    new-instance v1, Landroid/support/v4/widget/ay;

    invoke-direct {v1, p0}, Landroid/support/v4/widget/ay;-><init>(Landroid/support/v4/widget/aw;)V

    iput-object v1, p0, Landroid/support/v4/widget/aw;->F:Ljava/lang/Runnable;

    iget-object v1, p0, Landroid/support/v4/widget/aw;->r:Landroid/graphics/Paint;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget-object v2, Landroid/support/v4/widget/aw;->A:[I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v1

    const v2, -0x99999a

    invoke-virtual {v1, v0, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v0

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    iget-object v1, p0, Landroid/support/v4/widget/aw;->r:Landroid/graphics/Paint;

    const v2, 0xffffff

    and-int/2addr v0, v2

    const/high16 v2, 0x33000000

    or-int/2addr v0, v2

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v0, p0, Landroid/support/v4/widget/aw;->r:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    iget-object v0, p0, Landroid/support/v4/widget/aw;->r:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/PorterDuffXfermode;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC_ATOP:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;

    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Landroid/support/v4/widget/aw;->m:Landroid/view/animation/Interpolator;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v4/widget/aw;->z:Landroid/util/DisplayMetrics;

    const/high16 p1, 0x42aa0000    # 85.0f

    invoke-direct {p0, p1}, Landroid/support/v4/widget/aw;->a(F)F

    move-result p1

    iput p1, p0, Landroid/support/v4/widget/aw;->u:F

    const/high16 p1, 0x40a00000    # 5.0f

    invoke-direct {p0, p1}, Landroid/support/v4/widget/aw;->a(F)F

    move-result p1

    iput p1, p0, Landroid/support/v4/widget/aw;->v:F

    return-void
.end method

.method private a(F)F
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/aw;->z:Landroid/util/DisplayMetrics;

    const/4 v1, 0x1

    invoke-static {v1, p1, v0}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    return p1
.end method

.method static synthetic a(Landroid/support/v4/widget/aw;)F
    .locals 0

    iget p0, p0, Landroid/support/v4/widget/aw;->C:F

    return p0
.end method

.method private a()Z
    .locals 2

    iget v0, p0, Landroid/support/v4/widget/aw;->n:I

    const/4 v1, 0x5

    if-eq v0, v1, :cond_1

    const/4 v1, 0x6

    if-eq v0, v1, :cond_1

    const/4 v1, 0x3

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method static synthetic a(Landroid/support/v4/widget/aw;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v4/widget/aw;->o:Z

    return p1
.end method

.method static synthetic b(Landroid/support/v4/widget/aw;)F
    .locals 0

    iget p0, p0, Landroid/support/v4/widget/aw;->D:F

    return p0
.end method

.method private b()V
    .locals 5

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/support/v4/widget/aw;->k:J

    sub-long/2addr v0, v2

    long-to-float v0, v0

    iget v1, p0, Landroid/support/v4/widget/aw;->l:F

    div-float/2addr v0, v1

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-static {v0, v1}, Ljava/lang/Math;->min(FF)F

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/aw;->m:Landroid/view/animation/Interpolator;

    invoke-interface {v1, v0}, Landroid/view/animation/Interpolator;->getInterpolation(F)F

    move-result v1

    iget v2, p0, Landroid/support/v4/widget/aw;->g:F

    iget v3, p0, Landroid/support/v4/widget/aw;->h:F

    sub-float/2addr v3, v2

    mul-float v3, v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Landroid/support/v4/widget/aw;->e:F

    iget v2, p0, Landroid/support/v4/widget/aw;->i:F

    iget v3, p0, Landroid/support/v4/widget/aw;->j:F

    sub-float/2addr v3, v2

    mul-float v3, v3, v1

    add-float/2addr v2, v3

    iput v2, p0, Landroid/support/v4/widget/aw;->f:F

    iget v1, p0, Landroid/support/v4/widget/aw;->s:F

    iget v2, p0, Landroid/support/v4/widget/aw;->t:F

    add-float/2addr v1, v2

    const/high16 v2, 0x40000000    # 2.0f

    div-float/2addr v1, v2

    iput v1, p0, Landroid/support/v4/widget/aw;->s:F

    const v1, 0x3f7fbe77    # 0.999f

    cmpl-float v0, v0, v1

    if-gez v0, :cond_0

    iget v0, p0, Landroid/support/v4/widget/aw;->n:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    :cond_0
    iget v0, p0, Landroid/support/v4/widget/aw;->n:I

    const/4 v1, 0x3

    const/4 v2, 0x6

    const/4 v3, 0x0

    const/4 v4, 0x0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    :pswitch_0
    iput v1, p0, Landroid/support/v4/widget/aw;->n:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/widget/aw;->k:J

    const/high16 v0, 0x43e10000    # 450.0f

    iput v0, p0, Landroid/support/v4/widget/aw;->l:F

    iget v0, p0, Landroid/support/v4/widget/aw;->e:F

    iput v0, p0, Landroid/support/v4/widget/aw;->g:F

    iget v0, p0, Landroid/support/v4/widget/aw;->f:F

    iput v0, p0, Landroid/support/v4/widget/aw;->i:F

    iput v4, p0, Landroid/support/v4/widget/aw;->h:F

    iput v4, p0, Landroid/support/v4/widget/aw;->j:F

    goto :goto_0

    :pswitch_1
    iput v1, p0, Landroid/support/v4/widget/aw;->n:I

    goto :goto_0

    :pswitch_2
    iput v3, p0, Landroid/support/v4/widget/aw;->n:I

    goto :goto_0

    :pswitch_3
    iput v2, p0, Landroid/support/v4/widget/aw;->n:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/widget/aw;->k:J

    iput v4, p0, Landroid/support/v4/widget/aw;->l:F

    iget v0, p0, Landroid/support/v4/widget/aw;->b:F

    iput v0, p0, Landroid/support/v4/widget/aw;->g:F

    iput v0, p0, Landroid/support/v4/widget/aw;->h:F

    iget v0, p0, Landroid/support/v4/widget/aw;->a:F

    iput v0, p0, Landroid/support/v4/widget/aw;->i:F

    iput v0, p0, Landroid/support/v4/widget/aw;->j:F

    goto :goto_0

    :pswitch_4
    const/4 v0, 0x5

    iput v0, p0, Landroid/support/v4/widget/aw;->n:I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/widget/aw;->k:J

    const/high16 v0, 0x437a0000    # 250.0f

    iput v0, p0, Landroid/support/v4/widget/aw;->l:F

    iput v4, p0, Landroid/support/v4/widget/aw;->g:F

    iput v4, p0, Landroid/support/v4/widget/aw;->i:F

    iget v0, p0, Landroid/support/v4/widget/aw;->b:F

    iput v0, p0, Landroid/support/v4/widget/aw;->h:F

    iget v0, p0, Landroid/support/v4/widget/aw;->a:F

    iput v0, p0, Landroid/support/v4/widget/aw;->j:F

    iput v4, p0, Landroid/support/v4/widget/aw;->f:F

    iput-boolean v3, p0, Landroid/support/v4/widget/aw;->o:Z

    :cond_1
    :goto_0
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_3
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic c(Landroid/support/v4/widget/aw;)Landroid/os/Handler;
    .locals 0

    iget-object p0, p0, Landroid/support/v4/widget/aw;->E:Landroid/os/Handler;

    return-object p0
.end method


# virtual methods
.method public a(FFI)V
    .locals 2

    iput p1, p0, Landroid/support/v4/widget/aw;->C:F

    iput p2, p0, Landroid/support/v4/widget/aw;->D:F

    iget-object p1, p0, Landroid/support/v4/widget/aw;->E:Landroid/os/Handler;

    iget-object p2, p0, Landroid/support/v4/widget/aw;->F:Ljava/lang/Runnable;

    int-to-long v0, p3

    invoke-virtual {p1, p2, v0, v1}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public a(Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v4/widget/aw;->B:Landroid/view/View;

    return-void
.end method

.method public draw(Landroid/graphics/Canvas;)Z
    .locals 12

    invoke-direct {p0}, Landroid/support/v4/widget/aw;->b()V

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget-object v1, p0, Landroid/support/v4/widget/aw;->q:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->centerX()I

    move-result v1

    int-to-float v1, v1

    iget v2, p0, Landroid/support/v4/widget/aw;->f:F

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v2, v1, v4}, Landroid/graphics/Canvas;->scale(FFFF)V

    iget v2, p0, Landroid/support/v4/widget/aw;->s:F

    invoke-static {v2, v3}, Ljava/lang/Math;->min(FF)F

    move-result v2

    invoke-static {v4, v2}, Ljava/lang/Math;->max(FF)F

    iget v2, p0, Landroid/support/v4/widget/aw;->x:F

    iget v3, p0, Landroid/support/v4/widget/aw;->w:F

    add-float v9, v2, v3

    iget-object v2, p0, Landroid/support/v4/widget/aw;->q:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    const v3, 0x3e4ccccd    # 0.2f

    mul-float v2, v2, v3

    iget-object v3, p0, Landroid/support/v4/widget/aw;->y:Landroid/graphics/Path;

    invoke-virtual {v3}, Landroid/graphics/Path;->reset()V

    iget-object v3, p0, Landroid/support/v4/widget/aw;->y:Landroid/graphics/Path;

    invoke-virtual {v3, v4, v4}, Landroid/graphics/Path;->moveTo(FF)V

    iget-object v3, p0, Landroid/support/v4/widget/aw;->y:Landroid/graphics/Path;

    iget v5, p0, Landroid/support/v4/widget/aw;->w:F

    invoke-virtual {v3, v4, v5}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v5, p0, Landroid/support/v4/widget/aw;->y:Landroid/graphics/Path;

    sub-float v6, v1, v2

    add-float v8, v1, v2

    iget-object v1, p0, Landroid/support/v4/widget/aw;->q:Landroid/graphics/Rect;

    invoke-virtual {v1}, Landroid/graphics/Rect;->width()I

    move-result v1

    int-to-float v10, v1

    iget v11, p0, Landroid/support/v4/widget/aw;->w:F

    move v7, v9

    invoke-virtual/range {v5 .. v11}, Landroid/graphics/Path;->cubicTo(FFFFFF)V

    iget-object v1, p0, Landroid/support/v4/widget/aw;->y:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/support/v4/widget/aw;->q:Landroid/graphics/Rect;

    invoke-virtual {v2}, Landroid/graphics/Rect;->width()I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v1, v2, v4}, Landroid/graphics/Path;->lineTo(FF)V

    iget-object v1, p0, Landroid/support/v4/widget/aw;->y:Landroid/graphics/Path;

    invoke-virtual {v1}, Landroid/graphics/Path;->close()V

    iget-object v1, p0, Landroid/support/v4/widget/aw;->r:Landroid/graphics/Paint;

    iget v2, p0, Landroid/support/v4/widget/aw;->e:F

    const/high16 v3, 0x437f0000    # 255.0f

    mul-float v2, v2, v3

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAlpha(I)V

    iget-object v1, p0, Landroid/support/v4/widget/aw;->y:Landroid/graphics/Path;

    iget-object v2, p0, Landroid/support/v4/widget/aw;->r:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    iget p1, p0, Landroid/support/v4/widget/aw;->n:I

    const/4 v0, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x3

    if-ne p1, v2, :cond_0

    iget p1, p0, Landroid/support/v4/widget/aw;->f:F

    cmpl-float p1, p1, v4

    if-nez p1, :cond_0

    iput v1, p0, Landroid/support/v4/widget/aw;->n:I

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    iget v2, p0, Landroid/support/v4/widget/aw;->n:I

    if-nez v2, :cond_2

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :cond_2
    :goto_1
    return v0
.end method

.method public finish()V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/aw;->n:I

    return-void
.end method

.method public getColor()I
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/aw;->r:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getColor()I

    move-result v0

    return v0
.end method

.method public getMaxHeight()I
    .locals 2

    iget-object v0, p0, Landroid/support/v4/widget/aw;->q:Landroid/graphics/Rect;

    invoke-virtual {v0}, Landroid/graphics/Rect;->height()I

    move-result v0

    int-to-float v0, v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public isFinished()Z
    .locals 1

    iget v0, p0, Landroid/support/v4/widget/aw;->n:I

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onAbsorb(I)V
    .locals 3

    invoke-direct {p0}, Landroid/support/v4/widget/aw;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v4/widget/aw;->B:Landroid/view/View;

    if-eqz v0, :cond_1

    const/16 v1, 0x1c

    invoke-static {v1}, Landroid/support/v4/view/ac;->a(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_1
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v4/widget/aw;->o:Z

    const/4 v1, 0x2

    iput v1, p0, Landroid/support/v4/widget/aw;->n:I

    const/16 v1, 0x64

    invoke-static {p1}, Ljava/lang/Math;->abs(I)I

    move-result p1

    invoke-static {v1, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    const/16 v1, 0x2710

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v1

    iput-wide v1, p0, Landroid/support/v4/widget/aw;->k:J

    const/high16 p1, 0x437a0000    # 250.0f

    iput p1, p0, Landroid/support/v4/widget/aw;->l:F

    const/4 p1, 0x0

    iput p1, p0, Landroid/support/v4/widget/aw;->g:F

    iput p1, p0, Landroid/support/v4/widget/aw;->i:F

    iget p1, p0, Landroid/support/v4/widget/aw;->a:F

    iput p1, p0, Landroid/support/v4/widget/aw;->j:F

    iget p1, p0, Landroid/support/v4/widget/aw;->b:F

    iput p1, p0, Landroid/support/v4/widget/aw;->h:F

    const/high16 p1, 0x3f000000    # 0.5f

    iput p1, p0, Landroid/support/v4/widget/aw;->t:F

    iget-object p1, p0, Landroid/support/v4/widget/aw;->E:Landroid/os/Handler;

    const-wide/16 v1, 0x2bc

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method

.method public onPull(F)V
    .locals 1

    const/high16 v0, 0x3f000000    # 0.5f

    invoke-virtual {p0, p1, v0}, Landroid/support/v4/widget/aw;->onPull(FF)V

    return-void
.end method

.method public onPull(FF)V
    .locals 6

    iget v0, p0, Landroid/support/v4/widget/aw;->p:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-nez v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v4/widget/aw;->o:Z

    invoke-direct {p0}, Landroid/support/v4/widget/aw;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v4/widget/aw;->p:F

    add-float/2addr v0, p1

    iput v0, p0, Landroid/support/v4/widget/aw;->p:F

    :cond_0
    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v2

    iput p2, p0, Landroid/support/v4/widget/aw;->t:F

    iget p2, p0, Landroid/support/v4/widget/aw;->n:I

    const/4 v0, 0x4

    if-ne p2, v0, :cond_1

    iget-wide v4, p0, Landroid/support/v4/widget/aw;->k:J

    sub-long v4, v2, v4

    long-to-float p2, v4

    iget v0, p0, Landroid/support/v4/widget/aw;->l:F

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    return-void

    :cond_1
    iget p2, p0, Landroid/support/v4/widget/aw;->n:I

    const/4 v0, 0x1

    if-eq p2, v0, :cond_2

    iget p2, p0, Landroid/support/v4/widget/aw;->f:F

    invoke-static {v1, p2}, Ljava/lang/Math;->max(FF)F

    move-result p2

    iput p2, p0, Landroid/support/v4/widget/aw;->f:F

    :cond_2
    invoke-direct {p0}, Landroid/support/v4/widget/aw;->a()Z

    move-result p2

    if-nez p2, :cond_5

    iget p2, p0, Landroid/support/v4/widget/aw;->p:F

    cmpl-float p2, p2, v1

    if-eqz p2, :cond_3

    iget-boolean p2, p0, Landroid/support/v4/widget/aw;->o:Z

    if-nez p2, :cond_3

    goto :goto_0

    :cond_3
    iget-object p2, p0, Landroid/support/v4/widget/aw;->B:Landroid/view/View;

    if-eqz p2, :cond_4

    const/16 p2, 0x1c

    invoke-static {p2}, Landroid/support/v4/view/ac;->a(I)I

    move-result p2

    const/4 v1, -0x1

    if-eq p2, v1, :cond_4

    iget-object v1, p0, Landroid/support/v4/widget/aw;->B:Landroid/view/View;

    invoke-virtual {v1, p2}, Landroid/view/View;->performHapticFeedback(I)Z

    :cond_4
    iput v0, p0, Landroid/support/v4/widget/aw;->n:I

    iput-wide v2, p0, Landroid/support/v4/widget/aw;->k:J

    const/high16 p2, 0x43270000    # 167.0f

    iput p2, p0, Landroid/support/v4/widget/aw;->l:F

    iget p2, p0, Landroid/support/v4/widget/aw;->p:F

    add-float/2addr p2, p1

    iput p2, p0, Landroid/support/v4/widget/aw;->p:F

    :cond_5
    :goto_0
    return-void
.end method

.method public onRelease()V
    .locals 3

    const/4 v0, 0x0

    iput v0, p0, Landroid/support/v4/widget/aw;->p:F

    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/support/v4/widget/aw;->o:Z

    iget v2, p0, Landroid/support/v4/widget/aw;->n:I

    if-eq v2, v1, :cond_0

    const/4 v1, 0x4

    if-eq v2, v1, :cond_0

    return-void

    :cond_0
    const/4 v1, 0x3

    iput v1, p0, Landroid/support/v4/widget/aw;->n:I

    iget v1, p0, Landroid/support/v4/widget/aw;->e:F

    iput v1, p0, Landroid/support/v4/widget/aw;->g:F

    iget v1, p0, Landroid/support/v4/widget/aw;->f:F

    iput v1, p0, Landroid/support/v4/widget/aw;->i:F

    iput v0, p0, Landroid/support/v4/widget/aw;->h:F

    iput v0, p0, Landroid/support/v4/widget/aw;->j:F

    invoke-static {}, Landroid/view/animation/AnimationUtils;->currentAnimationTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Landroid/support/v4/widget/aw;->k:J

    const/high16 v0, 0x43e10000    # 450.0f

    iput v0, p0, Landroid/support/v4/widget/aw;->l:F

    return-void
.end method

.method public setColor(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v4/widget/aw;->r:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method public setSize(II)V
    .locals 4

    int-to-float v0, p1

    const/high16 v1, 0x3f400000    # 0.75f

    mul-float v1, v1, v0

    sget v2, Landroid/support/v4/widget/aw;->c:F

    div-float/2addr v1, v2

    sget v2, Landroid/support/v4/widget/aw;->d:F

    mul-float v2, v2, v1

    sub-float/2addr v1, v2

    int-to-float p2, p2

    iget v2, p0, Landroid/support/v4/widget/aw;->u:F

    iget v3, p0, Landroid/support/v4/widget/aw;->v:F

    add-float/2addr v2, v3

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_0

    const/high16 v0, 0x40400000    # 3.0f

    invoke-direct {p0, v0}, Landroid/support/v4/widget/aw;->a(F)F

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/aw;->w:F

    const/high16 v0, 0x41980000    # 19.0f

    goto :goto_0

    :cond_0
    const/high16 v0, 0x40a00000    # 5.0f

    invoke-direct {p0, v0}, Landroid/support/v4/widget/aw;->a(F)F

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/aw;->w:F

    const/high16 v0, 0x41e80000    # 29.0f

    :goto_0
    invoke-direct {p0, v0}, Landroid/support/v4/widget/aw;->a(F)F

    move-result v0

    iput v0, p0, Landroid/support/v4/widget/aw;->x:F

    iget-object v0, p0, Landroid/support/v4/widget/aw;->q:Landroid/graphics/Rect;

    iget v2, v0, Landroid/graphics/Rect;->left:I

    iget-object v3, p0, Landroid/support/v4/widget/aw;->q:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->top:I

    invoke-static {p2, v1}, Ljava/lang/Math;->min(FF)F

    move-result p2

    float-to-int p2, p2

    invoke-virtual {v0, v2, v3, p1, p2}, Landroid/graphics/Rect;->set(IIII)V

    return-void
.end method
