.class public Landroid/support/design/widget/TabLayout;
.super Landroid/widget/HorizontalScrollView;
.source "PG"


# annotations
.annotation runtime LG7;
.end annotation


# static fields
.field public static final m0:LZ6;


# instance fields
.field public A:I

.field public B:I

.field public C:I

.field public D:I

.field public E:I

.field public F:Landroid/content/res/ColorStateList;

.field public G:Landroid/content/res/ColorStateList;

.field public H:Landroid/content/res/ColorStateList;

.field public I:Landroid/graphics/drawable/Drawable;

.field public J:Landroid/graphics/PorterDuff$Mode;

.field public K:F

.field public L:F

.field public final M:I

.field public N:I

.field public final O:I

.field public final P:I

.field public final Q:I

.field public R:I

.field public S:I

.field public T:I

.field public U:I

.field public V:I

.field public W:Z

.field public a0:Z

.field public b0:Z

.field public final c0:Ljava/util/ArrayList;

.field public d0:Lp0;

.field public e0:Landroid/animation/ValueAnimator;

.field public f0:Landroid/support/v4/view/ViewPager;

.field public g0:Lv7;

.field public h0:Landroid/database/DataSetObserver;

.field public i0:Lw0;

.field public j0:Lo0;

.field public k0:Z

.field public final l0:LZ6;

.field public final w:Ljava/util/ArrayList;

.field public x:Lv0;

.field public final y:Landroid/graphics/RectF;

.field public final z:Lu0;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lb7;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Lb7;-><init>(I)V

    sput-object v0, Landroid/support/design/widget/TabLayout;->m0:LZ6;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 12

    const v0, 0x7f04022f

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/HorizontalScrollView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->w:Ljava/util/ArrayList;

    .line 3
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->y:Landroid/graphics/RectF;

    const v0, 0x7fffffff

    .line 4
    iput v0, p0, Landroid/support/design/widget/TabLayout;->N:I

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->c0:Ljava/util/ArrayList;

    .line 6
    new-instance v0, La7;

    const/16 v1, 0xc

    invoke-direct {v0, v1}, La7;-><init>(I)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->l0:LZ6;

    const/4 v0, 0x0

    .line 7
    invoke-virtual {p0, v0}, Landroid/widget/HorizontalScrollView;->setHorizontalScrollBarEnabled(Z)V

    .line 8
    new-instance v2, Lu0;

    invoke-direct {v2, p0, p1}, Lu0;-><init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V

    iput-object v2, p0, Landroid/support/design/widget/TabLayout;->z:Lu0;

    .line 9
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    const/4 v5, -0x2

    invoke-direct {v3, v5, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-super {p0, v2, v0, v3}, Landroid/widget/HorizontalScrollView;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    .line 10
    sget-object v8, LeS;->M0:[I

    const/4 v2, 0x1

    new-array v11, v2, [I

    const/16 v3, 0x16

    aput v3, v11, v0

    const v10, 0x7f1402f8

    const v9, 0x7f04022f

    move-object v6, p1

    move-object v7, p2

    .line 11
    invoke-static/range {v6 .. v11}, LP;->a(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)Landroid/content/res/TypedArray;

    move-result-object p2

    .line 12
    iget-object v5, p0, Landroid/support/design/widget/TabLayout;->z:Lu0;

    const/16 v6, 0xa

    .line 13
    invoke-virtual {p2, v6, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v6

    .line 14
    iget v7, v5, Lu0;->w:I

    if-eq v7, v6, :cond_0

    .line 15
    iput v6, v5, Lu0;->w:I

    .line 16
    invoke-static {v5}, LA7;->w(Landroid/view/View;)V

    .line 17
    :cond_0
    iget-object v5, p0, Landroid/support/design/widget/TabLayout;->z:Lu0;

    const/4 v6, 0x7

    .line 18
    invoke-virtual {p2, v6, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v6

    .line 19
    iget-object v7, v5, Lu0;->x:Landroid/graphics/Paint;

    invoke-virtual {v7}, Landroid/graphics/Paint;->getColor()I

    move-result v7

    if-eq v7, v6, :cond_1

    .line 20
    iget-object v7, v5, Lu0;->x:Landroid/graphics/Paint;

    invoke-virtual {v7, v6}, Landroid/graphics/Paint;->setColor(I)V

    .line 21
    invoke-static {v5}, LA7;->w(Landroid/view/View;)V

    :cond_1
    const/4 v5, 0x5

    .line 22
    invoke-static {p1, p2, v5}, LS;->b(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    .line 23
    iget-object v6, p0, Landroid/support/design/widget/TabLayout;->I:Landroid/graphics/drawable/Drawable;

    if-eq v6, v5, :cond_2

    .line 24
    iput-object v5, p0, Landroid/support/design/widget/TabLayout;->I:Landroid/graphics/drawable/Drawable;

    .line 25
    iget-object v5, p0, Landroid/support/design/widget/TabLayout;->z:Lu0;

    invoke-static {v5}, LA7;->w(Landroid/view/View;)V

    :cond_2
    const/16 v5, 0x9

    .line 26
    invoke-virtual {p2, v5, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v5

    .line 27
    iget v6, p0, Landroid/support/design/widget/TabLayout;->U:I

    if-eq v6, v5, :cond_3

    .line 28
    iput v5, p0, Landroid/support/design/widget/TabLayout;->U:I

    .line 29
    iget-object v5, p0, Landroid/support/design/widget/TabLayout;->z:Lu0;

    invoke-static {v5}, LA7;->w(Landroid/view/View;)V

    :cond_3
    const/16 v5, 0x8

    .line 30
    invoke-virtual {p2, v5, v2}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v5

    .line 31
    iput-boolean v5, p0, Landroid/support/design/widget/TabLayout;->a0:Z

    .line 32
    iget-object v5, p0, Landroid/support/design/widget/TabLayout;->z:Lu0;

    invoke-static {v5}, LA7;->w(Landroid/view/View;)V

    const/16 v5, 0xf

    .line 33
    invoke-virtual {p2, v5, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/support/design/widget/TabLayout;->D:I

    iput v5, p0, Landroid/support/design/widget/TabLayout;->C:I

    iput v5, p0, Landroid/support/design/widget/TabLayout;->B:I

    iput v5, p0, Landroid/support/design/widget/TabLayout;->A:I

    const/16 v6, 0x12

    .line 34
    invoke-virtual {p2, v6, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/support/design/widget/TabLayout;->A:I

    const/16 v5, 0x13

    .line 35
    iget v6, p0, Landroid/support/design/widget/TabLayout;->B:I

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/support/design/widget/TabLayout;->B:I

    const/16 v5, 0x11

    .line 36
    iget v6, p0, Landroid/support/design/widget/TabLayout;->C:I

    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/support/design/widget/TabLayout;->C:I

    const/16 v5, 0x10

    .line 37
    iget v6, p0, Landroid/support/design/widget/TabLayout;->D:I

    .line 38
    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    iput v5, p0, Landroid/support/design/widget/TabLayout;->D:I

    const v5, 0x7f1401eb

    .line 39
    invoke-virtual {p2, v3, v5}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v3

    iput v3, p0, Landroid/support/design/widget/TabLayout;->E:I

    .line 40
    sget-object v5, LeS;->N0:[I

    .line 41
    invoke-virtual {p1, v3, v5}, Landroid/content/Context;->obtainStyledAttributes(I[I)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 42
    :try_start_0
    invoke-virtual {v3, v0, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    int-to-float v5, v5

    iput v5, p0, Landroid/support/design/widget/TabLayout;->K:F

    const/4 v5, 0x3

    .line 43
    invoke-static {p1, v3, v5}, LS;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v6

    iput-object v6, p0, Landroid/support/design/widget/TabLayout;->F:Landroid/content/res/ColorStateList;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 44
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    const/16 v3, 0x17

    .line 45
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 46
    invoke-static {p1, p2, v3}, LS;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Landroid/support/design/widget/TabLayout;->F:Landroid/content/res/ColorStateList;

    :cond_4
    const/16 v3, 0x15

    .line 47
    invoke-virtual {p2, v3}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 48
    invoke-virtual {p2, v3, v0}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v3

    .line 49
    iget-object v6, p0, Landroid/support/design/widget/TabLayout;->F:Landroid/content/res/ColorStateList;

    invoke-virtual {v6}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v6

    invoke-static {v6, v3}, Landroid/support/design/widget/TabLayout;->a(II)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Landroid/support/design/widget/TabLayout;->F:Landroid/content/res/ColorStateList;

    .line 50
    :cond_5
    invoke-static {p1, p2, v5}, LS;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object v3

    iput-object v3, p0, Landroid/support/design/widget/TabLayout;->G:Landroid/content/res/ColorStateList;

    const/4 v3, 0x4

    .line 51
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v3

    const/4 v5, 0x0

    invoke-static {v3, v5}, LQ;->a(ILandroid/graphics/PorterDuff$Mode;)Landroid/graphics/PorterDuff$Mode;

    move-result-object v3

    iput-object v3, p0, Landroid/support/design/widget/TabLayout;->J:Landroid/graphics/PorterDuff$Mode;

    const/16 v3, 0x14

    .line 52
    invoke-static {p1, p2, v3}, LS;->a(Landroid/content/Context;Landroid/content/res/TypedArray;I)Landroid/content/res/ColorStateList;

    move-result-object p1

    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->H:Landroid/content/res/ColorStateList;

    const/4 p1, 0x6

    const/16 v3, 0x12c

    .line 53
    invoke-virtual {p2, p1, v3}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Landroid/support/design/widget/TabLayout;->T:I

    const/16 p1, 0xd

    .line 54
    invoke-virtual {p2, p1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Landroid/support/design/widget/TabLayout;->O:I

    .line 55
    invoke-virtual {p2, v1, v4}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Landroid/support/design/widget/TabLayout;->P:I

    .line 56
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p1

    iput p1, p0, Landroid/support/design/widget/TabLayout;->M:I

    .line 57
    invoke-virtual {p2, v2, v0}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result p1

    iput p1, p0, Landroid/support/design/widget/TabLayout;->R:I

    const/16 p1, 0xe

    .line 58
    invoke-virtual {p2, p1, v2}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Landroid/support/design/widget/TabLayout;->V:I

    const/4 p1, 0x2

    .line 59
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result p1

    iput p1, p0, Landroid/support/design/widget/TabLayout;->S:I

    const/16 p1, 0xb

    .line 60
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Landroid/support/design/widget/TabLayout;->W:Z

    const/16 p1, 0x18

    .line 61
    invoke-virtual {p2, p1, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result p1

    iput-boolean p1, p0, Landroid/support/design/widget/TabLayout;->b0:Z

    .line 62
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 63
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f0700e8

    .line 64
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    int-to-float p2, p2

    iput p2, p0, Landroid/support/design/widget/TabLayout;->L:F

    const p2, 0x7f0700e6

    .line 65
    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    iput p1, p0, Landroid/support/design/widget/TabLayout;->Q:I

    .line 66
    iget p1, p0, Landroid/support/design/widget/TabLayout;->V:I

    if-nez p1, :cond_6

    .line 67
    iget p1, p0, Landroid/support/design/widget/TabLayout;->R:I

    iget p2, p0, Landroid/support/design/widget/TabLayout;->A:I

    sub-int/2addr p1, p2

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    goto :goto_0

    :cond_6
    const/4 p1, 0x0

    .line 68
    :goto_0
    iget-object p2, p0, Landroid/support/design/widget/TabLayout;->z:Lu0;

    invoke-static {p2, p1, v0, v0, v0}, LA7;->a(Landroid/view/View;IIII)V

    .line 69
    iget p1, p0, Landroid/support/design/widget/TabLayout;->V:I

    if-eqz p1, :cond_8

    if-eq p1, v2, :cond_7

    goto :goto_1

    .line 70
    :cond_7
    iget-object p1, p0, Landroid/support/design/widget/TabLayout;->z:Lu0;

    invoke-virtual {p1, v2}, Landroid/widget/LinearLayout;->setGravity(I)V

    goto :goto_1

    .line 71
    :cond_8
    iget-object p1, p0, Landroid/support/design/widget/TabLayout;->z:Lu0;

    const p2, 0x800003

    invoke-virtual {p1, p2}, Landroid/widget/LinearLayout;->setGravity(I)V

    .line 72
    :goto_1
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout;->a(Z)V

    return-void

    :catchall_0
    move-exception p1

    .line 73
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    throw p1
.end method

.method public static a(II)Landroid/content/res/ColorStateList;
    .locals 4

    const/4 v0, 0x2

    new-array v1, v0, [[I

    new-array v0, v0, [I

    .line 131
    sget-object v2, Landroid/widget/HorizontalScrollView;->SELECTED_STATE_SET:[I

    const/4 v3, 0x0

    aput-object v2, v1, v3

    aput p1, v0, v3

    .line 132
    sget-object p1, Landroid/widget/HorizontalScrollView;->EMPTY_STATE_SET:[I

    const/4 v2, 0x1

    aput-object p1, v1, v2

    aput p0, v0, v2

    .line 133
    new-instance p0, Landroid/content/res/ColorStateList;

    invoke-direct {p0, v1, v0}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object p0
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 29
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->x:Lv0;

    if-eqz v0, :cond_0

    .line 30
    iget v0, v0, Lv0;->d:I

    goto :goto_0

    :cond_0
    const/4 v0, -0x1

    :goto_0
    return v0
.end method

.method public final a(IF)I
    .locals 3

    .line 115
    iget v0, p0, Landroid/support/design/widget/TabLayout;->V:I

    const/4 v1, 0x0

    if-nez v0, :cond_4

    .line 116
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->z:Lu0;

    invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    add-int/lit8 p1, p1, 0x1

    .line 117
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->z:Lu0;

    .line 118
    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge p1, v2, :cond_0

    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->z:Lu0;

    .line 119
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz v0, :cond_1

    .line 120
    invoke-virtual {v0}, Landroid/view/View;->getWidth()I

    move-result v2

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    if-eqz p1, :cond_2

    .line 121
    invoke-virtual {p1}, Landroid/view/View;->getWidth()I

    move-result v1

    .line 122
    :cond_2
    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result p1

    div-int/lit8 v0, v2, 0x2

    add-int/2addr v0, p1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result p1

    div-int/lit8 p1, p1, 0x2

    sub-int/2addr v0, p1

    add-int/2addr v2, v1

    int-to-float p1, v2

    const/high16 v1, 0x3f000000    # 0.5f

    mul-float p1, p1, v1

    mul-float p1, p1, p2

    float-to-int p1, p1

    .line 123
    invoke-static {p0}, LA7;->i(Landroid/view/View;)I

    move-result p2

    if-nez p2, :cond_3

    add-int/2addr v0, p1

    goto :goto_2

    :cond_3
    sub-int/2addr v0, p1

    :goto_2
    return v0

    :cond_4
    return v1
.end method

.method public final a(I)V
    .locals 7

    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    return-void

    .line 99
    :cond_0
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_6

    .line 100
    invoke-static {p0}, LA7;->u(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_6

    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->z:Lu0;

    .line 101
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v3, :cond_2

    .line 102
    invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v6

    .line 103
    invoke-virtual {v6}, Landroid/view/View;->getWidth()I

    move-result v6

    if-gtz v6, :cond_1

    const/4 v0, 0x1

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_3

    goto :goto_2

    .line 104
    :cond_3
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getScrollX()I

    move-result v0

    .line 105
    invoke-virtual {p0, p1, v1}, Landroid/support/design/widget/TabLayout;->a(IF)I

    move-result v1

    if-eq v0, v1, :cond_5

    .line 106
    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->e0:Landroid/animation/ValueAnimator;

    if-nez v3, :cond_4

    .line 107
    new-instance v3, Landroid/animation/ValueAnimator;

    invoke-direct {v3}, Landroid/animation/ValueAnimator;-><init>()V

    iput-object v3, p0, Landroid/support/design/widget/TabLayout;->e0:Landroid/animation/ValueAnimator;

    .line 108
    sget-object v5, LJ;->a:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 109
    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->e0:Landroid/animation/ValueAnimator;

    iget v5, p0, Landroid/support/design/widget/TabLayout;->T:I

    int-to-long v5, v5

    invoke-virtual {v3, v5, v6}, Landroid/animation/ValueAnimator;->setDuration(J)Landroid/animation/ValueAnimator;

    .line 110
    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->e0:Landroid/animation/ValueAnimator;

    new-instance v5, Ln0;

    invoke-direct {v5, p0}, Ln0;-><init>(Landroid/support/design/widget/TabLayout;)V

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 111
    :cond_4
    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->e0:Landroid/animation/ValueAnimator;

    const/4 v5, 0x2

    new-array v5, v5, [I

    aput v0, v5, v4

    aput v1, v5, v2

    invoke-virtual {v3, v5}, Landroid/animation/ValueAnimator;->setIntValues([I)V

    .line 112
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->e0:Landroid/animation/ValueAnimator;

    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->start()V

    .line 113
    :cond_5
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->z:Lu0;

    iget v1, p0, Landroid/support/design/widget/TabLayout;->T:I

    invoke-virtual {v0, p1, v1}, Lu0;->a(II)V

    return-void

    .line 114
    :cond_6
    :goto_2
    invoke-virtual {p0, p1, v1, v2, v2}, Landroid/support/design/widget/TabLayout;->a(IFZZ)V

    return-void
.end method

.method public a(IFZZ)V
    .locals 2

    int-to-float v0, p1

    add-float/2addr v0, p2

    .line 1
    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result v0

    if-ltz v0, :cond_4

    .line 2
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->z:Lu0;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-lt v0, v1, :cond_0

    goto :goto_0

    :cond_0
    if-eqz p4, :cond_2

    .line 3
    iget-object p4, p0, Landroid/support/design/widget/TabLayout;->z:Lu0;

    .line 4
    iget-object v1, p4, Lu0;->E:Landroid/animation/ValueAnimator;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    iget-object v1, p4, Lu0;->E:Landroid/animation/ValueAnimator;

    invoke-virtual {v1}, Landroid/animation/ValueAnimator;->cancel()V

    .line 6
    :cond_1
    iput p1, p4, Lu0;->z:I

    .line 7
    iput p2, p4, Lu0;->A:F

    .line 8
    invoke-virtual {p4}, Lu0;->a()V

    .line 9
    :cond_2
    iget-object p4, p0, Landroid/support/design/widget/TabLayout;->e0:Landroid/animation/ValueAnimator;

    if-eqz p4, :cond_3

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result p4

    if-eqz p4, :cond_3

    .line 10
    iget-object p4, p0, Landroid/support/design/widget/TabLayout;->e0:Landroid/animation/ValueAnimator;

    invoke-virtual {p4}, Landroid/animation/ValueAnimator;->cancel()V

    .line 11
    :cond_3
    invoke-virtual {p0, p1, p2}, Landroid/support/design/widget/TabLayout;->a(IF)I

    move-result p1

    const/4 p2, 0x0

    invoke-virtual {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->scrollTo(II)V

    if-eqz p3, :cond_4

    .line 12
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->d(I)V

    :cond_4
    :goto_0
    return-void
.end method

.method public final a(Landroid/support/v4/view/ViewPager;ZZ)V
    .locals 3

    .line 31
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->f0:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_1

    .line 32
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->i0:Lw0;

    if-eqz v1, :cond_0

    .line 33
    iget-object v0, v0, Landroid/support/v4/view/ViewPager;->o0:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 34
    invoke-interface {v0, v1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 35
    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->j0:Lo0;

    if-eqz v0, :cond_1

    .line 36
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->f0:Landroid/support/v4/view/ViewPager;

    .line 37
    iget-object v1, v1, Landroid/support/v4/view/ViewPager;->p0:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 38
    invoke-interface {v1, v0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 39
    :cond_1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->d0:Lp0;

    const/4 v1, 0x0

    if-eqz v0, :cond_2

    .line 40
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->c0:Ljava/util/ArrayList;

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 41
    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->d0:Lp0;

    :cond_2
    const/4 v0, 0x0

    if-eqz p1, :cond_9

    .line 42
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->f0:Landroid/support/v4/view/ViewPager;

    .line 43
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->i0:Lw0;

    if-nez v1, :cond_3

    .line 44
    new-instance v1, Lw0;

    invoke-direct {v1, p0}, Lw0;-><init>(Landroid/support/design/widget/TabLayout;)V

    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->i0:Lw0;

    .line 45
    :cond_3
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->i0:Lw0;

    .line 46
    iput v0, v1, Lw0;->c:I

    iput v0, v1, Lw0;->b:I

    .line 47
    iget-object v0, p1, Landroid/support/v4/view/ViewPager;->o0:Ljava/util/List;

    if-nez v0, :cond_4

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p1, Landroid/support/v4/view/ViewPager;->o0:Ljava/util/List;

    .line 49
    :cond_4
    iget-object v0, p1, Landroid/support/v4/view/ViewPager;->o0:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v0, Ly0;

    invoke-direct {v0, p1}, Ly0;-><init>(Landroid/support/v4/view/ViewPager;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->d0:Lp0;

    .line 51
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->c0:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 52
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->c0:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    :cond_5
    iget-object v0, p1, Landroid/support/v4/view/ViewPager;->A:Lv7;

    if-eqz v0, :cond_6

    .line 54
    invoke-virtual {p0, v0, p2}, Landroid/support/design/widget/TabLayout;->a(Lv7;Z)V

    .line 55
    :cond_6
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->j0:Lo0;

    if-nez v0, :cond_7

    .line 56
    new-instance v0, Lo0;

    invoke-direct {v0, p0}, Lo0;-><init>(Landroid/support/design/widget/TabLayout;)V

    iput-object v0, p0, Landroid/support/design/widget/TabLayout;->j0:Lo0;

    .line 57
    :cond_7
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->j0:Lo0;

    .line 58
    iput-boolean p2, v0, Lo0;->a:Z

    .line 59
    iget-object p2, p1, Landroid/support/v4/view/ViewPager;->p0:Ljava/util/List;

    if-nez p2, :cond_8

    .line 60
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    iput-object p2, p1, Landroid/support/v4/view/ViewPager;->p0:Ljava/util/List;

    .line 61
    :cond_8
    iget-object p2, p1, Landroid/support/v4/view/ViewPager;->p0:Ljava/util/List;

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    iget p1, p1, Landroid/support/v4/view/ViewPager;->B:I

    const/4 p2, 0x0

    const/4 v0, 0x1

    .line 63
    invoke-virtual {p0, p1, p2, v0, v0}, Landroid/support/design/widget/TabLayout;->a(IFZZ)V

    goto :goto_0

    .line 64
    :cond_9
    iput-object v1, p0, Landroid/support/design/widget/TabLayout;->f0:Landroid/support/v4/view/ViewPager;

    .line 65
    invoke-virtual {p0, v1, v0}, Landroid/support/design/widget/TabLayout;->a(Lv7;Z)V

    .line 66
    :goto_0
    iput-boolean p3, p0, Landroid/support/design/widget/TabLayout;->k0:Z

    return-void
.end method

.method public final a(Landroid/view/View;)V
    .locals 5

    .line 75
    instance-of v0, p1, Landroid/support/design/widget/TabItem;

    if-eqz v0, :cond_4

    .line 76
    check-cast p1, Landroid/support/design/widget/TabItem;

    .line 77
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->c()Lv0;

    move-result-object v0

    .line 78
    iget-object v1, p1, Landroid/support/design/widget/TabItem;->w:Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 79
    invoke-virtual {v0, v1}, Lv0;->a(Ljava/lang/CharSequence;)Lv0;

    .line 80
    :cond_0
    iget-object v1, p1, Landroid/support/design/widget/TabItem;->x:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 81
    iput-object v1, v0, Lv0;->a:Landroid/graphics/drawable/Drawable;

    .line 82
    invoke-virtual {v0}, Lv0;->c()V

    .line 83
    :cond_1
    iget v1, p1, Landroid/support/design/widget/TabItem;->y:I

    if-eqz v1, :cond_2

    .line 84
    iget-object v2, v0, Lv0;->g:Lx0;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 85
    iget-object v3, v0, Lv0;->g:Lx0;

    const/4 v4, 0x0

    invoke-virtual {v2, v1, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 86
    iput-object v1, v0, Lv0;->e:Landroid/view/View;

    .line 87
    invoke-virtual {v0}, Lv0;->c()V

    .line 88
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 89
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object p1

    .line 90
    iput-object p1, v0, Lv0;->c:Ljava/lang/CharSequence;

    .line 91
    invoke-virtual {v0}, Lv0;->c()V

    .line 92
    :cond_3
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->a(Lv0;)V

    return-void

    .line 93
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Only TabItem instances can be added to TabLayout"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final a(Landroid/widget/LinearLayout$LayoutParams;)V
    .locals 2

    .line 94
    iget v0, p0, Landroid/support/design/widget/TabLayout;->V:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroid/support/design/widget/TabLayout;->S:I

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 95
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/high16 v0, 0x3f800000    # 1.0f

    .line 96
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    goto :goto_0

    :cond_0
    const/4 v0, -0x2

    .line 97
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->width:I

    const/4 v0, 0x0

    .line 98
    iput v0, p1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    :goto_0
    return-void
.end method

.method public a(Lv0;)V
    .locals 1

    .line 13
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->a(Lv0;Z)V

    return-void
.end method

.method public a(Lv0;IZ)V
    .locals 5

    .line 15
    iget-object v0, p1, Lv0;->f:Landroid/support/design/widget/TabLayout;

    if-ne v0, p0, :cond_2

    .line 16
    iput p2, p1, Lv0;->d:I

    .line 17
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 18
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    :goto_0
    add-int/lit8 p2, p2, 0x1

    if-ge p2, v0, :cond_0

    .line 19
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->w:Ljava/util/ArrayList;

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lv0;

    .line 20
    iput p2, v1, Lv0;->d:I

    goto :goto_0

    .line 21
    :cond_0
    iget-object p2, p1, Lv0;->g:Lx0;

    .line 22
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->z:Lu0;

    .line 23
    iget v1, p1, Lv0;->d:I

    .line 24
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v3, -0x2

    const/4 v4, -0x1

    invoke-direct {v2, v3, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 25
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout;->a(Landroid/widget/LinearLayout$LayoutParams;)V

    .line 26
    invoke-virtual {v0, p2, v1, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V

    if-eqz p3, :cond_1

    .line 27
    invoke-virtual {p1}, Lv0;->b()V

    :cond_1
    return-void

    .line 28
    :cond_2
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Tab belongs to a different TabLayout."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lv0;Z)V
    .locals 1

    .line 14
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Landroid/support/design/widget/TabLayout;->a(Lv0;IZ)V

    return-void
.end method

.method public a(Lv7;Z)V
    .locals 2

    .line 67
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->g0:Lv7;

    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->h0:Landroid/database/DataSetObserver;

    if-eqz v1, :cond_0

    .line 68
    iget-object v0, v0, Lv7;->a:Landroid/database/DataSetObservable;

    invoke-virtual {v0, v1}, Landroid/database/DataSetObservable;->unregisterObserver(Ljava/lang/Object;)V

    .line 69
    :cond_0
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->g0:Lv7;

    if-eqz p2, :cond_2

    if-eqz p1, :cond_2

    .line 70
    iget-object p2, p0, Landroid/support/design/widget/TabLayout;->h0:Landroid/database/DataSetObserver;

    if-nez p2, :cond_1

    .line 71
    new-instance p2, Lr0;

    invoke-direct {p2, p0}, Lr0;-><init>(Landroid/support/design/widget/TabLayout;)V

    iput-object p2, p0, Landroid/support/design/widget/TabLayout;->h0:Landroid/database/DataSetObserver;

    .line 72
    :cond_1
    iget-object p2, p0, Landroid/support/design/widget/TabLayout;->h0:Landroid/database/DataSetObserver;

    .line 73
    iget-object p1, p1, Lv7;->a:Landroid/database/DataSetObservable;

    invoke-virtual {p1, p2}, Landroid/database/DataSetObservable;->registerObserver(Ljava/lang/Object;)V

    .line 74
    :cond_2
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->d()V

    return-void
.end method

.method public a(Z)V
    .locals 5

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 124
    :goto_0
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->z:Lu0;

    invoke-virtual {v2}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_3

    .line 125
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->z:Lu0;

    invoke-virtual {v2, v1}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 126
    iget v3, p0, Landroid/support/design/widget/TabLayout;->O:I

    const/4 v4, -0x1

    if-eq v3, v4, :cond_0

    goto :goto_1

    .line 127
    :cond_0
    iget v3, p0, Landroid/support/design/widget/TabLayout;->V:I

    if-nez v3, :cond_1

    iget v3, p0, Landroid/support/design/widget/TabLayout;->Q:I

    goto :goto_1

    :cond_1
    const/4 v3, 0x0

    .line 128
    :goto_1
    invoke-virtual {v2, v3}, Landroid/view/View;->setMinimumWidth(I)V

    .line 129
    invoke-virtual {v2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    check-cast v3, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {p0, v3}, Landroid/support/design/widget/TabLayout;->a(Landroid/widget/LinearLayout$LayoutParams;)V

    if-eqz p1, :cond_2

    .line 130
    invoke-virtual {v2}, Landroid/view/View;->requestLayout()V

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_3
    return-void
.end method

.method public addView(Landroid/view/View;)V
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->a(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;I)V
    .locals 0

    .line 2
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->a(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;ILandroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 4
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->a(Landroid/view/View;)V

    return-void
.end method

.method public addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0

    .line 3
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->a(Landroid/view/View;)V

    return-void
.end method

.method public b()I
    .locals 1

    .line 1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public b(I)I
    .locals 1

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float p1, p1

    mul-float v0, v0, p1

    invoke-static {v0}, Ljava/lang/Math;->round(F)I

    move-result p1

    return p1
.end method

.method public b(Lv0;)V
    .locals 1

    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, p1, v0}, Landroid/support/design/widget/TabLayout;->b(Lv0;Z)V

    return-void
.end method

.method public b(Lv0;Z)V
    .locals 4

    .line 4
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->x:Lv0;

    const/4 v1, -0x1

    if-ne v0, p1, :cond_1

    if-eqz v0, :cond_7

    .line 5
    iget-object p2, p0, Landroid/support/design/widget/TabLayout;->c0:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/2addr p2, v1

    :goto_0
    if-ltz p2, :cond_0

    .line 6
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c0:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp0;

    invoke-interface {v0, p1}, Lp0;->a(Lv0;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_0

    .line 7
    :cond_0
    iget p1, p1, Lv0;->d:I

    .line 8
    invoke-virtual {p0, p1}, Landroid/support/design/widget/TabLayout;->a(I)V

    goto :goto_5

    :cond_1
    if-eqz p1, :cond_2

    .line 9
    iget v2, p1, Lv0;->d:I

    goto :goto_1

    :cond_2
    const/4 v2, -0x1

    :goto_1
    if-eqz p2, :cond_5

    if-eqz v0, :cond_3

    .line 10
    iget p2, v0, Lv0;->d:I

    if-ne p2, v1, :cond_4

    :cond_3
    if-eq v2, v1, :cond_4

    const/4 p2, 0x0

    const/4 v3, 0x1

    .line 11
    invoke-virtual {p0, v2, p2, v3, v3}, Landroid/support/design/widget/TabLayout;->a(IFZZ)V

    goto :goto_2

    .line 12
    :cond_4
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout;->a(I)V

    :goto_2
    if-eq v2, v1, :cond_5

    .line 13
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout;->d(I)V

    .line 14
    :cond_5
    iput-object p1, p0, Landroid/support/design/widget/TabLayout;->x:Lv0;

    if-eqz v0, :cond_6

    .line 15
    iget-object p2, p0, Landroid/support/design/widget/TabLayout;->c0:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/2addr p2, v1

    :goto_3
    if-ltz p2, :cond_6

    .line 16
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->c0:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lp0;

    invoke-interface {v2, v0}, Lp0;->b(Lv0;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_3

    :cond_6
    if-eqz p1, :cond_7

    .line 17
    iget-object p2, p0, Landroid/support/design/widget/TabLayout;->c0:Ljava/util/ArrayList;

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result p2

    add-int/2addr p2, v1

    :goto_4
    if-ltz p2, :cond_7

    .line 18
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->c0:Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp0;

    invoke-interface {v0, p1}, Lp0;->c(Lv0;)V

    add-int/lit8 p2, p2, -0x1

    goto :goto_4

    :cond_7
    :goto_5
    return-void
.end method

.method public c()Lv0;
    .locals 4

    .line 1
    sget-object v0, Landroid/support/design/widget/TabLayout;->m0:LZ6;

    invoke-interface {v0}, LZ6;->a()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lv0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lv0;

    invoke-direct {v0}, Lv0;-><init>()V

    .line 3
    :cond_0
    iput-object p0, v0, Lv0;->f:Landroid/support/design/widget/TabLayout;

    .line 4
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->l0:LZ6;

    if-eqz v1, :cond_1

    invoke-interface {v1}, LZ6;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lx0;

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_2

    .line 5
    new-instance v1, Lx0;

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lx0;-><init>(Landroid/support/design/widget/TabLayout;Landroid/content/Context;)V

    .line 6
    :cond_2
    iget-object v2, v1, Lx0;->w:Lv0;

    if-eq v0, v2, :cond_3

    .line 7
    iput-object v0, v1, Lx0;->w:Lv0;

    .line 8
    invoke-virtual {v1}, Lx0;->a()V

    :cond_3
    const/4 v2, 0x1

    .line 9
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setFocusable(Z)V

    .line 10
    iget v2, p0, Landroid/support/design/widget/TabLayout;->O:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_4

    goto :goto_1

    .line 11
    :cond_4
    iget v2, p0, Landroid/support/design/widget/TabLayout;->V:I

    if-nez v2, :cond_5

    iget v2, p0, Landroid/support/design/widget/TabLayout;->Q:I

    goto :goto_1

    :cond_5
    const/4 v2, 0x0

    .line 12
    :goto_1
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 13
    iget-object v2, v0, Lv0;->c:Ljava/lang/CharSequence;

    .line 14
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 15
    iget-object v2, v0, Lv0;->b:Ljava/lang/CharSequence;

    .line 16
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 17
    :cond_6
    iget-object v2, v0, Lv0;->c:Ljava/lang/CharSequence;

    .line 18
    invoke-virtual {v1, v2}, Landroid/widget/LinearLayout;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 19
    :goto_2
    iput-object v1, v0, Lv0;->g:Lx0;

    return-object v0
.end method

.method public c(I)Lv0;
    .locals 1

    if-ltz p1, :cond_1

    .line 20
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->b()I

    move-result v0

    if-lt p1, v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->w:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lv0;

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public d()V
    .locals 8

    .line 1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->z:Lu0;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    const/4 v1, -0x1

    add-int/2addr v0, v1

    :goto_0
    const/4 v2, 0x0

    const/4 v3, 0x0

    if-ltz v0, :cond_2

    .line 2
    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->z:Lu0;

    invoke-virtual {v4, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Lx0;

    .line 3
    iget-object v5, p0, Landroid/support/design/widget/TabLayout;->z:Lu0;

    invoke-virtual {v5, v0}, Landroid/widget/LinearLayout;->removeViewAt(I)V

    if-eqz v4, :cond_1

    .line 4
    iget-object v5, v4, Lx0;->w:Lv0;

    if-eqz v5, :cond_0

    .line 5
    iput-object v3, v4, Lx0;->w:Lv0;

    .line 6
    invoke-virtual {v4}, Lx0;->a()V

    .line 7
    :cond_0
    invoke-virtual {v4, v2}, Lx0;->setSelected(Z)V

    .line 8
    iget-object v2, p0, Landroid/support/design/widget/TabLayout;->l0:LZ6;

    invoke-interface {v2, v4}, LZ6;->a(Ljava/lang/Object;)Z

    .line 9
    :cond_1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->requestLayout()V

    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 10
    :cond_2
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 11
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv0;

    .line 12
    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    .line 13
    iput-object v3, v4, Lv0;->f:Landroid/support/design/widget/TabLayout;

    .line 14
    iput-object v3, v4, Lv0;->g:Lx0;

    .line 15
    iput-object v3, v4, Lv0;->a:Landroid/graphics/drawable/Drawable;

    .line 16
    iput-object v3, v4, Lv0;->b:Ljava/lang/CharSequence;

    .line 17
    iput-object v3, v4, Lv0;->c:Ljava/lang/CharSequence;

    .line 18
    iput v1, v4, Lv0;->d:I

    .line 19
    iput-object v3, v4, Lv0;->e:Landroid/view/View;

    .line 20
    sget-object v5, Landroid/support/design/widget/TabLayout;->m0:LZ6;

    invoke-interface {v5, v4}, LZ6;->a(Ljava/lang/Object;)Z

    goto :goto_1

    .line 21
    :cond_3
    iput-object v3, p0, Landroid/support/design/widget/TabLayout;->x:Lv0;

    .line 22
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->g0:Lv7;

    if-eqz v0, :cond_9

    .line 23
    check-cast v0, LPA0;

    if-eqz v0, :cond_8

    const/4 v0, 0x2

    const/4 v1, 0x0

    :goto_2
    if-ge v1, v0, :cond_7

    .line 24
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->c()Lv0;

    move-result-object v4

    iget-object v5, p0, Landroid/support/design/widget/TabLayout;->g0:Lv7;

    check-cast v5, LPA0;

    if-eqz v5, :cond_6

    .line 25
    invoke-static {v1}, Lorg/chromium/chrome/browser/preferences/privacy/ClearBrowsingDataTabsFragment;->g(I)I

    move-result v6

    if-eqz v6, :cond_5

    const/4 v7, 0x1

    if-ne v6, v7, :cond_4

    .line 26
    iget-object v5, v5, LPA0;->f:Landroid/content/Context;

    const v6, 0x7f1304ff

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    goto :goto_3

    .line 27
    :cond_4
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "invalid position: "

    invoke-static {v1, v6}, LZi;->b(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 28
    :cond_5
    iget-object v5, v5, LPA0;->f:Landroid/content/Context;

    const v6, 0x7f1301e6

    invoke-virtual {v5, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    .line 29
    :goto_3
    invoke-virtual {v4, v5}, Lv0;->a(Ljava/lang/CharSequence;)Lv0;

    invoke-virtual {p0, v4, v2}, Landroid/support/design/widget/TabLayout;->a(Lv0;Z)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 30
    :cond_6
    throw v3

    .line 31
    :cond_7
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->f0:Landroid/support/v4/view/ViewPager;

    if-eqz v0, :cond_9

    .line 32
    iget v0, v0, Landroid/support/v4/view/ViewPager;->B:I

    .line 33
    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->a()I

    move-result v1

    if-eq v0, v1, :cond_9

    invoke-virtual {p0}, Landroid/support/design/widget/TabLayout;->b()I

    move-result v1

    if-ge v0, v1, :cond_9

    .line 34
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->c(I)Lv0;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->b(Lv0;)V

    goto :goto_4

    .line 35
    :cond_8
    throw v3

    :cond_9
    :goto_4
    return-void
.end method

.method public final d(I)V
    .locals 6

    .line 36
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->z:Lu0;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    if-ge p1, v0, :cond_2

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v0, :cond_2

    .line 37
    iget-object v3, p0, Landroid/support/design/widget/TabLayout;->z:Lu0;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    const/4 v4, 0x1

    if-ne v2, p1, :cond_0

    const/4 v5, 0x1

    goto :goto_1

    :cond_0
    const/4 v5, 0x0

    .line 38
    :goto_1
    invoke-virtual {v3, v5}, Landroid/view/View;->setSelected(Z)V

    if-ne v2, p1, :cond_1

    goto :goto_2

    :cond_1
    const/4 v4, 0x0

    .line 39
    :goto_2
    invoke-virtual {v3, v4}, Landroid/view/View;->setActivated(Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 0

    .line 2
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->generateDefaultLayoutParams()Landroid/widget/FrameLayout$LayoutParams;

    move-result-object p1

    return-object p1
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onAttachedToWindow()V

    .line 2
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->f0:Landroid/support/v4/view/ViewPager;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 4
    instance-of v1, v0, Landroid/support/v4/view/ViewPager;

    if-eqz v1, :cond_0

    .line 5
    check-cast v0, Landroid/support/v4/view/ViewPager;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1, v1}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/v4/view/ViewPager;ZZ)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/widget/HorizontalScrollView;->onDetachedFromWindow()V

    .line 2
    iget-boolean v0, p0, Landroid/support/design/widget/TabLayout;->k0:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    invoke-virtual {p0, v0, v1, v2}, Landroid/support/design/widget/TabLayout;->a(Landroid/support/v4/view/ViewPager;ZZ)V

    .line 4
    iput-boolean v2, p0, Landroid/support/design/widget/TabLayout;->k0:Z

    :cond_0
    return-void
.end method

.method public onDraw(Landroid/graphics/Canvas;)V
    .locals 7

    const/4 v0, 0x0

    .line 1
    :goto_0
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->z:Lu0;

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 2
    iget-object v1, p0, Landroid/support/design/widget/TabLayout;->z:Lu0;

    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 3
    instance-of v2, v1, Lx0;

    if-eqz v2, :cond_0

    .line 4
    check-cast v1, Lx0;

    .line 5
    iget-object v2, v1, Lx0;->C:Landroid/graphics/drawable/Drawable;

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLeft()I

    move-result v3

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getTop()I

    move-result v4

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getRight()I

    move-result v5

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getBottom()I

    move-result v6

    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 7
    iget-object v1, v1, Lx0;->C:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/HorizontalScrollView;->onDraw(Landroid/graphics/Canvas;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 6

    .line 1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->w:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x0

    :goto_0
    const/4 v3, 0x1

    if-ge v2, v0, :cond_1

    .line 2
    iget-object v4, p0, Landroid/support/design/widget/TabLayout;->w:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lv0;

    if-eqz v4, :cond_0

    .line 3
    iget-object v5, v4, Lv0;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v5, :cond_0

    .line 4
    iget-object v4, v4, Lv0;->b:Ljava/lang/CharSequence;

    .line 5
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    .line 6
    iget-boolean v0, p0, Landroid/support/design/widget/TabLayout;->W:Z

    if-nez v0, :cond_2

    const/16 v0, 0x48

    goto :goto_2

    :cond_2
    const/16 v0, 0x30

    .line 7
    :goto_2
    invoke-virtual {p0, v0}, Landroid/support/design/widget/TabLayout;->b(I)I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result v2

    add-int/2addr v2, v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingBottom()I

    move-result v0

    add-int/2addr v0, v2

    .line 8
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    const/high16 v4, -0x80000000

    const/high16 v5, 0x40000000    # 2.0f

    if-eq v2, v4, :cond_4

    if-eqz v2, :cond_3

    goto :goto_3

    .line 9
    :cond_3
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    goto :goto_3

    .line 10
    :cond_4
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p2

    invoke-static {v0, p2}, Ljava/lang/Math;->min(II)I

    move-result p2

    .line 11
    invoke-static {p2, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 12
    :goto_3
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 13
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    if-eqz v2, :cond_6

    .line 14
    iget v2, p0, Landroid/support/design/widget/TabLayout;->P:I

    if-lez v2, :cond_5

    goto :goto_4

    :cond_5
    const/16 v2, 0x38

    .line 15
    invoke-virtual {p0, v2}, Landroid/support/design/widget/TabLayout;->b(I)I

    move-result v2

    sub-int v2, v0, v2

    :goto_4
    iput v2, p0, Landroid/support/design/widget/TabLayout;->N:I

    .line 16
    :cond_6
    invoke-super {p0, p1, p2}, Landroid/widget/HorizontalScrollView;->onMeasure(II)V

    .line 17
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getChildCount()I

    move-result p1

    if-ne p1, v3, :cond_a

    .line 18
    invoke-virtual {p0, v1}, Landroid/widget/HorizontalScrollView;->getChildAt(I)Landroid/view/View;

    move-result-object p1

    .line 19
    iget v0, p0, Landroid/support/design/widget/TabLayout;->V:I

    if-eqz v0, :cond_8

    if-eq v0, v3, :cond_7

    goto :goto_6

    .line 20
    :cond_7
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v2

    if-eq v0, v2, :cond_9

    :goto_5
    const/4 v1, 0x1

    goto :goto_6

    .line 21
    :cond_8
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v2

    if-ge v0, v2, :cond_9

    goto :goto_5

    :cond_9
    :goto_6
    if-eqz v1, :cond_a

    .line 22
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingTop()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingBottom()I

    move-result v1

    add-int/2addr v1, v0

    .line 23
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 24
    invoke-static {p2, v1, v0}, Landroid/widget/HorizontalScrollView;->getChildMeasureSpec(III)I

    move-result p2

    .line 25
    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getMeasuredWidth()I

    move-result v0

    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 26
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    :cond_a
    return-void
.end method

.method public shouldDelayChildPressedState()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroid/support/design/widget/TabLayout;->z:Lu0;

    .line 2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getWidth()I

    move-result v0

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getWidth()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingLeft()I

    move-result v1

    sub-int/2addr v0, v1

    invoke-virtual {p0}, Landroid/widget/HorizontalScrollView;->getPaddingRight()I

    move-result v1

    sub-int/2addr v0, v1

    const/4 v1, 0x0

    .line 3
    invoke-static {v1, v0}, Ljava/lang/Math;->max(II)I

    move-result v0

    if-lez v0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1
.end method
