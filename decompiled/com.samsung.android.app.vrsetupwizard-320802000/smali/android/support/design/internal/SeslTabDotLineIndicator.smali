.class public Landroid/support/design/internal/SeslTabDotLineIndicator;
.super Landroid/support/design/internal/u;


# instance fields
.field private b:I

.field private c:I

.field private d:Landroid/graphics/Paint;

.field private e:F

.field private final f:F

.field private g:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/support/design/internal/SeslTabDotLineIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/support/design/internal/SeslTabDotLineIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/design/internal/SeslTabDotLineIndicator;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/design/internal/u;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    const/4 p2, 0x2

    iput p2, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->b:I

    const/4 p2, 0x1

    iput p2, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->c:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    const/high16 p4, 0x40200000    # 2.5f

    invoke-static {p2, p4, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->c:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    invoke-static {p2, p4, p3}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p3

    float-to-int p3, p3

    iput p3, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->b:I

    new-instance p3, Landroid/graphics/Paint;

    invoke-direct {p3}, Landroid/graphics/Paint;-><init>()V

    iput-object p3, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->d:Landroid/graphics/Paint;

    iget-object p3, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {p3, p2}, Landroid/graphics/Paint;->setFlags(I)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p1

    const/high16 p3, 0x40a00000    # 5.0f

    invoke-static {p2, p3, p1}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result p1

    iput p1, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->f:F

    return-void
.end method

.method private b()V
    .locals 3

    iget v0, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->g:I

    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabDotLineIndicator;->getWidth()I

    move-result v1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->g:I

    if-nez v0, :cond_2

    :cond_0
    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabDotLineIndicator;->getWidth()I

    move-result v0

    iput v0, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->g:I

    iget v0, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->g:I

    if-gtz v0, :cond_1

    const v0, 0x3f666666    # 0.9f

    iput v0, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->e:F

    goto :goto_0

    :cond_1
    int-to-float v1, v0

    iget v2, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->f:F

    sub-float/2addr v1, v2

    int-to-float v0, v0

    div-float/2addr v1, v0

    iput v1, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->e:F

    :cond_2
    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/design/internal/SeslTabDotLineIndicator;->setAlpha(F)V

    return-void
.end method

.method a(I)V
    .locals 1

    iget-object v0, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 12

    invoke-super {p0, p1}, Landroid/support/design/internal/u;->onDraw(Landroid/graphics/Canvas;)V

    invoke-direct {p0}, Landroid/support/design/internal/SeslTabDotLineIndicator;->b()V

    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabDotLineIndicator;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabDotLineIndicator;->isSelected()Z

    move-result v0

    if-eqz v0, :cond_4

    :cond_0
    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabDotLineIndicator;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    instance-of v0, v0, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabDotLineIndicator;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/design/internal/SeslTabDotLineIndicator;->getHeight()I

    move-result v1

    iget v2, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->c:I

    sub-int v3, v0, v2

    iget v4, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->b:I

    add-int v5, v4, v2

    div-int/2addr v3, v5

    add-int/lit8 v3, v3, 0x1

    add-int/lit8 v5, v3, -0x1

    int-to-float v6, v2

    const/high16 v7, 0x40000000    # 2.0f

    div-float/2addr v6, v7

    const/high16 v8, 0x3f000000    # 0.5f

    add-float/2addr v6, v8

    float-to-int v6, v6

    sub-int/2addr v0, v2

    add-int/2addr v4, v2

    mul-int v4, v4, v5

    sub-int/2addr v0, v4

    rem-int/lit8 v2, v2, 0x2

    if-eqz v2, :cond_1

    add-int/lit8 v0, v0, -0x1

    :cond_1
    const/4 v2, 0x0

    if-lez v5, :cond_2

    div-int v4, v0, v5

    rem-int/2addr v0, v5

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    const/4 v4, 0x0

    :goto_0
    const/4 v5, 0x0

    :goto_1
    if-ge v2, v3, :cond_4

    add-int v8, v6, v5

    int-to-float v8, v8

    div-int/lit8 v9, v1, 0x2

    int-to-float v9, v9

    iget v10, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->c:I

    int-to-float v10, v10

    div-float/2addr v10, v7

    iget-object v11, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->d:Landroid/graphics/Paint;

    invoke-virtual {p1, v8, v9, v10, v11}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    iget v8, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->c:I

    iget v9, p0, Landroid/support/design/internal/SeslTabDotLineIndicator;->b:I

    add-int/2addr v8, v9

    add-int/2addr v8, v4

    add-int/2addr v5, v8

    if-ge v2, v0, :cond_3

    add-int/lit8 v5, v5, 0x1

    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_4
    return-void
.end method
