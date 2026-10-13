.class public Landroid/support/v7/widget/SwitchCompat;
.super Landroid/widget/CompoundButton;
.source "PG"


# static fields
.field public static final l0:Landroid/util/Property;

.field public static final m0:[I


# instance fields
.field public A:Z

.field public B:Landroid/graphics/drawable/Drawable;

.field public C:Landroid/content/res/ColorStateList;

.field public D:Landroid/graphics/PorterDuff$Mode;

.field public E:Z

.field public F:Z

.field public G:I

.field public H:I

.field public I:I

.field public J:Z

.field public K:Ljava/lang/CharSequence;

.field public L:Ljava/lang/CharSequence;

.field public M:Z

.field public N:I

.field public O:I

.field public P:F

.field public Q:F

.field public R:Landroid/view/VelocityTracker;

.field public S:I

.field public T:F

.field public U:I

.field public V:I

.field public W:I

.field public a0:I

.field public b0:I

.field public c0:I

.field public d0:I

.field public final e0:Landroid/text/TextPaint;

.field public f0:Landroid/content/res/ColorStateList;

.field public g0:Landroid/text/Layout;

.field public h0:Landroid/text/Layout;

.field public i0:Landroid/text/method/TransformationMethod;

.field public j0:Landroid/animation/ObjectAnimator;

.field public final k0:Landroid/graphics/Rect;

.field public w:Landroid/graphics/drawable/Drawable;

.field public x:Landroid/content/res/ColorStateList;

.field public y:Landroid/graphics/PorterDuff$Mode;

.field public z:Z


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, LIh;

    const-class v1, Ljava/lang/Float;

    const-string v2, "thumbPos"

    invoke-direct {v0, v1, v2}, LIh;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    sput-object v0, Landroid/support/v7/widget/SwitchCompat;->l0:Landroid/util/Property;

    const/4 v0, 0x1

    new-array v0, v0, [I

    const/4 v1, 0x0

    const v2, 0x10100a0

    aput v2, v0, v1

    .line 2
    sput-object v0, Landroid/support/v7/widget/SwitchCompat;->m0:[I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 10

    const v0, 0x7f040215

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/CompoundButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->x:Landroid/content/res/ColorStateList;

    .line 3
    iput-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->y:Landroid/graphics/PorterDuff$Mode;

    const/4 v2, 0x0

    .line 4
    iput-boolean v2, p0, Landroid/support/v7/widget/SwitchCompat;->z:Z

    .line 5
    iput-boolean v2, p0, Landroid/support/v7/widget/SwitchCompat;->A:Z

    .line 6
    iput-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->C:Landroid/content/res/ColorStateList;

    .line 7
    iput-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->D:Landroid/graphics/PorterDuff$Mode;

    .line 8
    iput-boolean v2, p0, Landroid/support/v7/widget/SwitchCompat;->E:Z

    .line 9
    iput-boolean v2, p0, Landroid/support/v7/widget/SwitchCompat;->F:Z

    .line 10
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->R:Landroid/view/VelocityTracker;

    .line 11
    new-instance v3, Landroid/graphics/Rect;

    invoke-direct {v3}, Landroid/graphics/Rect;-><init>()V

    iput-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->k0:Landroid/graphics/Rect;

    .line 12
    new-instance v3, Landroid/text/TextPaint;

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Landroid/text/TextPaint;-><init>(I)V

    iput-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->e0:Landroid/text/TextPaint;

    .line 13
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 14
    iget-object v5, p0, Landroid/support/v7/widget/SwitchCompat;->e0:Landroid/text/TextPaint;

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->density:F

    iput v3, v5, Landroid/text/TextPaint;->density:F

    .line 15
    sget-object v3, LeS;->J0:[I

    .line 16
    new-instance v5, LNh;

    .line 17
    invoke-virtual {p1, p2, v3, v0, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p2

    invoke-direct {v5, p1, p2}, LNh;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    const/4 p2, 0x2

    .line 18
    invoke-virtual {v5, p2}, LNh;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 19
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    :cond_0
    const/16 v0, 0xb

    .line 20
    invoke-virtual {v5, v0}, LNh;->b(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->B:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 21
    invoke-virtual {v0, p0}, Landroid/graphics/drawable/Drawable;->setCallback(Landroid/graphics/drawable/Drawable$Callback;)V

    .line 22
    :cond_1
    invoke-virtual {v5, v2}, LNh;->d(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->K:Ljava/lang/CharSequence;

    .line 23
    invoke-virtual {v5, v4}, LNh;->d(I)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->L:Ljava/lang/CharSequence;

    const/4 v0, 0x3

    .line 24
    invoke-virtual {v5, v0, v4}, LNh;->a(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/support/v7/widget/SwitchCompat;->M:Z

    const/16 v3, 0x8

    .line 25
    invoke-virtual {v5, v3, v2}, LNh;->c(II)I

    move-result v3

    iput v3, p0, Landroid/support/v7/widget/SwitchCompat;->G:I

    const/4 v3, 0x5

    .line 26
    invoke-virtual {v5, v3, v2}, LNh;->c(II)I

    move-result v3

    iput v3, p0, Landroid/support/v7/widget/SwitchCompat;->H:I

    const/4 v3, 0x6

    .line 27
    invoke-virtual {v5, v3, v2}, LNh;->c(II)I

    move-result v3

    iput v3, p0, Landroid/support/v7/widget/SwitchCompat;->I:I

    const/4 v3, 0x4

    .line 28
    invoke-virtual {v5, v3, v2}, LNh;->a(IZ)Z

    move-result v3

    iput-boolean v3, p0, Landroid/support/v7/widget/SwitchCompat;->J:Z

    const/16 v3, 0x9

    .line 29
    invoke-virtual {v5, v3}, LNh;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 30
    iput-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->x:Landroid/content/res/ColorStateList;

    .line 31
    iput-boolean v4, p0, Landroid/support/v7/widget/SwitchCompat;->z:Z

    :cond_2
    const/16 v3, 0xa

    const/4 v6, -0x1

    .line 32
    invoke-virtual {v5, v3, v6}, LNh;->d(II)I

    move-result v3

    .line 33
    invoke-static {v3, v1}, Lmf;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    .line 34
    iget-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->y:Landroid/graphics/PorterDuff$Mode;

    if-eq v7, v3, :cond_3

    .line 35
    iput-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->y:Landroid/graphics/PorterDuff$Mode;

    .line 36
    iput-boolean v4, p0, Landroid/support/v7/widget/SwitchCompat;->A:Z

    .line 37
    :cond_3
    iget-boolean v3, p0, Landroid/support/v7/widget/SwitchCompat;->z:Z

    if-nez v3, :cond_4

    iget-boolean v3, p0, Landroid/support/v7/widget/SwitchCompat;->A:Z

    if-eqz v3, :cond_8

    .line 38
    :cond_4
    iget-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_8

    iget-boolean v3, p0, Landroid/support/v7/widget/SwitchCompat;->z:Z

    if-nez v3, :cond_5

    iget-boolean v3, p0, Landroid/support/v7/widget/SwitchCompat;->A:Z

    if-eqz v3, :cond_8

    .line 39
    :cond_5
    iget-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    iput-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->w:Landroid/graphics/drawable/Drawable;

    .line 40
    iget-boolean v7, p0, Landroid/support/v7/widget/SwitchCompat;->z:Z

    if-eqz v7, :cond_6

    .line 41
    iget-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->x:Landroid/content/res/ColorStateList;

    .line 42
    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 43
    :cond_6
    iget-boolean v3, p0, Landroid/support/v7/widget/SwitchCompat;->A:Z

    if-eqz v3, :cond_7

    .line 44
    iget-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->w:Landroid/graphics/drawable/Drawable;

    iget-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->y:Landroid/graphics/PorterDuff$Mode;

    .line 45
    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 46
    :cond_7
    iget-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_8

    .line 47
    iget-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v7

    invoke-virtual {v3, v7}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_8
    const/16 v3, 0xc

    .line 48
    invoke-virtual {v5, v3}, LNh;->a(I)Landroid/content/res/ColorStateList;

    move-result-object v7

    if-eqz v7, :cond_9

    .line 49
    iput-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->C:Landroid/content/res/ColorStateList;

    .line 50
    iput-boolean v4, p0, Landroid/support/v7/widget/SwitchCompat;->E:Z

    :cond_9
    const/16 v7, 0xd

    .line 51
    invoke-virtual {v5, v7, v6}, LNh;->d(II)I

    move-result v7

    .line 52
    invoke-static {v7, v1}, Lmf;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v7

    .line 53
    iget-object v8, p0, Landroid/support/v7/widget/SwitchCompat;->D:Landroid/graphics/PorterDuff$Mode;

    if-eq v8, v7, :cond_a

    .line 54
    iput-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->D:Landroid/graphics/PorterDuff$Mode;

    .line 55
    iput-boolean v4, p0, Landroid/support/v7/widget/SwitchCompat;->F:Z

    .line 56
    :cond_a
    iget-boolean v7, p0, Landroid/support/v7/widget/SwitchCompat;->E:Z

    if-nez v7, :cond_b

    iget-boolean v7, p0, Landroid/support/v7/widget/SwitchCompat;->F:Z

    if-eqz v7, :cond_f

    .line 57
    :cond_b
    iget-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->B:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_f

    iget-boolean v7, p0, Landroid/support/v7/widget/SwitchCompat;->E:Z

    if-nez v7, :cond_c

    iget-boolean v7, p0, Landroid/support/v7/widget/SwitchCompat;->F:Z

    if-eqz v7, :cond_f

    .line 58
    :cond_c
    iget-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v7

    iput-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->B:Landroid/graphics/drawable/Drawable;

    .line 59
    iget-boolean v8, p0, Landroid/support/v7/widget/SwitchCompat;->E:Z

    if-eqz v8, :cond_d

    .line 60
    iget-object v8, p0, Landroid/support/v7/widget/SwitchCompat;->C:Landroid/content/res/ColorStateList;

    .line 61
    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setTintList(Landroid/content/res/ColorStateList;)V

    .line 62
    :cond_d
    iget-boolean v7, p0, Landroid/support/v7/widget/SwitchCompat;->F:Z

    if-eqz v7, :cond_e

    .line 63
    iget-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->B:Landroid/graphics/drawable/Drawable;

    iget-object v8, p0, Landroid/support/v7/widget/SwitchCompat;->D:Landroid/graphics/PorterDuff$Mode;

    .line 64
    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setTintMode(Landroid/graphics/PorterDuff$Mode;)V

    .line 65
    :cond_e
    iget-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v7

    if-eqz v7, :cond_f

    .line 66
    iget-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    :cond_f
    const/4 v7, 0x7

    .line 67
    invoke-virtual {v5, v7, v2}, LNh;->f(II)I

    move-result v7

    if-eqz v7, :cond_1c

    .line 68
    sget-object v8, LeS;->N0:[I

    .line 69
    invoke-virtual {p1, v7, v8}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v7

    .line 70
    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v8

    if-eqz v8, :cond_10

    .line 71
    invoke-virtual {v7, v0, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v8

    if-eqz v8, :cond_10

    .line 72
    invoke-static {p1, v8}, Lsa;->b(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v8

    if-eqz v8, :cond_10

    goto :goto_0

    .line 73
    :cond_10
    invoke-virtual {v7, v0}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v8

    :goto_0
    if-eqz v8, :cond_11

    .line 74
    iput-object v8, p0, Landroid/support/v7/widget/SwitchCompat;->f0:Landroid/content/res/ColorStateList;

    goto :goto_1

    .line 75
    :cond_11
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v8

    iput-object v8, p0, Landroid/support/v7/widget/SwitchCompat;->f0:Landroid/content/res/ColorStateList;

    .line 76
    :goto_1
    invoke-virtual {v7, v2, v2}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v8

    if-eqz v8, :cond_12

    int-to-float v8, v8

    .line 77
    iget-object v9, p0, Landroid/support/v7/widget/SwitchCompat;->e0:Landroid/text/TextPaint;

    invoke-virtual {v9}, Landroid/text/TextPaint;->getTextSize()F

    move-result v9

    cmpl-float v9, v8, v9

    if-eqz v9, :cond_12

    .line 78
    iget-object v9, p0, Landroid/support/v7/widget/SwitchCompat;->e0:Landroid/text/TextPaint;

    invoke-virtual {v9, v8}, Landroid/text/TextPaint;->setTextSize(F)V

    .line 79
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    .line 80
    :cond_12
    invoke-virtual {v7, v4, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v8

    .line 81
    invoke-virtual {v7, p2, v6}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v6

    if-eq v8, v4, :cond_15

    if-eq v8, p2, :cond_14

    if-eq v8, v0, :cond_13

    move-object v0, v1

    goto :goto_2

    .line 82
    :cond_13
    sget-object v0, Landroid/graphics/Typeface;->MONOSPACE:Landroid/graphics/Typeface;

    goto :goto_2

    .line 83
    :cond_14
    sget-object v0, Landroid/graphics/Typeface;->SERIF:Landroid/graphics/Typeface;

    goto :goto_2

    .line 84
    :cond_15
    sget-object v0, Landroid/graphics/Typeface;->SANS_SERIF:Landroid/graphics/Typeface;

    :goto_2
    const/4 v8, 0x0

    if-lez v6, :cond_1a

    if-nez v0, :cond_16

    .line 85
    invoke-static {v6}, Landroid/graphics/Typeface;->defaultFromStyle(I)Landroid/graphics/Typeface;

    move-result-object v0

    goto :goto_3

    .line 86
    :cond_16
    invoke-static {v0, v6}, Landroid/graphics/Typeface;->create(Landroid/graphics/Typeface;I)Landroid/graphics/Typeface;

    move-result-object v0

    .line 87
    :goto_3
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->a(Landroid/graphics/Typeface;)V

    if-eqz v0, :cond_17

    .line 88
    invoke-virtual {v0}, Landroid/graphics/Typeface;->getStyle()I

    move-result v0

    goto :goto_4

    :cond_17
    const/4 v0, 0x0

    :goto_4
    not-int v0, v0

    and-int/2addr v0, v6

    .line 89
    iget-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->e0:Landroid/text/TextPaint;

    and-int/lit8 v9, v0, 0x1

    if-eqz v9, :cond_18

    goto :goto_5

    :cond_18
    const/4 v4, 0x0

    :goto_5
    invoke-virtual {v6, v4}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 90
    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->e0:Landroid/text/TextPaint;

    and-int/2addr p2, v0

    if-eqz p2, :cond_19

    const/high16 v8, -0x41800000    # -0.25f

    :cond_19
    invoke-virtual {v4, v8}, Landroid/text/TextPaint;->setTextSkewX(F)V

    goto :goto_6

    .line 91
    :cond_1a
    iget-object p2, p0, Landroid/support/v7/widget/SwitchCompat;->e0:Landroid/text/TextPaint;

    invoke-virtual {p2, v2}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 92
    iget-object p2, p0, Landroid/support/v7/widget/SwitchCompat;->e0:Landroid/text/TextPaint;

    invoke-virtual {p2, v8}, Landroid/text/TextPaint;->setTextSkewX(F)V

    .line 93
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->a(Landroid/graphics/Typeface;)V

    .line 94
    :goto_6
    invoke-virtual {v7, v3, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p2

    if-eqz p2, :cond_1b

    .line 95
    new-instance p2, LLc;

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {p2, v0}, LLc;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Landroid/support/v7/widget/SwitchCompat;->i0:Landroid/text/method/TransformationMethod;

    goto :goto_7

    .line 96
    :cond_1b
    iput-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->i0:Landroid/text/method/TransformationMethod;

    .line 97
    :goto_7
    invoke-virtual {v7}, Landroid/content/res/TypedArray;->recycle()V

    .line 98
    :cond_1c
    iget-object p2, v5, LNh;->b:Landroid/content/res/TypedArray;

    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 99
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object p1

    .line 100
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result p2

    iput p2, p0, Landroid/support/v7/widget/SwitchCompat;->O:I

    .line 101
    invoke-virtual {p1}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result p1

    iput p1, p0, Landroid/support/v7/widget/SwitchCompat;->S:I

    .line 102
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->refreshDrawableState()V

    .line 103
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    invoke-virtual {p0, p1}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method


# virtual methods
.method public final a()I
    .locals 2

    .line 10
    invoke-static {p0}, Lki;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    .line 11
    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->T:F

    sub-float/2addr v0, v1

    goto :goto_0

    .line 12
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->T:F

    .line 13
    :goto_0
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->b()I

    move-result v1

    int-to-float v1, v1

    mul-float v0, v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public final a(Ljava/lang/CharSequence;)Landroid/text/Layout;
    .locals 8

    .line 6
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->i0:Landroid/text/method/TransformationMethod;

    if-eqz v0, :cond_0

    .line 7
    invoke-interface {v0, p1, p0}, Landroid/text/method/TransformationMethod;->getTransformation(Ljava/lang/CharSequence;Landroid/view/View;)Ljava/lang/CharSequence;

    move-result-object p1

    :cond_0
    move-object v1, p1

    .line 8
    new-instance p1, Landroid/text/StaticLayout;

    iget-object v2, p0, Landroid/support/v7/widget/SwitchCompat;->e0:Landroid/text/TextPaint;

    if-eqz v1, :cond_1

    .line 9
    invoke-static {v1, v2}, Landroid/text/Layout;->getDesiredWidth(Ljava/lang/CharSequence;Landroid/text/TextPaint;)F

    move-result v0

    float-to-double v3, v0

    invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v3

    double-to-int v0, v3

    move v3, v0

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    const/4 v3, 0x0

    :goto_0
    sget-object v4, Landroid/text/Layout$Alignment;->ALIGN_NORMAL:Landroid/text/Layout$Alignment;

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v0, p1

    invoke-direct/range {v0 .. v7}, Landroid/text/StaticLayout;-><init>(Ljava/lang/CharSequence;Landroid/text/TextPaint;ILandroid/text/Layout$Alignment;FFZ)V

    return-object p1
.end method

.method public a(Landroid/graphics/Typeface;)V
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->e0:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->e0:Landroid/text/TextPaint;

    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/graphics/Typeface;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->e0:Landroid/text/TextPaint;

    .line 2
    invoke-virtual {v0}, Landroid/text/TextPaint;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    if-nez v0, :cond_2

    if-eqz p1, :cond_2

    .line 3
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->e0:Landroid/text/TextPaint;

    invoke-virtual {v0, p1}, Landroid/text/TextPaint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 4
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->requestLayout()V

    .line 5
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    :cond_2
    return-void
.end method

.method public final b()I
    .locals 4

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->B:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->k0:Landroid/graphics/Rect;

    .line 3
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 4
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 5
    invoke-static {v0}, Lmf;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lmf;->a:Landroid/graphics/Rect;

    .line 7
    :goto_0
    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->U:I

    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->W:I

    sub-int/2addr v2, v3

    iget v3, v1, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v3

    iget v1, v1, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v1

    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v2, v1

    iget v0, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v2, v0

    return v2

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public draw(Landroid/graphics/Canvas;)V
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->k0:Landroid/graphics/Rect;

    .line 2
    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->a0:I

    .line 3
    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->b0:I

    .line 4
    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->c0:I

    .line 5
    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->d0:I

    .line 6
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->a()I

    move-result v5

    add-int/2addr v5, v1

    .line 7
    iget-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v6, :cond_0

    .line 8
    invoke-static {v6}, Lmf;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v6

    goto :goto_0

    .line 9
    :cond_0
    sget-object v6, Lmf;->a:Landroid/graphics/Rect;

    .line 10
    :goto_0
    iget-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->B:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_6

    .line 11
    invoke-virtual {v7, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 12
    iget v7, v0, Landroid/graphics/Rect;->left:I

    add-int/2addr v5, v7

    if-eqz v6, :cond_4

    .line 13
    iget v8, v6, Landroid/graphics/Rect;->left:I

    if-le v8, v7, :cond_1

    sub-int/2addr v8, v7

    add-int/2addr v1, v8

    .line 14
    :cond_1
    iget v7, v6, Landroid/graphics/Rect;->top:I

    iget v8, v0, Landroid/graphics/Rect;->top:I

    if-le v7, v8, :cond_2

    sub-int/2addr v7, v8

    add-int/2addr v7, v2

    goto :goto_1

    :cond_2
    move v7, v2

    .line 15
    :goto_1
    iget v8, v6, Landroid/graphics/Rect;->right:I

    iget v9, v0, Landroid/graphics/Rect;->right:I

    if-le v8, v9, :cond_3

    sub-int/2addr v8, v9

    sub-int/2addr v3, v8

    .line 16
    :cond_3
    iget v6, v6, Landroid/graphics/Rect;->bottom:I

    iget v8, v0, Landroid/graphics/Rect;->bottom:I

    if-le v6, v8, :cond_5

    sub-int/2addr v6, v8

    sub-int v6, v4, v6

    goto :goto_2

    :cond_4
    move v7, v2

    :cond_5
    move v6, v4

    .line 17
    :goto_2
    iget-object v8, p0, Landroid/support/v7/widget/SwitchCompat;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v1, v7, v3, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 18
    :cond_6
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_7

    .line 19
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 20
    iget v1, v0, Landroid/graphics/Rect;->left:I

    sub-int v1, v5, v1

    .line 21
    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->W:I

    add-int/2addr v5, v3

    iget v0, v0, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v0

    .line 22
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1, v2, v5, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 23
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 24
    invoke-virtual {v0, v1, v2, v5, v4}, Landroid/graphics/drawable/Drawable;->setHotspotBounds(IIII)V

    .line 25
    :cond_7
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->draw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public drawableHotspotChanged(FF)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->drawableHotspotChanged(FF)V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->B:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, p1, p2}, Landroid/graphics/drawable/Drawable;->setHotspot(FF)V

    :cond_1
    return-void
.end method

.method public drawableStateChanged()V
    .locals 4

    .line 1
    invoke-super {p0}, Landroid/widget/CompoundButton;->drawableStateChanged()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v0

    .line 3
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->w:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v1

    or-int/2addr v2, v1

    .line 6
    :cond_0
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->B:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 7
    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isStateful()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 8
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    move-result v0

    or-int/2addr v2, v0

    :cond_1
    if-eqz v2, :cond_2

    .line 9
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    :cond_2
    return-void
.end method

.method public getCompoundPaddingLeft()I
    .locals 2

    .line 1
    invoke-static {p0}, Lki;->a(Landroid/view/View;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingLeft()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->U:I

    add-int/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->I:I

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public getCompoundPaddingRight()I
    .locals 2

    .line 1
    invoke-static {p0}, Lki;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    return v0

    .line 3
    :cond_0
    invoke-super {p0}, Landroid/widget/CompoundButton;->getCompoundPaddingRight()I

    move-result v0

    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->U:I

    add-int/2addr v0, v1

    .line 4
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 5
    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->I:I

    add-int/2addr v0, v1

    :cond_1
    return v0
.end method

.method public jumpDrawablesToCurrentState()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/widget/CompoundButton;->jumpDrawablesToCurrentState()V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->B:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->jumpToCurrentState()V

    .line 6
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->j0:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->isStarted()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->j0:Landroid/animation/ObjectAnimator;

    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->end()V

    const/4 v0, 0x0

    .line 8
    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->j0:Landroid/animation/ObjectAnimator;

    :cond_2
    return-void
.end method

.method public onCreateDrawableState(I)[I
    .locals 1

    add-int/lit8 p1, p1, 0x1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onCreateDrawableState(I)[I

    move-result-object p1

    .line 2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v0, Landroid/support/v7/widget/SwitchCompat;->m0:[I

    invoke-static {p1, v0}, Landroid/widget/CompoundButton;->mergeDrawableStates([I[I)[I

    :cond_0
    return-object p1
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 9

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->k0:Landroid/graphics/Rect;

    .line 3
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->B:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 4
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 6
    :goto_0
    iget v2, p0, Landroid/support/v7/widget/SwitchCompat;->b0:I

    .line 7
    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->d0:I

    .line 8
    iget v4, v0, Landroid/graphics/Rect;->top:I

    add-int/2addr v2, v4

    .line 9
    iget v4, v0, Landroid/graphics/Rect;->bottom:I

    sub-int/2addr v3, v4

    .line 10
    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_2

    .line 11
    iget-boolean v5, p0, Landroid/support/v7/widget/SwitchCompat;->J:Z

    if-eqz v5, :cond_1

    if-eqz v4, :cond_1

    .line 12
    invoke-static {v4}, Lmf;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v5

    .line 13
    invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->copyBounds(Landroid/graphics/Rect;)V

    .line 14
    iget v6, v0, Landroid/graphics/Rect;->left:I

    iget v7, v5, Landroid/graphics/Rect;->left:I

    add-int/2addr v6, v7

    iput v6, v0, Landroid/graphics/Rect;->left:I

    .line 15
    iget v6, v0, Landroid/graphics/Rect;->right:I

    iget v5, v5, Landroid/graphics/Rect;->right:I

    sub-int/2addr v6, v5

    iput v6, v0, Landroid/graphics/Rect;->right:I

    .line 16
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v5

    .line 17
    sget-object v6, Landroid/graphics/Region$Op;->DIFFERENCE:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;Landroid/graphics/Region$Op;)Z

    .line 18
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 19
    invoke-virtual {p1, v5}, Landroid/graphics/Canvas;->restoreToCount(I)V

    goto :goto_1

    .line 20
    :cond_1
    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 21
    :cond_2
    :goto_1
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    move-result v0

    if-eqz v4, :cond_3

    .line 22
    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 23
    :cond_3
    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->T:F

    const/high16 v5, 0x3f000000    # 0.5f

    const/4 v6, 0x0

    cmpl-float v1, v1, v5

    if-lez v1, :cond_4

    const/4 v1, 0x1

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_5

    .line 24
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->g0:Landroid/text/Layout;

    goto :goto_3

    :cond_5
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->h0:Landroid/text/Layout;

    :goto_3
    if-eqz v1, :cond_8

    .line 25
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getDrawableState()[I

    move-result-object v5

    .line 26
    iget-object v7, p0, Landroid/support/v7/widget/SwitchCompat;->f0:Landroid/content/res/ColorStateList;

    if-eqz v7, :cond_6

    .line 27
    iget-object v8, p0, Landroid/support/v7/widget/SwitchCompat;->e0:Landroid/text/TextPaint;

    invoke-virtual {v7, v5, v6}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v6

    invoke-virtual {v8, v6}, Landroid/text/TextPaint;->setColor(I)V

    .line 28
    :cond_6
    iget-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->e0:Landroid/text/TextPaint;

    iput-object v5, v6, Landroid/text/TextPaint;->drawableState:[I

    if-eqz v4, :cond_7

    .line 29
    invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v4

    .line 30
    iget v5, v4, Landroid/graphics/Rect;->left:I

    iget v4, v4, Landroid/graphics/Rect;->right:I

    add-int/2addr v5, v4

    goto :goto_4

    .line 31
    :cond_7
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWidth()I

    move-result v5

    .line 32
    :goto_4
    div-int/lit8 v5, v5, 0x2

    invoke-virtual {v1}, Landroid/text/Layout;->getWidth()I

    move-result v4

    div-int/lit8 v4, v4, 0x2

    sub-int/2addr v5, v4

    add-int/2addr v2, v3

    .line 33
    div-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Landroid/text/Layout;->getHeight()I

    move-result v3

    div-int/lit8 v3, v3, 0x2

    sub-int/2addr v2, v3

    int-to-float v3, v5

    int-to-float v2, v2

    .line 34
    invoke-virtual {p1, v3, v2}, Landroid/graphics/Canvas;->translate(FF)V

    .line 35
    invoke-virtual {v1, p1}, Landroid/text/Layout;->draw(Landroid/graphics/Canvas;)V

    .line 36
    :cond_8
    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    const-string v0, "android.widget.Switch"

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    const-string v0, "android.widget.Switch"

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 3
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->K:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->L:Ljava/lang/CharSequence;

    .line 4
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 5
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityNodeInfo;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 6
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 8
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 9
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    const/16 v1, 0x20

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {p1, v2}, Landroid/view/accessibility/AccessibilityNodeInfo;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    :goto_1
    return-void
.end method

.method public onLayout(ZIIII)V
    .locals 1

    .line 1
    invoke-super/range {p0 .. p5}, Landroid/widget/CompoundButton;->onLayout(ZIIII)V

    .line 2
    iget-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->w:Landroid/graphics/drawable/Drawable;

    const/4 p2, 0x0

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->k0:Landroid/graphics/Rect;

    .line 4
    iget-object p3, p0, Landroid/support/v7/widget/SwitchCompat;->B:Landroid/graphics/drawable/Drawable;

    if-eqz p3, :cond_0

    .line 5
    invoke-virtual {p3, p1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p1}, Landroid/graphics/Rect;->setEmpty()V

    .line 7
    :goto_0
    iget-object p3, p0, Landroid/support/v7/widget/SwitchCompat;->w:Landroid/graphics/drawable/Drawable;

    invoke-static {p3}, Lmf;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object p3

    .line 8
    iget p4, p3, Landroid/graphics/Rect;->left:I

    iget p5, p1, Landroid/graphics/Rect;->left:I

    sub-int/2addr p4, p5

    invoke-static {p2, p4}, Ljava/lang/Math;->max(II)I

    move-result p4

    .line 9
    iget p3, p3, Landroid/graphics/Rect;->right:I

    iget p1, p1, Landroid/graphics/Rect;->right:I

    sub-int/2addr p3, p1

    invoke-static {p2, p3}, Ljava/lang/Math;->max(II)I

    move-result p2

    goto :goto_1

    :cond_1
    const/4 p4, 0x0

    .line 10
    :goto_1
    invoke-static {p0}, Lki;->a(Landroid/view/View;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 11
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingLeft()I

    move-result p1

    add-int/2addr p1, p4

    .line 12
    iget p3, p0, Landroid/support/v7/widget/SwitchCompat;->U:I

    add-int/2addr p3, p1

    sub-int/2addr p3, p4

    sub-int/2addr p3, p2

    goto :goto_2

    .line 13
    :cond_2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWidth()I

    move-result p1

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingRight()I

    move-result p3

    sub-int/2addr p1, p3

    sub-int p3, p1, p2

    .line 14
    iget p1, p0, Landroid/support/v7/widget/SwitchCompat;->U:I

    sub-int p1, p3, p1

    add-int/2addr p1, p4

    add-int/2addr p1, p2

    .line 15
    :goto_2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getGravity()I

    move-result p2

    and-int/lit8 p2, p2, 0x70

    const/16 p4, 0x10

    if-eq p2, p4, :cond_4

    const/16 p4, 0x50

    if-eq p2, p4, :cond_3

    .line 16
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingTop()I

    move-result p2

    .line 17
    iget p4, p0, Landroid/support/v7/widget/SwitchCompat;->V:I

    add-int/2addr p4, p2

    goto :goto_3

    .line 18
    :cond_3
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingBottom()I

    move-result p4

    sub-int p4, p2, p4

    .line 19
    iget p2, p0, Landroid/support/v7/widget/SwitchCompat;->V:I

    sub-int p2, p4, p2

    goto :goto_3

    .line 20
    :cond_4
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingTop()I

    move-result p2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getHeight()I

    move-result p4

    add-int/2addr p4, p2

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getPaddingBottom()I

    move-result p2

    sub-int/2addr p4, p2

    div-int/lit8 p4, p4, 0x2

    iget p2, p0, Landroid/support/v7/widget/SwitchCompat;->V:I

    div-int/lit8 p5, p2, 0x2

    sub-int/2addr p4, p5

    add-int/2addr p2, p4

    move v0, p4

    move p4, p2

    move p2, v0

    .line 21
    :goto_3
    iput p1, p0, Landroid/support/v7/widget/SwitchCompat;->a0:I

    .line 22
    iput p2, p0, Landroid/support/v7/widget/SwitchCompat;->b0:I

    .line 23
    iput p4, p0, Landroid/support/v7/widget/SwitchCompat;->d0:I

    .line 24
    iput p3, p0, Landroid/support/v7/widget/SwitchCompat;->c0:I

    return-void
.end method

.method public onMeasure(II)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Landroid/support/v7/widget/SwitchCompat;->M:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->g0:Landroid/text/Layout;

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->K:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->a(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->g0:Landroid/text/Layout;

    .line 4
    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->h0:Landroid/text/Layout;

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->L:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->a(Ljava/lang/CharSequence;)Landroid/text/Layout;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->h0:Landroid/text/Layout;

    .line 6
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->k0:Landroid/graphics/Rect;

    .line 7
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->w:Landroid/graphics/drawable/Drawable;

    const/4 v2, 0x0

    if-eqz v1, :cond_2

    .line 8
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 9
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v1

    iget v3, v0, Landroid/graphics/Rect;->left:I

    sub-int/2addr v1, v3

    iget v3, v0, Landroid/graphics/Rect;->right:I

    sub-int/2addr v1, v3

    .line 10
    iget-object v3, p0, Landroid/support/v7/widget/SwitchCompat;->w:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    const/4 v3, 0x0

    .line 11
    :goto_0
    iget-boolean v4, p0, Landroid/support/v7/widget/SwitchCompat;->M:Z

    if-eqz v4, :cond_3

    .line 12
    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->g0:Landroid/text/Layout;

    invoke-virtual {v4}, Landroid/text/Layout;->getWidth()I

    move-result v4

    iget-object v5, p0, Landroid/support/v7/widget/SwitchCompat;->h0:Landroid/text/Layout;

    invoke-virtual {v5}, Landroid/text/Layout;->getWidth()I

    move-result v5

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v4

    iget v5, p0, Landroid/support/v7/widget/SwitchCompat;->G:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v4, v5

    goto :goto_1

    :cond_3
    const/4 v4, 0x0

    .line 13
    :goto_1
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    move-result v1

    iput v1, p0, Landroid/support/v7/widget/SwitchCompat;->W:I

    .line 14
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->B:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_4

    .line 15
    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 16
    iget-object v1, p0, Landroid/support/v7/widget/SwitchCompat;->B:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    goto :goto_2

    .line 17
    :cond_4
    invoke-virtual {v0}, Landroid/graphics/Rect;->setEmpty()V

    .line 18
    :goto_2
    iget v1, v0, Landroid/graphics/Rect;->left:I

    .line 19
    iget v0, v0, Landroid/graphics/Rect;->right:I

    .line 20
    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->w:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_5

    .line 21
    invoke-static {v4}, Lmf;->c(Landroid/graphics/drawable/Drawable;)Landroid/graphics/Rect;

    move-result-object v4

    .line 22
    iget v5, v4, Landroid/graphics/Rect;->left:I

    invoke-static {v1, v5}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 23
    iget v4, v4, Landroid/graphics/Rect;->right:I

    invoke-static {v0, v4}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 24
    :cond_5
    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->H:I

    iget v5, p0, Landroid/support/v7/widget/SwitchCompat;->W:I

    mul-int/lit8 v5, v5, 0x2

    add-int/2addr v5, v1

    add-int/2addr v5, v0

    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 25
    invoke-static {v2, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 26
    iput v0, p0, Landroid/support/v7/widget/SwitchCompat;->U:I

    .line 27
    iput v1, p0, Landroid/support/v7/widget/SwitchCompat;->V:I

    .line 28
    invoke-super {p0, p1, p2}, Landroid/widget/CompoundButton;->onMeasure(II)V

    .line 29
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getMeasuredHeight()I

    move-result p1

    if-ge p1, v1, :cond_6

    .line 30
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getMeasuredWidthAndState()I

    move-result p1

    invoke-virtual {p0, p1, v1}, Landroid/widget/CompoundButton;->setMeasuredDimension(II)V

    :cond_6
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->K:Ljava/lang/CharSequence;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->L:Ljava/lang/CharSequence;

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_1
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 10

    .line 1
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->R:Landroid/view/VelocityTracker;

    invoke-virtual {v0, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_12

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v5, 0x2

    if-eq v0, v2, :cond_a

    if-eq v0, v5, :cond_0

    if-eq v0, v3, :cond_a

    goto/16 :goto_6

    .line 3
    :cond_0
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->N:I

    if-eq v0, v2, :cond_8

    if-eq v0, v5, :cond_1

    goto/16 :goto_6

    .line 4
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result p1

    .line 5
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->b()I

    move-result v0

    .line 6
    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->P:F

    sub-float v1, p1, v1

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v0, :cond_2

    int-to-float v0, v0

    div-float/2addr v1, v0

    goto :goto_0

    :cond_2
    cmpl-float v0, v1, v4

    if-lez v0, :cond_3

    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_3
    const/high16 v0, -0x40800000    # -1.0f

    const/high16 v1, -0x40800000    # -1.0f

    .line 7
    :goto_0
    invoke-static {p0}, Lki;->a(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_4

    neg-float v1, v1

    .line 8
    :cond_4
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->T:F

    add-float/2addr v0, v1

    cmpg-float v1, v0, v4

    if-gez v1, :cond_5

    const/4 v0, 0x0

    goto :goto_1

    :cond_5
    cmpl-float v1, v0, v3

    if-lez v1, :cond_6

    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    :cond_6
    :goto_1
    iget v1, p0, Landroid/support/v7/widget/SwitchCompat;->T:F

    cmpl-float v1, v0, v1

    if-eqz v1, :cond_7

    .line 10
    iput p1, p0, Landroid/support/v7/widget/SwitchCompat;->P:F

    .line 11
    iput v0, p0, Landroid/support/v7/widget/SwitchCompat;->T:F

    .line 12
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    :cond_7
    return v2

    .line 13
    :cond_8
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 14
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 15
    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->P:F

    sub-float v3, v0, v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->O:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-gtz v3, :cond_9

    iget v3, p0, Landroid/support/v7/widget/SwitchCompat;->Q:F

    sub-float v3, v1, v3

    .line 16
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->O:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_15

    .line 17
    :cond_9
    iput v5, p0, Landroid/support/v7/widget/SwitchCompat;->N:I

    .line 18
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    invoke-interface {p1, v2}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 19
    iput v0, p0, Landroid/support/v7/widget/SwitchCompat;->P:F

    .line 20
    iput v1, p0, Landroid/support/v7/widget/SwitchCompat;->Q:F

    return v2

    .line 21
    :cond_a
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->N:I

    if-ne v0, v5, :cond_11

    .line 22
    iput v1, p0, Landroid/support/v7/widget/SwitchCompat;->N:I

    .line 23
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    if-ne v0, v2, :cond_b

    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    goto :goto_2

    :cond_b
    const/4 v0, 0x0

    .line 24
    :goto_2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v5

    if-eqz v0, :cond_f

    .line 25
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->R:Landroid/view/VelocityTracker;

    const/16 v6, 0x3e8

    invoke-virtual {v0, v6}, Landroid/view/VelocityTracker;->computeCurrentVelocity(I)V

    .line 26
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->R:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->getXVelocity()F

    move-result v0

    .line 27
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v6

    iget v7, p0, Landroid/support/v7/widget/SwitchCompat;->S:I

    int-to-float v7, v7

    cmpl-float v6, v6, v7

    if-lez v6, :cond_d

    .line 28
    invoke-static {p0}, Lki;->a(Landroid/view/View;)Z

    move-result v6

    if-eqz v6, :cond_c

    cmpg-float v0, v0, v4

    if-gez v0, :cond_e

    goto :goto_3

    :cond_c
    cmpl-float v0, v0, v4

    if-lez v0, :cond_e

    goto :goto_3

    .line 29
    :cond_d
    iget v0, p0, Landroid/support/v7/widget/SwitchCompat;->T:F

    const/high16 v4, 0x3f000000    # 0.5f

    cmpl-float v0, v0, v4

    if-lez v0, :cond_e

    :goto_3
    const/4 v0, 0x1

    goto :goto_4

    :cond_e
    const/4 v0, 0x0

    goto :goto_4

    :cond_f
    move v0, v5

    :goto_4
    if-eq v0, v5, :cond_10

    .line 30
    invoke-virtual {p0, v1}, Landroid/widget/CompoundButton;->playSoundEffect(I)V

    .line 31
    :cond_10
    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    .line 32
    invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;

    move-result-object v0

    .line 33
    invoke-virtual {v0, v3}, Landroid/view/MotionEvent;->setAction(I)V

    .line 34
    invoke-super {p0, v0}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 35
    invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V

    .line 36
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    return v2

    .line 37
    :cond_11
    iput v1, p0, Landroid/support/v7/widget/SwitchCompat;->N:I

    .line 38
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->R:Landroid/view/VelocityTracker;

    invoke-virtual {v0}, Landroid/view/VelocityTracker;->clear()V

    goto :goto_6

    .line 39
    :cond_12
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    .line 40
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    .line 41
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_15

    .line 42
    iget-object v4, p0, Landroid/support/v7/widget/SwitchCompat;->w:Landroid/graphics/drawable/Drawable;

    if-nez v4, :cond_13

    goto :goto_5

    .line 43
    :cond_13
    invoke-virtual {p0}, Landroid/support/v7/widget/SwitchCompat;->a()I

    move-result v4

    .line 44
    iget-object v5, p0, Landroid/support/v7/widget/SwitchCompat;->w:Landroid/graphics/drawable/Drawable;

    iget-object v6, p0, Landroid/support/v7/widget/SwitchCompat;->k0:Landroid/graphics/Rect;

    invoke-virtual {v5, v6}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 45
    iget v5, p0, Landroid/support/v7/widget/SwitchCompat;->b0:I

    iget v6, p0, Landroid/support/v7/widget/SwitchCompat;->O:I

    sub-int/2addr v5, v6

    .line 46
    iget v7, p0, Landroid/support/v7/widget/SwitchCompat;->a0:I

    add-int/2addr v7, v4

    sub-int/2addr v7, v6

    .line 47
    iget v4, p0, Landroid/support/v7/widget/SwitchCompat;->W:I

    add-int/2addr v4, v7

    iget-object v8, p0, Landroid/support/v7/widget/SwitchCompat;->k0:Landroid/graphics/Rect;

    iget v9, v8, Landroid/graphics/Rect;->left:I

    add-int/2addr v4, v9

    iget v8, v8, Landroid/graphics/Rect;->right:I

    add-int/2addr v4, v8

    add-int/2addr v4, v6

    .line 48
    iget v8, p0, Landroid/support/v7/widget/SwitchCompat;->d0:I

    add-int/2addr v8, v6

    int-to-float v6, v7

    cmpl-float v6, v0, v6

    if-lez v6, :cond_14

    int-to-float v4, v4

    cmpg-float v4, v0, v4

    if-gez v4, :cond_14

    int-to-float v4, v5

    cmpl-float v4, v3, v4

    if-lez v4, :cond_14

    int-to-float v4, v8

    cmpg-float v4, v3, v4

    if-gez v4, :cond_14

    const/4 v1, 0x1

    :cond_14
    :goto_5
    if-eqz v1, :cond_15

    .line 49
    iput v2, p0, Landroid/support/v7/widget/SwitchCompat;->N:I

    .line 50
    iput v0, p0, Landroid/support/v7/widget/SwitchCompat;->P:F

    .line 51
    iput v3, p0, Landroid/support/v7/widget/SwitchCompat;->Q:F

    .line 52
    :cond_15
    :goto_6
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1
.end method

.method public setChecked(Z)V
    .locals 4

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setChecked(Z)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result p1

    .line 3
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/high16 v1, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-static {p0}, LA7;->u(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 4
    :goto_0
    sget-object p1, Landroid/support/v7/widget/SwitchCompat;->l0:Landroid/util/Property;

    const/4 v0, 0x1

    new-array v2, v0, [F

    const/4 v3, 0x0

    aput v1, v2, v3

    invoke-static {p0, p1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object p1

    iput-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->j0:Landroid/animation/ObjectAnimator;

    const-wide/16 v1, 0xfa

    .line 5
    invoke-virtual {p1, v1, v2}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 6
    iget-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->j0:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1, v0}, Landroid/animation/ObjectAnimator;->setAutoCancel(Z)V

    .line 7
    iget-object p1, p0, Landroid/support/v7/widget/SwitchCompat;->j0:Landroid/animation/ObjectAnimator;

    invoke-virtual {p1}, Landroid/animation/ObjectAnimator;->start()V

    goto :goto_2

    .line 8
    :cond_1
    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->j0:Landroid/animation/ObjectAnimator;

    if-eqz v0, :cond_2

    .line 9
    invoke-virtual {v0}, Landroid/animation/ObjectAnimator;->cancel()V

    :cond_2
    if-eqz p1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v1, 0x0

    .line 10
    :goto_1
    iput v1, p0, Landroid/support/v7/widget/SwitchCompat;->T:F

    .line 11
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->invalidate()V

    :goto_2
    return-void
.end method

.method public setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lw8;->a(Landroid/widget/TextView;Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode$Callback;

    move-result-object p1

    .line 2
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->setCustomSelectionActionModeCallback(Landroid/view/ActionMode$Callback;)V

    return-void
.end method

.method public toggle()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/CompoundButton;->isChecked()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Landroid/support/v7/widget/SwitchCompat;->setChecked(Z)V

    return-void
.end method

.method public verifyDrawable(Landroid/graphics/drawable/Drawable;)Z
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/CompoundButton;->verifyDrawable(Landroid/graphics/drawable/Drawable;)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->w:Landroid/graphics/drawable/Drawable;

    if-eq p1, v0, :cond_1

    iget-object v0, p0, Landroid/support/v7/widget/SwitchCompat;->B:Landroid/graphics/drawable/Drawable;

    if-ne p1, v0, :cond_0

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
