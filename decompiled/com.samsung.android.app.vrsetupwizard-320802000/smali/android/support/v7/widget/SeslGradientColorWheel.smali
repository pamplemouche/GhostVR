.class Landroid/support/v7/widget/SeslGradientColorWheel;
.super Landroid/view/View;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/res/Resources;

.field private c:Landroid/graphics/Paint;

.field private d:Landroid/graphics/Paint;

.field private e:Landroid/graphics/Paint;

.field private f:Landroid/graphics/Paint;

.field private g:Landroid/graphics/drawable/Drawable;

.field private final h:[I

.field private i:F

.field private j:F

.field private final k:I

.field private final l:I

.field private m:I

.field private n:I

.field private o:Landroid/support/v7/widget/hx;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x7

    new-array p2, p2, [I

    fill-array-data p2, :array_0

    iput-object p2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->h:[I

    iput-object p1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->a:Landroid/content/Context;

    iget-object p1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->b:Landroid/content/res/Resources;

    iget-object p1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->b:Landroid/content/res/Resources;

    sget p2, Landroid/support/v7/b/e;->sesl_color_picker_gradient_wheel_cursor_paint_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->k:I

    iget-object p1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->b:Landroid/content/res/Resources;

    sget p2, Landroid/support/v7/b/e;->sesl_color_picker_gradient_wheel_cursor_paint_size:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iget-object p2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->b:Landroid/content/res/Resources;

    sget v0, Landroid/support/v7/b/e;->sesl_color_picker_gradient_wheel_cursor_out_stroke_size:I

    invoke-virtual {p2, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    mul-int/lit8 p2, p2, 0x2

    add-int/2addr p1, p2

    iput p1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->l:I

    invoke-direct {p0}, Landroid/support/v7/widget/SeslGradientColorWheel;->a()V

    return-void

    :array_0
    .array-data 4
        -0x10000
        -0xff01
        -0xffff01
        -0xff0001
        -0xff0100
        -0x100
        -0x10000
    .end array-data
.end method

.method private a()V
    .locals 11

    iget-object v0, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->b:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/b/e;->sesl_color_picker_gradient_wheel_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->l:I

    add-int/2addr v0, v1

    div-int/lit8 v2, v0, 0x2

    iput v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->m:I

    iget v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->m:I

    div-int/lit8 v1, v1, 0x2

    sub-int v1, v2, v1

    iput v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->n:I

    new-instance v1, Landroid/graphics/SweepGradient;

    int-to-float v3, v2

    int-to-float v2, v2

    iget-object v4, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->h:[I

    const/4 v5, 0x0

    invoke-direct {v1, v3, v2, v4, v5}, Landroid/graphics/SweepGradient;-><init>(FF[I[F)V

    new-instance v2, Landroid/graphics/Paint;

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->f:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->f:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    iget-object v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->f:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    new-instance v1, Landroid/graphics/RadialGradient;

    iget v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->m:I

    int-to-float v5, v2

    int-to-float v6, v2

    iget v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->n:I

    int-to-float v7, v2

    sget-object v10, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Landroid/graphics/RadialGradient;-><init>(FFFIILandroid/graphics/Shader$TileMode;)V

    new-instance v2, Landroid/graphics/Paint;

    invoke-direct {v2, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->e:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->e:Landroid/graphics/Paint;

    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V

    iput-object v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->c:Landroid/graphics/Paint;

    new-instance v1, Landroid/graphics/Paint;

    invoke-direct {v1, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->d:Landroid/graphics/Paint;

    iget-object v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->d:Landroid/graphics/Paint;

    iget-object v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->b:Landroid/content/res/Resources;

    sget-boolean v4, Landroid/support/v7/widget/SeslColorPicker;->a:Z

    if-eqz v4, :cond_0

    sget v4, Landroid/support/v7/b/d;->sesl_color_picker_stroke_color_light:I

    goto :goto_0

    :cond_0
    sget v4, Landroid/support/v7/b/d;->sesl_action_bar_background_color_dark:I

    :goto_0
    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColor(I)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->b:Landroid/content/res/Resources;

    sget v2, Landroid/support/v7/b/f;->sesl_color_picker_gradient_wheel_cursor:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->g:Landroid/graphics/drawable/Drawable;

    new-instance v1, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v1, v0, v0}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    iput v3, v1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SeslGradientColorWheel;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    return-void
.end method

.method private a(FF)V
    .locals 6

    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v2

    const-wide v2, 0x4066800000000000L    # 180.0

    div-double/2addr v0, v2

    iget p1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->n:I

    int-to-float p1, p1

    mul-float p1, p1, p2

    iget p2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->m:I

    int-to-double v2, p2

    float-to-double p1, p1

    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v4

    mul-double v4, v4, p1

    add-double/2addr v2, v4

    double-to-int v2, v2

    int-to-float v2, v2

    iput v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->i:F

    iget v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->m:I

    int-to-double v2, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    mul-double p1, p1, v0

    sub-double/2addr v2, p1

    double-to-int p1, v2

    int-to-float p1, p1

    iput p1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->j:F

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslGradientColorWheel;->invalidate()V

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 2

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    const/4 p1, 0x0

    aget p1, v0, p1

    const/4 v1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, p1, v0}, Landroid/support/v7/widget/SeslGradientColorWheel;->a(FF)V

    return-void
.end method

.method a(Landroid/support/v7/widget/hx;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->o:Landroid/support/v7/widget/hx;

    return-void
.end method

.method b(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->c:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    iget v0, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->m:I

    int-to-float v1, v0

    int-to-float v0, v0

    iget v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->n:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->m:I

    int-to-float v1, v0

    int-to-float v0, v0

    iget v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->n:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->f:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->m:I

    int-to-float v1, v0

    int-to-float v0, v0

    iget v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->n:I

    int-to-float v2, v2

    iget-object v3, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->e:Landroid/graphics/Paint;

    invoke-virtual {p1, v1, v0, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v0, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->i:F

    iget v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->j:F

    iget v2, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->k:I

    int-to-float v2, v2

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v2, v3

    iget-object v3, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->c:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->g:Landroid/graphics/drawable/Drawable;

    iget v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->i:F

    float-to-int v2, v1

    iget v3, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->k:I

    div-int/lit8 v4, v3, 0x2

    sub-int/2addr v2, v4

    iget v4, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->j:F

    float-to-int v5, v4

    div-int/lit8 v6, v3, 0x2

    sub-int/2addr v5, v6

    float-to-int v1, v1

    div-int/lit8 v6, v3, 0x2

    add-int/2addr v1, v6

    float-to-int v4, v4

    div-int/lit8 v3, v3, 0x2

    add-int/2addr v4, v3

    invoke-virtual {v0, v2, v5, v1, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->g:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->m:I

    int-to-float v1, v1

    sub-float/2addr v0, v1

    float-to-double v0, v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->m:I

    int-to-float v5, v5

    sub-float/2addr v4, v5

    float-to-double v4, v4

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    add-double/2addr v0, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-eq v1, v2, :cond_3

    const/4 v3, 0x2

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslGradientColorWheel;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-eqz v1, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslGradientColorWheel;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    invoke-interface {v1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    goto :goto_0

    :cond_1
    iget v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->m:I

    int-to-float v1, v1

    const/4 v3, 0x0

    cmpl-float v1, v0, v1

    if-lez v1, :cond_2

    return v3

    :cond_2
    invoke-virtual {p0, v3}, Landroid/support/v7/widget/SeslGradientColorWheel;->playSoundEffect(I)V

    :cond_3
    :goto_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->i:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->j:F

    iget p1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->n:I

    int-to-float v1, p1

    cmpl-float v1, v0, v1

    if-lez v1, :cond_4

    iget v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->m:I

    int-to-float v3, v1

    int-to-float v4, p1

    iget v5, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->i:F

    int-to-float v6, v1

    sub-float/2addr v5, v6

    mul-float v4, v4, v5

    div-float/2addr v4, v0

    add-float/2addr v3, v4

    iput v3, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->i:F

    int-to-float v3, v1

    int-to-float p1, p1

    iget v4, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->j:F

    int-to-float v1, v1

    sub-float/2addr v4, v1

    mul-float p1, p1, v4

    div-float/2addr p1, v0

    add-float/2addr v3, p1

    iput v3, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->j:F

    :cond_4
    iget-object p1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->o:Landroid/support/v7/widget/hx;

    if-eqz p1, :cond_5

    iget p1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->j:F

    iget v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->m:I

    int-to-float v3, v1

    sub-float/2addr p1, v3

    float-to-double v3, p1

    int-to-float p1, v1

    iget v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->i:F

    sub-float/2addr p1, v1

    float-to-double v5, p1

    invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v3

    const-wide v5, 0x4066800000000000L    # 180.0

    mul-double v3, v3, v5

    const-wide v5, 0x400921fb54442d18L    # Math.PI

    div-double/2addr v3, v5

    double-to-float p1, v3

    const/high16 v1, 0x43340000    # 180.0f

    add-float/2addr p1, v1

    iget v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->n:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    iget-object v1, p0, Landroid/support/v7/widget/SeslGradientColorWheel;->o:Landroid/support/v7/widget/hx;

    invoke-interface {v1, p1, v0}, Landroid/support/v7/widget/hx;->a(FF)V

    goto :goto_1

    :cond_5
    const-string p1, "SeslGradientColorWheel"

    const-string v0, "Listener is not set."

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/SeslGradientColorWheel;->invalidate()V

    return v2
.end method
