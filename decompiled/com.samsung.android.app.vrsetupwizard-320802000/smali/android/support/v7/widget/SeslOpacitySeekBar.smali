.class Landroid/support/v7/widget/SeslOpacitySeekBar;
.super Landroid/widget/SeekBar;


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Landroid/content/res/Resources;

.field private c:Landroid/graphics/drawable/GradientDrawable;

.field private d:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x2

    new-array p2, p2, [I

    fill-array-data p2, :array_0

    iput-object p2, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->d:[I

    iput-object p1, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->a:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->b:Landroid/content/res/Resources;

    return-void

    :array_0
    .array-data 4
        -0x1
        -0x1000000
    .end array-data
.end method

.method private a()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->a:Landroid/content/Context;

    sget v1, Landroid/support/v7/b/f;->sesl_color_picker_opacity_seekbar:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    iput-object v0, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->c:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->c:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslOpacitySeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method private b()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->b:Landroid/content/res/Resources;

    sget v1, Landroid/support/v7/b/f;->sesl_color_picker_seekbar_cursor:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslOpacitySeekBar;->setThumb(Landroid/graphics/drawable/Drawable;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslOpacitySeekBar;->setThumbOffset(I)V

    return-void
.end method

.method private d(I)V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [F

    invoke-static {p1, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result p1

    iget-object v1, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->d:[I

    const/4 v2, 0x0

    invoke-static {v2, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v3

    aput v3, v1, v2

    iget-object v1, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->d:[I

    const/16 v2, 0xff

    invoke-static {v2, v0}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    const/4 v2, 0x1

    aput v0, v1, v2

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslOpacitySeekBar;->setProgress(I)V

    return-void
.end method


# virtual methods
.method a(I)V
    .locals 1

    const/16 v0, 0xff

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslOpacitySeekBar;->setMax(I)V

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslOpacitySeekBar;->d(I)V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslOpacitySeekBar;->a()V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslOpacitySeekBar;->b()V

    return-void
.end method

.method b(I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslOpacitySeekBar;->d(I)V

    iget-object p1, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->c:Landroid/graphics/drawable/GradientDrawable;

    iget-object v0, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->d:[I

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    iget-object p1, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->c:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslOpacitySeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method c(I)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->c:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->d:[I

    const/4 v2, 0x1

    aput p1, v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setColors([I)V

    iget-object p1, p0, Landroid/support/v7/widget/SeslOpacitySeekBar;->c:Landroid/graphics/drawable/GradientDrawable;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslOpacitySeekBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslOpacitySeekBar;->getMax()I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslOpacitySeekBar;->setProgress(I)V

    :cond_0
    return-void
.end method
