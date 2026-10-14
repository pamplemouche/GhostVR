.class public Landroid/support/v7/widget/SeslColorPicker;
.super Landroid/widget/LinearLayout;


# static fields
.field static a:Z


# instance fields
.field private final b:Landroid/content/Context;

.field private final c:Landroid/content/res/Resources;

.field private d:Landroid/support/v7/widget/gx;

.field private e:Z

.field private f:Z

.field private g:Landroid/support/v7/widget/gw;

.field private h:Landroid/widget/ImageView;

.field private i:Landroid/widget/ImageView;

.field private j:Landroid/graphics/drawable/GradientDrawable;

.field private k:Landroid/support/v7/widget/SeslGradientColorSeekBar;

.field private l:Landroid/support/v7/widget/SeslOpacitySeekBar;

.field private m:Landroid/widget/FrameLayout;

.field private n:Landroid/support/v7/widget/SeslGradientColorWheel;

.field private o:Landroid/widget/LinearLayout;

.field private final p:Landroid/support/v7/widget/jd;

.field private final q:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private r:[Ljava/lang/String;

.field private final s:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 4

    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/support/v7/widget/SeslColorPicker;->e:Z

    iput-boolean p2, p0, Landroid/support/v7/widget/SeslColorPicker;->f:Z

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->r:[Ljava/lang/String;

    new-instance v0, Landroid/support/v7/widget/gv;

    invoke-direct {v0, p0}, Landroid/support/v7/widget/gv;-><init>(Landroid/support/v7/widget/SeslColorPicker;)V

    iput-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->s:Landroid/view/View$OnClickListener;

    iput-object p1, p0, Landroid/support/v7/widget/SeslColorPicker;->b:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/support/v7/widget/SeslColorPicker;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->c:Landroid/content/res/Resources;

    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    sget v2, Landroid/support/v7/b/b;->isLightTheme:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    iget v0, v0, Landroid/util/TypedValue;->data:I

    if-eqz v0, :cond_0

    const/4 p2, 0x1

    :cond_0
    sput-boolean p2, Landroid/support/v7/widget/SeslColorPicker;->a:Z

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    sget p2, Landroid/support/v7/b/i;->sesl_color_picker_layout:I

    invoke-virtual {p1, p2, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    new-instance p1, Landroid/support/v7/widget/jd;

    invoke-direct {p1}, Landroid/support/v7/widget/jd;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/SeslColorPicker;->p:Landroid/support/v7/widget/jd;

    iget-object p1, p0, Landroid/support/v7/widget/SeslColorPicker;->p:Landroid/support/v7/widget/jd;

    invoke-virtual {p1}, Landroid/support/v7/widget/jd;->a()Ljava/util/LinkedList;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SeslColorPicker;->q:Ljava/util/LinkedList;

    invoke-direct {p0}, Landroid/support/v7/widget/SeslColorPicker;->a()V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/SeslColorPicker;)Landroid/support/v7/widget/gx;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/SeslColorPicker;->d:Landroid/support/v7/widget/gx;

    return-object p0
.end method

.method private a()V
    .locals 1

    new-instance v0, Landroid/support/v7/widget/gx;

    invoke-direct {v0}, Landroid/support/v7/widget/gx;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->d:Landroid/support/v7/widget/gx;

    invoke-direct {p0}, Landroid/support/v7/widget/SeslColorPicker;->b()V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslColorPicker;->d()V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslColorPicker;->e()V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslColorPicker;->c()V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslColorPicker;->f()V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslColorPicker;->h()V

    invoke-direct {p0}, Landroid/support/v7/widget/SeslColorPicker;->g()V

    return-void
.end method

.method private a(I)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->d:Landroid/support/v7/widget/gx;

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/gx;->a(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->n:Landroid/support/v7/widget/SeslGradientColorWheel;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslGradientColorWheel;->a(I)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->k:Landroid/support/v7/widget/SeslGradientColorSeekBar;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslGradientColorSeekBar;->b(I)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->l:Landroid/support/v7/widget/SeslOpacitySeekBar;

    if-eqz v0, :cond_2

    invoke-virtual {v0, p1}, Landroid/support/v7/widget/SeslOpacitySeekBar;->b(I)V

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->j:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v0, :cond_3

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_3
    iget-object p1, p0, Landroid/support/v7/widget/SeslColorPicker;->n:Landroid/support/v7/widget/SeslGradientColorWheel;

    if-eqz p1, :cond_4

    iget-object p1, p0, Landroid/support/v7/widget/SeslColorPicker;->d:Landroid/support/v7/widget/gx;

    invoke-virtual {p1}, Landroid/support/v7/widget/gx;->b()F

    move-result p1

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->d:Landroid/support/v7/widget/gx;

    invoke-virtual {v0}, Landroid/support/v7/widget/gx;->c()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->d:Landroid/support/v7/widget/gx;

    const/high16 v2, 0x3f800000    # 1.0f

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/gx;->a(F)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->d:Landroid/support/v7/widget/gx;

    const/16 v2, 0xff

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/gx;->b(I)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->n:Landroid/support/v7/widget/SeslGradientColorWheel;

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->d:Landroid/support/v7/widget/gx;

    invoke-virtual {v2}, Landroid/support/v7/widget/gx;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SeslGradientColorWheel;->b(I)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->d:Landroid/support/v7/widget/gx;

    invoke-virtual {v1, p1}, Landroid/support/v7/widget/gx;->a(F)V

    iget-object p1, p0, Landroid/support/v7/widget/SeslColorPicker;->d:Landroid/support/v7/widget/gx;

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/gx;->b(I)V

    :cond_4
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/SeslColorPicker;I)V
    .locals 0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslColorPicker;->a(I)V

    return-void
.end method

.method private a(Landroid/view/View;Ljava/lang/Integer;)V
    .locals 6

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->b:Landroid/content/Context;

    sget v1, Landroid/support/v7/b/f;->sesl_color_picker_used_color_item_slot:I

    invoke-virtual {v0, v1}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    invoke-virtual {v0, p2}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_0
    const/16 p2, 0x3d

    const/4 v1, 0x0

    invoke-static {p2, v1, v1, v1}, Landroid/graphics/Color;->argb(IIII)I

    move-result p2

    new-instance v2, Landroid/content/res/ColorStateList;

    const/4 v3, 0x1

    new-array v4, v3, [[I

    new-array v5, v1, [I

    aput-object v5, v4, v1

    new-array v3, v3, [I

    aput p2, v3, v1

    invoke-direct {v2, v4, v3}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    new-instance p2, Landroid/graphics/drawable/RippleDrawable;

    const/4 v1, 0x0

    invoke-direct {p2, v2, v0, v1}, Landroid/graphics/drawable/RippleDrawable;-><init>(Landroid/content/res/ColorStateList;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    iget-object p2, p0, Landroid/support/v7/widget/SeslColorPicker;->s:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/SeslColorPicker;Z)Z
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/SeslColorPicker;->e:Z

    return p1
.end method

.method private b()V
    .locals 9

    sget v0, Landroid/support/v7/b/g;->sesl_color_picker_current_color_view:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->h:Landroid/widget/ImageView;

    sget v0, Landroid/support/v7/b/g;->sesl_color_picker_picked_color_view:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->i:Landroid/widget/ImageView;

    sget v0, Landroid/support/v7/b/g;->sesl_color_picker_current_color_text:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    sget v1, Landroid/support/v7/b/g;->sesl_color_picker_picked_color_text:I

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->c:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->fontScale:F

    iget-object v3, p0, Landroid/support/v7/widget/SeslColorPicker;->c:Landroid/content/res/Resources;

    sget v4, Landroid/support/v7/b/e;->sesl_color_picker_selected_color_text_size:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v3

    const v4, 0x3f99999a    # 1.2f

    cmpl-float v5, v2, v4

    if-lez v5, :cond_0

    int-to-float v3, v3

    div-float/2addr v3, v2

    float-to-double v2, v3

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v5

    float-to-double v7, v4

    mul-double v5, v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->floor(D)D

    move-result-wide v4

    double-to-float v4, v4

    const/4 v5, 0x0

    invoke-virtual {v0, v5, v4}, Landroid/widget/TextView;->setTextSize(IF)V

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    mul-double v2, v2, v7

    invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D

    move-result-wide v2

    double-to-float v0, v2

    invoke-virtual {v1, v5, v0}, Landroid/widget/TextView;->setTextSize(IF)V

    :cond_0
    sget v0, Landroid/support/v7/b/g;->sesl_color_picker_current_color_focus:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    sget v1, Landroid/support/v7/b/g;->sesl_color_picker_picked_color_focus:I

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->i:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    check-cast v2, Landroid/graphics/drawable/GradientDrawable;

    iput-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->j:Landroid/graphics/drawable/GradientDrawable;

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->j:Landroid/graphics/drawable/GradientDrawable;

    iget-object v3, p0, Landroid/support/v7/widget/SeslColorPicker;->d:Landroid/support/v7/widget/gx;

    invoke-virtual {v3}, Landroid/support/v7/widget/gx;->a()I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->c:Landroid/content/res/Resources;

    sget v3, Landroid/support/v7/b/j;->sesl_color_picker_current:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->c:Landroid/content/res/Resources;

    sget v2, Landroid/support/v7/b/j;->sesl_color_picker_new:I

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic b(Landroid/support/v7/widget/SeslColorPicker;)V
    .locals 0

    invoke-direct {p0}, Landroid/support/v7/widget/SeslColorPicker;->h()V

    return-void
.end method

.method static synthetic c(Landroid/support/v7/widget/SeslColorPicker;)Landroid/graphics/drawable/GradientDrawable;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/SeslColorPicker;->j:Landroid/graphics/drawable/GradientDrawable;

    return-object p0
.end method

.method private c()V
    .locals 5

    sget v0, Landroid/support/v7/b/g;->sesl_color_picker_gradient_wheel:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SeslGradientColorWheel;

    iput-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->n:Landroid/support/v7/widget/SeslGradientColorWheel;

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->n:Landroid/support/v7/widget/SeslGradientColorWheel;

    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->d:Landroid/support/v7/widget/gx;

    invoke-virtual {v1}, Landroid/support/v7/widget/gx;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslGradientColorWheel;->a(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->n:Landroid/support/v7/widget/SeslGradientColorWheel;

    new-instance v1, Landroid/support/v7/widget/gq;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/gq;-><init>(Landroid/support/v7/widget/SeslColorPicker;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslGradientColorWheel;->a(Landroid/support/v7/widget/hx;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->n:Landroid/support/v7/widget/SeslGradientColorWheel;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->c:Landroid/content/res/Resources;

    sget v3, Landroid/support/v7/b/j;->sesl_color_picker_hue_and_saturation:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v7/widget/SeslColorPicker;->c:Landroid/content/res/Resources;

    sget v4, Landroid/support/v7/b/j;->sesl_color_picker_color_wheel:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->c:Landroid/content/res/Resources;

    sget v3, Landroid/support/v7/b/j;->sesl_color_picker_double_tap_to_select:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslGradientColorWheel;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic d(Landroid/support/v7/widget/SeslColorPicker;)Landroid/support/v7/widget/SeslOpacitySeekBar;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/SeslColorPicker;->l:Landroid/support/v7/widget/SeslOpacitySeekBar;

    return-object p0
.end method

.method private d()V
    .locals 5

    sget v0, Landroid/support/v7/b/g;->sesl_color_picker_gradient_seekbar:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SeslGradientColorSeekBar;

    iput-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->k:Landroid/support/v7/widget/SeslGradientColorSeekBar;

    sget v0, Landroid/support/v7/b/g;->sesl_color_picker_gradient_seekbar_container:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->k:Landroid/support/v7/widget/SeslGradientColorSeekBar;

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->d:Landroid/support/v7/widget/gx;

    invoke-virtual {v2}, Landroid/support/v7/widget/gx;->a()I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SeslGradientColorSeekBar;->a(I)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->k:Landroid/support/v7/widget/SeslGradientColorSeekBar;

    new-instance v2, Landroid/support/v7/widget/gr;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/gr;-><init>(Landroid/support/v7/widget/SeslColorPicker;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SeslGradientColorSeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->k:Landroid/support/v7/widget/SeslGradientColorSeekBar;

    new-instance v2, Landroid/support/v7/widget/gs;

    invoke-direct {v2, p0}, Landroid/support/v7/widget/gs;-><init>(Landroid/support/v7/widget/SeslColorPicker;)V

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SeslGradientColorSeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->c:Landroid/content/res/Resources;

    sget v3, Landroid/support/v7/b/j;->sesl_color_picker_brightness:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v7/widget/SeslColorPicker;->c:Landroid/content/res/Resources;

    sget v4, Landroid/support/v7/b/j;->sesl_color_picker_slider:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->c:Landroid/content/res/Resources;

    sget v3, Landroid/support/v7/b/j;->sesl_color_picker_double_tap_to_select:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic e(Landroid/support/v7/widget/SeslColorPicker;)Landroid/support/v7/widget/gw;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/SeslColorPicker;->g:Landroid/support/v7/widget/gw;

    return-object p0
.end method

.method private e()V
    .locals 5

    sget v0, Landroid/support/v7/b/g;->sesl_color_picker_opacity_seekbar:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/SeslOpacitySeekBar;

    iput-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->l:Landroid/support/v7/widget/SeslOpacitySeekBar;

    sget v0, Landroid/support/v7/b/g;->sesl_color_picker_opacity_seekbar_container:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->m:Landroid/widget/FrameLayout;

    iget-boolean v0, p0, Landroid/support/v7/widget/SeslColorPicker;->f:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->l:Landroid/support/v7/widget/SeslOpacitySeekBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslOpacitySeekBar;->setVisibility(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->m:Landroid/widget/FrameLayout;

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->l:Landroid/support/v7/widget/SeslOpacitySeekBar;

    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->d:Landroid/support/v7/widget/gx;

    invoke-virtual {v1}, Landroid/support/v7/widget/gx;->a()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslOpacitySeekBar;->a(I)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->l:Landroid/support/v7/widget/SeslOpacitySeekBar;

    new-instance v1, Landroid/support/v7/widget/gt;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/gt;-><init>(Landroid/support/v7/widget/SeslColorPicker;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslOpacitySeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->l:Landroid/support/v7/widget/SeslOpacitySeekBar;

    new-instance v1, Landroid/support/v7/widget/gu;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/gu;-><init>(Landroid/support/v7/widget/SeslColorPicker;)V

    invoke-virtual {v0, v1}, Landroid/support/v7/widget/SeslOpacitySeekBar;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->m:Landroid/widget/FrameLayout;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->c:Landroid/content/res/Resources;

    sget v3, Landroid/support/v7/b/j;->sesl_color_picker_opacity:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Landroid/support/v7/widget/SeslColorPicker;->c:Landroid/content/res/Resources;

    sget v4, Landroid/support/v7/b/j;->sesl_color_picker_slider:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->c:Landroid/content/res/Resources;

    sget v3, Landroid/support/v7/b/j;->sesl_color_picker_double_tap_to_select:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic f(Landroid/support/v7/widget/SeslColorPicker;)Landroid/support/v7/widget/SeslGradientColorSeekBar;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/SeslColorPicker;->k:Landroid/support/v7/widget/SeslGradientColorSeekBar;

    return-object p0
.end method

.method private f()V
    .locals 6

    sget v0, Landroid/support/v7/b/g;->sesl_color_picker_used_color_item_list_layout:I

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iput-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->o:Landroid/widget/LinearLayout;

    const/4 v0, 0x6

    new-array v1, v0, [Ljava/lang/String;

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->c:Landroid/content/res/Resources;

    sget v3, Landroid/support/v7/b/j;->sesl_color_picker_color_one:I

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->c:Landroid/content/res/Resources;

    sget v4, Landroid/support/v7/b/j;->sesl_color_picker_color_two:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->c:Landroid/content/res/Resources;

    sget v4, Landroid/support/v7/b/j;->sesl_color_picker_color_three:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x2

    aput-object v2, v1, v4

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->c:Landroid/content/res/Resources;

    sget v4, Landroid/support/v7/b/j;->sesl_color_picker_color_four:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x3

    aput-object v2, v1, v4

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->c:Landroid/content/res/Resources;

    sget v4, Landroid/support/v7/b/j;->sesl_color_picker_color_five:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x4

    aput-object v2, v1, v4

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->c:Landroid/content/res/Resources;

    sget v4, Landroid/support/v7/b/j;->sesl_color_picker_color_six:I

    invoke-virtual {v2, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x5

    aput-object v2, v1, v4

    iput-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->r:[Ljava/lang/String;

    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->b:Landroid/content/Context;

    sget-boolean v2, Landroid/support/v7/widget/SeslColorPicker;->a:Z

    if-eqz v2, :cond_0

    sget v2, Landroid/support/v7/b/d;->sesl_color_picker_used_color_item_empty_slot_color_light:I

    goto :goto_0

    :cond_0
    sget v2, Landroid/support/v7/b/d;->sesl_color_picker_used_color_item_empty_slot_color_dark:I

    :goto_0
    invoke-static {v1, v2}, Landroid/support/v4/a/a;->c(Landroid/content/Context;I)I

    move-result v1

    const/4 v2, 0x0

    :goto_1
    if-ge v2, v0, :cond_1

    iget-object v4, p0, Landroid/support/v7/widget/SeslColorPicker;->o:Landroid/widget/LinearLayout;

    invoke-virtual {v4, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {p0, v4, v5}, Landroid/support/v7/widget/SeslColorPicker;->a(Landroid/view/View;Ljava/lang/Integer;)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setFocusable(Z)V

    invoke-virtual {v4, v3}, Landroid/view/View;->setClickable(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_1
    return-void
.end method

.method static synthetic g(Landroid/support/v7/widget/SeslColorPicker;)Ljava/util/LinkedList;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/SeslColorPicker;->q:Ljava/util/LinkedList;

    return-object p0
.end method

.method private g()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->d:Landroid/support/v7/widget/gx;

    invoke-virtual {v0}, Landroid/support/v7/widget/gx;->a()I

    move-result v0

    invoke-direct {p0, v0}, Landroid/support/v7/widget/SeslColorPicker;->a(I)V

    return-void
.end method

.method static synthetic h(Landroid/support/v7/widget/SeslColorPicker;)Landroid/widget/LinearLayout;
    .locals 0

    iget-object p0, p0, Landroid/support/v7/widget/SeslColorPicker;->o:Landroid/widget/LinearLayout;

    return-object p0
.end method

.method private h()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->d:Landroid/support/v7/widget/gx;

    invoke-virtual {v0}, Landroid/support/v7/widget/gx;->a()I

    move-result v0

    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->k:Landroid/support/v7/widget/SeslGradientColorSeekBar;

    if-eqz v1, :cond_0

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SeslGradientColorSeekBar;->c(I)V

    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->l:Landroid/support/v7/widget/SeslOpacitySeekBar;

    if-eqz v1, :cond_1

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SeslOpacitySeekBar;->c(I)V

    :cond_1
    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->j:Landroid/graphics/drawable/GradientDrawable;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/GradientDrawable;->setColor(I)V

    :cond_2
    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->n:Landroid/support/v7/widget/SeslGradientColorWheel;

    if-eqz v1, :cond_3

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/SeslGradientColorWheel;->b(I)V

    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/SeslColorPicker;->g:Landroid/support/v7/widget/gw;

    if-eqz v1, :cond_4

    invoke-interface {v1, v0}, Landroid/support/v7/widget/gw;->a(I)V

    :cond_4
    return-void
.end method


# virtual methods
.method public getRecentColorInfo()Landroid/support/v7/widget/jd;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/SeslColorPicker;->p:Landroid/support/v7/widget/jd;

    return-object v0
.end method

.method public setOnColorChangedListener(Landroid/support/v7/widget/gw;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/SeslColorPicker;->g:Landroid/support/v7/widget/gw;

    return-void
.end method

.method public setOpacityBarEnabled(Z)V
    .locals 3

    iput-boolean p1, p0, Landroid/support/v7/widget/SeslColorPicker;->f:Z

    iget-boolean p1, p0, Landroid/support/v7/widget/SeslColorPicker;->f:Z

    if-eqz p1, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/SeslColorPicker;->l:Landroid/support/v7/widget/SeslOpacitySeekBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/support/v7/widget/SeslOpacitySeekBar;->setVisibility(I)V

    iget-object p1, p0, Landroid/support/v7/widget/SeslColorPicker;->m:Landroid/widget/FrameLayout;

    invoke-virtual {p1, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V

    iget-object p1, p0, Landroid/support/v7/widget/SeslColorPicker;->c:Landroid/content/res/Resources;

    invoke-virtual {p1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p1

    iget p1, p1, Landroid/content/res/Configuration;->orientation:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    sget p1, Landroid/support/v7/b/g;->sesl_color_picker_gradient_wheel_container:I

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SeslColorPicker;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/FrameLayout;

    invoke-virtual {p1}, Landroid/widget/FrameLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout$LayoutParams;

    iget v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    int-to-float v0, v0

    const/high16 v1, 0x40c00000    # 6.0f

    iget-object v2, p0, Landroid/support/v7/widget/SeslColorPicker;->c:Landroid/content/res/Resources;

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    iget v2, v2, Landroid/util/DisplayMetrics;->density:F

    mul-float v2, v2, v1

    add-float/2addr v0, v2

    float-to-int v0, v0

    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->topMargin:I

    :cond_0
    return-void
.end method
