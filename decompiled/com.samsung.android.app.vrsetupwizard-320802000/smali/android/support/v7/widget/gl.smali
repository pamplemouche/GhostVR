.class public abstract Landroid/support/v7/widget/gl;
.super Landroid/support/v7/widget/SeslProgressBar;


# static fields
.field private static final k:Z


# instance fields
.field private A:I

.field private B:F

.field private C:Z

.field private D:I

.field private E:I

.field private F:I

.field private G:Landroid/graphics/drawable/Drawable;

.field private H:Landroid/graphics/drawable/Drawable;

.field private I:F

.field private J:I

.field private K:Landroid/graphics/drawable/Drawable;

.field private L:Landroid/graphics/drawable/Drawable;

.field private M:Landroid/content/res/ColorStateList;

.field private N:Landroid/content/res/ColorStateList;

.field private O:Landroid/content/res/ColorStateList;

.field private P:Landroid/content/res/ColorStateList;

.field private Q:Landroid/content/res/ColorStateList;

.field private R:Landroid/content/res/ColorStateList;

.field private S:Z

.field private T:Z

.field private U:Z

.field private V:Z

.field private W:Landroid/animation/AnimatorSet;

.field a:F

.field private aa:I

.field private ab:Z

.field private ac:Z

.field private ad:F

.field private ae:F

.field private af:I

.field b:Z

.field private final l:Landroid/graphics/Rect;

.field private m:Landroid/graphics/drawable/Drawable;

.field private n:Landroid/content/res/ColorStateList;

.field private o:Landroid/graphics/PorterDuff$Mode;

.field private p:Z

.field private q:Z

.field private r:Landroid/graphics/drawable/Drawable;

.field private s:Landroid/content/res/ColorStateList;

.field private t:Landroid/graphics/PorterDuff$Mode;

.field private u:Z

.field private v:Z

.field private w:I

.field private x:Z

.field private y:I

.field private z:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x17

    if-gt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Landroid/support/v7/widget/gl;->k:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;-><init>(Landroid/content/Context;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/gl;->l:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v7/widget/gl;->n:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Landroid/support/v7/widget/gl;->o:Landroid/graphics/PorterDuff$Mode;

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/gl;->p:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/gl;->q:Z

    iput-object p1, p0, Landroid/support/v7/widget/gl;->s:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Landroid/support/v7/widget/gl;->t:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v0, p0, Landroid/support/v7/widget/gl;->u:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/gl;->v:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/gl;->b:Z

    iput p1, p0, Landroid/support/v7/widget/gl;->y:I

    iput v0, p0, Landroid/support/v7/widget/gl;->F:I

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v7/widget/gl;->J:I

    iput-boolean v0, p0, Landroid/support/v7/widget/gl;->S:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/gl;->T:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/gl;->U:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/gl;->V:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/gl;->ab:Z

    iput-boolean v0, p0, Landroid/support/v7/widget/gl;->ac:Z

    iput v0, p0, Landroid/support/v7/widget/gl;->af:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/SeslProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance p1, Landroid/graphics/Rect;

    invoke-direct {p1}, Landroid/graphics/Rect;-><init>()V

    iput-object p1, p0, Landroid/support/v7/widget/gl;->l:Landroid/graphics/Rect;

    const/4 p1, 0x0

    iput-object p1, p0, Landroid/support/v7/widget/gl;->n:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Landroid/support/v7/widget/gl;->o:Landroid/graphics/PorterDuff$Mode;

    const/4 p2, 0x0

    iput-boolean p2, p0, Landroid/support/v7/widget/gl;->p:Z

    iput-boolean p2, p0, Landroid/support/v7/widget/gl;->q:Z

    iput-object p1, p0, Landroid/support/v7/widget/gl;->s:Landroid/content/res/ColorStateList;

    iput-object p1, p0, Landroid/support/v7/widget/gl;->t:Landroid/graphics/PorterDuff$Mode;

    iput-boolean p2, p0, Landroid/support/v7/widget/gl;->u:Z

    iput-boolean p2, p0, Landroid/support/v7/widget/gl;->v:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/gl;->b:Z

    iput p1, p0, Landroid/support/v7/widget/gl;->y:I

    iput p2, p0, Landroid/support/v7/widget/gl;->F:I

    const/4 p1, -0x1

    iput p1, p0, Landroid/support/v7/widget/gl;->J:I

    iput-boolean p2, p0, Landroid/support/v7/widget/gl;->S:Z

    iput-boolean p2, p0, Landroid/support/v7/widget/gl;->T:Z

    iput-boolean p2, p0, Landroid/support/v7/widget/gl;->U:Z

    iput-boolean p2, p0, Landroid/support/v7/widget/gl;->V:Z

    iput-boolean p2, p0, Landroid/support/v7/widget/gl;->ab:Z

    iput-boolean p2, p0, Landroid/support/v7/widget/gl;->ac:Z

    iput p2, p0, Landroid/support/v7/widget/gl;->af:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Landroid/support/v7/widget/gl;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/SeslProgressBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    new-instance v0, Landroid/graphics/Rect;

    invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/gl;->l:Landroid/graphics/Rect;

    const/4 v0, 0x0

    iput-object v0, p0, Landroid/support/v7/widget/gl;->n:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/support/v7/widget/gl;->o:Landroid/graphics/PorterDuff$Mode;

    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/support/v7/widget/gl;->p:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/gl;->q:Z

    iput-object v0, p0, Landroid/support/v7/widget/gl;->s:Landroid/content/res/ColorStateList;

    iput-object v0, p0, Landroid/support/v7/widget/gl;->t:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v1, p0, Landroid/support/v7/widget/gl;->u:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/gl;->v:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/gl;->b:Z

    iput v0, p0, Landroid/support/v7/widget/gl;->y:I

    iput v1, p0, Landroid/support/v7/widget/gl;->F:I

    const/4 v2, -0x1

    iput v2, p0, Landroid/support/v7/widget/gl;->J:I

    iput-boolean v1, p0, Landroid/support/v7/widget/gl;->S:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/gl;->T:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/gl;->U:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/gl;->V:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/gl;->ab:Z

    iput-boolean v1, p0, Landroid/support/v7/widget/gl;->ac:Z

    iput v1, p0, Landroid/support/v7/widget/gl;->af:I

    sget-object v3, Landroid/support/v7/b/l;->AppCompatSeekBar:[I

    invoke-virtual {p1, p2, v3, p3, p4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p3

    sget p4, Landroid/support/v7/b/l;->AppCompatSeekBar_android_thumb:I

    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p0, p4}, Landroid/support/v7/widget/gl;->setThumb(Landroid/graphics/drawable/Drawable;)V

    sget p4, Landroid/support/v7/b/l;->AppCompatSeekBar_android_thumbTintMode:I

    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_0

    sget p4, Landroid/support/v7/b/l;->AppCompatSeekBar_android_thumbTintMode:I

    invoke-virtual {p3, p4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    iget-object v3, p0, Landroid/support/v7/widget/gl;->o:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p4, v3}, Landroid/support/v7/widget/ch;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p4

    iput-object p4, p0, Landroid/support/v7/widget/gl;->o:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v0, p0, Landroid/support/v7/widget/gl;->q:Z

    :cond_0
    sget p4, Landroid/support/v7/b/l;->AppCompatSeekBar_android_thumbTint:I

    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_1

    sget p4, Landroid/support/v7/b/l;->AppCompatSeekBar_android_thumbTint:I

    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p4

    iput-object p4, p0, Landroid/support/v7/widget/gl;->n:Landroid/content/res/ColorStateList;

    iput-boolean v0, p0, Landroid/support/v7/widget/gl;->p:Z

    :cond_1
    sget p4, Landroid/support/v7/b/l;->AppCompatSeekBar_tickMark:I

    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    invoke-virtual {p0, p4}, Landroid/support/v7/widget/gl;->setTickMark(Landroid/graphics/drawable/Drawable;)V

    sget p4, Landroid/support/v7/b/l;->AppCompatSeekBar_tickMarkTintMode:I

    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_2

    sget p4, Landroid/support/v7/b/l;->AppCompatSeekBar_tickMarkTintMode:I

    invoke-virtual {p3, p4, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p4

    iget-object v2, p0, Landroid/support/v7/widget/gl;->t:Landroid/graphics/PorterDuff$Mode;

    invoke-static {p4, v2}, Landroid/support/v7/widget/ch;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object p4

    iput-object p4, p0, Landroid/support/v7/widget/gl;->t:Landroid/graphics/PorterDuff$Mode;

    iput-boolean v0, p0, Landroid/support/v7/widget/gl;->v:Z

    :cond_2
    sget p4, Landroid/support/v7/b/l;->AppCompatSeekBar_tickMarkTint:I

    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result p4

    if-eqz p4, :cond_3

    sget p4, Landroid/support/v7/b/l;->AppCompatSeekBar_tickMarkTint:I

    invoke-virtual {p3, p4}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p4

    iput-object p4, p0, Landroid/support/v7/widget/gl;->s:Landroid/content/res/ColorStateList;

    iput-boolean v0, p0, Landroid/support/v7/widget/gl;->u:Z

    :cond_3
    sget p4, Landroid/support/v7/b/l;->AppCompatSeekBar_android_splitTrack:I

    invoke-virtual {p3, p4, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    iput-boolean p4, p0, Landroid/support/v7/widget/gl;->x:Z

    sget p4, Landroid/support/v7/b/l;->AppCompatSeekBar_android_thumbOffset:I

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getThumbOffset()I

    move-result v2

    invoke-virtual {p3, p4, v2}, Landroid/content/res/TypedArray;->getDimensionPixelOffset(II)I

    move-result p4

    invoke-virtual {p0, p4}, Landroid/support/v7/widget/gl;->setThumbOffset(I)V

    sget p4, Landroid/support/v7/b/l;->AppCompatSeekBar_useDisabledAlpha:I

    invoke-virtual {p3, p4, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p4

    invoke-virtual {p3}, Landroid/content/res/TypedArray;->recycle()V

    if-eqz p4, :cond_4

    sget-object p3, Landroid/support/v7/b/l;->AppCompatTheme:[I

    invoke-virtual {p1, p2, p3, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    sget p3, Landroid/support/v7/b/l;->AppCompatTheme_android_disabledAlpha:I

    const/high16 p4, 0x3f000000    # 0.5f

    invoke-virtual {p2, p3, p4}, Landroid/content/res/TypedArray;->getFloat(IF)F

    move-result p3

    iput p3, p0, Landroid/support/v7/widget/gl;->z:F

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    :cond_4
    const/high16 p2, 0x3f800000    # 1.0f

    iput p2, p0, Landroid/support/v7/widget/gl;->z:F

    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/gl;->m()V

    invoke-direct {p0}, Landroid/support/v7/widget/gl;->n()V

    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p2

    invoke-virtual {p2}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/gl;->A:I

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget p2, Landroid/support/v7/b/d;->sesl_seekbar_control_color_normal:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-direct {p0, p2}, Landroid/support/v7/widget/gl;->f(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/gl;->M:Landroid/content/res/ColorStateList;

    sget p2, Landroid/support/v7/b/d;->sesl_seekbar_control_color_activated:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-direct {p0, p2}, Landroid/support/v7/widget/gl;->f(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/gl;->N:Landroid/content/res/ColorStateList;

    sget p2, Landroid/support/v7/b/d;->sesl_seekbar_overlap_color_normal:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-direct {p0, p2}, Landroid/support/v7/widget/gl;->f(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/gl;->P:Landroid/content/res/ColorStateList;

    sget p2, Landroid/support/v7/b/d;->sesl_seekbar_overlap_color_activated:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-direct {p0, p2}, Landroid/support/v7/widget/gl;->f(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/gl;->Q:Landroid/content/res/ColorStateList;

    iget-object p2, p0, Landroid/support/v7/widget/gl;->Q:Landroid/content/res/ColorStateList;

    iput-object p2, p0, Landroid/support/v7/widget/gl;->R:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getThumbTintList()Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/gl;->O:Landroid/content/res/ColorStateList;

    iget-object p2, p0, Landroid/support/v7/widget/gl;->O:Landroid/content/res/ColorStateList;

    if-nez p2, :cond_5

    sget p2, Landroid/support/v7/b/d;->sesl_thumb_control_color_activated:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getColor(I)I

    move-result p2

    invoke-direct {p0, p2}, Landroid/support/v7/widget/gl;->f(I)Landroid/content/res/ColorStateList;

    move-result-object p2

    iput-object p2, p0, Landroid/support/v7/widget/gl;->O:Landroid/content/res/ColorStateList;

    :cond_5
    sget p2, Landroid/support/v7/b/c;->sesl_seekbar_sliding_animation:I

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Landroid/support/v7/widget/gl;->S:Z

    iget-boolean p1, p0, Landroid/support/v7/widget/gl;->S:Z

    if-eqz p1, :cond_6

    invoke-direct {p0}, Landroid/support/v7/widget/gl;->t()V

    :cond_6
    return-void
.end method

.method static synthetic a(Landroid/support/v7/widget/gl;)I
    .locals 0

    iget p0, p0, Landroid/support/v7/widget/gl;->aa:I

    return p0
.end method

.method static synthetic a(Landroid/support/v7/widget/gl;I)I
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/gl;->aa:I

    return p1
.end method

.method private a(FF)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Landroid/support/v4/c/a/a;->a(Landroid/graphics/drawable/Drawable;FF)V

    :cond_0
    return-void
.end method

.method private a(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 9

    iget v0, p0, Landroid/support/v7/widget/gl;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getHeight()I

    move-result p1

    invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/gl;->b(ILandroid/graphics/drawable/Drawable;FI)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr p1, v0

    iget v2, p0, Landroid/support/v7/widget/gl;->w:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr p1, v2

    int-to-float v2, p1

    mul-float p3, p3, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr p3, v2

    float-to-int p3, p3

    const/high16 v2, -0x80000000

    if-ne p4, v2, :cond_1

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    iget v2, p4, Landroid/graphics/Rect;->top:I

    iget p4, p4, Landroid/graphics/Rect;->bottom:I

    move v8, v2

    move v2, p4

    move p4, v8

    goto :goto_0

    :cond_1
    add-int v2, p4, v1

    :goto_0
    iget-boolean v3, p0, Landroid/support/v7/widget/gl;->h:Z

    if-eqz v3, :cond_2

    invoke-static {p0}, Landroid/support/v7/widget/ly;->a(Landroid/view/View;)Z

    move-result v3

    if-eqz v3, :cond_2

    sub-int p3, p1, p3

    :cond_2
    add-int p1, p3, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingLeft()I

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/gl;->w:I

    sub-int/2addr v4, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingTop()I

    move-result v5

    add-int v6, p3, v4

    add-int v7, p4, v5

    add-int/2addr v4, p1

    add-int/2addr v5, v2

    invoke-static {v3, v6, v7, v4, v5}, Landroid/support/v4/c/a/a;->a(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_3
    invoke-virtual {p2, p3, p4, p1, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingLeft()I

    move-result p1

    add-int/2addr p3, p1

    iput p3, p0, Landroid/support/v7/widget/gl;->D:I

    div-int/lit8 p1, v1, 0x2

    add-int/2addr p1, p4

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingTop()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Landroid/support/v7/widget/gl;->E:I

    iget p1, p0, Landroid/support/v7/widget/gl;->D:I

    int-to-float p1, p1

    int-to-float p2, v0

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    add-float/2addr p1, p2

    iget p2, p0, Landroid/support/v7/widget/gl;->w:I

    int-to-float p2, p2

    sub-float/2addr p1, p2

    iput p1, p0, Landroid/support/v7/widget/gl;->ad:F

    int-to-float p1, p4

    int-to-float p2, v1

    div-float/2addr p2, p3

    add-float/2addr p1, p2

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingTop()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, p0, Landroid/support/v7/widget/gl;->ae:F

    invoke-direct {p0}, Landroid/support/v7/widget/gl;->o()V

    return-void
.end method

.method private a(Landroid/view/MotionEvent;)V
    .locals 1

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/gl;->setPressed(Z)V

    iget-object v0, p0, Landroid/support/v7/widget/gl;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/gl;->invalidate(Landroid/graphics/Rect;)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->a()V

    invoke-direct {p0, p1}, Landroid/support/v7/widget/gl;->b(Landroid/view/MotionEvent;)V

    invoke-direct {p0}, Landroid/support/v7/widget/gl;->p()V

    return-void
.end method

.method private b(ILandroid/graphics/drawable/Drawable;FI)V
    .locals 8

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingTop()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    sub-int/2addr p1, v1

    iget v2, p0, Landroid/support/v7/widget/gl;->w:I

    mul-int/lit8 v2, v2, 0x2

    add-int/2addr p1, v2

    int-to-float v2, p1

    mul-float p3, p3, v2

    const/high16 v2, 0x3f000000    # 0.5f

    add-float/2addr p3, v2

    float-to-int p3, p3

    const/high16 v2, -0x80000000

    if-ne p4, v2, :cond_0

    invoke-virtual {p2}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object p4

    iget v2, p4, Landroid/graphics/Rect;->left:I

    iget p4, p4, Landroid/graphics/Rect;->right:I

    move v7, v2

    move v2, p4

    move p4, v7

    goto :goto_0

    :cond_0
    add-int v2, p4, v0

    :goto_0
    sub-int/2addr p1, p3

    add-int/2addr v1, p1

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object p3

    if-eqz p3, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingTop()I

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/gl;->w:I

    sub-int/2addr v4, v5

    add-int v5, p4, v3

    add-int v6, p1, v4

    add-int/2addr v3, v2

    add-int/2addr v4, v1

    invoke-static {p3, v5, v6, v3, v4}, Landroid/support/v4/c/a/a;->a(Landroid/graphics/drawable/Drawable;IIII)V

    :cond_1
    invoke-virtual {p2, p4, p1, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    div-int/lit8 p2, v0, 0x2

    add-int/2addr p2, p4

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingLeft()I

    move-result p3

    add-int/2addr p2, p3

    iput p2, p0, Landroid/support/v7/widget/gl;->D:I

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingTop()I

    move-result p2

    add-int/2addr p1, p2

    iput p1, p0, Landroid/support/v7/widget/gl;->E:I

    int-to-float p1, p4

    int-to-float p2, v0

    const/high16 p3, 0x40000000    # 2.0f

    div-float/2addr p2, p3

    add-float/2addr p1, p2

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingLeft()I

    move-result p2

    int-to-float p2, p2

    add-float/2addr p1, p2

    iput p1, p0, Landroid/support/v7/widget/gl;->ad:F

    iget p1, p0, Landroid/support/v7/widget/gl;->E:I

    int-to-float p1, p1

    iput p1, p0, Landroid/support/v7/widget/gl;->ae:F

    return-void
.end method

.method private b(Landroid/view/MotionEvent;)V
    .locals 7

    iget v0, p0, Landroid/support/v7/widget/gl;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1}, Landroid/support/v7/widget/gl;->c(Landroid/view/MotionEvent;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingLeft()I

    move-result v2

    sub-int v2, v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingRight()I

    move-result v3

    sub-int/2addr v2, v3

    invoke-static {p0}, Landroid/support/v7/widget/ly;->a(Landroid/view/View;)Z

    move-result v3

    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v5, 0x0

    if-eqz v3, :cond_3

    iget-boolean v3, p0, Landroid/support/v7/widget/gl;->h:Z

    if-eqz v3, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    if-le v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingLeft()I

    move-result v1

    if-ge v0, v1, :cond_2

    goto :goto_2

    :cond_2
    sub-int v1, v2, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingLeft()I

    move-result v3

    add-int/2addr v1, v3

    goto :goto_3

    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingLeft()I

    move-result v3

    if-ge v0, v3, :cond_4

    :goto_0
    const/4 v1, 0x0

    :goto_1
    const/4 v2, 0x0

    goto :goto_4

    :cond_4
    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingRight()I

    move-result v3

    sub-int/2addr v1, v3

    if-le v0, v1, :cond_5

    :goto_2
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_1

    :cond_5
    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingLeft()I

    move-result v1

    sub-int v1, v0, v1

    :goto_3
    int-to-float v1, v1

    int-to-float v2, v2

    div-float/2addr v1, v2

    iget v2, p0, Landroid/support/v7/widget/gl;->a:F

    :goto_4
    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getMax()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getMin()I

    move-result v6

    sub-int/2addr v3, v6

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getMax()I

    move-result v6

    int-to-float v6, v6

    div-float v6, v4, v6

    cmpl-float v5, v1, v5

    if-lez v5, :cond_6

    cmpg-float v4, v1, v4

    if-gez v4, :cond_6

    rem-float v4, v1, v6

    const/high16 v5, 0x40000000    # 2.0f

    div-float v5, v6, v5

    cmpl-float v5, v4, v5

    if-lez v5, :cond_6

    sub-float/2addr v6, v4

    add-float/2addr v1, v6

    :cond_6
    int-to-float v3, v3

    mul-float v1, v1, v3

    add-float/2addr v2, v1

    int-to-float v0, v0

    int-to-float p1, p1

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/gl;->a(FF)V

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v7/widget/gl;->a(IZZ)Z

    return-void
.end method

.method private c(II)V
    .locals 8

    iget v0, p0, Landroid/support/v7/widget/gl;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/gl;->d(II)V

    return-void

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingTop()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingBottom()I

    move-result v0

    sub-int/2addr p2, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/gl;->m:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroid/support/v7/widget/gl;->f:I

    invoke-static {v2, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    if-nez v1, :cond_1

    const/4 v4, 0x0

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v4

    :goto_0
    if-le v4, v2, :cond_2

    sub-int/2addr p2, v4

    div-int/lit8 p2, p2, 0x2

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p2

    move v7, v4

    move v4, p2

    move p2, v7

    goto :goto_1

    :cond_2
    sub-int/2addr p2, v2

    div-int/lit8 p2, p2, 0x2

    sub-int v4, v2, v4

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, p2

    :goto_1
    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingRight()I

    move-result v5

    sub-int v5, p1, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingLeft()I

    move-result v6

    sub-int/2addr v5, v6

    add-int/2addr v2, p2

    invoke-virtual {v0, v3, p2, v5, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    if-eqz v1, :cond_4

    invoke-direct {p0}, Landroid/support/v7/widget/gl;->getScale()F

    move-result p2

    invoke-direct {p0, p1, v1, p2, v4}, Landroid/support/v7/widget/gl;->a(ILandroid/graphics/drawable/Drawable;FI)V

    :cond_4
    invoke-direct {p0}, Landroid/support/v7/widget/gl;->o()V

    return-void
.end method

.method private c(Landroid/view/MotionEvent;)V
    .locals 6

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getHeight()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingTop()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingBottom()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    sub-int p1, v0, p1

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingBottom()I

    move-result v3

    const/4 v4, 0x0

    if-ge p1, v3, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingTop()I

    move-result v3

    sub-int/2addr v0, v3

    if-le p1, v0, :cond_1

    const/high16 v0, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingBottom()I

    move-result v0

    sub-int v0, p1, v0

    int-to-float v0, v0

    int-to-float v1, v1

    div-float v4, v0, v1

    iget v0, p0, Landroid/support/v7/widget/gl;->a:F

    move v5, v4

    move v4, v0

    move v0, v5

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getMax()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    add-float/2addr v4, v0

    int-to-float v0, v2

    int-to-float p1, p1

    invoke-direct {p0, v0, p1}, Landroid/support/v7/widget/gl;->a(FF)V

    float-to-int p1, v4

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/support/v7/widget/gl;->a(IZZ)Z

    return-void
.end method

.method private d(II)V
    .locals 7

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingRight()I

    move-result v0

    sub-int/2addr p1, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iget-object v1, p0, Landroid/support/v7/widget/gl;->m:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Landroid/support/v7/widget/gl;->d:I

    invoke-static {v2, p1}, Ljava/lang/Math;->min(II)I

    move-result v2

    const/4 v3, 0x0

    if-nez v1, :cond_0

    const/4 v4, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v4

    :goto_0
    if-le v4, v2, :cond_1

    sub-int v5, p1, v4

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v2

    div-int/lit8 v4, v4, 0x2

    add-int/2addr v4, v5

    move v2, v5

    goto :goto_1

    :cond_1
    sub-int v5, p1, v2

    div-int/lit8 v5, v5, 0x2

    sub-int/2addr v2, v4

    div-int/lit8 v2, v2, 0x2

    add-int/2addr v2, v5

    move v4, v5

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingBottom()I

    move-result v5

    sub-int v5, p2, v5

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingTop()I

    move-result v6

    sub-int/2addr v5, v6

    sub-int/2addr p1, v4

    invoke-virtual {v0, v4, v3, p1, v5}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    if-eqz v1, :cond_3

    invoke-direct {p0}, Landroid/support/v7/widget/gl;->getScale()F

    move-result p1

    invoke-direct {p0, p2, v1, p1, v2}, Landroid/support/v7/widget/gl;->b(ILandroid/graphics/drawable/Drawable;FI)V

    :cond_3
    return-void
.end method

.method private e(I)V
    .locals 5

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingLeft()I

    move-result v1

    sub-int v1, v0, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingLeft()I

    move-result v2

    const/4 v3, 0x0

    if-ge p1, v2, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingRight()I

    move-result v2

    sub-int/2addr v0, v2

    if-le p1, v0, :cond_1

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingLeft()I

    move-result v0

    sub-int/2addr p1, v0

    int-to-float p1, p1

    int-to-float v0, v1

    div-float v3, p1, v0

    iget p1, p0, Landroid/support/v7/widget/gl;->a:F

    move v4, v3

    move v3, p1

    move p1, v4

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getMax()I

    move-result v0

    int-to-float v0, v0

    mul-float p1, p1, v0

    add-float/2addr v3, p1

    float-to-int p1, v3

    iput p1, p0, Landroid/support/v7/widget/gl;->F:I

    return-void
.end method

.method private f(I)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [[I

    const/4 v2, 0x0

    new-array v3, v2, [I

    aput-object v3, v1, v2

    new-instance v3, Landroid/content/res/ColorStateList;

    new-array v0, v0, [I

    aput p1, v0, v2

    invoke-direct {v3, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method private g(I)V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/gl;->i:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getMax()I

    move-result v0

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget-object p1, p0, Landroid/support/v7/widget/gl;->Q:Landroid/content/res/ColorStateList;

    invoke-direct {p0, p1}, Landroid/support/v7/widget/gl;->setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Landroid/support/v7/widget/gl;->R:Landroid/content/res/ColorStateList;

    invoke-direct {p0, p1}, Landroid/support/v7/widget/gl;->setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_1
    iget-object p1, p0, Landroid/support/v7/widget/gl;->N:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/gl;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Landroid/support/v7/widget/gl;->O:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/gl;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private getDualOverlapDrawable()V
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/gl;->i:I

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/b/f;->sesl_scrubber_progress_horizontal_extra:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/gl;->K:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/b/f;->sesl_scrubber_progress_horizontal_extra:I

    :goto_0
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/gl;->L:Landroid/graphics/drawable/Drawable;

    goto :goto_1

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/gl;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/b/f;->sesl_scrubber_progress_vertical_extra:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/gl;->K:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Landroid/support/v7/b/f;->sesl_scrubber_progress_vertical_extra:I

    goto :goto_0

    :cond_1
    :goto_1
    return-void
.end method

.method private getScale()F
    .locals 3

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getMin()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getMax()I

    move-result v1

    sub-int/2addr v1, v0

    if-lez v1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getProgress()I

    move-result v2

    sub-int/2addr v2, v0

    int-to-float v0, v2

    int-to-float v1, v1

    div-float/2addr v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method private m()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/gl;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/widget/gl;->p:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/gl;->q:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/gl;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/gl;->m:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Landroid/support/v7/widget/gl;->p:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/gl;->m:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/gl;->n:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/c/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/gl;->q:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/gl;->m:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/gl;->o:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/c/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/gl;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/gl;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private n()V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/gl;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/widget/gl;->u:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/support/v7/widget/gl;->v:Z

    if-eqz v0, :cond_3

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/gl;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/gl;->r:Landroid/graphics/drawable/Drawable;

    iget-boolean v0, p0, Landroid/support/v7/widget/gl;->u:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/gl;->r:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/gl;->s:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/c/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/gl;->v:Z

    if-eqz v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/gl;->r:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/gl;->t:Landroid/graphics/PorterDuff$Mode;

    invoke-static {v0, v1}, Landroid/support/v4/c/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/graphics/PorterDuff$Mode;)V

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/gl;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/gl;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_3
    return-void
.end method

.method private o()V
    .locals 9

    iget v0, p0, Landroid/support/v7/widget/gl;->i:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/gl;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v1

    if-eqz v0, :cond_2

    iget-boolean v2, p0, Landroid/support/v7/widget/gl;->h:Z

    if-eqz v2, :cond_1

    invoke-static {p0}, Landroid/support/v7/widget/ly;->a(Landroid/view/View;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/support/v7/widget/gl;->D:I

    iget v3, v1, Landroid/graphics/Rect;->top:I

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getWidth()I

    move-result v4

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingRight()I

    move-result v5

    sub-int/2addr v4, v5

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingLeft()I

    move-result v2

    iget v3, v1, Landroid/graphics/Rect;->top:I

    iget v4, p0, Landroid/support/v7/widget/gl;->D:I

    :goto_0
    iget v1, v1, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v0, v2, v3, v4, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getHeight()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/gl;->H:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_3

    int-to-float v0, v0

    const/high16 v3, 0x40000000    # 2.0f

    div-float/2addr v0, v3

    iget v4, p0, Landroid/support/v7/widget/gl;->j:F

    const/high16 v5, 0x40800000    # 4.0f

    mul-float v4, v4, v5

    div-float/2addr v4, v3

    sub-float v4, v0, v4

    float-to-int v4, v4

    int-to-float v1, v1

    div-float/2addr v1, v3

    iget v6, p0, Landroid/support/v7/widget/gl;->j:F

    const/high16 v7, 0x41b00000    # 22.0f

    mul-float v6, v6, v7

    div-float/2addr v6, v3

    sub-float v6, v1, v6

    float-to-int v6, v6

    iget v8, p0, Landroid/support/v7/widget/gl;->j:F

    mul-float v8, v8, v5

    div-float/2addr v8, v3

    add-float/2addr v0, v8

    float-to-int v0, v0

    iget v5, p0, Landroid/support/v7/widget/gl;->j:F

    mul-float v5, v5, v7

    div-float/2addr v5, v3

    add-float/2addr v1, v5

    float-to-int v1, v1

    invoke-virtual {v2, v4, v6, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    return-void
.end method

.method private p()V
    .locals 2

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    const/4 v1, 0x1

    invoke-interface {v0, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    :cond_0
    return-void
.end method

.method private q()V
    .locals 2

    invoke-direct {p0}, Landroid/support/v7/widget/gl;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/gl;->K:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/gl;->Q:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/c/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Landroid/support/v7/widget/gl;->L:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/gl;->P:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/c/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    iget-boolean v0, p0, Landroid/support/v7/widget/gl;->ab:Z

    if-nez v0, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getProgress()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/gl;->J:I

    if-le v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/gl;->Q:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/gl;->setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Landroid/support/v7/widget/gl;->R:Landroid/content/res/ColorStateList;

    invoke-direct {p0, v0}, Landroid/support/v7/widget/gl;->setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/gl;->N:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/gl;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object v0, p0, Landroid/support/v7/widget/gl;->O:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/gl;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    :cond_2
    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/gl;->r()V

    return-void
.end method

.method private r()V
    .locals 8

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-direct {p0}, Landroid/support/v7/widget/gl;->s()Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getMax()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getProgress()I

    move-result v2

    iget v3, p0, Landroid/support/v7/widget/gl;->i:I

    if-nez v3, :cond_2

    iget v3, v0, Landroid/graphics/Rect;->right:I

    iget v4, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v3, v4

    iget v4, p0, Landroid/support/v7/widget/gl;->J:I

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getProgress()I

    move-result v5

    if-ge v4, v5, :cond_1

    iget-boolean v4, p0, Landroid/support/v7/widget/gl;->ab:Z

    if-nez v4, :cond_1

    iget v4, v0, Landroid/graphics/Rect;->left:I

    goto :goto_0

    :cond_1
    iget v4, v0, Landroid/graphics/Rect;->left:I

    int-to-float v4, v4

    int-to-float v5, v3

    iget v6, p0, Landroid/support/v7/widget/gl;->J:I

    int-to-float v6, v6

    int-to-float v7, v1

    div-float/2addr v6, v7

    mul-float v5, v5, v6

    add-float/2addr v4, v5

    float-to-int v4, v4

    :goto_0
    iget v5, v0, Landroid/graphics/Rect;->left:I

    int-to-float v5, v5

    int-to-float v3, v3

    int-to-float v2, v2

    int-to-float v1, v1

    div-float/2addr v2, v1

    mul-float v3, v3, v2

    add-float/2addr v5, v3

    float-to-int v1, v5

    iget v2, v0, Landroid/graphics/Rect;->right:I

    invoke-static {v1, v2}, Ljava/lang/Math;->min(II)I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/gl;->L:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v5, v0, Landroid/graphics/Rect;->right:I

    iget v6, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v4, v3, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Landroid/support/v7/widget/gl;->K:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Landroid/graphics/Rect;->top:I

    iget v0, v0, Landroid/graphics/Rect;->bottom:I

    invoke-virtual {v2, v4, v3, v1, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_1

    :cond_2
    iget v3, p0, Landroid/support/v7/widget/gl;->i:I

    const/4 v4, 0x3

    if-ne v3, v4, :cond_3

    iget v3, v0, Landroid/graphics/Rect;->bottom:I

    iget v4, v0, Landroid/graphics/Rect;->top:I

    sub-int/2addr v3, v4

    iget v4, v0, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    int-to-float v3, v3

    iget v5, p0, Landroid/support/v7/widget/gl;->J:I

    sub-int v5, v1, v5

    int-to-float v5, v5

    int-to-float v6, v1

    div-float/2addr v5, v6

    mul-float v5, v5, v3

    add-float/2addr v4, v5

    float-to-int v4, v4

    iget v5, v0, Landroid/graphics/Rect;->top:I

    int-to-float v5, v5

    sub-int/2addr v1, v2

    int-to-float v1, v1

    div-float/2addr v1, v6

    mul-float v3, v3, v1

    add-float/2addr v5, v3

    float-to-int v1, v5

    iget-object v2, p0, Landroid/support/v7/widget/gl;->L:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v5, v0, Landroid/graphics/Rect;->top:I

    iget v6, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3, v5, v6, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    iget-object v2, p0, Landroid/support/v7/widget/gl;->K:Landroid/graphics/drawable/Drawable;

    iget v3, v0, Landroid/graphics/Rect;->left:I

    iget v0, v0, Landroid/graphics/Rect;->right:I

    invoke-virtual {v2, v3, v1, v0, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    :cond_3
    :goto_1
    return-void
.end method

.method private s()Z
    .locals 2

    iget v0, p0, Landroid/support/v7/widget/gl;->J:I

    const/4 v1, -0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/gl;->L:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

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

.method private setProgressOverlapTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method private setThumbOverlapTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/gl;->n:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/gl;->p:Z

    invoke-direct {p0}, Landroid/support/v7/widget/gl;->m()V

    return-void
.end method

.method private t()V
    .locals 8

    new-instance v0, Landroid/animation/AnimatorSet;

    invoke-direct {v0}, Landroid/animation/AnimatorSet;-><init>()V

    iput-object v0, p0, Landroid/support/v7/widget/gl;->W:Landroid/animation/AnimatorSet;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    const/16 v2, 0x190

    const/4 v2, 0x0

    const/16 v3, 0x190

    :goto_0
    const/16 v4, 0x8

    if-ge v2, v4, :cond_3

    rem-int/lit8 v4, v2, 0x2

    const/4 v5, 0x1

    if-nez v4, :cond_0

    const/4 v4, 0x1

    goto :goto_1

    :cond_0
    const/4 v4, 0x0

    :goto_1
    const/4 v6, 0x2

    if-eqz v4, :cond_1

    new-array v6, v6, [I

    aput v1, v6, v1

    aput v3, v6, v5

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    goto :goto_2

    :cond_1
    new-array v6, v6, [I

    aput v3, v6, v1

    aput v1, v6, v5

    invoke-static {v6}, Landroid/animation/ValueAnimator;->ofInt([I)Landroid/animation/ValueAnimator;

    move-result-object v5

    :goto_2
    const/16 v6, 0x3e

    int-to-long v6, v6

    invoke-virtual {v5, v6, v7}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    new-instance v6, Landroid/view/animation/LinearInterpolator;

    invoke-direct {v6}, Landroid/view/animation/LinearInterpolator;-><init>()V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    new-instance v6, Landroid/support/v7/widget/gm;

    invoke-direct {v6, p0}, Landroid/support/v7/widget/gm;-><init>(Landroid/support/v7/widget/gl;)V

    invoke-virtual {v5, v6}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    if-eqz v4, :cond_2

    int-to-double v3, v3

    const-wide v5, 0x3fe3333333333333L    # 0.6

    mul-double v3, v3, v5

    double-to-int v3, v3

    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    iget-object v1, p0, Landroid/support/v7/widget/gl;->W:Landroid/animation/AnimatorSet;

    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->playSequentially(Ljava/util/List;)V

    return-void
.end method

.method private u()V
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/gl;->W:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->isRunning()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/gl;->W:Landroid/animation/AnimatorSet;

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->cancel()V

    :cond_0
    return-void
.end method

.method private v()V
    .locals 1

    invoke-direct {p0}, Landroid/support/v7/widget/gl;->u()V

    iget-object v0, p0, Landroid/support/v7/widget/gl;->W:Landroid/animation/AnimatorSet;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/animation/AnimatorSet;->start()V

    :cond_0
    return-void
.end method


# virtual methods
.method a()V
    .locals 1

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/gl;->C:Z

    return-void
.end method

.method a(FZI)V
    .locals 3

    const v0, 0x461c4000    # 10000.0f

    mul-float v0, v0, p1

    float-to-int v0, v0

    iget-boolean v1, p0, Landroid/support/v7/widget/gl;->T:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Landroid/support/v7/widget/gl;->U:Z

    if-nez v1, :cond_0

    iget-boolean v1, p0, Landroid/support/v7/widget/gl;->V:Z

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    iget v1, p0, Landroid/support/v7/widget/gl;->aa:I

    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    invoke-direct {p0}, Landroid/support/v7/widget/gl;->v()V

    goto :goto_1

    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/gl;->u()V

    iput-boolean v2, p0, Landroid/support/v7/widget/gl;->U:Z

    iput v0, p0, Landroid/support/v7/widget/gl;->aa:I

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslProgressBar;->a(FZI)V

    iget-object p2, p0, Landroid/support/v7/widget/gl;->m:Landroid/graphics/drawable/Drawable;

    if-eqz p2, :cond_2

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getWidth()I

    move-result p3

    const/high16 v0, -0x80000000

    invoke-direct {p0, p3, p2, p1, v0}, Landroid/support/v7/widget/gl;->a(ILandroid/graphics/drawable/Drawable;FI)V

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->invalidate()V

    :cond_2
    :goto_1
    return-void
.end method

.method protected a(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->a(I)V

    int-to-float p1, p1

    const v0, 0x461c4000    # 10000.0f

    div-float/2addr p1, v0

    iget-object v0, p0, Landroid/support/v7/widget/gl;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getWidth()I

    move-result v1

    const/high16 v2, -0x80000000

    invoke-direct {p0, v1, v0, p1, v2}, Landroid/support/v7/widget/gl;->a(ILandroid/graphics/drawable/Drawable;FI)V

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->invalidate()V

    :cond_0
    return-void
.end method

.method a(IF)V
    .locals 2

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/SeslProgressBar;->a(IF)V

    sget v0, Landroid/support/v7/b/g;->progress:I

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Landroid/support/v7/widget/gl;->m:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getWidth()I

    move-result v0

    const/high16 v1, -0x80000000

    invoke-direct {p0, v0, p1, p2, v1}, Landroid/support/v7/widget/gl;->a(ILandroid/graphics/drawable/Drawable;FI)V

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->invalidate()V

    :cond_0
    return-void
.end method

.method protected a(II)V
    .locals 0

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/SeslProgressBar;->a(II)V

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/gl;->c(II)V

    invoke-direct {p0}, Landroid/support/v7/widget/gl;->r()V

    return-void
.end method

.method a(III)V
    .locals 0

    return-void
.end method

.method a(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/gl;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    iget-boolean v1, p0, Landroid/support/v7/widget/gl;->x:Z

    if-eqz v1, :cond_0

    invoke-static {v0}, Landroid/support/v7/widget/ch;->a(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v1

    iget-object v2, p0, Landroid/support/v7/widget/gl;->l:Landroid/graphics/Rect;

    invoke-virtual {v0, v2}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingLeft()I

    move-result v0

    iget v3, p0, Landroid/support/v7/widget/gl;->w:I

    sub-int/2addr v0, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingTop()I

    move-result v3

    invoke-virtual {v2, v0, v3}, Landroid/graphics/Rect;->offset(II)V

    iget v0, v2, Landroid/graphics/Rect;->left:I

    iget v3, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v0, v3

    iput v0, v2, Landroid/graphics/Rect;->left:I

    iget v0, v2, Landroid/graphics/Rect;->right:I

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v0, v1

    iput v0, v2, Landroid/graphics/Rect;->right:I

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    sget-object v1, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v2, v1}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->a(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/gl;->b(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->a(Landroid/graphics/Canvas;)V

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/gl;->b(Landroid/graphics/Canvas;)V

    :goto_0
    invoke-direct {p0}, Landroid/support/v7/widget/gl;->s()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    iget v0, p0, Landroid/support/v7/widget/gl;->i:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_2

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingLeft()I

    move-result v0

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    goto :goto_1

    :cond_2
    iget-boolean v0, p0, Landroid/support/v7/widget/gl;->h:Z

    if-eqz v0, :cond_1

    invoke-static {p0}, Landroid/support/v7/widget/ly;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    int-to-float v0, v0

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingTop()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->translate(FF)V

    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Canvas;->scale(FF)V

    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/gl;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getProgress()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/gl;->J:I

    if-le v0, v1, :cond_3

    iget-object v0, p0, Landroid/support/v7/widget/gl;->K:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_3
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    :cond_4
    return-void
.end method

.method public a(IZZ)Z
    .locals 0

    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/SeslProgressBar;->a(IZZ)Z

    move-result p2

    invoke-direct {p0, p1}, Landroid/support/v7/widget/gl;->g(I)V

    invoke-direct {p0}, Landroid/support/v7/widget/gl;->q()V

    return p2
.end method

.method b()V
    .locals 1

    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/support/v7/widget/gl;->C:Z

    return-void
.end method

.method public b(II)V
    .locals 1

    sget-boolean v0, Landroid/support/v7/widget/gl;->k:Z

    if-eqz v0, :cond_0

    invoke-static {p0, p1, p2}, Landroid/support/v4/widget/az;->b(Ljava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method b(III)V
    .locals 0

    return-void
.end method

.method protected b(Landroid/graphics/Canvas;)V
    .locals 6

    iget-object v0, p0, Landroid/support/v7/widget/gl;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x1

    if-le v0, v1, :cond_3

    iget-object v2, p0, Landroid/support/v7/widget/gl;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Landroid/support/v7/widget/gl;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    if-ltz v2, :cond_0

    div-int/lit8 v2, v2, 0x2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    :goto_0
    if-ltz v3, :cond_1

    div-int/lit8 v1, v3, 0x2

    :cond_1
    iget-object v3, p0, Landroid/support/v7/widget/gl;->r:Landroid/graphics/drawable/Drawable;

    neg-int v4, v2

    neg-int v5, v1

    invoke-virtual {v3, v4, v5, v2, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getWidth()I

    move-result v1

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingLeft()I

    move-result v2

    sub-int/2addr v1, v2

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingRight()I

    move-result v2

    sub-int/2addr v1, v2

    int-to-float v1, v1

    int-to-float v2, v0

    div-float/2addr v1, v2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v2

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingLeft()I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getHeight()I

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x40000000    # 2.0f

    div-float/2addr v4, v5

    invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->translate(FF)V

    const/4 v3, 0x0

    :goto_1
    if-gt v3, v0, :cond_2

    iget-object v4, p0, Landroid/support/v7/widget/gl;->r:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    const/4 v4, 0x0

    invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->translate(FF)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    :cond_2
    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_3
    return-void
.end method

.method public b(I)Z
    .locals 1

    sget-boolean v0, Landroid/support/v7/widget/gl;->k:Z

    if-eqz v0, :cond_0

    invoke-static {}, Landroid/support/v4/widget/az;->c()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method c()V
    .locals 0

    return-void
.end method

.method c(Landroid/graphics/Canvas;)V
    .locals 4

    iget-object v0, p0, Landroid/support/v7/widget/gl;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/gl;->i:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingLeft()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingTop()I

    move-result v2

    iget v3, p0, Landroid/support/v7/widget/gl;->w:I

    sub-int/2addr v2, v3

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingLeft()I

    move-result v1

    iget v2, p0, Landroid/support/v7/widget/gl;->w:I

    sub-int/2addr v1, v2

    int-to-float v1, v1

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingTop()I

    move-result v2

    :goto_0
    int-to-float v2, v2

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V

    iget-object v1, p0, Landroid/support/v7/widget/gl;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    :cond_1
    return-void
.end method

.method d()Z
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->j()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/SeslProgressBar;->drawableHotspotChanged(FF)V

    iget-object v0, p0, Landroid/support/v7/widget/gl;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-static {v0, p1, p2}, Landroid/support/v4/c/a/a;->a(Landroid/graphics/drawable/Drawable;FF)V

    :cond_0
    return-void
.end method

.method protected drawableStateChanged()V
    .locals 3

    invoke-super {p0}, Landroid/support/v7/widget/SeslProgressBar;->drawableStateChanged()V

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getProgressDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_1

    iget v1, p0, Landroid/support/v7/widget/gl;->z:F

    const/high16 v2, 0x3f800000    # 1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->isEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    const/16 v1, 0xff

    goto :goto_0

    :cond_0
    const/high16 v1, 0x437f0000    # 255.0f

    iget v2, p0, Landroid/support/v7/widget/gl;->z:F

    mul-float v2, v2, v1

    float-to-int v1, v2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Landroid/support/v7/widget/gl;->K:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/gl;->L:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    iget-object v0, p0, Landroid/support/v7/widget/gl;->L:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V

    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/gl;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Landroid/support/v7/widget/gl;->p:Z

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    iget-object v0, p0, Landroid/support/v7/widget/gl;->m:Landroid/graphics/drawable/Drawable;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Landroid/support/v4/c/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    goto :goto_1

    :cond_2
    iget-object v0, p0, Landroid/support/v7/widget/gl;->m:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Landroid/support/v7/widget/gl;->O:Landroid/content/res/ColorStateList;

    invoke-static {v0, v1}, Landroid/support/v4/c/a/a;->a(Landroid/graphics/drawable/Drawable;Landroid/content/res/ColorStateList;)V

    invoke-direct {p0}, Landroid/support/v7/widget/gl;->q()V

    :cond_3
    :goto_1
    iget-object v0, p0, Landroid/support/v7/widget/gl;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/gl;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_4
    iget-object v0, p0, Landroid/support/v7/widget/gl;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getDrawableState()[I

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/gl;->invalidateDrawable(Landroid/graphics/drawable/Drawable;)V

    :cond_5
    return-void
.end method

.method e()V
    .locals 0

    return-void
.end method

.method public f()Z
    .locals 1

    sget-boolean v0, Landroid/support/v7/widget/gl;->k:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/view/aw;->h(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public g()V
    .locals 2

    sget-boolean v0, Landroid/support/v7/widget/gl;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/support/v4/view/aw;->b(Landroid/view/View;Z)Ljava/lang/Object;

    move-result-object v0

    const/16 v1, 0xc8

    invoke-static {v0, v1}, Landroid/support/v4/widget/az;->b(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public getAccessibilityClassName()Ljava/lang/CharSequence;
    .locals 3

    new-instance v0, Ljava/lang/Throwable;

    const-string v1, "stack dump"

    invoke-direct {v0, v1}, Ljava/lang/Throwable;-><init>(Ljava/lang/String;)V

    const-string v1, "qweqweqwe"

    const-string v2, "Stack:"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    const-class v0, Landroid/widget/AbsSeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getHoverPopupType()I
    .locals 1

    sget-boolean v0, Landroid/support/v7/widget/gl;->k:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/view/aw;->g(Landroid/view/View;)I

    move-result v0

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getKeyProgressIncrement()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/gl;->y:I

    return v0
.end method

.method public getSplitTrack()Z
    .locals 1

    iget-boolean v0, p0, Landroid/support/v7/widget/gl;->x:Z

    return v0
.end method

.method public getThumb()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/gl;->m:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getThumbBounds()Landroid/graphics/Rect;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/gl;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method

.method public getThumbHeight()I
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/gl;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    return v0
.end method

.method public getThumbOffset()I
    .locals 1

    iget v0, p0, Landroid/support/v7/widget/gl;->w:I

    return v0
.end method

.method public getThumbTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/gl;->n:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getThumbTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/gl;->o:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public getTickMark()Landroid/graphics/drawable/Drawable;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/gl;->r:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getTickMarkTintList()Landroid/content/res/ColorStateList;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/gl;->s:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getTickMarkTintMode()Landroid/graphics/PorterDuff$Mode;
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/gl;->t:Landroid/graphics/PorterDuff$Mode;

    return-object v0
.end method

.method public h()V
    .locals 1

    sget-boolean v0, Landroid/support/v7/widget/gl;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/support/v4/view/aw;->b(Landroid/view/View;Z)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/widget/az;->a(Ljava/lang/Object;)V

    :cond_0
    return-void
.end method

.method public i()Z
    .locals 1

    sget-boolean v0, Landroid/support/v7/widget/gl;->k:Z

    if-eqz v0, :cond_0

    invoke-static {p0}, Landroid/support/v4/view/aw;->c(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    invoke-super {p0}, Landroid/support/v7/widget/SeslProgressBar;->jumpDrawablesToCurrentState()V

    iget-object v0, p0, Landroid/support/v7/widget/gl;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/gl;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    :cond_1
    return-void
.end method

.method protected declared-synchronized onDraw(Landroid/graphics/Canvas;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->onDraw(Landroid/graphics/Canvas;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->f()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getHoverPopupType()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/gl;->b(I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v7/widget/gl;->af:I

    if-eq v1, v0, :cond_0

    iput v0, p0, Landroid/support/v7/widget/gl;->af:I

    const/16 v0, 0x3231

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/gl;->setHoverPopupGravity(I)V

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getMeasuredHeight()I

    move-result v0

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/gl;->setHoverPopupOffset(I)V

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->g()V

    :cond_0
    iget v0, p0, Landroid/support/v7/widget/gl;->i:I

    const/4 v1, 0x4

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/gl;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    iget-object v0, p0, Landroid/support/v7/widget/gl;->H:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_1
    iget-boolean v0, p0, Landroid/support/v7/widget/gl;->ac:Z

    if-nez v0, :cond_2

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/gl;->c(Landroid/graphics/Canvas;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 4

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->f()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v2

    float-to-int v2, v2

    const/4 v3, 0x7

    if-eq v0, v3, :cond_2

    const/16 v3, 0x9

    if-eq v0, v3, :cond_1

    const/16 v1, 0xa

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->e()V

    goto :goto_0

    :cond_1
    invoke-direct {p0, v1}, Landroid/support/v7/widget/gl;->e(I)V

    iget v0, p0, Landroid/support/v7/widget/gl;->F:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/widget/gl;->a(III)V

    goto :goto_0

    :cond_2
    invoke-direct {p0, v1}, Landroid/support/v7/widget/gl;->e(I)V

    iget v0, p0, Landroid/support/v7/widget/gl;->F:I

    invoke-virtual {p0, v0, v1, v2}, Landroid/support/v7/widget/gl;->b(III)V

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getHoverPopupType()I

    move-result v0

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/gl;->b(I)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawX()F

    move-result v0

    float-to-int v0, v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getRawY()F

    move-result v1

    float-to-int v1, v1

    invoke-virtual {p0, v0, v1}, Landroid/support/v7/widget/gl;->b(II)V

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->h()V

    :cond_3
    :goto_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-class v0, Landroid/widget/SeekBar;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getProgress()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getMin()I

    move-result v1

    if-le v0, v1, :cond_0

    invoke-static {p1}, Landroid/support/v4/view/a/b;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/support/v4/view/a/b;

    move-result-object v1

    const/16 v2, 0x2000

    invoke-virtual {v1, v2}, Landroid/support/v4/view/a/b;->a(I)V

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getMax()I

    move-result v1

    if-ge v0, v1, :cond_1

    invoke-static {p1}, Landroid/support/v4/view/a/b;->a(Landroid/view/accessibility/AccessibilityNodeInfo;)Landroid/support/v4/view/a/b;

    move-result-object p1

    const/16 v0, 0x1000

    invoke-virtual {p1, v0}, Landroid/support/v4/view/a/b;->a(I)V

    :cond_1
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 7

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_7

    iget v0, p0, Landroid/support/v7/widget/gl;->y:I

    iget v1, p0, Landroid/support/v7/widget/gl;->i:I

    const/4 v2, 0x3

    const/16 v3, 0x51

    const/16 v4, 0x46

    const/16 v5, 0x45

    const/4 v6, 0x1

    if-ne v1, v2, :cond_3

    const/16 v1, 0x13

    if-eq p1, v1, :cond_1

    const/16 v1, 0x14

    if-eq p1, v1, :cond_0

    if-eq p1, v5, :cond_0

    if-eq p1, v4, :cond_1

    if-eq p1, v3, :cond_1

    goto :goto_0

    :cond_0
    neg-int v0, v0

    :cond_1
    invoke-static {p0}, Landroid/support/v7/widget/ly;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    neg-int v0, v0

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getProgress()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v6, v6}, Landroid/support/v7/widget/gl;->a(IZZ)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->c()V

    return v6

    :cond_3
    const/16 v1, 0x15

    if-eq p1, v1, :cond_4

    const/16 v1, 0x16

    if-eq p1, v1, :cond_5

    if-eq p1, v5, :cond_4

    if-eq p1, v4, :cond_5

    if-eq p1, v3, :cond_5

    goto :goto_0

    :cond_4
    neg-int v0, v0

    :cond_5
    invoke-static {p0}, Landroid/support/v7/widget/ly;->a(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_6

    neg-int v0, v0

    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getProgress()I

    move-result v1

    add-int/2addr v1, v0

    invoke-virtual {p0, v1, v6, v6}, Landroid/support/v7/widget/gl;->a(IZZ)Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->c()V

    return v6

    :cond_7
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/SeslProgressBar;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result p1

    return p1
.end method

.method protected declared-synchronized onMeasure(II)V
    .locals 6

    monitor-enter p0

    :try_start_0
    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    iget v2, p0, Landroid/support/v7/widget/gl;->i:I

    const/4 v3, 0x3

    if-ne v2, v3, :cond_1

    iget-object v2, p0, Landroid/support/v7/widget/gl;->m:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Landroid/support/v7/widget/gl;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    :goto_0
    iget v3, p0, Landroid/support/v7/widget/gl;->c:I

    iget v4, p0, Landroid/support/v7/widget/gl;->d:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/gl;->e:I

    iget v5, p0, Landroid/support/v7/widget/gl;->f:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v2

    goto :goto_2

    :cond_1
    iget-object v2, p0, Landroid/support/v7/widget/gl;->m:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_2

    const/4 v2, 0x0

    goto :goto_1

    :cond_2
    iget-object v2, p0, Landroid/support/v7/widget/gl;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    :goto_1
    iget v3, p0, Landroid/support/v7/widget/gl;->c:I

    iget v4, p0, Landroid/support/v7/widget/gl;->d:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->min(II)I

    move-result v4

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/gl;->e:I

    iget v5, p0, Landroid/support/v7/widget/gl;->f:I

    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    invoke-static {v5, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-static {v4, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    invoke-static {v2, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    move v2, v3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    const/4 v2, 0x0

    :goto_2
    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingLeft()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingRight()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v2, v3

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingTop()I

    move-result v3

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getPaddingBottom()I

    move-result v4

    add-int/2addr v3, v4

    add-int/2addr v0, v3

    invoke-static {v2, p1, v1}, Landroid/support/v7/widget/gl;->resolveSizeAndState(III)I

    move-result p1

    invoke-static {v0, p2, v1}, Landroid/support/v7/widget/gl;->resolveSizeAndState(III)I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroid/support/v7/widget/gl;->setMeasuredDimension(II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 3

    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->onRtlPropertiesChanged(I)V

    iget-object p1, p0, Landroid/support/v7/widget/gl;->m:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getWidth()I

    move-result v0

    invoke-direct {p0}, Landroid/support/v7/widget/gl;->getScale()F

    move-result v1

    const/high16 v2, -0x80000000

    invoke-direct {p0, v0, p1, v1, v2}, Landroid/support/v7/widget/gl;->a(ILandroid/graphics/drawable/Drawable;FI)V

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->invalidate()V

    :cond_0
    return-void
.end method

.method protected onSizeChanged(IIII)V
    .locals 0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/support/v7/widget/SeslProgressBar;->onSizeChanged(IIII)V

    invoke-direct {p0, p1, p2}, Landroid/support/v7/widget/gl;->c(II)V

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5

    iget-boolean v0, p0, Landroid/support/v7/widget/gl;->b:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_c

    iget-boolean v0, p0, Landroid/support/v7/widget/gl;->ac:Z

    if-nez v0, :cond_c

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->isEnabled()Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_4

    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_9

    if-eq v0, v2, :cond_6

    const/4 v3, 0x2

    const/4 v4, 0x3

    if-eq v0, v3, :cond_3

    if-eq v0, v4, :cond_1

    goto/16 :goto_3

    :cond_1
    iput-boolean v1, p0, Landroid/support/v7/widget/gl;->V:Z

    iget-boolean p1, p0, Landroid/support/v7/widget/gl;->C:Z

    if-eqz p1, :cond_2

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->b()V

    invoke-virtual {p0, v1}, Landroid/support/v7/widget/gl;->setPressed(Z)V

    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->invalidate()V

    goto :goto_3

    :cond_3
    iput-boolean v2, p0, Landroid/support/v7/widget/gl;->V:Z

    iget-boolean v0, p0, Landroid/support/v7/widget/gl;->C:Z

    if-eqz v0, :cond_4

    invoke-direct {p0, p1}, Landroid/support/v7/widget/gl;->b(Landroid/view/MotionEvent;)V

    goto :goto_3

    :cond_4
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    iget v3, p0, Landroid/support/v7/widget/gl;->i:I

    if-eq v3, v4, :cond_5

    iget v3, p0, Landroid/support/v7/widget/gl;->B:F

    sub-float/2addr v0, v3

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v3, p0, Landroid/support/v7/widget/gl;->A:I

    int-to-float v3, v3

    cmpl-float v0, v0, v3

    if-gtz v0, :cond_a

    :cond_5
    iget v0, p0, Landroid/support/v7/widget/gl;->i:I

    if-ne v0, v4, :cond_b

    iget v0, p0, Landroid/support/v7/widget/gl;->I:F

    sub-float/2addr v1, v0

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/gl;->A:I

    int-to-float v1, v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_b

    goto :goto_2

    :cond_6
    iget-boolean v0, p0, Landroid/support/v7/widget/gl;->V:Z

    if-eqz v0, :cond_7

    iput-boolean v1, p0, Landroid/support/v7/widget/gl;->V:Z

    :cond_7
    iget-boolean v0, p0, Landroid/support/v7/widget/gl;->C:Z

    if-eqz v0, :cond_8

    invoke-direct {p0, p1}, Landroid/support/v7/widget/gl;->b(Landroid/view/MotionEvent;)V

    goto :goto_0

    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->a()V

    invoke-direct {p0, p1}, Landroid/support/v7/widget/gl;->b(Landroid/view/MotionEvent;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->b()V

    goto :goto_1

    :cond_9
    iput-boolean v1, p0, Landroid/support/v7/widget/gl;->V:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->i()Z

    move-result v0

    if-eqz v0, :cond_a

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Landroid/support/v7/widget/gl;->B:F

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/gl;->I:F

    goto :goto_3

    :cond_a
    :goto_2
    invoke-direct {p0, p1}, Landroid/support/v7/widget/gl;->a(Landroid/view/MotionEvent;)V

    :cond_b
    :goto_3
    return v2

    :cond_c
    :goto_4
    return v1
.end method

.method public performAccessibilityAction(ILandroid/os/Bundle;)Z
    .locals 4

    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/SeslProgressBar;->performAccessibilityAction(ILandroid/os/Bundle;)Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->isEnabled()Z

    move-result v0

    const/4 v2, 0x0

    if-nez v0, :cond_1

    return v2

    :cond_1
    const/16 v0, 0x1000

    const/16 v3, 0x2000

    if-eq p1, v0, :cond_6

    if-eq p1, v3, :cond_6

    const v0, 0x102003d

    if-eq p1, v0, :cond_2

    return v2

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->d()Z

    move-result p1

    if-nez p1, :cond_3

    return v2

    :cond_3
    if-eqz p2, :cond_5

    const-string p1, "android.view.accessibility.action.ARGUMENT_PROGRESS_VALUE"

    invoke-virtual {p2, p1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_0

    :cond_4
    invoke-virtual {p2, p1}, Landroid/os/Bundle;->getFloat(Ljava/lang/String;)F

    move-result p1

    float-to-int p1, p1

    invoke-virtual {p0, p1, v1, v1}, Landroid/support/v7/widget/gl;->a(IZZ)Z

    move-result p1

    return p1

    :cond_5
    :goto_0
    return v2

    :cond_6
    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->d()Z

    move-result p2

    if-nez p2, :cond_7

    return v2

    :cond_7
    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getMax()I

    move-result p2

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getMin()I

    move-result v0

    sub-int/2addr p2, v0

    int-to-float p2, p2

    const/high16 v0, 0x41a00000    # 20.0f

    div-float/2addr p2, v0

    invoke-static {p2}, Ljava/lang/Math;->round(F)I

    move-result p2

    invoke-static {v1, p2}, Ljava/lang/Math;->max(II)I

    move-result p2

    if-ne p1, v3, :cond_8

    neg-int p2, p2

    :cond_8
    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getProgress()I

    move-result p1

    add-int/2addr p1, p2

    invoke-virtual {p0, p1, v1, v1}, Landroid/support/v7/widget/gl;->a(IZZ)Z

    move-result p1

    if-eqz p1, :cond_9

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->c()V

    return v1

    :cond_9
    return v2
.end method

.method public setHoverPopupGravity(I)V
    .locals 1

    sget-boolean v0, Landroid/support/v7/widget/gl;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/support/v4/view/aw;->b(Landroid/view/View;Z)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p1}, Landroid/support/v4/widget/az;->a(Ljava/lang/Object;I)V

    :cond_0
    return-void
.end method

.method public setHoverPopupOffset(I)V
    .locals 2

    sget-boolean v0, Landroid/support/v7/widget/gl;->k:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    invoke-static {p0, v0}, Landroid/support/v4/view/aw;->b(Landroid/view/View;Z)Ljava/lang/Object;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1, p1}, Landroid/support/v4/widget/az;->a(Ljava/lang/Object;II)V

    :cond_0
    return-void
.end method

.method public setKeyProgressIncrement(I)V
    .locals 0

    if-gez p1, :cond_0

    neg-int p1, p1

    :cond_0
    iput p1, p0, Landroid/support/v7/widget/gl;->y:I

    return-void
.end method

.method public declared-synchronized setMax(I)V
    .locals 3

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->setMax(I)V

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/gl;->U:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getMax()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getMin()I

    move-result v1

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/support/v7/widget/gl;->y:I

    if-eqz v1, :cond_0

    iget v1, p0, Landroid/support/v7/widget/gl;->y:I

    div-int v1, v0, v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    :cond_0
    int-to-float v0, v0

    const/high16 v1, 0x41a00000    # 20.0f

    div-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/gl;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public declared-synchronized setMin(I)V
    .locals 2

    monitor-enter p0

    :try_start_0
    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->setMin(I)V

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getMax()I

    move-result p1

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getMin()I

    move-result v0

    sub-int/2addr p1, v0

    iget v0, p0, Landroid/support/v7/widget/gl;->y:I

    if-eqz v0, :cond_0

    iget v0, p0, Landroid/support/v7/widget/gl;->y:I

    div-int v0, p1, v0

    const/16 v1, 0x14

    if-le v0, v1, :cond_1

    :cond_0
    const/4 v0, 0x1

    int-to-float p1, p1

    const/high16 v1, 0x41a00000    # 20.0f

    div-float/2addr p1, v1

    invoke-static {p1}, Ljava/lang/Math;->round(F)I

    move-result p1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/gl;->setKeyProgressIncrement(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public setMode(I)V
    .locals 1

    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->setMode(I)V

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_1

    const/4 v0, 0x4

    if-eq p1, v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroid/support/v7/b/f;->sesl_split_seekbar_primary_progress:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/gl;->G:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroid/support/v7/b/f;->sesl_split_seekbar_vertical_bar:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/gl;->H:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/support/v7/widget/gl;->o()V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v0, Landroid/support/v7/b/f;->sesl_scrubber_control_anim:I

    invoke-virtual {p1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/gl;->setThumb(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getProgress()I

    move-result p1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/gl;->g(I)V

    goto :goto_0

    :cond_3
    iget-object p1, p0, Landroid/support/v7/widget/gl;->N:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/gl;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Landroid/support/v7/widget/gl;->O:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/gl;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->invalidate()V

    return-void
.end method

.method public setOverlapPointForDualColor(I)V
    .locals 1

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getMax()I

    move-result v0

    if-lt p1, v0, :cond_0

    return-void

    :cond_0
    const/4 v0, -0x1

    if-ne p1, v0, :cond_1

    iput p1, p0, Landroid/support/v7/widget/gl;->J:I

    iget-object p1, p0, Landroid/support/v7/widget/gl;->N:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/gl;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iget-object p1, p0, Landroid/support/v7/widget/gl;->O:Landroid/content/res/ColorStateList;

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/gl;->setThumbTintList(Landroid/content/res/ColorStateList;)V

    goto :goto_0

    :cond_1
    iput p1, p0, Landroid/support/v7/widget/gl;->J:I

    invoke-direct {p0}, Landroid/support/v7/widget/gl;->getDualOverlapDrawable()V

    invoke-direct {p0}, Landroid/support/v7/widget/gl;->q()V

    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->invalidate()V

    return-void
.end method

.method public setProgressDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->setProgressDrawable(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setProgressTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->setProgressTintList(Landroid/content/res/ColorStateList;)V

    iput-object p1, p0, Landroid/support/v7/widget/gl;->N:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setSplitTrack(Z)V
    .locals 0

    iput-boolean p1, p0, Landroid/support/v7/widget/gl;->x:Z

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->invalidate()V

    return-void
.end method

.method public setThumb(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    iget-object v0, p0, Landroid/support/v7/widget/gl;->m:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    if-eq p1, v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz p1, :cond_4

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->canResolveLayoutDirection()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-static {p0}, Landroid/support/v4/view/be;->e(Landroid/view/View;)I

    move-result v1

    invoke-static {p1, v1}, Landroid/support/v4/c/a/a;->b(Landroid/graphics/drawable/Drawable;I)Z

    :cond_1
    iget v1, p0, Landroid/support/v7/widget/gl;->i:I

    const/4 v2, 0x3

    if-ne v1, v2, :cond_2

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    :goto_1
    div-int/lit8 v1, v1, 0x2

    iput v1, p0, Landroid/support/v7/widget/gl;->w:I

    if-eqz v0, :cond_4

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/gl;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    if-ne v1, v2, :cond_3

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v1

    iget-object v2, p0, Landroid/support/v7/widget/gl;->m:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    if-eq v1, v2, :cond_4

    :cond_3
    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->requestLayout()V

    :cond_4
    iput-object p1, p0, Landroid/support/v7/widget/gl;->m:Landroid/graphics/drawable/Drawable;

    invoke-direct {p0}, Landroid/support/v7/widget/gl;->m()V

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->invalidate()V

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getHeight()I

    move-result v1

    invoke-direct {p0, v0, v1}, Landroid/support/v7/widget/gl;->c(II)V

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_5
    return-void
.end method

.method public setThumbOffset(I)V
    .locals 0

    iput p1, p0, Landroid/support/v7/widget/gl;->w:I

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->invalidate()V

    return-void
.end method

.method public setThumbTintColor(I)V
    .locals 1

    invoke-direct {p0, p1}, Landroid/support/v7/widget/gl;->f(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iget-object v0, p0, Landroid/support/v7/widget/gl;->O:Landroid/content/res/ColorStateList;

    invoke-virtual {p1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    iput-object p1, p0, Landroid/support/v7/widget/gl;->O:Landroid/content/res/ColorStateList;

    :cond_0
    return-void
.end method

.method public setThumbTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    iput-object p1, p0, Landroid/support/v7/widget/gl;->n:Landroid/content/res/ColorStateList;

    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/support/v7/widget/gl;->p:Z

    invoke-direct {p0}, Landroid/support/v7/widget/gl;->m()V

    iput-object p1, p0, Landroid/support/v7/widget/gl;->O:Landroid/content/res/ColorStateList;

    return-void
.end method

.method public setThumbTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/gl;->o:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/gl;->q:Z

    invoke-direct {p0}, Landroid/support/v7/widget/gl;->m()V

    return-void
.end method

.method public setTickMark(Landroid/graphics/drawable/Drawable;)V
    .locals 2

    iget-object v0, p0, Landroid/support/v7/widget/gl;->r:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    iput-object p1, p0, Landroid/support/v7/widget/gl;->r:Landroid/graphics/drawable/Drawable;

    if-eqz p1, :cond_2

    invoke-virtual {p1, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    invoke-static {p0}, Landroid/support/v4/view/be;->e(Landroid/view/View;)I

    move-result v0

    invoke-static {p1, v0}, Landroid/support/v4/c/a/a;->b(Landroid/graphics/drawable/Drawable;I)Z

    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->getDrawableState()[I

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_1
    invoke-direct {p0}, Landroid/support/v7/widget/gl;->n()V

    :cond_2
    invoke-virtual {p0}, Landroid/support/v7/widget/gl;->invalidate()V

    return-void
.end method

.method public setTickMarkTintList(Landroid/content/res/ColorStateList;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/gl;->s:Landroid/content/res/ColorStateList;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/gl;->u:Z

    invoke-direct {p0}, Landroid/support/v7/widget/gl;->n()V

    return-void
.end method

.method public setTickMarkTintMode(Landroid/graphics/PorterDuff$Mode;)V
    .locals 0

    iput-object p1, p0, Landroid/support/v7/widget/gl;->t:Landroid/graphics/PorterDuff$Mode;

    const/4 p1, 0x1

    iput-boolean p1, p0, Landroid/support/v7/widget/gl;->v:Z

    invoke-direct {p0}, Landroid/support/v7/widget/gl;->n()V

    return-void
.end method

.method protected verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    iget-object v0, p0, Landroid/support/v7/widget/gl;->m:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/gl;->r:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    invoke-super {p0, p1}, Landroid/support/v7/widget/SeslProgressBar;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method
